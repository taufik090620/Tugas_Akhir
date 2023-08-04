-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Agu 2023 pada 10.38
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_inventaris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `acc_pengajuan`
--

CREATE TABLE `acc_pengajuan` (
  `id` int(11) NOT NULL,
  `nama_pemohon` varchar(55) NOT NULL,
  `spesifikasi_acc` text NOT NULL,
  `banyak_alat_acc` int(55) NOT NULL,
  `satuan_acc` varchar(55) NOT NULL,
  `harga_satuan_acc` varchar(55) NOT NULL,
  `link_beli_acc` text NOT NULL,
  `jurusan` varchar(55) NOT NULL,
  `status_acc` varchar(55) NOT NULL,
  `nama_alat_acc` varchar(55) NOT NULL,
  `tahun_pengajuan_acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `acc_pengajuan`
--

INSERT INTO `acc_pengajuan` (`id`, `nama_pemohon`, `spesifikasi_acc`, `banyak_alat_acc`, `satuan_acc`, `harga_satuan_acc`, `link_beli_acc`, `jurusan`, `status_acc`, `nama_alat_acc`, `tahun_pengajuan_acc`) VALUES
(6, 'Agus Rahmawan', 'Intel Core i3', 5, 'Unit', 'Rp. 5.000.000', 'https://shopee.co.id/LAPTOP-ASUS-x453-INTEL-CELERON-RAM-8GB-HDD-1TB-WINDOWS-10-i.421686648.9160623242?sp_atk=5b80bb5d-adec-4785-bb66-62dfbbc37e11&xptdk=5b80bb5d-adec-4785-bb66-62dfbbc37e11', 'RPL', 'Alat Sudah Di Approve', 'Laptop Acer', '2023-08-04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `user` text NOT NULL,
  `ip_address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `title`, `user`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (admin) Logged in', '1', '::1', '2022-06-05 02:53:17', '0000-00-00 00:00:00'),
(2, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 02:54:04', '0000-00-00 00:00:00'),
(3, 'New Permission #19 Created by User: #1', '1', '::1', '2022-06-05 03:22:15', '0000-00-00 00:00:00'),
(4, 'Permission #19 Updated by User: #1', '1', '::1', '2022-06-05 03:22:50', '0000-00-00 00:00:00'),
(5, 'Permission #19 Updated by User: #1', '1', '::1', '2022-06-05 03:23:17', '0000-00-00 00:00:00'),
(6, 'New Permission #20 Created by User: #1', '1', '::1', '2022-06-05 03:25:38', '0000-00-00 00:00:00'),
(7, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:28:04', '0000-00-00 00:00:00'),
(8, 'New Permission #21 Created by User: #1', '1', '::1', '2022-06-05 03:32:03', '0000-00-00 00:00:00'),
(9, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:33:44', '0000-00-00 00:00:00'),
(10, 'New Role #3 Created by User: #1', '1', '::1', '2022-06-05 03:34:52', '0000-00-00 00:00:00'),
(11, 'New Role #4 Created by User: #1', '1', '::1', '2022-06-05 03:35:15', '0000-00-00 00:00:00'),
(12, 'New Permission #22 Created by User: #1', '1', '::1', '2022-06-05 03:40:16', '0000-00-00 00:00:00'),
(13, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 03:40:25', '0000-00-00 00:00:00'),
(14, 'Data Inventaris #0 Updated by User:Administrator', '1', '::1', '2022-06-05 04:02:45', '0000-00-00 00:00:00'),
(15, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:04:37', '0000-00-00 00:00:00'),
(16, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:06:25', '0000-00-00 00:00:00'),
(17, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-05 04:06:55', '0000-00-00 00:00:00'),
(18, 'Data Inventaris Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-05 04:07:55', '0000-00-00 00:00:00'),
(19, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:08:18', '0000-00-00 00:00:00'),
(20, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:09:45', '0000-00-00 00:00:00'),
(21, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2022-06-05 04:10:42', '0000-00-00 00:00:00'),
(22, 'New Permission #23 Created by User: #1', '1', '::1', '2022-06-05 04:15:16', '0000-00-00 00:00:00'),
(23, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-05 04:15:24', '0000-00-00 00:00:00'),
(24, 'Administrator (admin) Logged in', '1', '::1', '2022-06-12 01:56:05', '0000-00-00 00:00:00'),
(25, 'New Permission #24 Created by User: #1', '1', '::1', '2022-06-12 01:56:40', '0000-00-00 00:00:00'),
(26, 'New Permission #25 Created by User: #1', '1', '::1', '2022-06-12 01:56:55', '0000-00-00 00:00:00'),
(27, 'New Permission #26 Created by User: #1', '1', '::1', '2022-06-12 01:57:05', '0000-00-00 00:00:00'),
(28, 'New Permission #27 Created by User: #1', '1', '::1', '2022-06-12 01:57:17', '0000-00-00 00:00:00'),
(29, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 01:57:29', '0000-00-00 00:00:00'),
(30, 'User #1 updated the profile', '1', '::1', '2022-06-12 02:04:51', '0000-00-00 00:00:00'),
(31, 'Administrator (admin) Logged in', '1', '::1', '2022-06-12 02:09:58', '0000-00-00 00:00:00'),
(32, 'Data Inventaris Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-06-12 02:12:02', '0000-00-00 00:00:00'),
(33, 'Data Inventaris #3 Updated by User:Administrator', '1', '::1', '2022-06-12 02:12:26', '0000-00-00 00:00:00'),
(34, 'Data Fasilitas Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-12 02:13:38', '0000-00-00 00:00:00'),
(35, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-12 02:15:54', '0000-00-00 00:00:00'),
(36, 'User #1 updated the profile', '1', '::1', '2022-06-12 02:16:29', '0000-00-00 00:00:00'),
(37, 'New Permission #28 Created by User: #1', '1', '::1', '2022-06-12 02:47:52', '0000-00-00 00:00:00'),
(38, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 02:48:06', '0000-00-00 00:00:00'),
(39, 'New Permission #29 Created by User: #1', '1', '::1', '2022-06-12 02:57:50', '0000-00-00 00:00:00'),
(40, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 02:57:57', '0000-00-00 00:00:00'),
(41, 'Data Pinjaman Ditambahkan 1 Created by User:Administrator', '1', '::1', '2022-06-12 03:00:42', '0000-00-00 00:00:00'),
(42, 'Data Pinjaman Ditambahkan 2 Created by User:Administrator', '1', '::1', '2022-06-12 03:04:37', '0000-00-00 00:00:00'),
(43, 'New Permission #30 Created by User: #1', '1', '::1', '2022-06-12 03:06:35', '0000-00-00 00:00:00'),
(44, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 03:06:45', '0000-00-00 00:00:00'),
(45, 'New Permission #31 Created by User: #1', '1', '::1', '2022-06-12 03:07:06', '0000-00-00 00:00:00'),
(46, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-12 03:07:21', '0000-00-00 00:00:00'),
(47, ' #1 Deleted by User:Administrator', '1', '::1', '2022-06-12 03:07:56', '0000-00-00 00:00:00'),
(48, 'Data Pinjaman Ditambahkan 3 Created by User:Administrator', '1', '::1', '2022-06-12 03:08:42', '0000-00-00 00:00:00'),
(49, 'Data Pinjaman Ditambahkan 4 Created by User:Administrator', '1', '::1', '2022-06-12 03:53:02', '0000-00-00 00:00:00'),
(50, 'Administrator (admin) Logged in', '1', '::1', '2022-06-18 13:58:24', '0000-00-00 00:00:00'),
(51, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:50:04', '0000-00-00 00:00:00'),
(52, 'New User $2 Created by User:Administrator', '1', '::1', '2022-06-19 01:51:48', '0000-00-00 00:00:00'),
(53, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-19 01:52:40', '0000-00-00 00:00:00'),
(54, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:52:46', '0000-00-00 00:00:00'),
(55, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:52:52', '0000-00-00 00:00:00'),
(56, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 01:53:09', '0000-00-00 00:00:00'),
(57, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:53:15', '0000-00-00 00:00:00'),
(58, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:54:51', '0000-00-00 00:00:00'),
(59, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:54:58', '0000-00-00 00:00:00'),
(60, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 01:55:15', '0000-00-00 00:00:00'),
(61, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 01:55:19', '0000-00-00 00:00:00'),
(62, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 01:58:11', '0000-00-00 00:00:00'),
(63, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 01:58:16', '0000-00-00 00:00:00'),
(64, 'Data Pinjaman Ditambahkan 5 Created by User:Rifqi Riza Irfansyah', '2', '::1', '2022-06-19 01:58:43', '0000-00-00 00:00:00'),
(65, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 02:01:02', '0000-00-00 00:00:00'),
(66, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:01:12', '0000-00-00 00:00:00'),
(67, 'Data Pinjaman Ditambahkan 6 Created by User:Administrator', '1', '::1', '2022-06-19 02:15:36', '0000-00-00 00:00:00'),
(68, 'New Permission #32 Created by User: #1', '1', '::1', '2022-06-19 02:20:32', '0000-00-00 00:00:00'),
(69, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-19 02:20:42', '0000-00-00 00:00:00'),
(70, 'Data Pinjaman Inventaris #4 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:34:44', '0000-00-00 00:00:00'),
(71, 'Data Pinjaman Inventaris #5 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:35:07', '0000-00-00 00:00:00'),
(72, 'Data Pinjaman Inventaris #6 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:35:37', '0000-00-00 00:00:00'),
(73, 'Data Pinjaman Ditambahkan 7 Created by User:Administrator', '1', '::1', '2022-06-19 02:36:21', '0000-00-00 00:00:00'),
(74, 'Data Pinjaman Inventaris #7 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2022-06-19 02:36:27', '0000-00-00 00:00:00'),
(75, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 02:36:44', '0000-00-00 00:00:00'),
(76, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 02:36:50', '0000-00-00 00:00:00'),
(77, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 02:37:27', '0000-00-00 00:00:00'),
(78, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:37:30', '0000-00-00 00:00:00'),
(79, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 02:49:46', '0000-00-00 00:00:00'),
(80, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 02:49:52', '0000-00-00 00:00:00'),
(81, 'New Permission #33 Created by User: #1', '1', '::1', '2022-06-19 02:50:18', '0000-00-00 00:00:00'),
(82, 'New Permission #34 Created by User: #1', '1', '::1', '2022-06-19 02:50:37', '0000-00-00 00:00:00'),
(83, 'New Permission #35 Created by User: #1', '1', '::1', '2022-06-19 02:50:59', '0000-00-00 00:00:00'),
(84, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-19 02:52:58', '0000-00-00 00:00:00'),
(85, 'Role #4 Updated by User: #1', '1', '::1', '2022-06-19 02:53:13', '0000-00-00 00:00:00'),
(86, 'Data Pinjaman Dikembalikan 1 Created by User:Administrator', '1', '::1', '2022-06-19 03:48:53', '0000-00-00 00:00:00'),
(87, 'Data Pinjaman Dikembalikan 2 Created by User:Administrator', '1', '::1', '2022-06-19 03:52:01', '0000-00-00 00:00:00'),
(88, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 03:57:00', '0000-00-00 00:00:00'),
(89, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 04:06:27', '0000-00-00 00:00:00'),
(90, 'Data Pinjaman Dikembalikan 4 Created by User:Administrator', '1', '::1', '2022-06-19 04:08:19', '0000-00-00 00:00:00'),
(91, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:26:55', '0000-00-00 00:00:00'),
(92, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:27:13', '0000-00-00 00:00:00'),
(93, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:34:16', '0000-00-00 00:00:00'),
(94, 'Rifqi Riza Irfansyah (rifqi_riza_irfansyah) Logged in', '2', '::1', '2022-06-19 04:34:22', '0000-00-00 00:00:00'),
(95, 'User: Rifqi Riza Irfansyah Logged Out', '2', '::1', '2022-06-19 04:35:50', '0000-00-00 00:00:00'),
(96, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:35:55', '0000-00-00 00:00:00'),
(97, 'New User $3 Created by User:Administrator', '1', '::1', '2022-06-19 04:36:54', '0000-00-00 00:00:00'),
(98, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:37:04', '0000-00-00 00:00:00'),
(99, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:37:15', '0000-00-00 00:00:00'),
(100, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-19 04:38:33', '0000-00-00 00:00:00'),
(101, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:38:36', '0000-00-00 00:00:00'),
(102, 'operator (operator) Logged in', '3', '::1', '2022-06-19 04:38:42', '0000-00-00 00:00:00'),
(103, 'User: operator Logged Out', '3', '::1', '2022-06-19 04:40:56', '0000-00-00 00:00:00'),
(104, 'Administrator (admin) Logged in', '1', '::1', '2022-06-19 04:41:04', '0000-00-00 00:00:00'),
(105, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-19 04:41:57', '0000-00-00 00:00:00'),
(106, 'User: Administrator Logged Out', '1', '::1', '2022-06-19 04:42:00', '0000-00-00 00:00:00'),
(107, 'operator (operator) Logged in', '3', '::1', '2022-06-19 04:42:07', '0000-00-00 00:00:00'),
(108, 'Administrator (admin) Logged in', '1', '::1', '2022-06-26 01:52:39', '0000-00-00 00:00:00'),
(109, 'New Permission #36 Created by User: #1', '1', '::1', '2022-06-26 01:58:54', '0000-00-00 00:00:00'),
(110, 'New Permission #37 Created by User: #1', '1', '::1', '2022-06-26 01:59:34', '0000-00-00 00:00:00'),
(111, 'New Permission #38 Created by User: #1', '1', '::1', '2022-06-26 01:59:43', '0000-00-00 00:00:00'),
(112, 'New Permission #39 Created by User: #1', '1', '::1', '2022-06-26 02:02:28', '0000-00-00 00:00:00'),
(113, 'Role #1 Updated by User: #1', '1', '::1', '2022-06-26 02:02:47', '0000-00-00 00:00:00'),
(114, 'Role #3 Updated by User: #1', '1', '::1', '2022-06-26 02:03:19', '0000-00-00 00:00:00'),
(115, 'Data Ruangan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2022-06-26 02:05:37', '0000-00-00 00:00:00'),
(116, 'Data Ruangan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2022-06-26 02:07:32', '0000-00-00 00:00:00'),
(117, 'New Permission #40 Created by User: #1', '1', '::1', '2022-07-02 13:23:49', '0000-00-00 00:00:00'),
(118, 'Role #1 Updated by User: #1', '1', '::1', '2022-07-02 13:23:56', '0000-00-00 00:00:00'),
(119, 'New Permission #41 Created by User: #1', '1', '::1', '2022-07-02 13:25:34', '0000-00-00 00:00:00'),
(120, 'Role #1 Updated by User: #1', '1', '::1', '2022-07-02 13:25:40', '0000-00-00 00:00:00'),
(121, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2022-07-02 14:05:50', '0000-00-00 00:00:00'),
(122, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2022-07-02 14:06:44', '0000-00-00 00:00:00'),
(123, 'Data Pinjaman Ditambahkan 8 Created by User:Administrator', '1', '::1', '2022-07-02 14:20:45', '0000-00-00 00:00:00'),
(124, ' #1 Deleted by User:Administrator', '1', '::1', '2022-07-02 14:23:57', '0000-00-00 00:00:00'),
(125, 'Data Pinjaman Ditambahkan 9 Created by User:Administrator', '1', '::1', '2022-07-02 14:44:06', '0000-00-00 00:00:00'),
(126, 'Administrator (admin) Logged in', '1', '::1', '2023-05-03 01:45:03', '0000-00-00 00:00:00'),
(127, 'New User $4 Created by User:Administrator', '1', '::1', '2023-05-03 01:46:07', '0000-00-00 00:00:00'),
(128, 'New User $5 Created by User:Administrator', '1', '::1', '2023-05-03 01:47:30', '0000-00-00 00:00:00'),
(129, 'New User $6 Created by User:Administrator', '1', '::1', '2023-05-03 01:48:36', '0000-00-00 00:00:00'),
(130, 'Administrator (admin) Logged in', '1', '127.0.0.1', '2023-05-04 01:00:05', '0000-00-00 00:00:00'),
(131, 'Administrator (admin) Logged in', '1', '::1', '2023-05-04 02:21:29', '0000-00-00 00:00:00'),
(132, 'User: Administrator Logged Out', '1', '::1', '2023-05-04 02:47:05', '0000-00-00 00:00:00'),
(133, 'Administrator (admin) Logged in', '1', '::1', '2023-05-04 02:47:19', '0000-00-00 00:00:00'),
(134, 'Administrator (admin) Logged in', '1', '::1', '2023-05-07 06:53:42', '0000-00-00 00:00:00'),
(135, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 08:23:09', '0000-00-00 00:00:00'),
(136, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 08:24:22', '0000-00-00 00:00:00'),
(137, 'Data Inventaris Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-05-07 08:25:40', '0000-00-00 00:00:00'),
(138, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-07 08:55:35', '0000-00-00 00:00:00'),
(139, 'Data Inventaris Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-05-07 08:57:52', '0000-00-00 00:00:00'),
(140, 'Data Inventaris Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-05-07 08:59:12', '0000-00-00 00:00:00'),
(141, 'Data Inventaris Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-05-07 09:02:23', '0000-00-00 00:00:00'),
(142, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-05-07 09:03:22', '0000-00-00 00:00:00'),
(143, 'Data Inventaris Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-05-07 09:04:41', '0000-00-00 00:00:00'),
(144, 'Administrator (admin) Logged in', '1', '::1', '2023-05-14 04:55:24', '0000-00-00 00:00:00'),
(145, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:37', '0000-00-00 00:00:00'),
(146, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:47', '0000-00-00 00:00:00'),
(147, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 04:56:52', '0000-00-00 00:00:00'),
(148, 'Data Inventaris Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-05-14 05:06:50', '0000-00-00 00:00:00'),
(149, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:06:59', '0000-00-00 00:00:00'),
(150, 'Data Inventaris Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-05-14 05:09:42', '0000-00-00 00:00:00'),
(151, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:18:52', '0000-00-00 00:00:00'),
(152, 'Data Inventaris Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-05-14 05:19:36', '0000-00-00 00:00:00'),
(153, 'Data Inventaris #10 Updated by User:Administrator', '1', '::1', '2023-05-14 05:21:32', '0000-00-00 00:00:00'),
(154, 'Data Inventaris #10 Updated by User:Administrator', '1', '::1', '2023-05-14 05:21:49', '0000-00-00 00:00:00'),
(155, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:23:54', '0000-00-00 00:00:00'),
(156, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2023-05-14 05:24:45', '0000-00-00 00:00:00'),
(157, 'Data Inventaris #1 Updated by User:Administrator', '1', '::1', '2023-05-14 05:24:55', '0000-00-00 00:00:00'),
(158, 'Data Inventaris Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-05-14 05:25:33', '0000-00-00 00:00:00'),
(159, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:25:43', '0000-00-00 00:00:00'),
(160, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:26:02', '0000-00-00 00:00:00'),
(161, 'Data Inventaris #11 Updated by User:Administrator', '1', '::1', '2023-05-14 05:26:42', '0000-00-00 00:00:00'),
(162, 'Data Ruangan #2 Updated by User: #1', '1', '::1', '2023-05-14 05:27:01', '0000-00-00 00:00:00'),
(163, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-05-14 05:27:10', '0000-00-00 00:00:00'),
(164, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:38:54', '0000-00-00 00:00:00'),
(165, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:39:12', '0000-00-00 00:00:00'),
(166, 'Data Inventaris #11 Updated by User: #1', '1', '::1', '2023-05-14 05:39:21', '0000-00-00 00:00:00'),
(167, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-14 05:39:35', '0000-00-00 00:00:00'),
(168, 'Data Inventaris Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-05-14 05:47:17', '0000-00-00 00:00:00'),
(169, 'Data Inventaris #12 Updated by User: #1', '1', '::1', '2023-05-14 05:47:38', '0000-00-00 00:00:00'),
(170, 'Data Pinjaman Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-05-14 05:59:10', '0000-00-00 00:00:00'),
(171, 'Data Pinjaman Inventaris #10 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-14 06:46:19', '0000-00-00 00:00:00'),
(172, 'Data Pinjaman Dikembalikan 10 Created by User:Administrator', '1', '::1', '2023-05-14 06:46:58', '0000-00-00 00:00:00'),
(173, 'Administrator (admin) Logged in', '1', '::1', '2023-05-17 13:32:50', '0000-00-00 00:00:00'),
(174, 'User #6 Updated by User:Administrator', '1', '::1', '2023-05-17 13:33:52', '0000-00-00 00:00:00'),
(175, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-17 13:34:06', '0000-00-00 00:00:00'),
(176, 'User: Administrator Logged Out', '1', '::1', '2023-05-17 13:40:52', '0000-00-00 00:00:00'),
(177, 'Data Pinjaman Ditambahkan 11 Created by User:wahyu saepudin', '6', '::1', '2023-05-17 13:55:07', '0000-00-00 00:00:00'),
(178, 'Administrator (admin) Logged in', '1', '::1', '2023-05-17 13:55:35', '0000-00-00 00:00:00'),
(179, 'Administrator (admin) Logged in', '1', '::1', '2023-05-18 05:19:40', '0000-00-00 00:00:00'),
(180, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-18 05:20:56', '0000-00-00 00:00:00'),
(181, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:24:29', '0000-00-00 00:00:00'),
(182, 'Data Pinjaman Ditambahkan 12 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:24:55', '0000-00-00 00:00:00'),
(183, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:34:27', '0000-00-00 00:00:00'),
(184, 'Data Pinjaman Ditambahkan 13 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:34:48', '0000-00-00 00:00:00'),
(185, 'Data Pinjaman Inventaris #13 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-18 05:35:01', '0000-00-00 00:00:00'),
(186, 'Data Pinjaman Dikembalikan 13 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:38:46', '0000-00-00 00:00:00'),
(187, 'Data Pinjaman Ditambahkan 14 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 05:39:04', '0000-00-00 00:00:00'),
(188, 'Data Pinjaman Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-05-18 05:39:58', '0000-00-00 00:00:00'),
(189, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:40:13', '0000-00-00 00:00:00'),
(190, 'Data Pinjaman Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-05-18 05:40:43', '0000-00-00 00:00:00'),
(191, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:40:54', '0000-00-00 00:00:00'),
(192, 'Data Pinjaman Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-05-18 05:44:28', '0000-00-00 00:00:00'),
(193, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 05:44:37', '0000-00-00 00:00:00'),
(194, 'Data Pinjaman Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-05-18 06:01:45', '0000-00-00 00:00:00'),
(195, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:04', '0000-00-00 00:00:00'),
(196, 'Data Pinjaman Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-05-18 06:02:24', '0000-00-00 00:00:00'),
(197, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:30', '0000-00-00 00:00:00'),
(198, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-18 06:02:33', '0000-00-00 00:00:00'),
(199, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-18 06:05:43', '0000-00-00 00:00:00'),
(200, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-18 06:20:32', '0000-00-00 00:00:00'),
(201, 'Data Pinjaman Ditambahkan 20 Created by User:wahyu saepudin', '6', '::1', '2023-05-18 06:20:53', '0000-00-00 00:00:00'),
(202, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 00:27:32', '0000-00-00 00:00:00'),
(203, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-19 00:28:23', '0000-00-00 00:00:00'),
(204, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 00:47:48', '0000-00-00 00:00:00'),
(205, 'Data Pinjaman Ditambahkan 21 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 00:49:50', '0000-00-00 00:00:00'),
(206, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-19 00:51:08', '0000-00-00 00:00:00'),
(207, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 00:51:25', '0000-00-00 00:00:00'),
(208, 'Data Pinjaman Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-05-19 00:58:32', '0000-00-00 00:00:00'),
(209, 'Data Pinjaman Inventaris #22 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 00:59:52', '0000-00-00 00:00:00'),
(210, 'Data Pinjaman Inventaris #22 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:01:27', '0000-00-00 00:00:00'),
(211, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 01:01:52', '0000-00-00 00:00:00'),
(212, 'Data Pinjaman Ditambahkan 23 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:10', '0000-00-00 00:00:00'),
(213, 'Data Pinjaman Inventaris #23 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:02:17', '0000-00-00 00:00:00'),
(214, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:38', '0000-00-00 00:00:00'),
(215, 'Data Pinjaman Ditambahkan 24 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 01:02:55', '0000-00-00 00:00:00'),
(216, 'Data Pinjaman Inventaris #24 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 01:03:37', '0000-00-00 00:00:00'),
(217, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 01:04:13', '0000-00-00 00:00:00'),
(218, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 02:33:11', '0000-00-00 00:00:00'),
(219, 'Data Pinjaman Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-05-19 02:33:29', '0000-00-00 00:00:00'),
(220, 'Data Pinjaman Inventaris #25 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:33:31', '0000-00-00 00:00:00'),
(221, 'Data Pinjaman Inventaris #25 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:34:28', '0000-00-00 00:00:00'),
(222, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-19 02:34:46', '0000-00-00 00:00:00'),
(223, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 02:35:01', '0000-00-00 00:00:00'),
(224, 'Data Pinjaman Ditambahkan 26 Created by User:wahyu saepudin', '6', '::1', '2023-05-19 02:35:31', '0000-00-00 00:00:00'),
(225, 'Data Pinjaman Inventaris #26 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:35:43', '0000-00-00 00:00:00'),
(226, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 02:38:09', '0000-00-00 00:00:00'),
(227, 'Data Pinjaman Ditambahkan 27 Created by User:Administrator', '1', '::1', '2023-05-19 02:38:33', '0000-00-00 00:00:00'),
(228, 'Data Pinjaman Inventaris #27 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 02:38:35', '0000-00-00 00:00:00'),
(229, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 02:38:43', '0000-00-00 00:00:00'),
(230, 'Data Pinjaman Ditambahkan 28 Created by User:Administrator', '1', '::1', '2023-05-19 02:53:14', '0000-00-00 00:00:00'),
(231, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:02:17', '0000-00-00 00:00:00'),
(232, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:02:20', '0000-00-00 00:00:00'),
(233, 'Data Pinjaman Inventaris #28 Dikonfirmasi Oleh Operator :', '1', '::1', '2023-05-19 03:03:32', '0000-00-00 00:00:00'),
(234, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-19 03:03:36', '0000-00-00 00:00:00'),
(235, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-05-19 03:03:45', '0000-00-00 00:00:00'),
(236, 'Data Pinjaman Ditambahkan 29 Created by User:Administrator', '1', '::1', '2023-05-19 03:08:41', '0000-00-00 00:00:00'),
(237, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:08:43', '0000-00-00 00:00:00'),
(238, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:08:46', '0000-00-00 00:00:00'),
(239, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:10:02', '0000-00-00 00:00:00'),
(240, 'Data Pinjaman Inventaris #29 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 03:10:34', '0000-00-00 00:00:00'),
(241, 'Administrator (admin) Logged in', '1', '::1', '2023-05-19 04:37:31', '0000-00-00 00:00:00'),
(242, 'Data Inventaris Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-05-19 04:38:24', '0000-00-00 00:00:00'),
(243, 'New User $7 Created by User:Administrator', '1', '::1', '2023-05-19 04:39:09', '0000-00-00 00:00:00'),
(244, 'Irni (irni) Logged in', '7', '::1', '2023-05-19 04:39:32', '0000-00-00 00:00:00'),
(245, ' #1 Deleted by User:Irni', '7', '::1', '2023-05-19 04:39:40', '0000-00-00 00:00:00'),
(246, 'Data Pinjaman Ditambahkan 30 Created by User:Irni', '7', '::1', '2023-05-19 04:40:03', '0000-00-00 00:00:00'),
(247, 'Data Pinjaman Inventaris #30 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:40:11', '0000-00-00 00:00:00'),
(248, 'User #7 Updated by User:Administrator', '1', '::1', '2023-05-19 04:41:51', '0000-00-00 00:00:00'),
(249, 'Data Inventaris Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-05-19 04:43:34', '0000-00-00 00:00:00'),
(250, 'Data Pinjaman Ditambahkan 31 Created by User:XI-A', '7', '::1', '2023-05-19 04:43:57', '0000-00-00 00:00:00'),
(251, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-05-19 04:44:19', '0000-00-00 00:00:00'),
(252, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-05-19 04:44:35', '0000-00-00 00:00:00'),
(253, 'Data Inventaris Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-05-19 04:46:19', '0000-00-00 00:00:00'),
(254, 'Data Pinjaman Ditambahkan 32 Created by User:XI-A', '7', '::1', '2023-05-19 04:47:09', '0000-00-00 00:00:00'),
(255, 'Data Pinjaman Inventaris #31 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:47:28', '0000-00-00 00:00:00'),
(256, 'Data Pinjaman Inventaris #32 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-05-19 04:47:30', '0000-00-00 00:00:00'),
(257, 'Administrator (admin) Logged in', '1', '::1', '2023-05-20 04:34:37', '0000-00-00 00:00:00'),
(258, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-20 04:46:16', '0000-00-00 00:00:00'),
(259, 'New Permission #42 Created by User: #1', '1', '::1', '2023-05-20 05:19:49', '0000-00-00 00:00:00'),
(260, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 05:20:02', '0000-00-00 00:00:00'),
(261, 'New Permission #43 Created by User: #1', '1', '::1', '2023-05-20 07:25:53', '0000-00-00 00:00:00'),
(262, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-20 07:26:07', '0000-00-00 00:00:00'),
(263, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-05-20 07:26:23', '0000-00-00 00:00:00'),
(264, 'Role #4 Updated by User: #1', '1', '::1', '2023-05-20 07:27:04', '0000-00-00 00:00:00'),
(265, 'Administrator (admin) Logged in', '1', '::1', '2023-05-20 13:40:09', '0000-00-00 00:00:00'),
(266, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:22', '0000-00-00 00:00:00'),
(267, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:35', '0000-00-00 00:00:00'),
(268, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:43', '0000-00-00 00:00:00'),
(269, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:49', '0000-00-00 00:00:00'),
(270, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:42:55', '0000-00-00 00:00:00'),
(271, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:43:43', '0000-00-00 00:00:00'),
(272, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-20 13:43:48', '0000-00-00 00:00:00'),
(273, 'New Permission #44 Created by User: #1', '1', '::1', '2023-05-20 13:54:23', '0000-00-00 00:00:00'),
(274, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:54:34', '0000-00-00 00:00:00'),
(275, 'New Permission #45 Created by User: #1', '1', '::1', '2023-05-20 13:55:06', '0000-00-00 00:00:00'),
(276, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:55:19', '0000-00-00 00:00:00'),
(277, 'New Permission #46 Created by User: #1', '1', '::1', '2023-05-20 13:56:06', '0000-00-00 00:00:00'),
(278, 'New Permission #47 Created by User: #1', '1', '::1', '2023-05-20 13:56:56', '0000-00-00 00:00:00'),
(279, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-20 13:57:12', '0000-00-00 00:00:00'),
(280, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-05-20 13:57:18', '0000-00-00 00:00:00'),
(281, 'Administrator (admin) Logged in', '1', '::1', '2023-05-22 02:11:21', '0000-00-00 00:00:00'),
(282, 'New Permission #48 Created by User: #1', '1', '::1', '2023-05-22 02:14:42', '0000-00-00 00:00:00'),
(283, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:15:00', '0000-00-00 00:00:00'),
(284, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:17:06', '0000-00-00 00:00:00'),
(285, 'New Permission #49 Created by User: #1', '1', '::1', '2023-05-22 02:18:45', '0000-00-00 00:00:00'),
(286, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:18:55', '0000-00-00 00:00:00'),
(287, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:20:50', '0000-00-00 00:00:00'),
(288, 'Permission #49 Updated by User: #1', '1', '::1', '2023-05-22 02:22:00', '0000-00-00 00:00:00'),
(289, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:22:09', '0000-00-00 00:00:00'),
(290, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-22 02:37:43', '0000-00-00 00:00:00'),
(291, 'Permission # Deleted by User: #1', '1', '::1', '2023-05-22 02:38:00', '0000-00-00 00:00:00'),
(292, 'New Permission #50 Created by User: #1', '1', '::1', '2023-05-22 02:39:23', '0000-00-00 00:00:00'),
(293, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:39:40', '0000-00-00 00:00:00'),
(294, 'New Permission #51 Created by User: #1', '1', '::1', '2023-05-22 02:40:31', '0000-00-00 00:00:00'),
(295, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 02:40:43', '0000-00-00 00:00:00'),
(296, 'New Permission #52 Created by User: #1', '1', '::1', '2023-05-22 03:13:49', '0000-00-00 00:00:00'),
(297, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-22 03:13:59', '0000-00-00 00:00:00'),
(298, 'Data Perawatan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-05-22 03:14:23', '0000-00-00 00:00:00'),
(299, 'Administrator (admin) Logged in', '1', '::1', '2023-05-23 01:16:36', '0000-00-00 00:00:00'),
(300, 'Data Perawatan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-05-23 01:23:39', '0000-00-00 00:00:00'),
(301, 'New Permission #53 Created by User: #1', '1', '::1', '2023-05-23 01:25:22', '0000-00-00 00:00:00'),
(302, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-23 01:25:36', '0000-00-00 00:00:00'),
(303, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 01:25:43', '0000-00-00 00:00:00'),
(304, 'Data Perawatan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-05-23 01:30:54', '0000-00-00 00:00:00'),
(305, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 01:31:03', '0000-00-00 00:00:00'),
(306, 'Data Perawatan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-05-23 02:22:58', '0000-00-00 00:00:00'),
(307, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 02:23:03', '0000-00-00 00:00:00'),
(308, 'New Permission #54 Created by User: #1', '1', '::1', '2023-05-23 02:41:38', '0000-00-00 00:00:00'),
(309, 'Role #1 Updated by User: #1', '1', '::1', '2023-05-23 02:41:48', '0000-00-00 00:00:00'),
(310, 'Data Perawatan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-05-23 02:42:13', '0000-00-00 00:00:00'),
(311, ' #1 Deleted by User:Administrator', '1', '::1', '2023-05-23 02:42:43', '0000-00-00 00:00:00'),
(312, 'Administrator (admin) Logged in', '1', '::1', '2023-06-14 00:14:02', '0000-00-00 00:00:00'),
(313, 'Data Perawatan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-06-14 00:26:43', '0000-00-00 00:00:00'),
(314, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:26:48', '0000-00-00 00:00:00'),
(315, 'Data Perawatan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-06-14 00:31:33', '0000-00-00 00:00:00'),
(316, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:36:00', '0000-00-00 00:00:00'),
(317, 'Data Perawatan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-06-14 00:36:16', '0000-00-00 00:00:00'),
(318, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:57:01', '0000-00-00 00:00:00'),
(319, 'Data Perawatan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-06-14 00:57:15', '0000-00-00 00:00:00'),
(320, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-14 00:57:20', '0000-00-00 00:00:00'),
(321, 'Permission #51 Updated by User: #1', '1', '::1', '2023-06-14 02:04:02', '0000-00-00 00:00:00'),
(322, 'Permission #52 Updated by User: #1', '1', '::1', '2023-06-14 02:04:25', '0000-00-00 00:00:00'),
(323, 'Permission #53 Updated by User: #1', '1', '::1', '2023-06-14 02:04:51', '0000-00-00 00:00:00'),
(324, 'Permission #54 Updated by User: #1', '1', '::1', '2023-06-14 02:05:13', '0000-00-00 00:00:00'),
(325, 'Role #1 Updated by User: #1', '1', '::1', '2023-06-14 02:05:29', '0000-00-00 00:00:00'),
(326, 'Data Pemeliharaan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-06-14 02:06:59', '0000-00-00 00:00:00'),
(327, 'Administrator (admin) Logged in', '1', '::1', '2023-06-15 00:05:33', '0000-00-00 00:00:00'),
(328, 'Data Pemeliharaan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-06-15 00:17:00', '0000-00-00 00:00:00'),
(329, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 01:24:52', '0000-00-00 00:00:00'),
(330, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 01:26:52', '0000-00-00 00:00:00'),
(331, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 02:15:29', '0000-00-00 00:00:00'),
(332, 'Data pemeliharaan #2 Updated by User: #1', '1', '::1', '2023-06-15 04:08:35', '0000-00-00 00:00:00'),
(333, 'Data Pemeliharaan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-06-15 04:16:14', '0000-00-00 00:00:00'),
(334, 'Data Pemeliharaan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-06-15 04:32:07', '0000-00-00 00:00:00'),
(335, 'Data Inventaris Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-06-15 05:37:27', '0000-00-00 00:00:00'),
(336, 'Administrator (admin) Logged in', '1', '::1', '2023-06-16 00:29:03', '0000-00-00 00:00:00'),
(337, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 01:18:08', '0000-00-00 00:00:00'),
(338, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 01:19:14', '0000-00-00 00:00:00'),
(339, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 02:10:35', '0000-00-00 00:00:00'),
(340, 'Data Pemeliharaan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-06-16 02:49:11', '0000-00-00 00:00:00'),
(341, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 02:51:03', '0000-00-00 00:00:00'),
(342, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 02:57:18', '0000-00-00 00:00:00'),
(343, 'Data Pemeliharaan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-06-16 02:57:36', '0000-00-00 00:00:00'),
(344, 'Data Pemeliharaan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-06-16 04:43:52', '0000-00-00 00:00:00'),
(345, 'Data Pemeliharaan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-06-16 04:45:08', '0000-00-00 00:00:00'),
(346, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 04:46:57', '0000-00-00 00:00:00'),
(347, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 04:47:32', '0000-00-00 00:00:00'),
(348, 'Data pemeliharaan #7 Updated by User: #1', '1', '::1', '2023-06-16 05:24:50', '0000-00-00 00:00:00'),
(349, 'Data pemeliharaan #7 Updated by User: #1', '1', '::1', '2023-06-16 05:25:37', '0000-00-00 00:00:00'),
(350, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 05:26:22', '0000-00-00 00:00:00'),
(351, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 05:27:03', '0000-00-00 00:00:00'),
(352, 'Data pemeliharaan #4 Updated by User: #1', '1', '::1', '2023-06-16 05:27:35', '0000-00-00 00:00:00'),
(353, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:27:59', '0000-00-00 00:00:00'),
(354, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:28:03', '0000-00-00 00:00:00'),
(355, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:28:06', '0000-00-00 00:00:00'),
(356, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:28:08', '0000-00-00 00:00:00'),
(357, 'Data Pemeliharaan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-06-16 05:30:27', '0000-00-00 00:00:00'),
(358, 'Data pemeliharaan #9 Updated by User: #1', '1', '::1', '2023-06-16 05:30:54', '0000-00-00 00:00:00'),
(359, 'Data Pemeliharaan Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-06-16 05:31:20', '0000-00-00 00:00:00'),
(360, 'Data Pemeliharaan Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-06-16 05:39:10', '0000-00-00 00:00:00'),
(361, 'Data Inventaris Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-06-16 05:41:12', '0000-00-00 00:00:00'),
(362, 'Data Inventaris #17 Updated by User: #1', '1', '::1', '2023-06-16 05:41:36', '0000-00-00 00:00:00'),
(363, 'Data Inventaris #17 Updated by User: #1', '1', '::1', '2023-06-16 05:42:34', '0000-00-00 00:00:00'),
(364, 'Data Pemeliharaan Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-06-16 05:43:01', '0000-00-00 00:00:00'),
(365, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:44:37', '0000-00-00 00:00:00'),
(366, 'Data Pemeliharaan Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-06-16 05:44:57', '0000-00-00 00:00:00'),
(367, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:47:08', '0000-00-00 00:00:00'),
(368, 'Data Pemeliharaan Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-06-16 05:54:38', '0000-00-00 00:00:00'),
(369, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:56:08', '0000-00-00 00:00:00'),
(370, 'Data Pemeliharaan Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-06-16 05:56:25', '0000-00-00 00:00:00'),
(371, 'Data Pemeliharaan Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-06-16 05:56:55', '0000-00-00 00:00:00'),
(372, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:58:57', '0000-00-00 00:00:00'),
(373, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 05:59:01', '0000-00-00 00:00:00'),
(374, 'Data Pemeliharaan Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-06-16 05:59:13', '0000-00-00 00:00:00'),
(375, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:00:27', '0000-00-00 00:00:00'),
(376, 'Data Pemeliharaan Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-06-16 06:05:14', '0000-00-00 00:00:00'),
(377, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:06:37', '0000-00-00 00:00:00'),
(378, 'Data Pemeliharaan Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-06-16 06:06:53', '0000-00-00 00:00:00'),
(379, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:07:56', '0000-00-00 00:00:00'),
(380, 'Data Pemeliharaan Ditambahkan 20 Created by User:Administrator', '1', '::1', '2023-06-16 06:08:10', '0000-00-00 00:00:00'),
(381, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:18:16', '0000-00-00 00:00:00'),
(382, 'Data Pemeliharaan Ditambahkan 21 Created by User:Administrator', '1', '::1', '2023-06-16 06:18:35', '0000-00-00 00:00:00'),
(383, 'Data pemeliharaan #21 Updated by User: #1', '1', '::1', '2023-06-16 06:18:54', '0000-00-00 00:00:00'),
(384, 'Data pemeliharaan #21 Updated by User: #1', '1', '::1', '2023-06-16 06:19:22', '0000-00-00 00:00:00'),
(385, 'Data pemeliharaan #21 Updated by User: #1', '1', '::1', '2023-06-16 06:19:40', '0000-00-00 00:00:00'),
(386, 'Data pemeliharaan #21 Updated by User: #1', '1', '::1', '2023-06-16 06:20:10', '0000-00-00 00:00:00'),
(387, 'Data Pemeliharaan Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-06-16 06:23:52', '0000-00-00 00:00:00'),
(388, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:25:36', '0000-00-00 00:00:00'),
(389, 'Data Pemeliharaan Ditambahkan 23 Created by User:Administrator', '1', '::1', '2023-06-16 06:25:52', '0000-00-00 00:00:00'),
(390, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:29:36', '0000-00-00 00:00:00'),
(391, 'Data Pemeliharaan Ditambahkan 24 Created by User:Administrator', '1', '::1', '2023-06-16 06:30:08', '0000-00-00 00:00:00'),
(392, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:34:36', '0000-00-00 00:00:00'),
(393, 'Data Pemeliharaan Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-06-16 06:34:49', '0000-00-00 00:00:00'),
(394, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:35:26', '0000-00-00 00:00:00'),
(395, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:35:28', '0000-00-00 00:00:00'),
(396, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:35:32', '0000-00-00 00:00:00'),
(397, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:35:35', '0000-00-00 00:00:00'),
(398, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:35:37', '0000-00-00 00:00:00'),
(399, 'Data Pemeliharaan Ditambahkan 26 Created by User:Administrator', '1', '::1', '2023-06-16 06:36:05', '0000-00-00 00:00:00'),
(400, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-16 06:39:02', '0000-00-00 00:00:00'),
(401, 'Data Pemeliharaan Ditambahkan 27 Created by User:Administrator', '1', '::1', '2023-06-16 06:39:22', '0000-00-00 00:00:00'),
(402, 'Data Pemeliharaan Ditambahkan 28 Created by User:Administrator', '1', '::1', '2023-06-16 06:44:22', '0000-00-00 00:00:00'),
(403, 'Data Pemeliharaan Ditambahkan 29 Created by User:Administrator', '1', '::1', '2023-06-16 06:56:08', '0000-00-00 00:00:00'),
(404, 'Administrator (admin) Logged in', '1', '::1', '2023-06-17 12:43:46', '0000-00-00 00:00:00'),
(405, 'Data Pemeliharaan Ditambahkan 30 Created by User:Administrator', '1', '::1', '2023-06-17 12:44:20', '0000-00-00 00:00:00'),
(406, 'Data pemeliharaan #30 Updated by User: #1', '1', '::1', '2023-06-17 12:45:03', '0000-00-00 00:00:00'),
(407, 'Administrator (admin) Logged in', '1', '::1', '2023-06-19 00:36:55', '0000-00-00 00:00:00'),
(408, 'Data Pemeliharaan Ditambahkan 31 Created by User:Administrator', '1', '::1', '2023-06-19 00:39:23', '0000-00-00 00:00:00'),
(409, 'Data pemeliharaan #31 Updated by User: #1', '1', '::1', '2023-06-19 00:39:41', '0000-00-00 00:00:00'),
(410, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 00:39:58', '0000-00-00 00:00:00'),
(411, 'Data pemeliharaan #30 Updated by User: #1', '1', '::1', '2023-06-19 00:48:45', '0000-00-00 00:00:00'),
(412, 'Data Pemeliharaan Ditambahkan 32 Created by User:Administrator', '1', '::1', '2023-06-19 00:49:35', '0000-00-00 00:00:00'),
(413, 'Data Pemeliharaan Ditambahkan 33 Created by User:Administrator', '1', '::1', '2023-06-19 00:50:15', '0000-00-00 00:00:00'),
(414, 'Data Pemeliharaan Ditambahkan 34 Created by User:Administrator', '1', '::1', '2023-06-19 00:50:36', '0000-00-00 00:00:00'),
(415, 'Data Pemeliharaan Ditambahkan 35 Created by User:Administrator', '1', '::1', '2023-06-19 00:51:07', '0000-00-00 00:00:00'),
(416, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-19 00:51:44', '0000-00-00 00:00:00'),
(417, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-06-19 00:51:53', '0000-00-00 00:00:00'),
(418, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-06-19 00:52:09', '0000-00-00 00:00:00'),
(419, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 00:52:43', '0000-00-00 00:00:00'),
(420, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 00:52:47', '0000-00-00 00:00:00'),
(421, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 00:52:51', '0000-00-00 00:00:00'),
(422, 'Data Pemeliharaan Ditambahkan 36 Created by User:Administrator', '1', '::1', '2023-06-19 00:53:07', '0000-00-00 00:00:00'),
(423, 'Data Pemeliharaan Ditambahkan 37 Created by User:Administrator', '1', '::1', '2023-06-19 00:53:30', '0000-00-00 00:00:00'),
(424, 'Data Pemeliharaan Ditambahkan 38 Created by User:Administrator', '1', '::1', '2023-06-19 00:53:52', '0000-00-00 00:00:00'),
(425, 'Data pemeliharaan #30 Updated by User: #1', '1', '::1', '2023-06-19 00:59:48', '0000-00-00 00:00:00'),
(426, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 00:59:54', '0000-00-00 00:00:00'),
(427, 'Data pemeliharaan #30 Updated by User: #1', '1', '::1', '2023-06-19 01:02:30', '0000-00-00 00:00:00'),
(428, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:03:47', '0000-00-00 00:00:00'),
(429, 'Data Pemeliharaan Ditambahkan 39 Created by User:Administrator', '1', '::1', '2023-06-19 01:04:07', '0000-00-00 00:00:00'),
(430, 'Data pemeliharaan #36 Updated by User: #1', '1', '::1', '2023-06-19 01:14:43', '0000-00-00 00:00:00'),
(431, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:15:24', '0000-00-00 00:00:00'),
(432, 'Data pemeliharaan #35 Updated by User: #1', '1', '::1', '2023-06-19 01:16:21', '0000-00-00 00:00:00'),
(433, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:16:29', '0000-00-00 00:00:00'),
(434, 'Data pemeliharaan #37 Updated by User: #1', '1', '::1', '2023-06-19 01:20:43', '0000-00-00 00:00:00'),
(435, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:20:54', '0000-00-00 00:00:00'),
(436, 'Data pemeliharaan #39 Updated by User: #1', '1', '::1', '2023-06-19 01:23:35', '0000-00-00 00:00:00'),
(437, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:24:51', '0000-00-00 00:00:00'),
(438, 'Data Pemeliharaan Ditambahkan 40 Created by User:Administrator', '1', '::1', '2023-06-19 01:25:05', '0000-00-00 00:00:00'),
(439, 'Data pemeliharaan #40 Updated by User: #1', '1', '::1', '2023-06-19 01:25:31', '0000-00-00 00:00:00'),
(440, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:30:21', '0000-00-00 00:00:00'),
(441, 'Data Pemeliharaan Ditambahkan 41 Created by User:Administrator', '1', '::1', '2023-06-19 01:30:33', '0000-00-00 00:00:00'),
(442, 'Data pemeliharaan #41 Updated by User: #1', '1', '::1', '2023-06-19 01:30:47', '0000-00-00 00:00:00'),
(443, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-19 01:39:17', '0000-00-00 00:00:00'),
(444, 'Data Pemeliharaan Ditambahkan 42 Created by User:Administrator', '1', '::1', '2023-06-19 01:39:31', '0000-00-00 00:00:00'),
(445, 'Data pemeliharaan #42 Updated by User: #1', '1', '::1', '2023-06-19 01:41:53', '0000-00-00 00:00:00'),
(446, 'Data pemeliharaan #42 Updated by User: #1', '1', '::1', '2023-06-19 01:42:39', '0000-00-00 00:00:00'),
(447, 'Data pemeliharaan #42 Updated by User: #1', '1', '::1', '2023-06-19 01:49:08', '0000-00-00 00:00:00'),
(448, 'Data Pemeliharaan Ditambahkan 43 Created by User:Administrator', '1', '::1', '2023-06-19 02:49:27', '0000-00-00 00:00:00'),
(449, 'Administrator (admin) Logged in', '1', '::1', '2023-06-20 01:47:48', '0000-00-00 00:00:00'),
(450, 'Data Ruangan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-06-20 02:02:16', '0000-00-00 00:00:00'),
(451, 'Data Inventaris #1 Deleted by User:Administrator', '1', '::1', '2023-06-20 02:02:23', '0000-00-00 00:00:00'),
(452, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-06-20 02:31:23', '0000-00-00 00:00:00'),
(453, 'Data Pemeliharaan Ditambahkan 44 Created by User:Administrator', '1', '::1', '2023-06-20 02:34:42', '0000-00-00 00:00:00'),
(454, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-20 02:42:09', '0000-00-00 00:00:00');
INSERT INTO `activity_logs` (`id`, `title`, `user`, `ip_address`, `created_at`, `updated_at`) VALUES
(455, 'Data Pemeliharaan Ditambahkan 45 Created by User:Administrator', '1', '::1', '2023-06-20 03:01:13', '0000-00-00 00:00:00'),
(456, 'Administrator (admin) Logged in', '1', '::1', '2023-06-20 12:42:01', '0000-00-00 00:00:00'),
(457, 'Data Pinjaman Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-06-20 12:54:20', '0000-00-00 00:00:00'),
(458, 'Data Pinjaman Inventaris #1 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-06-20 12:54:29', '0000-00-00 00:00:00'),
(459, 'Data Pinjaman Dikembalikan 1 Created by User:Administrator', '1', '::1', '2023-06-20 12:57:03', '0000-00-00 00:00:00'),
(460, 'Administrator (admin) Logged in', '1', '::1', '2023-06-21 00:29:05', '0000-00-00 00:00:00'),
(461, 'Data Pemeliharaan Ditambahkan 46 Created by User:Administrator', '1', '::1', '2023-06-21 00:38:15', '0000-00-00 00:00:00'),
(462, 'Data pemeliharaan #45 Updated by User: #1', '1', '::1', '2023-06-21 00:41:51', '0000-00-00 00:00:00'),
(463, 'Data pemeliharaan #46 Updated by User: #1', '1', '::1', '2023-06-21 00:42:00', '0000-00-00 00:00:00'),
(464, 'Data pemeliharaan #46 Updated by User: #1', '1', '::1', '2023-06-21 00:42:45', '0000-00-00 00:00:00'),
(465, 'Data pemeliharaan #45 Updated by User: #1', '1', '::1', '2023-06-21 00:44:02', '0000-00-00 00:00:00'),
(466, 'Data pemeliharaan #46 Updated by User: #1', '1', '::1', '2023-06-21 00:44:10', '0000-00-00 00:00:00'),
(467, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-21 01:14:01', '0000-00-00 00:00:00'),
(468, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-21 01:14:04', '0000-00-00 00:00:00'),
(469, 'Data Pemeliharaan Ditambahkan 47 Created by User:Administrator', '1', '::1', '2023-06-21 01:14:30', '0000-00-00 00:00:00'),
(470, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-21 01:15:02', '0000-00-00 00:00:00'),
(471, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-06-21 01:15:11', '0000-00-00 00:00:00'),
(472, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-06-21 01:15:19', '0000-00-00 00:00:00'),
(473, 'Data pemeliharaan #47 Updated by User: #1', '1', '::1', '2023-06-21 01:16:01', '0000-00-00 00:00:00'),
(474, 'Data Pemeliharaan Ditambahkan 48 Created by User:Administrator', '1', '::1', '2023-06-21 01:16:22', '0000-00-00 00:00:00'),
(475, 'Data pemeliharaan #47 Updated by User: #1', '1', '::1', '2023-06-21 01:16:48', '0000-00-00 00:00:00'),
(476, 'Data pemeliharaan #47 Updated by User: #1', '1', '::1', '2023-06-21 01:18:16', '0000-00-00 00:00:00'),
(477, 'Data Pemeliharaan Ditambahkan 49 Created by User:Administrator', '1', '::1', '2023-06-21 02:07:35', '0000-00-00 00:00:00'),
(478, 'Data Pemeliharaan Ditambahkan 50 Created by User:Administrator', '1', '::1', '2023-06-21 02:07:59', '0000-00-00 00:00:00'),
(479, 'Data Pemeliharaan Ditambahkan 51 Created by User:Administrator', '1', '::1', '2023-06-21 02:08:28', '0000-00-00 00:00:00'),
(480, 'Administrator (admin) Logged in', '1', '::1', '2023-06-22 10:48:36', '0000-00-00 00:00:00'),
(481, 'Administrator (admin) Logged in', '1', '::1', '2023-06-24 07:43:10', '0000-00-00 00:00:00'),
(482, 'Data pemeliharaan #51 Updated by User: #1', '1', '::1', '2023-06-24 07:43:27', '0000-00-00 00:00:00'),
(483, 'Data pemeliharaan #51 Updated by User: #1', '1', '::1', '2023-06-24 07:44:30', '0000-00-00 00:00:00'),
(484, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-24 08:01:17', '0000-00-00 00:00:00'),
(485, 'Data Pemeliharaan Ditambahkan 52 Created by User:Administrator', '1', '::1', '2023-06-24 08:01:54', '0000-00-00 00:00:00'),
(486, 'Data Inventaris Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-06-24 08:42:49', '0000-00-00 00:00:00'),
(487, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-24 09:08:27', '0000-00-00 00:00:00'),
(488, 'Data Pemeliharaan Ditambahkan 53 Created by User:Administrator', '1', '::1', '2023-06-24 09:08:51', '0000-00-00 00:00:00'),
(489, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-24 09:21:17', '0000-00-00 00:00:00'),
(490, 'Data Pemeliharaan Ditambahkan 54 Created by User:Administrator', '1', '::1', '2023-06-24 09:21:39', '0000-00-00 00:00:00'),
(491, 'Data Ruangan #3 Updated by User: #1', '1', '::1', '2023-06-24 09:24:27', '0000-00-00 00:00:00'),
(492, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-24 09:26:06', '0000-00-00 00:00:00'),
(493, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-24 09:28:02', '0000-00-00 00:00:00'),
(494, 'Data pemeliharaan #49 Updated by User: #1', '1', '::1', '2023-06-24 09:28:20', '0000-00-00 00:00:00'),
(495, 'Administrator (admin) Logged in', '1', '::1', '2023-06-26 01:13:46', '0000-00-00 00:00:00'),
(496, 'Data pemeliharaan #54 Updated by User: #1', '1', '::1', '2023-06-26 01:36:54', '0000-00-00 00:00:00'),
(497, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-26 01:44:14', '0000-00-00 00:00:00'),
(498, 'Data Pemeliharaan Ditambahkan 55 Created by User:Administrator', '1', '::1', '2023-06-26 01:44:30', '0000-00-00 00:00:00'),
(499, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-26 01:54:33', '0000-00-00 00:00:00'),
(500, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-26 01:54:45', '0000-00-00 00:00:00'),
(501, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-06-26 01:55:02', '0000-00-00 00:00:00'),
(502, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:06:30', '0000-00-00 00:00:00'),
(503, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:12:14', '0000-00-00 00:00:00'),
(504, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:17:33', '0000-00-00 00:00:00'),
(505, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:23:32', '0000-00-00 00:00:00'),
(506, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:25:40', '0000-00-00 00:00:00'),
(507, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 02:26:58', '0000-00-00 00:00:00'),
(508, 'Data Pemeliharaan Ditambahkan 60 Created by User:Administrator', '1', '::1', '2023-06-26 02:30:02', '0000-00-00 00:00:00'),
(509, 'Data Pemeliharaan Ditambahkan 61 Created by User:Administrator', '1', '::1', '2023-06-26 02:42:55', '0000-00-00 00:00:00'),
(510, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-06-26 02:45:23', '0000-00-00 00:00:00'),
(511, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-06-26 02:45:39', '0000-00-00 00:00:00'),
(512, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-06-26 02:45:56', '0000-00-00 00:00:00'),
(513, 'Data Pemeliharaan Ditambahkan 62 Created by User:Administrator', '1', '::1', '2023-06-26 02:59:00', '0000-00-00 00:00:00'),
(514, ' #1 Deleted by User:Administrator', '1', '::1', '2023-06-26 03:00:31', '0000-00-00 00:00:00'),
(515, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 03:56:21', '0000-00-00 00:00:00'),
(516, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 03:57:45', '0000-00-00 00:00:00'),
(517, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:02:35', '0000-00-00 00:00:00'),
(518, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:05:48', '0000-00-00 00:00:00'),
(519, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:09:09', '0000-00-00 00:00:00'),
(520, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:13:47', '0000-00-00 00:00:00'),
(521, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:18:48', '0000-00-00 00:00:00'),
(522, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:22:04', '0000-00-00 00:00:00'),
(523, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-06-26 04:24:22', '0000-00-00 00:00:00'),
(524, 'Administrator (admin) Logged in', '1', '::1', '2023-06-28 10:26:56', '0000-00-00 00:00:00'),
(525, 'Data Pemeliharaan Ditambahkan 69 Created by User:Administrator', '1', '::1', '2023-06-28 10:27:27', '0000-00-00 00:00:00'),
(526, 'New Permission #55 Created by User: #1', '1', '::1', '2023-06-28 12:23:10', '0000-00-00 00:00:00'),
(527, 'Role #1 Updated by User: #1', '1', '::1', '2023-06-28 12:23:22', '0000-00-00 00:00:00'),
(528, 'Role #1 Updated by User: #1', '1', '::1', '2023-06-28 12:37:45', '0000-00-00 00:00:00'),
(529, 'Administrator (admin) Logged in', '1', '::1', '2023-06-28 15:04:57', '0000-00-00 00:00:00'),
(530, 'Administrator (admin) Logged in', '1', '::1', '2023-07-04 00:31:32', '0000-00-00 00:00:00'),
(531, 'New Permission #56 Created by User: #1', '1', '::1', '2023-07-04 00:49:23', '0000-00-00 00:00:00'),
(532, 'New Permission #57 Created by User: #1', '1', '::1', '2023-07-04 00:49:23', '0000-00-00 00:00:00'),
(533, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 00:49:34', '0000-00-00 00:00:00'),
(534, 'Data Laporan Kerusakan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-07-04 00:50:04', '0000-00-00 00:00:00'),
(535, 'New Permission #58 Created by User: #1', '1', '::1', '2023-07-04 00:53:38', '0000-00-00 00:00:00'),
(536, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 00:56:38', '0000-00-00 00:00:00'),
(537, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-04 01:08:57', '0000-00-00 00:00:00'),
(538, 'Permission # Deleted by User: #1', '1', '::1', '2023-07-04 01:23:15', '0000-00-00 00:00:00'),
(539, 'Permission # Deleted by User: #1', '1', '::1', '2023-07-04 01:23:23', '0000-00-00 00:00:00'),
(540, 'New Permission #59 Created by User: #1', '1', '::1', '2023-07-04 01:25:29', '0000-00-00 00:00:00'),
(541, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 01:35:08', '0000-00-00 00:00:00'),
(542, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 01:35:39', '0000-00-00 00:00:00'),
(543, 'Data Laporan Kerusakan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-07-04 01:36:27', '0000-00-00 00:00:00'),
(544, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-04 01:36:42', '0000-00-00 00:00:00'),
(545, 'New Permission #60 Created by User: #1', '1', '::1', '2023-07-04 02:07:52', '0000-00-00 00:00:00'),
(546, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 02:08:05', '0000-00-00 00:00:00'),
(547, 'Data Laporkan Kerusakan #1 Updated by User: #1', '1', '::1', '2023-07-04 02:22:49', '0000-00-00 00:00:00'),
(548, 'Data Pemeliharaan Ditambahkan 70 Created by User:Administrator', '1', '::1', '2023-07-04 02:24:09', '0000-00-00 00:00:00'),
(549, 'Data pemeliharaan #70 Updated by User: #1', '1', '::1', '2023-07-04 02:24:20', '0000-00-00 00:00:00'),
(550, 'Administrator (admin) Logged in', '1', '::1', '2023-07-04 13:02:28', '0000-00-00 00:00:00'),
(551, 'Data Laporkan Kerusakan #1 Updated by User: #1', '1', '::1', '2023-07-04 13:03:58', '0000-00-00 00:00:00'),
(552, 'Data Laporkan Kerusakan #1 Updated by User: #1', '1', '::1', '2023-07-04 13:04:09', '0000-00-00 00:00:00'),
(553, 'Data Pinjaman Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-07-04 13:16:37', '0000-00-00 00:00:00'),
(554, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-04 13:17:17', '0000-00-00 00:00:00'),
(555, 'New Permission #61 Created by User: #1', '1', '::1', '2023-07-04 13:28:08', '0000-00-00 00:00:00'),
(556, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 13:28:17', '0000-00-00 00:00:00'),
(557, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-04 13:29:37', '0000-00-00 00:00:00'),
(558, 'Data Laporan Kerusakan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-07-04 13:31:50', '0000-00-00 00:00:00'),
(559, 'Data Lapor Kerusakan #3 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-04 13:31:55', '0000-00-00 00:00:00'),
(560, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-04 13:32:33', '0000-00-00 00:00:00'),
(561, 'Data Laporan Kerusakan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-07-04 13:32:49', '0000-00-00 00:00:00'),
(562, 'Data Lapor Kerusakan #4 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-04 13:32:56', '0000-00-00 00:00:00'),
(563, 'Administrator (admin) Logged in', '1', '::1', '2023-07-05 00:30:33', '0000-00-00 00:00:00'),
(564, 'Data Laporan Kerusakan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-07-05 01:20:08', '0000-00-00 00:00:00'),
(565, 'Data Laporan Kerusakan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-07-05 01:21:13', '0000-00-00 00:00:00'),
(566, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-05 01:21:18', '0000-00-00 00:00:00'),
(567, 'Data Laporan Kerusakan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-07-05 01:23:22', '0000-00-00 00:00:00'),
(568, 'Data Lapor Kerusakan #7 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-05 01:23:29', '0000-00-00 00:00:00'),
(569, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-05 01:23:34', '0000-00-00 00:00:00'),
(570, 'Role #4 Updated by User: #1', '1', '::1', '2023-07-05 01:28:27', '0000-00-00 00:00:00'),
(571, 'User #6 Updated by User:Administrator', '1', '::1', '2023-07-05 01:28:56', '0000-00-00 00:00:00'),
(572, 'User: Administrator Logged Out', '1', '::1', '2023-07-05 01:29:02', '0000-00-00 00:00:00'),
(573, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-07-05 01:29:09', '0000-00-00 00:00:00'),
(574, 'User: wahyu saepudin Logged Out', '6', '::1', '2023-07-05 01:29:24', '0000-00-00 00:00:00'),
(575, 'Administrator (admin) Logged in', '1', '::1', '2023-07-05 01:29:30', '0000-00-00 00:00:00'),
(576, 'Data Laporan Kerusakan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-07-05 01:30:41', '0000-00-00 00:00:00'),
(577, 'Data Laporkan Kerusakan #8 Updated by User: #1', '1', '::1', '2023-07-05 01:33:47', '0000-00-00 00:00:00'),
(578, 'Data Laporan Kerusakan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-07-05 02:03:01', '0000-00-00 00:00:00'),
(579, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-07-05 02:03:17', '0000-00-00 00:00:00'),
(580, 'New Permission #62 Created by User: #1', '1', '::1', '2023-07-06 01:29:39', '0000-00-00 00:00:00'),
(581, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-06 01:29:50', '0000-00-00 00:00:00'),
(582, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 01:31:38', '0000-00-00 00:00:00'),
(583, 'Data Inventaris Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-07-06 01:58:47', '0000-00-00 00:00:00'),
(584, 'Data Inventaris Ditambahkan 20 Created by User:Administrator', '1', '::1', '2023-07-06 02:03:15', '0000-00-00 00:00:00'),
(585, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-06 02:03:34', '0000-00-00 00:00:00'),
(586, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-06 02:16:23', '0000-00-00 00:00:00'),
(587, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:28:26', '0000-00-00 00:00:00'),
(588, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:29:16', '0000-00-00 00:00:00'),
(589, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:30:43', '0000-00-00 00:00:00'),
(590, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:32:39', '0000-00-00 00:00:00'),
(591, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-06 02:33:50', '0000-00-00 00:00:00'),
(592, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-06 02:34:10', '0000-00-00 00:00:00'),
(593, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:36:41', '0000-00-00 00:00:00'),
(594, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:37:02', '0000-00-00 00:00:00'),
(595, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-06 02:37:26', '0000-00-00 00:00:00'),
(596, 'Data Inventaris Ditambahkan 21 Created by User:Administrator', '1', '::1', '2023-07-06 02:46:43', '0000-00-00 00:00:00'),
(597, 'Data Inventaris #16 Updated by User: #1', '1', '::1', '2023-07-06 02:47:07', '0000-00-00 00:00:00'),
(598, 'Data Inventaris #17 Updated by User: #1', '1', '::1', '2023-07-06 02:47:16', '0000-00-00 00:00:00'),
(599, 'Data Lapor Kerusakan #9 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-06 02:55:49', '0000-00-00 00:00:00'),
(600, 'New Permission #63 Created by User: #1', '1', '::1', '2023-07-06 03:13:52', '0000-00-00 00:00:00'),
(601, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-06 03:14:05', '0000-00-00 00:00:00'),
(602, 'New Permission #64 Created by User: #1', '1', '::1', '2023-07-06 03:16:59', '0000-00-00 00:00:00'),
(603, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-06 03:17:14', '0000-00-00 00:00:00'),
(604, 'Data Jurusan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-07-06 03:17:38', '0000-00-00 00:00:00'),
(605, 'New Permission #65 Created by User: #1', '1', '::1', '2023-07-06 03:20:10', '0000-00-00 00:00:00'),
(606, 'New Permission #66 Created by User: #1', '1', '::1', '2023-07-06 03:20:24', '0000-00-00 00:00:00'),
(607, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-06 03:20:37', '0000-00-00 00:00:00'),
(608, 'Data Jurusan #1 Updated by User: #1', '1', '::1', '2023-07-06 03:21:29', '0000-00-00 00:00:00'),
(609, 'Data Jurusan #1 Updated by User: #1', '1', '::1', '2023-07-06 03:21:34', '0000-00-00 00:00:00'),
(610, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-06 03:25:50', '0000-00-00 00:00:00'),
(611, 'Administrator (admin) Logged in', '1', '::1', '2023-07-06 06:50:17', '0000-00-00 00:00:00'),
(612, 'Data Inventaris Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-07-06 07:15:14', '0000-00-00 00:00:00'),
(613, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-06 07:21:50', '0000-00-00 00:00:00'),
(614, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-07-06 07:22:00', '0000-00-00 00:00:00'),
(615, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-06 07:22:09', '0000-00-00 00:00:00'),
(616, 'Data Inventaris #16 Updated by User: #1', '1', '::1', '2023-07-06 07:22:28', '0000-00-00 00:00:00'),
(617, 'Data Inventaris #21 Updated by User: #1', '1', '::1', '2023-07-06 07:22:38', '0000-00-00 00:00:00'),
(618, 'Data Inventaris #17 Updated by User: #1', '1', '::1', '2023-07-06 07:22:49', '0000-00-00 00:00:00'),
(619, 'Data Pemeliharaan Ditambahkan 71 Created by User:Administrator', '1', '::1', '2023-07-06 07:44:15', '0000-00-00 00:00:00'),
(620, 'Data Pemeliharaan Ditambahkan 72 Created by User:Administrator', '1', '::1', '2023-07-06 07:46:35', '0000-00-00 00:00:00'),
(621, 'Data Pemeliharaan Ditambahkan 73 Created by User:Administrator', '1', '::1', '2023-07-06 07:48:26', '0000-00-00 00:00:00'),
(622, 'Administrator (admin) Logged in', '1', '::1', '2023-07-07 02:11:12', '0000-00-00 00:00:00'),
(623, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:36:18', '0000-00-00 00:00:00'),
(624, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:36:53', '0000-00-00 00:00:00'),
(625, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:37:19', '0000-00-00 00:00:00'),
(626, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:40:05', '0000-00-00 00:00:00'),
(627, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:41:10', '0000-00-00 00:00:00'),
(628, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:45:14', '0000-00-00 00:00:00'),
(629, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:45:48', '0000-00-00 00:00:00'),
(630, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:56:54', '0000-00-00 00:00:00'),
(631, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:58:26', '0000-00-00 00:00:00'),
(632, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 02:58:40', '0000-00-00 00:00:00'),
(633, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:11:46', '0000-00-00 00:00:00'),
(634, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:12:56', '0000-00-00 00:00:00'),
(635, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:18:00', '0000-00-00 00:00:00'),
(636, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:21:25', '0000-00-00 00:00:00'),
(637, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:26:25', '0000-00-00 00:00:00'),
(638, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:28:33', '0000-00-00 00:00:00'),
(639, 'Data Pemeliharaan Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 03:30:21', '0000-00-00 00:00:00'),
(640, 'Administrator (admin) Logged in', '1', '::1', '2023-07-07 04:32:34', '0000-00-00 00:00:00'),
(641, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-07 06:15:39', '0000-00-00 00:00:00'),
(642, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-07 06:15:55', '0000-00-00 00:00:00'),
(643, 'Data Inventaris Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-07 06:16:55', '0000-00-00 00:00:00'),
(644, 'Data Inventaris Ditambahkan 23 Created by User:Administrator', '1', '::1', '2023-07-07 06:19:30', '0000-00-00 00:00:00'),
(645, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-07 06:19:42', '0000-00-00 00:00:00'),
(646, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-07 06:19:55', '0000-00-00 00:00:00'),
(647, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-07 06:20:04', '0000-00-00 00:00:00'),
(648, 'Data Pemeliharaan Ditambahkan 1 Created by User:Administrator', '1', '::1', '2023-07-07 06:53:37', '0000-00-00 00:00:00'),
(649, 'Administrator (admin) Logged in', '1', '::1', '2023-07-07 11:35:19', '0000-00-00 00:00:00'),
(650, 'Data Pemeliharaan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-07-07 11:35:34', '0000-00-00 00:00:00'),
(651, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-07 11:35:45', '0000-00-00 00:00:00'),
(652, 'Data Pemeliharaan Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-07-07 12:11:42', '0000-00-00 00:00:00'),
(653, 'Data Ruangan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-07-07 12:35:16', '0000-00-00 00:00:00'),
(654, 'Administrator (admin) Logged in', '1', '::1', '2023-07-08 07:50:46', '0000-00-00 00:00:00'),
(655, 'Data Jurusan Ditambahkan 2 Created by User:Administrator', '1', '::1', '2023-07-08 08:01:19', '0000-00-00 00:00:00'),
(656, 'Data Inventaris #15 Updated by User: #1', '1', '::1', '2023-07-08 08:02:04', '0000-00-00 00:00:00'),
(657, 'Data Pemeliharaan Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-07-08 08:17:28', '0000-00-00 00:00:00'),
(658, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-08 08:17:44', '0000-00-00 00:00:00'),
(659, 'Administrator (admin) Logged in', '1', '::1', '2023-07-09 00:44:54', '0000-00-00 00:00:00'),
(660, 'Data Pemeliharaan Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-07-09 01:04:34', '0000-00-00 00:00:00'),
(661, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 01:04:50', '0000-00-00 00:00:00'),
(662, 'Data Pemeliharaan Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-07-09 01:42:54', '0000-00-00 00:00:00'),
(663, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 01:43:07', '0000-00-00 00:00:00'),
(664, 'Data Pinjaman Ditambahkan 3 Created by User:Administrator', '1', '::1', '2023-07-09 02:00:32', '0000-00-00 00:00:00'),
(665, 'Data Pinjaman Inventaris #3 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-09 02:00:34', '0000-00-00 00:00:00'),
(666, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 02:01:24', '0000-00-00 00:00:00'),
(667, 'Data Pemeliharaan Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-07-09 03:48:04', '0000-00-00 00:00:00'),
(668, 'Data Pemeliharaan Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-07-09 03:49:24', '0000-00-00 00:00:00'),
(669, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 03:49:29', '0000-00-00 00:00:00'),
(670, 'Data Pemeliharaan Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-07-09 03:50:31', '0000-00-00 00:00:00'),
(671, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 03:50:41', '0000-00-00 00:00:00'),
(672, 'Data Pemeliharaan Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-07-09 04:04:54', '0000-00-00 00:00:00'),
(673, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 04:05:08', '0000-00-00 00:00:00'),
(674, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 04:05:11', '0000-00-00 00:00:00'),
(675, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 04:05:16', '0000-00-00 00:00:00'),
(676, 'Data Pemeliharaan Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-07-09 04:05:54', '0000-00-00 00:00:00'),
(677, 'Administrator (admin) Logged in', '1', '::1', '2023-07-09 06:22:17', '0000-00-00 00:00:00'),
(678, 'Data Pemeliharaan Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-07-09 06:23:55', '0000-00-00 00:00:00'),
(679, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:24:08', '0000-00-00 00:00:00'),
(680, 'Data Pemeliharaan Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-07-09 06:27:38', '0000-00-00 00:00:00'),
(681, 'Data Pemeliharaan Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-07-09 06:27:52', '0000-00-00 00:00:00'),
(682, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:27:56', '0000-00-00 00:00:00'),
(683, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:27:59', '0000-00-00 00:00:00'),
(684, 'Data Pemeliharaan Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-07-09 06:33:35', '0000-00-00 00:00:00'),
(685, 'Data Pemeliharaan Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-07-09 06:33:51', '0000-00-00 00:00:00'),
(686, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:33:55', '0000-00-00 00:00:00'),
(687, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:33:58', '0000-00-00 00:00:00'),
(688, 'Data Pemeliharaan Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-07-09 06:41:27', '0000-00-00 00:00:00'),
(689, 'Data Pemeliharaan Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-07-09 06:41:58', '0000-00-00 00:00:00'),
(690, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:42:01', '0000-00-00 00:00:00'),
(691, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:42:04', '0000-00-00 00:00:00'),
(692, 'Data Pemeliharaan Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-07-09 06:45:01', '0000-00-00 00:00:00'),
(693, 'Data Pemeliharaan Ditambahkan 20 Created by User:Administrator', '1', '::1', '2023-07-09 06:45:14', '0000-00-00 00:00:00'),
(694, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:45:19', '0000-00-00 00:00:00'),
(695, 'Data Pemeliharaan Ditambahkan 21 Created by User:Administrator', '1', '::1', '2023-07-09 06:45:33', '0000-00-00 00:00:00'),
(696, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:46:05', '0000-00-00 00:00:00'),
(697, 'Data Pemeliharaan Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-07-09 06:47:48', '0000-00-00 00:00:00'),
(698, 'Data Pemeliharaan Ditambahkan 23 Created by User:Administrator', '1', '::1', '2023-07-09 06:48:05', '0000-00-00 00:00:00'),
(699, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:48:12', '0000-00-00 00:00:00'),
(700, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 06:48:14', '0000-00-00 00:00:00'),
(701, 'Data Pemeliharaan Ditambahkan 24 Created by User:Administrator', '1', '::1', '2023-07-09 07:02:52', '0000-00-00 00:00:00'),
(702, 'Data Pemeliharaan Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-07-09 07:12:42', '0000-00-00 00:00:00'),
(703, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 07:12:59', '0000-00-00 00:00:00'),
(704, 'Data Pemeliharaan Ditambahkan 26 Created by User:Administrator', '1', '::1', '2023-07-09 07:25:39', '0000-00-00 00:00:00'),
(705, 'Data Pemeliharaan Ditambahkan 27 Created by User:Administrator', '1', '::1', '2023-07-09 07:25:53', '0000-00-00 00:00:00'),
(706, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 07:25:58', '0000-00-00 00:00:00'),
(707, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-09 07:26:01', '0000-00-00 00:00:00'),
(708, 'Data Pemeliharaan Ditambahkan 28 Created by User:Administrator', '1', '::1', '2023-07-09 08:11:37', '0000-00-00 00:00:00'),
(709, 'Data Pemeliharaan Ditambahkan 29 Created by User:Administrator', '1', '::1', '2023-07-09 08:48:40', '0000-00-00 00:00:00'),
(710, 'Data Pemeliharaan Ditambahkan 30 Created by User:Administrator', '1', '::1', '2023-07-09 10:11:47', '0000-00-00 00:00:00'),
(711, 'Data Pemeliharaan Ditambahkan 31 Created by User:Administrator', '1', '::1', '2023-07-09 10:12:16', '0000-00-00 00:00:00'),
(712, 'Data Pemeliharaan Ditambahkan 32 Created by User:Administrator', '1', '::1', '2023-07-09 10:12:46', '0000-00-00 00:00:00'),
(713, 'Administrator (admin) Logged in', '1', '::1', '2023-07-10 23:57:11', '0000-00-00 00:00:00'),
(714, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-10 23:57:23', '0000-00-00 00:00:00'),
(715, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-10 23:57:27', '0000-00-00 00:00:00'),
(716, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-10 23:57:31', '0000-00-00 00:00:00'),
(717, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-10 23:57:34', '0000-00-00 00:00:00'),
(718, 'Data Pemeliharaan Ditambahkan 33 Created by User:Administrator', '1', '::1', '2023-07-10 23:58:20', '0000-00-00 00:00:00'),
(719, 'Data Pemeliharaan Ditambahkan 34 Created by User:Administrator', '1', '::1', '2023-07-11 00:03:10', '0000-00-00 00:00:00'),
(720, 'Data Pemeliharaan Ditambahkan 35 Created by User:Administrator', '1', '::1', '2023-07-11 00:13:08', '0000-00-00 00:00:00'),
(721, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:28:21', '0000-00-00 00:00:00'),
(722, 'Data Pemeliharaan Ditambahkan 36 Created by User:Administrator', '1', '::1', '2023-07-11 00:28:39', '0000-00-00 00:00:00'),
(723, 'Data Pemeliharaan Ditambahkan 37 Created by User:Administrator', '1', '::1', '2023-07-11 00:28:52', '0000-00-00 00:00:00'),
(724, 'Data Pemeliharaan Ditambahkan 38 Created by User:Administrator', '1', '::1', '2023-07-11 00:29:06', '0000-00-00 00:00:00'),
(725, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:29:10', '0000-00-00 00:00:00'),
(726, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:29:13', '0000-00-00 00:00:00'),
(727, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:29:16', '0000-00-00 00:00:00'),
(728, 'Data Pemeliharaan Ditambahkan 39 Created by User:Administrator', '1', '::1', '2023-07-11 00:50:16', '0000-00-00 00:00:00'),
(729, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:53:51', '0000-00-00 00:00:00'),
(730, 'Data Pemeliharaan Ditambahkan 40 Created by User:Administrator', '1', '::1', '2023-07-11 00:54:12', '0000-00-00 00:00:00'),
(731, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:57:25', '0000-00-00 00:00:00'),
(732, 'Data Pemeliharaan Ditambahkan 41 Created by User:Administrator', '1', '::1', '2023-07-11 00:57:47', '0000-00-00 00:00:00'),
(733, 'Data Pemeliharaan Ditambahkan 42 Created by User:Administrator', '1', '::1', '2023-07-11 00:58:03', '0000-00-00 00:00:00'),
(734, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:58:07', '0000-00-00 00:00:00'),
(735, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 00:58:10', '0000-00-00 00:00:00'),
(736, 'Data Pemeliharaan Ditambahkan 43 Created by User:Administrator', '1', '::1', '2023-07-11 01:11:41', '0000-00-00 00:00:00'),
(737, 'Data Pemeliharaan Ditambahkan 44 Created by User:Administrator', '1', '::1', '2023-07-11 01:28:01', '0000-00-00 00:00:00'),
(738, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 01:42:38', '0000-00-00 00:00:00'),
(739, 'Data Pemeliharaan Ditambahkan 45 Created by User:Administrator', '1', '::1', '2023-07-11 01:55:13', '0000-00-00 00:00:00'),
(740, 'Data Pemeliharaan Ditambahkan 46 Created by User:Administrator', '1', '::1', '2023-07-11 02:02:43', '0000-00-00 00:00:00'),
(741, 'Data Pemeliharaan Ditambahkan 47 Created by User:Administrator', '1', '::1', '2023-07-11 02:22:57', '0000-00-00 00:00:00'),
(742, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-11 02:23:11', '0000-00-00 00:00:00'),
(743, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-11 02:23:27', '0000-00-00 00:00:00'),
(744, 'Data Pemeliharaan Ditambahkan 48 Created by User:Administrator', '1', '::1', '2023-07-11 02:31:53', '0000-00-00 00:00:00'),
(745, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-11 02:32:17', '0000-00-00 00:00:00'),
(746, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-11 02:32:33', '0000-00-00 00:00:00'),
(747, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 02:40:25', '0000-00-00 00:00:00'),
(748, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 02:40:28', '0000-00-00 00:00:00'),
(749, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 02:40:31', '0000-00-00 00:00:00'),
(750, 'Data Pemeliharaan Ditambahkan 49 Created by User:Administrator', '1', '::1', '2023-07-11 03:12:14', '0000-00-00 00:00:00'),
(751, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 03:12:24', '0000-00-00 00:00:00'),
(752, 'Data Pemeliharaan Ditambahkan 50 Created by User:Administrator', '1', '::1', '2023-07-11 03:18:09', '0000-00-00 00:00:00'),
(753, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 03:18:50', '0000-00-00 00:00:00'),
(754, 'Data Pemeliharaan Ditambahkan 51 Created by User:Administrator', '1', '::1', '2023-07-11 03:19:05', '0000-00-00 00:00:00'),
(755, 'Data Pemeliharaan Ditambahkan 52 Created by User:Administrator', '1', '::1', '2023-07-11 03:19:21', '0000-00-00 00:00:00'),
(756, 'Data Pemeliharaan Ditambahkan 53 Created by User:Administrator', '1', '::1', '2023-07-11 03:21:10', '0000-00-00 00:00:00'),
(757, 'Administrator (admin) Logged in', '1', '::1', '2023-07-11 06:22:04', '0000-00-00 00:00:00'),
(758, 'Data Pemeliharaan Ditambahkan 54 Created by User:Administrator', '1', '::1', '2023-07-11 06:26:21', '0000-00-00 00:00:00'),
(759, 'Data Pemeliharaan Ditambahkan 55 Created by User:Administrator', '1', '::1', '2023-07-11 06:37:43', '0000-00-00 00:00:00'),
(760, 'Data Pemeliharaan Ditambahkan 56 Created by User:Administrator', '1', '::1', '2023-07-11 06:45:29', '0000-00-00 00:00:00'),
(761, 'Data Pemeliharaan Ditambahkan 57 Created by User:Administrator', '1', '::1', '2023-07-11 06:45:53', '0000-00-00 00:00:00'),
(762, 'Data Pemeliharaan Ditambahkan 58 Created by User:Administrator', '1', '::1', '2023-07-11 06:48:10', '0000-00-00 00:00:00'),
(763, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 06:49:23', '0000-00-00 00:00:00'),
(764, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 06:49:26', '0000-00-00 00:00:00'),
(765, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 06:49:29', '0000-00-00 00:00:00'),
(766, 'Data Pemeliharaan Ditambahkan 59 Created by User:Administrator', '1', '::1', '2023-07-11 06:59:12', '0000-00-00 00:00:00'),
(767, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-07-11 06:59:24', '0000-00-00 00:00:00'),
(768, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-11 06:59:48', '0000-00-00 00:00:00'),
(769, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-07-11 07:01:17', '0000-00-00 00:00:00'),
(770, 'Data Pemeliharaan Ditambahkan 60 Created by User:Administrator', '1', '::1', '2023-07-11 07:01:31', '0000-00-00 00:00:00'),
(771, 'Data Pemeliharaan Ditambahkan 61 Created by User:Administrator', '1', '::1', '2023-07-11 07:02:12', '0000-00-00 00:00:00'),
(772, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-11 07:03:39', '0000-00-00 00:00:00'),
(773, 'Data Inventaris #13 Updated by User: #1', '1', '::1', '2023-07-11 07:03:55', '0000-00-00 00:00:00'),
(774, 'Administrator (admin) Logged in', '1', '::1', '2023-07-11 13:13:29', '0000-00-00 00:00:00'),
(775, 'Data Pemeliharaan Ditambahkan 62 Created by User:Administrator', '1', '::1', '2023-07-11 13:17:40', '0000-00-00 00:00:00'),
(776, 'Data pemeliharaan #60 Updated by User: #1', '1', '::1', '2023-07-11 13:37:39', '0000-00-00 00:00:00'),
(777, 'Administrator (admin) Logged in', '1', '::1', '2023-07-12 00:40:57', '0000-00-00 00:00:00'),
(778, 'Data pemeliharaan #61 Updated by User: #1', '1', '::1', '2023-07-12 01:10:21', '0000-00-00 00:00:00'),
(779, 'Data Pemeliharaan Ditambahkan 63 Created by User:Administrator', '1', '::1', '2023-07-12 01:21:54', '0000-00-00 00:00:00'),
(780, 'Data Pinjaman Ditambahkan 4 Created by User:Administrator', '1', '::1', '2023-07-12 01:26:48', '0000-00-00 00:00:00'),
(781, 'Data pemeliharaan #62 Updated by User: #1', '1', '::1', '2023-07-12 01:44:50', '0000-00-00 00:00:00'),
(782, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 01:45:12', '0000-00-00 00:00:00'),
(783, 'Data Pemeliharaan Ditambahkan 64 Created by User:Administrator', '1', '::1', '2023-07-12 01:57:49', '0000-00-00 00:00:00'),
(784, 'Data pemeliharaan #63 Updated by User: #1', '1', '::1', '2023-07-12 01:58:09', '0000-00-00 00:00:00'),
(785, 'Data pemeliharaan #63 Updated by User: #1', '1', '::1', '2023-07-12 01:59:39', '0000-00-00 00:00:00'),
(786, 'Data Pemeliharaan Ditambahkan 65 Created by User:Administrator', '1', '::1', '2023-07-12 02:00:26', '0000-00-00 00:00:00'),
(787, 'Data pemeliharaan #64 Updated by User: #1', '1', '::1', '2023-07-12 02:09:41', '0000-00-00 00:00:00'),
(788, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:09:59', '0000-00-00 00:00:00'),
(789, 'Data Pemeliharaan Ditambahkan 66 Created by User:Administrator', '1', '::1', '2023-07-12 02:13:03', '0000-00-00 00:00:00'),
(790, 'Data pemeliharaan #65 Updated by User: #1', '1', '::1', '2023-07-12 02:13:10', '0000-00-00 00:00:00'),
(791, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:13:14', '0000-00-00 00:00:00'),
(792, 'Data Pemeliharaan Ditambahkan 67 Created by User:Administrator', '1', '::1', '2023-07-12 02:18:37', '0000-00-00 00:00:00'),
(793, 'Data pemeliharaan #66 Updated by User: #1', '1', '::1', '2023-07-12 02:18:58', '0000-00-00 00:00:00'),
(794, 'Data Pemeliharaan Ditambahkan 68 Created by User:Administrator', '1', '::1', '2023-07-12 02:21:48', '0000-00-00 00:00:00'),
(795, 'Data pemeliharaan #67 Updated by User: #1', '1', '::1', '2023-07-12 02:23:37', '0000-00-00 00:00:00'),
(796, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:24:00', '0000-00-00 00:00:00'),
(797, 'Data Pemeliharaan Ditambahkan 69 Created by User:Administrator', '1', '::1', '2023-07-12 02:24:12', '0000-00-00 00:00:00'),
(798, 'Data pemeliharaan #68 Updated by User: #1', '1', '::1', '2023-07-12 02:29:31', '0000-00-00 00:00:00'),
(799, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:29:37', '0000-00-00 00:00:00'),
(800, 'Data Pemeliharaan Ditambahkan 70 Created by User:Administrator', '1', '::1', '2023-07-12 02:31:18', '0000-00-00 00:00:00'),
(801, 'Data Pemeliharaan Ditambahkan 71 Created by User:Administrator', '1', '::1', '2023-07-12 02:31:18', '0000-00-00 00:00:00'),
(802, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:31:45', '0000-00-00 00:00:00'),
(803, 'Data pemeliharaan #69 Updated by User: #1', '1', '::1', '2023-07-12 02:33:19', '0000-00-00 00:00:00'),
(804, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:33:23', '0000-00-00 00:00:00'),
(805, 'Data Pemeliharaan Ditambahkan 72 Created by User:Administrator', '1', '::1', '2023-07-12 02:33:51', '0000-00-00 00:00:00'),
(806, 'Data pemeliharaan #70 Updated by User: #1', '1', '::1', '2023-07-12 02:34:03', '0000-00-00 00:00:00'),
(807, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 02:34:09', '0000-00-00 00:00:00'),
(808, 'Data Pemeliharaan Ditambahkan 73 Created by User:Administrator', '1', '::1', '2023-07-12 02:35:54', '0000-00-00 00:00:00'),
(809, 'Data pemeliharaan #72 Updated by User: #1', '1', '::1', '2023-07-12 02:36:14', '0000-00-00 00:00:00'),
(810, 'Data Pemeliharaan Ditambahkan 74 Created by User:Administrator', '1', '::1', '2023-07-12 02:38:10', '0000-00-00 00:00:00'),
(811, 'Data pemeliharaan #73 Updated by User: #1', '1', '::1', '2023-07-12 03:41:13', '0000-00-00 00:00:00'),
(812, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 03:41:25', '0000-00-00 00:00:00'),
(813, 'Data Pemeliharaan Ditambahkan 75 Created by User:Administrator', '1', '::1', '2023-07-12 03:45:30', '0000-00-00 00:00:00'),
(814, 'Data pemeliharaan #74 Updated by User: #1', '1', '::1', '2023-07-12 04:36:13', '0000-00-00 00:00:00'),
(815, 'Data pemeliharaan #75 Updated by User: #1', '1', '::1', '2023-07-12 04:36:31', '0000-00-00 00:00:00'),
(816, 'Data Pemeliharaan Ditambahkan 76 Created by User:Administrator', '1', '::1', '2023-07-12 04:40:29', '0000-00-00 00:00:00'),
(817, 'Data pemeliharaan #76 Updated by User: #1', '1', '::1', '2023-07-12 04:41:16', '0000-00-00 00:00:00'),
(818, 'Data Pemeliharaan Ditambahkan 77 Created by User:Administrator', '1', '::1', '2023-07-12 04:44:35', '0000-00-00 00:00:00'),
(819, 'Data pemeliharaan #77 Updated by User: #1', '1', '::1', '2023-07-12 04:48:35', '0000-00-00 00:00:00'),
(820, 'Data Pemeliharaan Ditambahkan 78 Created by User:Administrator', '1', '::1', '2023-07-12 04:49:02', '0000-00-00 00:00:00'),
(821, 'Data pemeliharaan #78 Updated by User: #1', '1', '::1', '2023-07-12 04:52:56', '0000-00-00 00:00:00'),
(822, 'Data pemeliharaan #78 Updated by User: #1', '1', '::1', '2023-07-12 04:56:05', '0000-00-00 00:00:00'),
(823, 'Data Pemeliharaan Ditambahkan 79 Created by User:Administrator', '1', '::1', '2023-07-12 04:57:11', '0000-00-00 00:00:00'),
(824, 'Data pemeliharaan #79 Updated by User: #1', '1', '::1', '2023-07-12 04:57:22', '0000-00-00 00:00:00'),
(825, 'Data pemeliharaan #79 Updated by User: #1', '1', '::1', '2023-07-12 04:58:56', '0000-00-00 00:00:00'),
(826, 'Data pemeliharaan #79 Updated by User: #1', '1', '::1', '2023-07-12 04:59:51', '0000-00-00 00:00:00'),
(827, 'Data Pemeliharaan Ditambahkan 80 Created by User:Administrator', '1', '::1', '2023-07-12 05:01:44', '0000-00-00 00:00:00'),
(828, 'Data pemeliharaan #80 Updated by User: #1', '1', '::1', '2023-07-12 05:01:59', '0000-00-00 00:00:00'),
(829, 'Data pemeliharaan #80 Updated by User: #1', '1', '::1', '2023-07-12 05:12:17', '0000-00-00 00:00:00'),
(830, 'Data Pemeliharaan Ditambahkan 81 Created by User:Administrator', '1', '::1', '2023-07-12 05:19:03', '0000-00-00 00:00:00'),
(831, 'Data pemeliharaan #81 Updated by User: #1', '1', '::1', '2023-07-12 05:20:22', '0000-00-00 00:00:00'),
(832, 'Data Pemeliharaan Ditambahkan 82 Created by User:Administrator', '1', '::1', '2023-07-12 05:21:22', '0000-00-00 00:00:00'),
(833, 'Data pemeliharaan #82 Updated by User: #1', '1', '::1', '2023-07-12 05:23:27', '0000-00-00 00:00:00'),
(834, 'Data Pemeliharaan Ditambahkan 83 Created by User:Administrator', '1', '::1', '2023-07-12 05:52:15', '0000-00-00 00:00:00'),
(835, 'Data pemeliharaan #83 Updated by User: #1', '1', '::1', '2023-07-12 05:53:21', '0000-00-00 00:00:00'),
(836, 'Data pemeliharaan #83 Updated by User: #1', '1', '::1', '2023-07-12 05:55:41', '0000-00-00 00:00:00'),
(837, 'Data pemeliharaan #83 Updated by User: #1', '1', '::1', '2023-07-12 06:06:17', '0000-00-00 00:00:00'),
(838, 'Data pemeliharaan #83 Updated by User: #1', '1', '::1', '2023-07-12 07:12:11', '0000-00-00 00:00:00'),
(839, 'Data Pemeliharaan Ditambahkan 84 Created by User:Administrator', '1', '::1', '2023-07-12 07:13:27', '0000-00-00 00:00:00'),
(840, 'Data Pemeliharaan Ditambahkan 85 Created by User:Administrator', '1', '::1', '2023-07-12 07:25:41', '0000-00-00 00:00:00'),
(841, 'Data pemeliharaan #85 Updated by User: #1', '1', '::1', '2023-07-12 07:55:13', '0000-00-00 00:00:00'),
(842, 'Data pemeliharaan #84 Updated by User: #1', '1', '::1', '2023-07-12 07:55:41', '0000-00-00 00:00:00'),
(843, 'Data pemeliharaan #84 Updated by User: #1', '1', '::1', '2023-07-12 07:56:50', '0000-00-00 00:00:00'),
(844, 'Data pemeliharaan #84 Updated by User: #1', '1', '::1', '2023-07-12 08:01:41', '0000-00-00 00:00:00'),
(845, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 08:03:50', '0000-00-00 00:00:00'),
(846, 'Data Jurusan #1 Updated by User: #1', '1', '::1', '2023-07-12 09:07:19', '0000-00-00 00:00:00'),
(847, 'Data Jurusan #1 Updated by User: #1', '1', '::1', '2023-07-12 09:07:33', '0000-00-00 00:00:00'),
(848, 'Data Pemeliharaan Ditambahkan 86 Created by User:Administrator', '1', '::1', '2023-07-12 09:20:08', '0000-00-00 00:00:00'),
(849, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 09:20:23', '0000-00-00 00:00:00'),
(850, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 09:20:38', '0000-00-00 00:00:00'),
(851, 'Data Laporan Kerusakan Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-07-12 09:21:59', '0000-00-00 00:00:00'),
(852, 'Data Lapor Kerusakan #10 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-12 09:22:45', '0000-00-00 00:00:00'),
(853, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 09:23:08', '0000-00-00 00:00:00'),
(854, 'Data Laporan Kerusakan Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-07-12 09:25:43', '0000-00-00 00:00:00'),
(855, 'Data Laporan Kerusakan Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-07-12 09:29:00', '0000-00-00 00:00:00'),
(856, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-12 09:29:43', '0000-00-00 00:00:00'),
(857, 'Data Laporan Kerusakan Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-07-12 09:29:51', '0000-00-00 00:00:00'),
(858, 'Data Laporkan Kerusakan #13 Updated by User: #1', '1', '::1', '2023-07-12 09:44:18', '0000-00-00 00:00:00'),
(859, 'Data Laporan Kerusakan Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-07-12 09:46:45', '0000-00-00 00:00:00'),
(860, 'Data Lapor Kerusakan #14 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-12 09:46:48', '0000-00-00 00:00:00'),
(861, 'Data Laporkan Kerusakan #14 Updated by User: #1', '1', '::1', '2023-07-12 09:46:54', '0000-00-00 00:00:00'),
(862, 'Administrator (admin) Logged in', '1', '::1', '2023-07-13 00:50:05', '0000-00-00 00:00:00'),
(863, 'Administrator (admin) Logged in', '1', '::1', '2023-07-13 05:14:51', '0000-00-00 00:00:00'),
(864, 'Data Pinjaman Inventaris #4 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-13 06:17:46', '0000-00-00 00:00:00'),
(865, 'Company Settings Updated by User: #1', '1', '::1', '2023-07-13 06:18:35', '0000-00-00 00:00:00'),
(866, 'Company Settings Updated by User: #1', '1', '::1', '2023-07-13 06:18:39', '0000-00-00 00:00:00'),
(867, 'New Role #5 Created by User: #1', '1', '::1', '2023-07-13 06:33:22', '0000-00-00 00:00:00'),
(868, 'New Permission #67 Created by User: #1', '1', '::1', '2023-07-13 07:59:09', '0000-00-00 00:00:00'),
(869, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-13 07:59:18', '0000-00-00 00:00:00'),
(870, 'Data Pemeliharaan Ditambahkan 87 Created by User:Administrator', '1', '::1', '2023-07-13 09:26:10', '0000-00-00 00:00:00'),
(871, 'Data Inventaris #14 Updated by User: #1', '1', '::1', '2023-07-13 09:26:41', '0000-00-00 00:00:00'),
(872, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-13 09:27:13', '0000-00-00 00:00:00'),
(873, 'Administrator (admin) Logged in', '1', '::1', '2023-07-14 00:43:30', '0000-00-00 00:00:00'),
(874, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-14 00:43:45', '0000-00-00 00:00:00'),
(875, 'Data Pinjaman Ditambahkan 5 Created by User:Administrator', '1', '::1', '2023-07-14 01:16:56', '0000-00-00 00:00:00'),
(876, 'Data Pinjaman Inventaris #5 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-14 01:19:21', '0000-00-00 00:00:00'),
(877, 'Administrator (admin) Logged in', '1', '::1', '2023-07-15 02:51:36', '0000-00-00 00:00:00'),
(878, 'Data Pinjaman Ditambahkan 6 Created by User:Administrator', '1', '::1', '2023-07-15 03:06:52', '0000-00-00 00:00:00'),
(879, 'Data Pinjaman Inventaris #6 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:08:46', '0000-00-00 00:00:00'),
(880, 'Data Pinjaman Ditambahkan 7 Created by User:Administrator', '1', '::1', '2023-07-15 03:18:52', '0000-00-00 00:00:00'),
(881, 'Data Pinjaman Inventaris #7 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:18:56', '0000-00-00 00:00:00'),
(882, 'Data Pinjaman Dikembalikan 7 Created by User:Administrator', '1', '::1', '2023-07-15 03:20:11', '0000-00-00 00:00:00'),
(883, 'Data Pinjaman Ditambahkan 8 Created by User:Administrator', '1', '::1', '2023-07-15 03:21:49', '0000-00-00 00:00:00'),
(884, 'Data Pinjaman Inventaris #8 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:21:56', '0000-00-00 00:00:00'),
(885, 'Data Pinjaman Dikembalikan 8 Created by User:Administrator', '1', '::1', '2023-07-15 03:22:09', '0000-00-00 00:00:00'),
(886, 'Data Pinjaman Ditambahkan 9 Created by User:Administrator', '1', '::1', '2023-07-15 03:33:27', '0000-00-00 00:00:00'),
(887, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 03:34:38', '0000-00-00 00:00:00'),
(888, 'Data Pinjaman Ditambahkan 10 Created by User:Administrator', '1', '::1', '2023-07-15 03:38:07', '0000-00-00 00:00:00'),
(889, 'Data Pinjaman Dikembalikan 10 Created by User:Administrator', '1', '::1', '2023-07-15 03:38:31', '0000-00-00 00:00:00');
INSERT INTO `activity_logs` (`id`, `title`, `user`, `ip_address`, `created_at`, `updated_at`) VALUES
(890, 'Data Pinjaman Ditambahkan 11 Created by User:Administrator', '1', '::1', '2023-07-15 03:39:34', '0000-00-00 00:00:00'),
(891, 'Data Pinjaman Inventaris #11 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:39:37', '0000-00-00 00:00:00'),
(892, 'Data Pinjaman Dikembalikan 11 Created by User:Administrator', '1', '::1', '2023-07-15 03:39:51', '0000-00-00 00:00:00'),
(893, 'Data Pinjaman Ditambahkan 12 Created by User:Administrator', '1', '::1', '2023-07-15 03:43:57', '0000-00-00 00:00:00'),
(894, 'Data Pinjaman Dikembalikan 12 Created by User:Administrator', '1', '::1', '2023-07-15 03:44:10', '0000-00-00 00:00:00'),
(895, 'Data Pinjaman Ditambahkan 13 Created by User:Administrator', '1', '::1', '2023-07-15 03:47:17', '0000-00-00 00:00:00'),
(896, 'Data Pinjaman Inventaris #13 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:47:21', '0000-00-00 00:00:00'),
(897, 'Data Pinjaman Dikembalikan 13 Created by User:Administrator', '1', '::1', '2023-07-15 03:47:32', '0000-00-00 00:00:00'),
(898, 'Data Pinjaman Ditambahkan 14 Created by User:Administrator', '1', '::1', '2023-07-15 03:49:50', '0000-00-00 00:00:00'),
(899, 'Data Pinjaman Inventaris #14 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:49:53', '0000-00-00 00:00:00'),
(900, 'Data Pinjaman Dikembalikan 14 Created by User:Administrator', '1', '::1', '2023-07-15 03:50:09', '0000-00-00 00:00:00'),
(901, 'Data Pinjaman Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-07-15 03:52:59', '0000-00-00 00:00:00'),
(902, 'Data Pinjaman Inventaris #15 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:53:08', '0000-00-00 00:00:00'),
(903, 'Data Pinjaman Dikembalikan 15 Created by User:Administrator', '1', '::1', '2023-07-15 03:53:23', '0000-00-00 00:00:00'),
(904, 'Data Pinjaman Ditambahkan 16 Created by User:Administrator', '1', '::1', '2023-07-15 03:55:35', '0000-00-00 00:00:00'),
(905, 'Data Pinjaman Inventaris #16 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 03:55:37', '0000-00-00 00:00:00'),
(906, 'Data Pinjaman Dikembalikan 16 Created by User:Administrator', '1', '::1', '2023-07-15 03:55:49', '0000-00-00 00:00:00'),
(907, 'Data Pinjaman Ditambahkan 17 Created by User:Administrator', '1', '::1', '2023-07-15 03:58:56', '0000-00-00 00:00:00'),
(908, 'Data Pinjaman Ditambahkan 18 Created by User:Administrator', '1', '::1', '2023-07-15 03:59:53', '0000-00-00 00:00:00'),
(909, 'Data Pinjaman Ditambahkan 19 Created by User:Administrator', '1', '::1', '2023-07-15 04:01:57', '0000-00-00 00:00:00'),
(910, 'Data Pinjaman Ditambahkan 20 Created by User:Administrator', '1', '::1', '2023-07-15 04:04:05', '0000-00-00 00:00:00'),
(911, 'Data Pinjaman Inventaris #20 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 04:04:18', '0000-00-00 00:00:00'),
(912, 'Data Pinjaman Dikembalikan 20 Created by User:Administrator', '1', '::1', '2023-07-15 04:05:05', '0000-00-00 00:00:00'),
(913, 'Data Pinjaman Ditambahkan 21 Created by User:Administrator', '1', '::1', '2023-07-15 04:07:30', '0000-00-00 00:00:00'),
(914, 'Data Pinjaman Inventaris #21 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 04:07:32', '0000-00-00 00:00:00'),
(915, 'Data Pinjaman Dikembalikan 21 Created by User:Administrator', '1', '::1', '2023-07-15 04:09:46', '0000-00-00 00:00:00'),
(916, 'Data Pinjaman Ditambahkan 22 Created by User:Administrator', '1', '::1', '2023-07-15 04:12:20', '0000-00-00 00:00:00'),
(917, 'Data Pinjaman Inventaris #22 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 04:12:23', '0000-00-00 00:00:00'),
(918, 'Data Pinjaman Dikembalikan 22 Created by User:Administrator', '1', '::1', '2023-07-15 04:12:35', '0000-00-00 00:00:00'),
(919, 'Administrator (admin) Logged in', '1', '::1', '2023-07-15 07:21:48', '0000-00-00 00:00:00'),
(920, 'Data Pinjaman Ditambahkan 23 Created by User:Administrator', '1', '::1', '2023-07-15 07:23:42', '0000-00-00 00:00:00'),
(921, 'Data Pinjaman Inventaris #23 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 07:26:18', '0000-00-00 00:00:00'),
(922, 'Data Pinjaman Dikembalikan 23 Created by User:Administrator', '1', '::1', '2023-07-15 07:33:05', '0000-00-00 00:00:00'),
(923, 'Data Pinjaman Ditambahkan 24 Created by User:Administrator', '1', '::1', '2023-07-15 07:41:54', '0000-00-00 00:00:00'),
(924, 'Data Pinjaman Dikembalikan 24 Created by User:Administrator', '1', '::1', '2023-07-15 07:42:13', '0000-00-00 00:00:00'),
(925, 'Data Pinjaman Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-07-15 07:43:19', '0000-00-00 00:00:00'),
(926, 'Data Pinjaman Inventaris #25 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 07:43:23', '0000-00-00 00:00:00'),
(927, 'Data Pinjaman Dikembalikan 25 Created by User:Administrator', '1', '::1', '2023-07-15 07:43:38', '0000-00-00 00:00:00'),
(928, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:07:14', '0000-00-00 00:00:00'),
(929, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:07:58', '0000-00-00 00:00:00'),
(930, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:09:45', '0000-00-00 00:00:00'),
(931, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:10:27', '0000-00-00 00:00:00'),
(932, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:11:02', '0000-00-00 00:00:00'),
(933, 'Data Pinjaman Ditambahkan 26 Created by User:Administrator', '1', '::1', '2023-07-15 08:13:08', '0000-00-00 00:00:00'),
(934, 'Data Pinjaman Ditambahkan 27 Created by User:Administrator', '1', '::1', '2023-07-15 08:15:07', '0000-00-00 00:00:00'),
(935, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 08:21:16', '0000-00-00 00:00:00'),
(936, 'Data Pinjaman Ditambahkan 0 Created by User:Administrator', '1', '::1', '2023-07-15 08:21:28', '0000-00-00 00:00:00'),
(937, 'Data Pinjaman Ditambahkan 28 Created by User:Administrator', '1', '::1', '2023-07-15 08:21:59', '0000-00-00 00:00:00'),
(938, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 08:24:36', '0000-00-00 00:00:00'),
(939, 'Data Pinjaman Ditambahkan 29 Created by User:Administrator', '1', '::1', '2023-07-15 08:24:45', '0000-00-00 00:00:00'),
(940, 'Data Pinjaman Dikembalikan 29 Created by User:Administrator', '1', '::1', '2023-07-15 08:25:21', '0000-00-00 00:00:00'),
(941, 'Data Pinjaman Ditambahkan 30 Created by User:Administrator', '1', '::1', '2023-07-15 08:33:23', '0000-00-00 00:00:00'),
(942, 'Data Pinjaman Inventaris #30 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 08:33:26', '0000-00-00 00:00:00'),
(943, 'Data Pinjaman Dikembalikan 30 Created by User:', '1', '::1', '2023-07-15 08:33:37', '0000-00-00 00:00:00'),
(944, 'Data Ruangan #1 Updated by User: #1', '1', '::1', '2023-07-15 08:35:04', '0000-00-00 00:00:00'),
(945, 'Data Lapor Kerusakan #14 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-15 08:36:33', '0000-00-00 00:00:00'),
(946, 'Data Pinjaman Ditambahkan 31 Created by User:Administrator', '1', '::1', '2023-07-15 08:45:34', '0000-00-00 00:00:00'),
(947, 'Data Pinjaman Ditambahkan 32 Created by User:Administrator', '1', '::1', '2023-07-15 08:46:26', '0000-00-00 00:00:00'),
(948, 'Data Pinjaman Ditambahkan 33 Created by User:Administrator', '1', '::1', '2023-07-15 08:50:10', '0000-00-00 00:00:00'),
(949, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 08:50:35', '0000-00-00 00:00:00'),
(950, 'Data Pinjaman Ditambahkan 34 Created by User:Administrator', '1', '::1', '2023-07-15 08:51:28', '0000-00-00 00:00:00'),
(951, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 09:03:27', '0000-00-00 00:00:00'),
(952, 'Data Pinjaman Ditambahkan 35 Created by User:Administrator', '1', '::1', '2023-07-15 09:03:37', '0000-00-00 00:00:00'),
(953, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 09:03:49', '0000-00-00 00:00:00'),
(954, 'Data Pinjaman Ditambahkan 36 Created by User:Administrator', '1', '::1', '2023-07-15 09:04:20', '0000-00-00 00:00:00'),
(955, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 09:04:52', '0000-00-00 00:00:00'),
(956, 'Data Pinjaman Ditambahkan 37 Created by User:Administrator', '1', '::1', '2023-07-15 09:05:59', '0000-00-00 00:00:00'),
(957, 'Data Pinjaman Ditambahkan 38 Created by User:Administrator', '1', '::1', '2023-07-15 09:14:33', '0000-00-00 00:00:00'),
(958, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 09:14:37', '0000-00-00 00:00:00'),
(959, 'Data Pemeliharaan Ditambahkan 88 Created by User:Administrator', '1', '::1', '2023-07-15 09:33:17', '0000-00-00 00:00:00'),
(960, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 09:33:39', '0000-00-00 00:00:00'),
(961, 'Data Pinjaman Ditambahkan 39 Created by User:Administrator', '1', '::1', '2023-07-15 09:40:44', '0000-00-00 00:00:00'),
(962, 'Data Pinjaman Ditambahkan 40 Created by User:Administrator', '1', '::1', '2023-07-15 09:42:15', '0000-00-00 00:00:00'),
(963, 'Data Pinjaman Inventaris #40 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 09:48:25', '0000-00-00 00:00:00'),
(964, 'Data Pinjaman Dikembalikan 40 Created by User:', '1', '::1', '2023-07-15 10:00:06', '0000-00-00 00:00:00'),
(965, 'Data Pinjaman Ditambahkan 41 Created by User:Administrator', '1', '::1', '2023-07-15 10:05:39', '0000-00-00 00:00:00'),
(966, 'Administrator (admin) Logged in', '1', '::1', '2023-07-15 11:30:16', '0000-00-00 00:00:00'),
(967, 'Data Pinjaman #41 Updated by User: #1', '1', '::1', '2023-07-15 11:34:44', '0000-00-00 00:00:00'),
(968, 'Data Pinjaman Ditambahkan 42 Created by User:Administrator', '1', '::1', '2023-07-15 11:35:50', '0000-00-00 00:00:00'),
(969, 'Data Pinjaman Inventaris #42 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 11:35:53', '0000-00-00 00:00:00'),
(970, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 11:36:26', '0000-00-00 00:00:00'),
(971, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 12:21:41', '0000-00-00 00:00:00'),
(972, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 13:14:05', '0000-00-00 00:00:00'),
(973, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 13:14:29', '0000-00-00 00:00:00'),
(974, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 13:17:23', '0000-00-00 00:00:00'),
(975, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 13:17:38', '0000-00-00 00:00:00'),
(976, 'Data Pinjaman #42 Updated by User: #1', '1', '::1', '2023-07-15 13:20:35', '0000-00-00 00:00:00'),
(977, 'User #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 15:04:07', '0000-00-00 00:00:00'),
(978, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-07-15 15:05:03', '0000-00-00 00:00:00'),
(979, ' #1 Deleted by User:wahyu saepudin', '6', '::1', '2023-07-15 15:05:35', '0000-00-00 00:00:00'),
(980, 'Data Pinjaman Ditambahkan 43 Created by User:wahyu saepudin', '6', '::1', '2023-07-15 15:05:50', '0000-00-00 00:00:00'),
(981, 'Data Pinjaman Inventaris #43 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 15:06:47', '0000-00-00 00:00:00'),
(982, 'Data Pinjaman Dikembalikan 43 Created by User:', '6', '::1', '2023-07-15 15:07:11', '0000-00-00 00:00:00'),
(983, 'Company Settings Updated by User: #1', '1', '::1', '2023-07-15 15:10:11', '0000-00-00 00:00:00'),
(984, 'Company Settings Updated by User: #1', '1', '::1', '2023-07-15 15:10:23', '0000-00-00 00:00:00'),
(985, 'Administrator (admin) Logged in', '1', '::1', '2023-07-15 22:02:04', '0000-00-00 00:00:00'),
(986, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:15', '0000-00-00 00:00:00'),
(987, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:20', '0000-00-00 00:00:00'),
(988, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:25', '0000-00-00 00:00:00'),
(989, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:31', '0000-00-00 00:00:00'),
(990, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:36', '0000-00-00 00:00:00'),
(991, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:41', '0000-00-00 00:00:00'),
(992, ' #1 Deleted by User:Administrator', '1', '::1', '2023-07-15 22:02:47', '0000-00-00 00:00:00'),
(993, 'Data Inventaris Ditambahkan 24 Created by User:Administrator', '1', '::1', '2023-07-15 22:11:20', '0000-00-00 00:00:00'),
(994, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:11:58', '0000-00-00 00:00:00'),
(995, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:15:28', '0000-00-00 00:00:00'),
(996, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:22:36', '0000-00-00 00:00:00'),
(997, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:23:51', '0000-00-00 00:00:00'),
(998, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:24:09', '0000-00-00 00:00:00'),
(999, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:25:59', '0000-00-00 00:00:00'),
(1000, 'Data Inventaris #24 Updated by User: #1', '1', '::1', '2023-07-15 22:26:17', '0000-00-00 00:00:00'),
(1001, 'Data Inventaris Ditambahkan 25 Created by User:Administrator', '1', '::1', '2023-07-15 22:28:17', '0000-00-00 00:00:00'),
(1002, 'Data Inventaris Ditambahkan 26 Created by User:Administrator', '1', '::1', '2023-07-15 22:30:16', '0000-00-00 00:00:00'),
(1003, 'Data Ruangan #4 Updated by User: #1', '1', '::1', '2023-07-15 22:31:52', '0000-00-00 00:00:00'),
(1004, 'Data Pemeliharaan Ditambahkan 89 Created by User:Administrator', '1', '::1', '2023-07-15 22:36:24', '0000-00-00 00:00:00'),
(1005, 'Data Laporan Kerusakan Ditambahkan 15 Created by User:Administrator', '1', '::1', '2023-07-15 22:53:13', '0000-00-00 00:00:00'),
(1006, 'Data Laporkan Kerusakan #15 Updated by User: #1', '1', '::1', '2023-07-15 22:53:47', '0000-00-00 00:00:00'),
(1007, 'Data Lapor Kerusakan #15 Dikonfirmasi Oleh Teknisi :Administrator', '1', '::1', '2023-07-15 22:54:06', '0000-00-00 00:00:00'),
(1008, 'Data Pinjaman Ditambahkan 44 Created by User:Administrator', '1', '::1', '2023-07-15 22:59:00', '0000-00-00 00:00:00'),
(1009, 'Data Pinjaman Inventaris #44 Dikonfirmasi Oleh Operator :Administrator', '1', '::1', '2023-07-15 22:59:05', '0000-00-00 00:00:00'),
(1010, 'Data Pinjaman Dikembalikan 44 Created by User:', '1', '::1', '2023-07-15 23:05:28', '0000-00-00 00:00:00'),
(1011, 'User #1 Updated by User:Admin Sarana', '1', '::1', '2023-07-15 23:08:35', '0000-00-00 00:00:00'),
(1012, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-15 23:08:45', '0000-00-00 00:00:00'),
(1013, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-15 23:08:53', '0000-00-00 00:00:00'),
(1014, 'User #1 Updated by User:Admin Sarana', '1', '::1', '2023-07-15 23:09:30', '0000-00-00 00:00:00'),
(1015, 'User #4 Updated by User:Admin Sarana', '1', '::1', '2023-07-15 23:10:33', '0000-00-00 00:00:00'),
(1016, 'User #5 Updated by User:Admin Sarana', '1', '::1', '2023-07-15 23:10:56', '0000-00-00 00:00:00'),
(1017, 'User #6 Updated by User:Admin Sarana', '1', '::1', '2023-07-15 23:11:25', '0000-00-00 00:00:00'),
(1018, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:12:49', '0000-00-00 00:00:00'),
(1019, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:13:28', '0000-00-00 00:00:00'),
(1020, 'New Permission #68 Created by User: #1', '1', '::1', '2023-07-15 23:17:34', '0000-00-00 00:00:00'),
(1021, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:17:48', '0000-00-00 00:00:00'),
(1022, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-15 23:18:08', '0000-00-00 00:00:00'),
(1023, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:18:49', '0000-00-00 00:00:00'),
(1024, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:20:12', '0000-00-00 00:00:00'),
(1025, 'New Permission #69 Created by User: #1', '1', '::1', '2023-07-15 23:23:32', '0000-00-00 00:00:00'),
(1026, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-15 23:24:02', '0000-00-00 00:00:00'),
(1027, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-15 23:26:35', '0000-00-00 00:00:00'),
(1028, 'Role #3 Updated by User: #1', '1', '::1', '2023-07-15 23:29:33', '0000-00-00 00:00:00'),
(1029, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-15 23:30:07', '0000-00-00 00:00:00'),
(1030, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-15 23:30:15', '0000-00-00 00:00:00'),
(1031, 'Data Pemeliharaan Ditambahkan 90 Created by User:Taufik Hidayat', '5', '::1', '2023-07-15 23:30:57', '0000-00-00 00:00:00'),
(1032, 'Role #3 Updated by User: #1', '1', '::1', '2023-07-15 23:34:02', '0000-00-00 00:00:00'),
(1033, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-15 23:35:57', '0000-00-00 00:00:00'),
(1034, 'wahyu saepudin (wahyu) Logged in', '6', '::1', '2023-07-15 23:36:05', '0000-00-00 00:00:00'),
(1035, 'Role #4 Updated by User: #1', '1', '::1', '2023-07-15 23:36:51', '0000-00-00 00:00:00'),
(1036, 'Data Laporan Kerusakan Ditambahkan 16 Created by User:wahyu saepudin', '6', '::1', '2023-07-15 23:37:17', '0000-00-00 00:00:00'),
(1037, 'User: wahyu saepudin Logged Out', '6', '::1', '2023-07-15 23:37:37', '0000-00-00 00:00:00'),
(1038, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-15 23:37:46', '0000-00-00 00:00:00'),
(1039, 'Data Lapor Kerusakan #16 Dikonfirmasi Oleh Teknisi :Taufik Hidayat', '5', '::1', '2023-07-15 23:37:50', '0000-00-00 00:00:00'),
(1040, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-16 01:24:10', '0000-00-00 00:00:00'),
(1041, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-16 01:24:57', '0000-00-00 00:00:00'),
(1042, 'New User $8 Created by User:Admin Sarana', '1', '::1', '2023-07-16 01:26:36', '0000-00-00 00:00:00'),
(1043, 'Data Inventaris Ditambahkan 27 Created by User:Admin Sarana', '1', '::1', '2023-07-16 01:28:03', '0000-00-00 00:00:00'),
(1044, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-16 01:28:37', '0000-00-00 00:00:00'),
(1045, 'Data Jurusan Ditambahkan 3 Created by User:Admin Sarana', '1', '::1', '2023-07-16 01:29:06', '0000-00-00 00:00:00'),
(1046, 'User #8 Updated by User:Admin Sarana', '1', '::1', '2023-07-16 01:30:46', '0000-00-00 00:00:00'),
(1047, 'Asep (asep) Logged in', '8', '::1', '2023-07-16 01:31:06', '0000-00-00 00:00:00'),
(1048, 'Data Pinjaman Ditambahkan 45 Created by User:Asep', '8', '::1', '2023-07-16 01:31:42', '0000-00-00 00:00:00'),
(1049, 'User: Asep Logged Out', '8', '::1', '2023-07-16 01:31:53', '0000-00-00 00:00:00'),
(1050, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-16 01:32:00', '0000-00-00 00:00:00'),
(1051, 'Data Pinjaman Inventaris #45 Dikonfirmasi Oleh Operator :Taufik Hidayat', '5', '::1', '2023-07-16 01:32:06', '0000-00-00 00:00:00'),
(1052, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-16 01:32:12', '0000-00-00 00:00:00'),
(1053, 'Asep (asep) Logged in', '8', '::1', '2023-07-16 01:32:23', '0000-00-00 00:00:00'),
(1054, 'Data Pinjaman Dikembalikan 45 Created by User:', '8', '::1', '2023-07-16 01:32:52', '0000-00-00 00:00:00'),
(1055, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-16 01:33:02', '0000-00-00 00:00:00'),
(1056, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-16 01:33:29', '0000-00-00 00:00:00'),
(1057, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-16 01:34:10', '0000-00-00 00:00:00'),
(1058, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-16 01:34:15', '0000-00-00 00:00:00'),
(1059, 'Data Ruangan Ditambahkan 5 Created by User:Admin Sarana', '1', '::1', '2023-07-16 01:37:34', '0000-00-00 00:00:00'),
(1060, 'Data Ruangan #5 Updated by User: #1', '1', '::1', '2023-07-16 01:37:46', '0000-00-00 00:00:00'),
(1061, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-16 01:40:53', '0000-00-00 00:00:00'),
(1062, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-16 01:41:26', '0000-00-00 00:00:00'),
(1063, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-16 01:43:19', '0000-00-00 00:00:00'),
(1064, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-16 01:43:28', '0000-00-00 00:00:00'),
(1065, 'Data Pemeliharaan Ditambahkan 91 Created by User:Taufik Hidayat', '5', '::1', '2023-07-16 01:44:46', '0000-00-00 00:00:00'),
(1066, 'Data Laporan Kerusakan Ditambahkan 17 Created by User:Taufik Hidayat', '5', '::1', '2023-07-16 01:45:56', '0000-00-00 00:00:00'),
(1067, 'Data Pinjaman Ditambahkan 46 Created by User:Taufik Hidayat', '5', '::1', '2023-07-16 01:47:18', '0000-00-00 00:00:00'),
(1068, 'Data Pinjaman Inventaris #46 Dikonfirmasi Oleh Operator :Taufik Hidayat', '5', '::1', '2023-07-16 01:48:08', '0000-00-00 00:00:00'),
(1069, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-16 01:48:16', '0000-00-00 00:00:00'),
(1070, 'Asep (asep) Logged in', '8', '::1', '2023-07-16 01:48:27', '0000-00-00 00:00:00'),
(1071, 'Data Laporan Kerusakan Ditambahkan 18 Created by User:Asep', '8', '::1', '2023-07-16 01:53:44', '0000-00-00 00:00:00'),
(1072, 'Data Pinjaman Ditambahkan 47 Created by User:Asep', '8', '::1', '2023-07-16 01:56:12', '0000-00-00 00:00:00'),
(1073, 'User: Asep Logged Out', '8', '::1', '2023-07-16 01:56:22', '0000-00-00 00:00:00'),
(1074, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-16 01:56:34', '0000-00-00 00:00:00'),
(1075, 'Data Lapor Kerusakan #18 Dikonfirmasi Oleh Teknisi :Taufik Hidayat', '5', '::1', '2023-07-16 01:57:01', '0000-00-00 00:00:00'),
(1076, 'Data Pinjaman Inventaris #47 Dikonfirmasi Oleh Operator :Taufik Hidayat', '5', '::1', '2023-07-16 01:57:18', '0000-00-00 00:00:00'),
(1077, 'Data Pinjaman Dikembalikan 47 Created by User:', '5', '::1', '2023-07-16 01:57:53', '0000-00-00 00:00:00'),
(1078, 'User: Asep Logged Out', '8', '::1', '2023-07-16 01:58:47', '0000-00-00 00:00:00'),
(1079, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-16 01:58:58', '0000-00-00 00:00:00'),
(1080, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-16 12:53:46', '0000-00-00 00:00:00'),
(1081, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-16 13:01:11', '0000-00-00 00:00:00'),
(1082, 'Asep (asep) Logged in', '8', '::1', '2023-07-16 13:01:24', '0000-00-00 00:00:00'),
(1083, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-17 12:59:33', '0000-00-00 00:00:00'),
(1084, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-17 13:03:22', '0000-00-00 00:00:00'),
(1085, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-17 13:03:51', '0000-00-00 00:00:00'),
(1086, 'New Permission #70 Created by User: #1', '1', '::1', '2023-07-18 12:06:38', '0000-00-00 00:00:00'),
(1087, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-18 12:06:49', '0000-00-00 00:00:00'),
(1088, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-21 14:28:56', '0000-00-00 00:00:00'),
(1089, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-21 15:34:49', '0000-00-00 00:00:00'),
(1090, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-21 15:35:04', '0000-00-00 00:00:00'),
(1091, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-21 15:38:09', '0000-00-00 00:00:00'),
(1092, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-21 15:38:17', '0000-00-00 00:00:00'),
(1093, 'Data Inventaris Ditambahkan 28 Created by User:Admin Sarana', '1', '::1', '2023-07-21 16:17:21', '0000-00-00 00:00:00'),
(1094, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-21 16:18:41', '0000-00-00 00:00:00'),
(1095, 'Data Inventaris #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-21 16:29:52', '0000-00-00 00:00:00'),
(1096, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-22 07:44:46', '0000-00-00 00:00:00'),
(1097, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-22 07:44:54', '0000-00-00 00:00:00'),
(1098, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-22 07:45:16', '0000-00-00 00:00:00'),
(1099, 'Data Pinjaman Ditambahkan 48 Created by User:Taufik Hidayat', '5', '::1', '2023-07-22 07:45:23', '0000-00-00 00:00:00'),
(1100, 'Data Pinjaman Inventaris #48 Dikonfirmasi Oleh Operator :Taufik Hidayat', '5', '::1', '2023-07-22 07:45:31', '0000-00-00 00:00:00'),
(1101, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-23 00:15:31', '0000-00-00 00:00:00'),
(1102, 'Data Inventaris Ditambahkan 29 Created by User:Admin Sarana', '1', '::1', '2023-07-23 00:20:30', '0000-00-00 00:00:00'),
(1103, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 00:20:40', '0000-00-00 00:00:00'),
(1104, 'Data Inventaris Ditambahkan 30 Created by User:Admin Sarana', '1', '::1', '2023-07-23 00:21:49', '0000-00-00 00:00:00'),
(1105, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 00:21:55', '0000-00-00 00:00:00'),
(1106, 'Data Inventaris Ditambahkan 31 Created by User:Admin Sarana', '1', '::1', '2023-07-23 00:26:45', '0000-00-00 00:00:00'),
(1107, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 00:26:51', '0000-00-00 00:00:00'),
(1108, 'Data Inventaris Ditambahkan 32 Created by User:Admin Sarana', '1', '::1', '2023-07-23 00:27:31', '0000-00-00 00:00:00'),
(1109, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-23 08:17:51', '0000-00-00 00:00:00'),
(1110, 'Data Inventaris Ditambahkan 33 Created by User:Admin Sarana', '1', '::1', '2023-07-23 09:27:47', '0000-00-00 00:00:00'),
(1111, 'Data Inventaris Ditambahkan 34 Created by User:Admin Sarana', '1', '::1', '2023-07-23 09:29:50', '0000-00-00 00:00:00'),
(1112, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:30:02', '0000-00-00 00:00:00'),
(1113, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:30:29', '0000-00-00 00:00:00'),
(1114, 'Data Inventaris Ditambahkan 35 Created by User:Admin Sarana', '1', '::1', '2023-07-23 09:36:17', '0000-00-00 00:00:00'),
(1115, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:37:01', '0000-00-00 00:00:00'),
(1116, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:37:06', '0000-00-00 00:00:00'),
(1117, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:37:12', '0000-00-00 00:00:00'),
(1118, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 09:37:19', '0000-00-00 00:00:00'),
(1119, 'Data Inventaris Ditambahkan 36 Created by User:Admin Sarana', '1', '::1', '2023-07-23 09:45:58', '0000-00-00 00:00:00'),
(1120, 'Data Inventaris #26 Updated by User: #1', '1', '::1', '2023-07-23 09:46:46', '0000-00-00 00:00:00'),
(1121, 'Data Inventaris #26 Updated by User: #1', '1', '::1', '2023-07-23 09:48:38', '0000-00-00 00:00:00'),
(1122, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-23 10:00:23', '0000-00-00 00:00:00'),
(1123, 'Data Pinjaman Ditambahkan 49 Created by User:Admin Sarana', '1', '::1', '2023-07-23 10:03:14', '0000-00-00 00:00:00'),
(1124, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 10:03:26', '0000-00-00 00:00:00'),
(1125, 'Data Pinjaman Ditambahkan 50 Created by User:Admin Sarana', '1', '::1', '2023-07-23 10:22:36', '0000-00-00 00:00:00'),
(1126, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 10:32:20', '0000-00-00 00:00:00'),
(1127, 'Data Pinjaman Ditambahkan 53 Created by User:Admin Sarana', '1', '::1', '2023-07-23 10:56:52', '0000-00-00 00:00:00'),
(1128, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 10:57:00', '0000-00-00 00:00:00'),
(1129, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 10:57:04', '0000-00-00 00:00:00'),
(1130, 'Data Pinjaman Ditambahkan 54 Created by User:Admin Sarana', '1', '::1', '2023-07-23 10:57:47', '0000-00-00 00:00:00'),
(1131, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 10:57:55', '0000-00-00 00:00:00'),
(1132, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-23 11:03:08', '0000-00-00 00:00:00'),
(1133, 'Data Pinjaman Ditambahkan 55 Created by User:Admin Sarana', '1', '::1', '2023-07-23 11:05:39', '0000-00-00 00:00:00'),
(1134, 'Data Pinjaman Ditambahkan 56 Created by User:Admin Sarana', '1', '::1', '2023-07-23 11:08:19', '0000-00-00 00:00:00'),
(1135, 'Data Pinjaman Ditambahkan 57 Created by User:Admin Sarana', '1', '::1', '2023-07-23 11:09:58', '0000-00-00 00:00:00'),
(1136, 'Data Pinjaman Ditambahkan 58 Created by User:Admin Sarana', '1', '::1', '2023-07-23 11:12:54', '0000-00-00 00:00:00'),
(1137, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-24 00:48:26', '0000-00-00 00:00:00'),
(1138, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 00:48:38', '0000-00-00 00:00:00'),
(1139, 'Data Pinjaman Ditambahkan 60 Created by User:Admin Sarana', '1', '::1', '2023-07-24 01:12:15', '0000-00-00 00:00:00'),
(1140, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:12:21', '0000-00-00 00:00:00'),
(1141, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:12:25', '0000-00-00 00:00:00'),
(1142, 'Data Pinjaman Ditambahkan 61 Created by User:Admin Sarana', '1', '::1', '2023-07-24 01:27:45', '0000-00-00 00:00:00'),
(1143, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:29:41', '0000-00-00 00:00:00'),
(1144, 'Data Pinjaman Ditambahkan 62 Created by User:Admin Sarana', '1', '::1', '2023-07-24 01:30:43', '0000-00-00 00:00:00'),
(1145, '#62 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:35:48', '0000-00-00 00:00:00'),
(1146, 'Data Pinjaman Ditambahkan 63 Created by User:Admin Sarana', '1', '::1', '2023-07-24 01:38:40', '0000-00-00 00:00:00'),
(1147, '#63 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:38:53', '0000-00-00 00:00:00'),
(1148, 'Data Pinjaman Ditambahkan 64 Created by User:Admin Sarana', '1', '::1', '2023-07-24 01:40:44', '0000-00-00 00:00:00'),
(1149, '#64 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 01:40:57', '0000-00-00 00:00:00'),
(1150, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-24 02:01:57', '0000-00-00 00:00:00'),
(1151, 'Data Pinjaman Ditambahkan 65 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:24:51', '0000-00-00 00:00:00'),
(1152, '#65 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:25:09', '0000-00-00 00:00:00'),
(1153, 'Data Pinjaman Ditambahkan 66 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:25:29', '0000-00-00 00:00:00'),
(1154, '#66 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:25:48', '0000-00-00 00:00:00'),
(1155, 'Data Pinjaman Ditambahkan 67 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:34:12', '0000-00-00 00:00:00'),
(1156, '#67 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:34:19', '0000-00-00 00:00:00'),
(1157, 'Data Pinjaman Ditambahkan 68 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:36:17', '0000-00-00 00:00:00'),
(1158, '#68 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:36:26', '0000-00-00 00:00:00'),
(1159, 'Data Pinjaman Ditambahkan 69 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:40:19', '0000-00-00 00:00:00'),
(1160, '#69 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:41:10', '0000-00-00 00:00:00'),
(1161, 'Data Pinjaman Ditambahkan 70 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:47:52', '0000-00-00 00:00:00'),
(1162, '#70 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:48:26', '0000-00-00 00:00:00'),
(1163, 'Data Pinjaman Ditambahkan 71 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:48:42', '0000-00-00 00:00:00'),
(1164, '#71 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:48:46', '0000-00-00 00:00:00'),
(1165, 'Data Pinjaman Ditambahkan 72 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:49:03', '0000-00-00 00:00:00'),
(1166, '#72 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:49:30', '0000-00-00 00:00:00'),
(1167, 'Data Pinjaman Ditambahkan 73 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:50:10', '0000-00-00 00:00:00'),
(1168, '#73 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:52:14', '0000-00-00 00:00:00'),
(1169, 'Data Pinjaman Ditambahkan 74 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:52:58', '0000-00-00 00:00:00'),
(1170, '#74 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:53:06', '0000-00-00 00:00:00'),
(1171, 'Data Pinjaman Ditambahkan 75 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:54:30', '0000-00-00 00:00:00'),
(1172, '#75 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:54:35', '0000-00-00 00:00:00'),
(1173, 'Data Pinjaman Ditambahkan 76 Created by User:Admin Sarana', '1', '::1', '2023-07-24 03:58:32', '0000-00-00 00:00:00'),
(1174, '#76 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 03:58:44', '0000-00-00 00:00:00'),
(1175, 'Data Pinjaman Ditambahkan 77 Created by User:Admin Sarana', '1', '::1', '2023-07-24 04:02:59', '0000-00-00 00:00:00'),
(1176, 'Data Pinjaman Inventaris #77 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-24 04:03:08', '0000-00-00 00:00:00'),
(1177, '#77 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 04:03:12', '0000-00-00 00:00:00'),
(1178, 'Data Pinjaman Ditambahkan 78 Created by User:Admin Sarana', '1', '::1', '2023-07-24 04:11:02', '0000-00-00 00:00:00'),
(1179, '#78 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 04:11:41', '0000-00-00 00:00:00'),
(1180, 'Data Pinjaman Ditambahkan 79 Created by User:Admin Sarana', '1', '::1', '2023-07-24 04:11:56', '0000-00-00 00:00:00'),
(1181, '#79 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-24 04:12:02', '0000-00-00 00:00:00'),
(1182, 'Data Pinjaman Ditambahkan 80 Created by User:Admin Sarana', '1', '::1', '2023-07-24 04:14:49', '0000-00-00 00:00:00'),
(1183, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-25 12:52:08', '0000-00-00 00:00:00'),
(1184, '#80 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 12:52:15', '0000-00-00 00:00:00'),
(1185, 'Data Pinjaman Ditambahkan 81 Created by User:Admin Sarana', '1', '::1', '2023-07-25 12:52:38', '0000-00-00 00:00:00'),
(1186, '#81 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 12:52:47', '0000-00-00 00:00:00'),
(1187, 'Data Pinjaman Ditambahkan 82 Created by User:Admin Sarana', '1', '::1', '2023-07-25 12:57:44', '0000-00-00 00:00:00'),
(1188, '#82 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 12:57:49', '0000-00-00 00:00:00'),
(1189, 'Data Pinjaman Ditambahkan 83 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:04:51', '0000-00-00 00:00:00'),
(1190, '#83 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:04:56', '0000-00-00 00:00:00'),
(1191, 'Data Pinjaman Ditambahkan 84 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:07:21', '0000-00-00 00:00:00'),
(1192, '#84 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:13:41', '0000-00-00 00:00:00'),
(1193, 'Data Pinjaman Ditambahkan 85 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:14:00', '0000-00-00 00:00:00'),
(1194, '#85 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:16:04', '0000-00-00 00:00:00'),
(1195, 'Data Pinjaman Ditambahkan 86 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:16:19', '0000-00-00 00:00:00'),
(1196, '#86 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:16:44', '0000-00-00 00:00:00'),
(1197, 'Data Pinjaman Ditambahkan 87 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:23:39', '0000-00-00 00:00:00'),
(1198, '#87 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:25:26', '0000-00-00 00:00:00'),
(1199, 'Data Pinjaman Ditambahkan 88 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:28:05', '0000-00-00 00:00:00'),
(1200, 'Data Pinjaman Ditambahkan 89 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:28:55', '0000-00-00 00:00:00'),
(1201, '#89 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:29:35', '0000-00-00 00:00:00'),
(1202, '#88 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:30:28', '0000-00-00 00:00:00'),
(1203, 'Data Pinjaman Ditambahkan 90 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:30:52', '0000-00-00 00:00:00'),
(1204, '#90 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 13:43:47', '0000-00-00 00:00:00'),
(1205, 'Data Pinjaman Ditambahkan 91 Created by User:Admin Sarana', '1', '::1', '2023-07-25 13:48:04', '0000-00-00 00:00:00'),
(1206, '#91 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 15:01:22', '0000-00-00 00:00:00'),
(1207, 'Data Pinjaman Ditambahkan 92 Created by User:Admin Sarana', '1', '::1', '2023-07-25 15:01:48', '0000-00-00 00:00:00'),
(1208, '#92 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 15:02:46', '0000-00-00 00:00:00'),
(1209, 'Data Pinjaman Ditambahkan 93 Created by User:Admin Sarana', '1', '::1', '2023-07-25 15:04:50', '0000-00-00 00:00:00'),
(1210, '#93 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 15:05:02', '0000-00-00 00:00:00'),
(1211, 'Data Pinjaman Ditambahkan 94 Created by User:Admin Sarana', '1', '::1', '2023-07-25 15:05:26', '0000-00-00 00:00:00'),
(1212, '#94 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 15:05:32', '0000-00-00 00:00:00'),
(1213, 'Data Pinjaman Ditambahkan 95 Created by User:Admin Sarana', '1', '::1', '2023-07-25 15:09:10', '0000-00-00 00:00:00'),
(1214, '#95 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 15:10:07', '0000-00-00 00:00:00'),
(1215, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-25 23:25:09', '0000-00-00 00:00:00'),
(1216, 'Data Pinjaman Ditambahkan 96 Created by User:Admin Sarana', '1', '::1', '2023-07-25 23:31:15', '0000-00-00 00:00:00'),
(1217, '#96 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-25 23:31:20', '0000-00-00 00:00:00'),
(1218, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-26 02:18:16', '0000-00-00 00:00:00'),
(1219, 'Data Pinjaman Ditambahkan 97 Created by User:Admin Sarana', '1', '::1', '2023-07-26 02:18:39', '0000-00-00 00:00:00'),
(1220, '#97 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 02:18:44', '0000-00-00 00:00:00'),
(1221, 'Data Pinjaman Ditambahkan 98 Created by User:Admin Sarana', '1', '::1', '2023-07-26 02:19:02', '0000-00-00 00:00:00'),
(1222, '#98 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 02:19:11', '0000-00-00 00:00:00'),
(1223, 'Data Pinjaman Ditambahkan 99 Created by User:Admin Sarana', '1', '::1', '2023-07-26 02:31:41', '0000-00-00 00:00:00'),
(1224, '#99 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 02:51:04', '0000-00-00 00:00:00'),
(1225, 'Data Pinjaman Ditambahkan 100 Created by User:Admin Sarana', '1', '::1', '2023-07-26 02:51:25', '0000-00-00 00:00:00'),
(1226, 'Data Pinjaman Ditambahkan 101 Created by User:Admin Sarana', '1', '::1', '2023-07-26 02:52:09', '0000-00-00 00:00:00'),
(1227, '#101 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 02:52:21', '0000-00-00 00:00:00'),
(1228, '#100 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 03:14:05', '0000-00-00 00:00:00'),
(1229, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-26 05:38:18', '0000-00-00 00:00:00'),
(1230, 'Data Pinjaman Ditambahkan 102 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:12:30', '0000-00-00 00:00:00'),
(1231, 'Data Pinjaman Ditambahkan 103 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:12:50', '0000-00-00 00:00:00'),
(1232, '#102 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:14:24', '0000-00-00 00:00:00'),
(1233, '#103 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:14:28', '0000-00-00 00:00:00'),
(1234, 'Data Pinjaman Ditambahkan 104 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:14:45', '0000-00-00 00:00:00'),
(1235, 'Data Pinjaman Ditambahkan 105 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:15:00', '0000-00-00 00:00:00'),
(1236, 'Data Pinjaman Ditambahkan 106 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:15:44', '0000-00-00 00:00:00'),
(1237, '#106 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:34:27', '0000-00-00 00:00:00'),
(1238, '#104 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:34:32', '0000-00-00 00:00:00'),
(1239, 'Data Pinjaman Ditambahkan 107 Created by User:Admin Sarana', '1', '::1', '2023-07-26 07:35:18', '0000-00-00 00:00:00'),
(1240, '#107 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:35:27', '0000-00-00 00:00:00'),
(1241, '#105 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-26 07:35:31', '0000-00-00 00:00:00'),
(1242, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-27 01:12:51', '0000-00-00 00:00:00'),
(1243, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-27 01:14:16', '0000-00-00 00:00:00'),
(1244, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-27 02:18:48', '0000-00-00 00:00:00'),
(1245, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-27 02:19:24', '0000-00-00 00:00:00'),
(1246, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-27 05:08:05', '0000-00-00 00:00:00'),
(1247, 'Data Pinjaman Ditambahkan 108 Created by User:Admin Sarana', '1', '::1', '2023-07-27 06:20:16', '0000-00-00 00:00:00'),
(1248, '#108 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-27 06:20:29', '0000-00-00 00:00:00'),
(1249, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-27 06:20:48', '0000-00-00 00:00:00'),
(1250, 'Data Pinjaman Ditambahkan 109 Created by User:Admin Sarana', '1', '::1', '2023-07-27 06:21:22', '0000-00-00 00:00:00'),
(1251, '#109 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-27 06:21:57', '0000-00-00 00:00:00'),
(1252, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-28 02:32:38', '0000-00-00 00:00:00'),
(1253, 'Data Pinjaman Ditambahkan 110 Created by User:Admin Sarana', '1', '::1', '2023-07-28 02:56:49', '0000-00-00 00:00:00'),
(1254, '#110 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-28 02:57:01', '0000-00-00 00:00:00'),
(1255, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-29 01:11:28', '0000-00-00 00:00:00'),
(1256, 'Data Pinjaman Ditambahkan 111 Created by User:Admin Sarana', '1', '::1', '2023-07-29 01:19:35', '0000-00-00 00:00:00'),
(1257, 'Data Pinjaman Ditambahkan 112 Created by User:Admin Sarana', '1', '::1', '2023-07-29 01:20:08', '0000-00-00 00:00:00'),
(1258, '#112 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 01:20:14', '0000-00-00 00:00:00'),
(1259, '#111 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 01:20:19', '0000-00-00 00:00:00'),
(1260, 'Data Pinjaman Ditambahkan 113 Created by User:Admin Sarana', '1', '::1', '2023-07-29 01:25:15', '0000-00-00 00:00:00'),
(1261, '#113 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 01:38:23', '0000-00-00 00:00:00'),
(1262, 'Data Pinjaman Ditambahkan 114 Created by User:Admin Sarana', '1', '::1', '2023-07-29 01:52:14', '0000-00-00 00:00:00'),
(1263, 'Data Inventaris #26 Updated by User: #1', '1', '::1', '2023-07-29 01:57:07', '0000-00-00 00:00:00'),
(1264, 'Data Inventaris Ditambahkan 0 Created by User:Admin Sarana', '1', '::1', '2023-07-29 02:21:03', '0000-00-00 00:00:00'),
(1265, 'Data Inventaris Ditambahkan 0 Created by User:Admin Sarana', '1', '::1', '2023-07-29 02:22:44', '0000-00-00 00:00:00'),
(1266, 'Data Inventaris Ditambahkan 37 Created by User:Admin Sarana', '1', '::1', '2023-07-29 02:24:46', '0000-00-00 00:00:00'),
(1267, 'Data Inventaris #36 Updated by User: #1', '1', '::1', '2023-07-29 03:39:17', '0000-00-00 00:00:00'),
(1268, 'Data Inventaris #36 Updated by User: #1', '1', '::1', '2023-07-29 03:40:48', '0000-00-00 00:00:00'),
(1269, 'Data Inventaris #36 Updated by User: #1', '1', '::1', '2023-07-29 03:41:06', '0000-00-00 00:00:00'),
(1270, 'Data Inventaris #26 Updated by User: #1', '1', '::1', '2023-07-29 03:41:20', '0000-00-00 00:00:00'),
(1271, 'Data Pinjaman Ditambahkan 115 Created by User:Admin Sarana', '1', '::1', '2023-07-29 04:09:36', '0000-00-00 00:00:00'),
(1272, '#115 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 04:09:54', '0000-00-00 00:00:00'),
(1273, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-29 05:54:51', '0000-00-00 00:00:00'),
(1274, 'Data Pinjaman Inventaris #114 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 06:15:08', '0000-00-00 00:00:00'),
(1275, 'Data Pinjaman Ditambahkan 116 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:30:36', '0000-00-00 00:00:00'),
(1276, 'Data Pinjaman Inventaris #116 Dikonfirmasi Oleh Operator: Admin Sarana', '1', '::1', '2023-07-29 06:31:16', '0000-00-00 00:00:00'),
(1277, '#116 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:32:40', '0000-00-00 00:00:00'),
(1278, 'Data Pinjaman Ditambahkan 117 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:32:55', '0000-00-00 00:00:00'),
(1279, 'Data Pinjaman Inventaris #117 Dikonfirmasi Oleh Operator: Admin Sarana', '1', '::1', '2023-07-29 06:32:57', '0000-00-00 00:00:00'),
(1280, 'Data Pinjaman Ditambahkan 118 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:35:19', '0000-00-00 00:00:00'),
(1281, 'Data Pinjaman Inventaris #118 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 06:35:23', '0000-00-00 00:00:00'),
(1282, 'Data Pinjaman Inventaris #118 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 06:35:25', '0000-00-00 00:00:00'),
(1283, '#118 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:36:09', '0000-00-00 00:00:00'),
(1284, 'Data Pinjaman Ditambahkan 119 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:38:16', '0000-00-00 00:00:00'),
(1285, 'Data Pinjaman Inventaris #119 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 06:38:18', '0000-00-00 00:00:00'),
(1286, 'Data Pinjaman Ditambahkan 120 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:43:46', '0000-00-00 00:00:00'),
(1287, 'Data Pinjaman Ditambahkan 121 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:44:12', '0000-00-00 00:00:00'),
(1288, '#121 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:45:01', '0000-00-00 00:00:00'),
(1289, 'Data Inventaris Ditambahkan 38 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:46:05', '0000-00-00 00:00:00'),
(1290, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:46:13', '0000-00-00 00:00:00'),
(1291, 'Data Pinjaman Ditambahkan 122 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:46:57', '0000-00-00 00:00:00'),
(1292, '#122 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:47:06', '0000-00-00 00:00:00'),
(1293, '#119 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:47:09', '0000-00-00 00:00:00'),
(1294, 'Data Pinjaman Inventaris #120 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 06:47:11', '0000-00-00 00:00:00'),
(1295, 'Data Pinjaman Ditambahkan 123 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:47:26', '0000-00-00 00:00:00'),
(1296, 'Data Pinjaman Ditambahkan 124 Created by User:Admin Sarana', '1', '::1', '2023-07-29 06:51:29', '0000-00-00 00:00:00'),
(1297, '#124 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 06:51:55', '0000-00-00 00:00:00'),
(1298, '#123 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:03:49', '0000-00-00 00:00:00'),
(1299, '#120 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:03:53', '0000-00-00 00:00:00'),
(1300, 'Data Pinjaman Ditambahkan 125 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:45:01', '0000-00-00 00:00:00'),
(1301, 'Data Pinjaman Inventaris #125 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 07:45:04', '0000-00-00 00:00:00'),
(1302, 'Data Pinjaman Ditambahkan 126 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:45:23', '0000-00-00 00:00:00'),
(1303, 'Data Pinjaman Inventaris #126 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 07:54:22', '0000-00-00 00:00:00'),
(1304, 'Data Pinjaman Ditambahkan 127 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:54:37', '0000-00-00 00:00:00'),
(1305, '#125 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:54:43', '0000-00-00 00:00:00'),
(1306, '#126 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:57:05', '0000-00-00 00:00:00'),
(1307, '#127 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:57:08', '0000-00-00 00:00:00'),
(1308, 'Data Pinjaman Ditambahkan 128 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:57:24', '0000-00-00 00:00:00'),
(1309, '#128 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 07:57:29', '0000-00-00 00:00:00'),
(1310, 'Data Pinjaman Ditambahkan 129 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:57:48', '0000-00-00 00:00:00'),
(1311, 'Data Pinjaman Inventaris #129 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 07:57:51', '0000-00-00 00:00:00'),
(1312, 'Data Pinjaman Ditambahkan 130 Created by User:Admin Sarana', '1', '::1', '2023-07-29 07:58:10', '0000-00-00 00:00:00'),
(1313, 'User #6 Updated by User:Admin Sarana', '1', '::1', '2023-07-29 08:16:54', '0000-00-00 00:00:00'),
(1314, 'Data Pinjaman Ditambahkan 131 Created by User:Admin Sarana', '1', '::1', '2023-07-29 09:20:21', '0000-00-00 00:00:00'),
(1315, 'Data Pinjaman Inventaris #131 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 09:20:47', '0000-00-00 00:00:00'),
(1316, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 10:32:33', '0000-00-00 00:00:00'),
(1317, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 10:56:47', '0000-00-00 00:00:00'),
(1318, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:42:07', '0000-00-00 00:00:00'),
(1319, 'Data Pinjaman Inventaris #131 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-29 11:42:34', '0000-00-00 00:00:00'),
(1320, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:42:42', '0000-00-00 00:00:00'),
(1321, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:45:48', '0000-00-00 00:00:00');
INSERT INTO `activity_logs` (`id`, `title`, `user`, `ip_address`, `created_at`, `updated_at`) VALUES
(1322, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:46:00', '0000-00-00 00:00:00'),
(1323, 'Data Pinjaman #131 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:46:18', '0000-00-00 00:00:00'),
(1324, '#131 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-29 11:46:58', '0000-00-00 00:00:00'),
(1325, 'Data Pinjaman Ditambahkan 132 Created by User:Admin Sarana', '1', '::1', '2023-07-29 11:47:38', '0000-00-00 00:00:00'),
(1326, 'Data Pinjaman #132 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:47:56', '0000-00-00 00:00:00'),
(1327, 'Data Pinjaman #132 Updated by User: Admin Sarana', '1', '::1', '2023-07-29 11:48:13', '0000-00-00 00:00:00'),
(1328, 'Data Inventaris #36 Updated by User: #1', '1', '::1', '2023-07-29 12:02:11', '0000-00-00 00:00:00'),
(1329, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-29 14:29:44', '0000-00-00 00:00:00'),
(1330, 'Wahyu Saepudin (wahyu) Logged in', '6', '::1', '2023-07-29 14:29:57', '0000-00-00 00:00:00'),
(1331, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-30 03:00:59', '0000-00-00 00:00:00'),
(1332, 'Data Pinjaman Dikembalikan 132 Created by User:Admin Sarana', '1', '::1', '2023-07-30 03:49:28', '0000-00-00 00:00:00'),
(1333, 'Data Pinjaman Ditambahkan 133 Created by User:Admin Sarana', '1', '::1', '2023-07-30 06:20:36', '0000-00-00 00:00:00'),
(1334, 'Data Pinjaman Inventaris #133 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 06:20:57', '0000-00-00 00:00:00'),
(1335, 'Data Pinjaman Dikembalikan 133 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:11:36', '0000-00-00 00:00:00'),
(1336, 'Data Pinjaman Ditambahkan 134 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:15:31', '0000-00-00 00:00:00'),
(1337, 'Data Pinjaman Inventaris #134 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:15:35', '0000-00-00 00:00:00'),
(1338, 'Data Pinjaman Dikembalikan 134 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:15:58', '0000-00-00 00:00:00'),
(1339, 'Data Pinjaman Ditambahkan 135 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:21:41', '0000-00-00 00:00:00'),
(1340, 'Data Pinjaman Inventaris #135 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:21:45', '0000-00-00 00:00:00'),
(1341, 'Data Pinjaman #135 Updated by User: Admin Sarana', '1', '::1', '2023-07-30 07:22:13', '0000-00-00 00:00:00'),
(1342, 'Data Pinjaman #135 Updated by User: Admin Sarana', '1', '::1', '2023-07-30 07:22:32', '0000-00-00 00:00:00'),
(1343, 'Data Pinjaman Inventaris #135 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:22:44', '0000-00-00 00:00:00'),
(1344, 'Data Pinjaman Dikembalikan 135 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:23:19', '0000-00-00 00:00:00'),
(1345, 'Data Pinjaman Ditambahkan 136 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:26:17', '0000-00-00 00:00:00'),
(1346, '#136 Data Pinjaman Deleted by User:Admin Sarana', '1', '::1', '2023-07-30 07:26:29', '0000-00-00 00:00:00'),
(1347, 'Data Pinjaman Ditambahkan 137 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:29:57', '0000-00-00 00:00:00'),
(1348, 'Data Pinjaman Inventaris #137 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:30:09', '0000-00-00 00:00:00'),
(1349, 'Data Pinjaman Dikembalikan 137 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:31:33', '0000-00-00 00:00:00'),
(1350, 'Data Pinjaman Ditambahkan 138 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:38:42', '0000-00-00 00:00:00'),
(1351, 'Data Pinjaman Inventaris #138 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:38:49', '0000-00-00 00:00:00'),
(1352, 'Data Pinjaman Dikembalikan 138 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:40:06', '0000-00-00 00:00:00'),
(1353, 'Data Pinjaman Ditambahkan 139 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:51:01', '0000-00-00 00:00:00'),
(1354, 'Data Pinjaman Inventaris #139 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 07:51:07', '0000-00-00 00:00:00'),
(1355, 'Data Pinjaman Dikembalikan 139 Created by User:Admin Sarana', '1', '::1', '2023-07-30 07:51:19', '0000-00-00 00:00:00'),
(1356, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-30 10:47:05', '0000-00-00 00:00:00'),
(1357, 'Data Pinjaman Ditambahkan 140 Created by User:Admin Sarana', '1', '::1', '2023-07-30 10:56:39', '0000-00-00 00:00:00'),
(1358, 'Data Pinjaman Inventaris #140 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-07-30 11:07:16', '0000-00-00 00:00:00'),
(1359, 'Data Pinjaman Ditambahkan 141 Created by User:Admin Sarana', '1', '::1', '2023-07-30 11:07:57', '0000-00-00 00:00:00'),
(1360, 'Data Pinjaman Dikembalikan 140 Created by User:Admin Sarana', '1', '::1', '2023-07-30 11:08:14', '0000-00-00 00:00:00'),
(1361, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-31 00:11:07', '0000-00-00 00:00:00'),
(1362, 'New Permission #71 Created by User: #1', '1', '::1', '2023-07-31 01:19:38', '0000-00-00 00:00:00'),
(1363, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-31 01:20:21', '0000-00-00 00:00:00'),
(1364, 'New Permission #72 Created by User: #1', '1', '::1', '2023-07-31 02:12:30', '0000-00-00 00:00:00'),
(1365, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-31 02:12:37', '0000-00-00 00:00:00'),
(1366, 'Permission #72 Updated by User: #1', '1', '::1', '2023-07-31 02:27:56', '0000-00-00 00:00:00'),
(1367, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-31 02:28:14', '0000-00-00 00:00:00'),
(1368, 'Permission #72 Updated by User: #1', '1', '::1', '2023-07-31 03:11:11', '0000-00-00 00:00:00'),
(1369, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-31 03:11:24', '0000-00-00 00:00:00'),
(1370, 'Data Inventaris Dipindahkan Ke Ruangan # Updated by User: #1', '1', '::1', '2023-07-31 03:12:43', '0000-00-00 00:00:00'),
(1371, 'Role #1 Updated by User: #1', '1', '::1', '2023-07-31 07:31:44', '0000-00-00 00:00:00'),
(1372, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-31 07:37:57', '0000-00-00 00:00:00'),
(1373, 'Role #3 Updated by User: #1', '1', '::1', '2023-07-31 07:38:31', '0000-00-00 00:00:00'),
(1374, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-07-31 07:42:51', '0000-00-00 00:00:00'),
(1375, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-07-31 07:42:56', '0000-00-00 00:00:00'),
(1376, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-31 07:43:21', '0000-00-00 00:00:00'),
(1377, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-31 07:43:26', '0000-00-00 00:00:00'),
(1378, 'Data Pemeliharaan Ditambahkan 92 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:14:31', '0000-00-00 00:00:00'),
(1379, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:14:45', '0000-00-00 00:00:00'),
(1380, 'Data Pemeliharaan Ditambahkan 93 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:21:04', '0000-00-00 00:00:00'),
(1381, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:26:35', '0000-00-00 00:00:00'),
(1382, 'User: Admin Sarana Logged Out', '1', '::1', '2023-07-31 08:26:47', '0000-00-00 00:00:00'),
(1383, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-07-31 08:27:03', '0000-00-00 00:00:00'),
(1384, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:35:23', '0000-00-00 00:00:00'),
(1385, 'Data Pemeliharaan Ditambahkan 95 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:39:34', '0000-00-00 00:00:00'),
(1386, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 08:39:59', '0000-00-00 00:00:00'),
(1387, 'Taufik Hidayat (taufik) Logged in', '5', '127.0.0.1', '2023-07-31 11:47:13', '0000-00-00 00:00:00'),
(1388, 'Data Pemeliharaan Ditambahkan 96 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 11:48:11', '0000-00-00 00:00:00'),
(1389, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 11:48:20', '0000-00-00 00:00:00'),
(1390, 'Data Pemeliharaan Ditambahkan 97 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 11:57:44', '0000-00-00 00:00:00'),
(1391, ' #97 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 12:01:34', '0000-00-00 00:00:00'),
(1392, 'Data Pemeliharaan Ditambahkan 98 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 12:16:28', '0000-00-00 00:00:00'),
(1393, ' #98 Deleted by User:Taufik Hidayat', '5', '::1', '2023-07-31 12:17:22', '0000-00-00 00:00:00'),
(1394, 'Data Pemeliharaan Ditambahkan 99 Created by User:Taufik Hidayat', '5', '::1', '2023-07-31 12:18:07', '0000-00-00 00:00:00'),
(1395, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:33:24', '0000-00-00 00:00:00'),
(1396, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:33:39', '0000-00-00 00:00:00'),
(1397, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:35:05', '0000-00-00 00:00:00'),
(1398, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:35:53', '0000-00-00 00:00:00'),
(1399, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:37:32', '0000-00-00 00:00:00'),
(1400, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:45:31', '0000-00-00 00:00:00'),
(1401, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:45:53', '0000-00-00 00:00:00'),
(1402, 'Data pemeliharaan #99 Updated by User: #5', '5', '::1', '2023-07-31 12:46:47', '0000-00-00 00:00:00'),
(1403, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-01 01:31:31', '0000-00-00 00:00:00'),
(1404, ' #99 Deleted by User:Taufik Hidayat', '5', '::1', '2023-08-01 01:32:58', '0000-00-00 00:00:00'),
(1405, 'Data Pemeliharaan Ditambahkan  Created by User:Taufik Hidayat', '5', '::1', '2023-08-01 01:41:03', '0000-00-00 00:00:00'),
(1406, 'Data Pemeliharaan Ditambahkan  Created by User:Taufik Hidayat', '5', '::1', '2023-08-01 01:42:28', '0000-00-00 00:00:00'),
(1407, 'Data Pemeliharaan Ditambahkan 100 Created by User:Taufik Hidayat', '5', '::1', '2023-08-01 01:49:25', '0000-00-00 00:00:00'),
(1408, ' #100 Deleted by User:Taufik Hidayat', '5', '::1', '2023-08-01 01:49:32', '0000-00-00 00:00:00'),
(1409, 'Data Pemeliharaan Ditambahkan 101 Created by User:Taufik Hidayat', '5', '::1', '2023-08-01 02:00:01', '0000-00-00 00:00:00'),
(1410, 'Data pemeliharaan #101 Updated by User: #5', '5', '::1', '2023-08-01 02:00:21', '0000-00-00 00:00:00'),
(1411, 'Data pemeliharaan #101 Updated by User: #5', '5', '::1', '2023-08-01 02:00:28', '0000-00-00 00:00:00'),
(1412, 'Data Inventaris #36 Updated by User: #5', '5', '::1', '2023-08-01 02:55:34', '0000-00-00 00:00:00'),
(1413, '#141 Data Pinjaman Deleted by User:Taufik Hidayat', '5', '::1', '2023-08-01 02:55:50', '0000-00-00 00:00:00'),
(1414, 'Data Inventaris #26 Updated by User: #5', '5', '::1', '2023-08-01 02:56:00', '0000-00-00 00:00:00'),
(1415, 'Data Inventaris #37 Updated by User: #5', '5', '::1', '2023-08-01 02:56:12', '0000-00-00 00:00:00'),
(1416, 'Data Inventaris #36 Updated by User: #5', '5', '::1', '2023-08-01 03:07:20', '0000-00-00 00:00:00'),
(1417, 'Data Inventaris #36 Updated by User: #5', '5', '::1', '2023-08-01 03:08:00', '0000-00-00 00:00:00'),
(1418, 'Data Inventaris #26 Updated by User: #5', '5', '::1', '2023-08-01 03:08:10', '0000-00-00 00:00:00'),
(1419, 'Data Inventaris #37 Updated by User: #5', '5', '::1', '2023-08-01 03:08:19', '0000-00-00 00:00:00'),
(1420, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-01 03:23:03', '0000-00-00 00:00:00'),
(1421, 'New Permission #73 Created by User: #1', '1', '::1', '2023-08-01 03:23:37', '0000-00-00 00:00:00'),
(1422, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-01 03:23:54', '0000-00-00 00:00:00'),
(1423, ' #1 Deleted by User:Taufik Hidayat', '5', '::1', '2023-08-01 03:36:10', '0000-00-00 00:00:00'),
(1424, 'Data Pemeliharaan Ditambahkan 102 Created by User:Taufik Hidayat', '5', '::1', '2023-08-01 03:38:38', '0000-00-00 00:00:00'),
(1425, 'New User $9 Created by User:Admin Sarana', '1', '::1', '2023-08-01 03:39:46', '0000-00-00 00:00:00'),
(1426, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-01 03:39:57', '0000-00-00 00:00:00'),
(1427, 'Rifki (rifki) Logged in', '9', '::1', '2023-08-01 03:40:08', '0000-00-00 00:00:00'),
(1428, 'Data Pemeliharaan Ditambahkan 103 Created by User:Rifki', '9', '::1', '2023-08-01 03:59:13', '0000-00-00 00:00:00'),
(1429, ' #1 Deleted by User:Rifki', '9', '::1', '2023-08-01 03:59:30', '0000-00-00 00:00:00'),
(1430, 'Data Pemeliharaan Ditambahkan 104 Created by User:Rifki', '9', '::1', '2023-08-01 06:08:33', '0000-00-00 00:00:00'),
(1431, ' #1 Deleted by User:Rifki', '9', '::1', '2023-08-01 06:08:49', '0000-00-00 00:00:00'),
(1432, 'User: Rifki Logged Out', '9', '::1', '2023-08-01 06:12:58', '0000-00-00 00:00:00'),
(1433, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-01 06:13:15', '0000-00-00 00:00:00'),
(1434, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 06:14:31', '0000-00-00 00:00:00'),
(1435, 'User #8 Updated by User:Admin Sarana', '1', '::1', '2023-08-01 06:15:15', '0000-00-00 00:00:00'),
(1436, 'Asep (asepp) Logged in', '8', '::1', '2023-08-01 06:15:25', '0000-00-00 00:00:00'),
(1437, 'User: Asep Logged Out', '8', '::1', '2023-08-01 06:16:00', '0000-00-00 00:00:00'),
(1438, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-01 06:16:06', '0000-00-00 00:00:00'),
(1439, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-01 06:21:36', '0000-00-00 00:00:00'),
(1440, 'Asep (asepp) Logged in', '8', '::1', '2023-08-01 06:21:44', '0000-00-00 00:00:00'),
(1441, 'Data Pinjaman Ditambahkan 142 Created by User:Asep', '8', '::1', '2023-08-01 06:23:50', '0000-00-00 00:00:00'),
(1442, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-01 06:25:20', '0000-00-00 00:00:00'),
(1443, 'Wahyu Saepudin (wahyu) Logged in', '6', '::1', '2023-08-01 06:25:30', '0000-00-00 00:00:00'),
(1444, 'Data Pinjaman Ditambahkan 143 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-01 06:25:59', '0000-00-00 00:00:00'),
(1445, 'User: Asep Logged Out', '8', '::1', '2023-08-01 07:21:34', '0000-00-00 00:00:00'),
(1446, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-01 07:21:41', '0000-00-00 00:00:00'),
(1447, 'New Permission #74 Created by User: #1', '1', '::1', '2023-08-01 07:22:03', '0000-00-00 00:00:00'),
(1448, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 07:22:19', '0000-00-00 00:00:00'),
(1449, 'New Permission #75 Created by User: #1', '1', '::1', '2023-08-01 07:35:56', '0000-00-00 00:00:00'),
(1450, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 07:36:43', '0000-00-00 00:00:00'),
(1451, 'Data Pinjaman Inventaris #143 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-08-01 07:38:02', '0000-00-00 00:00:00'),
(1452, 'New Permission #76 Created by User: #1', '1', '::1', '2023-08-01 07:42:58', '0000-00-00 00:00:00'),
(1453, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 07:43:11', '0000-00-00 00:00:00'),
(1454, 'Data Pinjaman Ditambahkan 144 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-01 07:44:23', '0000-00-00 00:00:00'),
(1455, '#144 Data Pinjaman Deleted by User:Wahyu Saepudin', '6', '::1', '2023-08-01 07:44:43', '0000-00-00 00:00:00'),
(1456, 'Data Peminjam Ditambahkan 145 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-01 07:46:06', '0000-00-00 00:00:00'),
(1457, '#145 Data Pinjaman Deleted by User:Wahyu Saepudin', '6', '::1', '2023-08-01 07:46:37', '0000-00-00 00:00:00'),
(1458, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 07:48:44', '0000-00-00 00:00:00'),
(1459, 'New Permission #77 Created by User: #1', '1', '::1', '2023-08-01 07:49:25', '0000-00-00 00:00:00'),
(1460, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 07:49:34', '0000-00-00 00:00:00'),
(1461, 'Data Pinjaman #143 Updated by User: Admin Sarana', '1', '::1', '2023-08-01 08:12:11', '0000-00-00 00:00:00'),
(1462, 'Data peminjam #143 Updated by User: Wahyu Saepudin', '6', '::1', '2023-08-01 08:15:55', '0000-00-00 00:00:00'),
(1463, 'Data peminjam #143 Updated by User: Wahyu Saepudin', '6', '::1', '2023-08-01 08:16:24', '0000-00-00 00:00:00'),
(1464, 'Data Pinjaman Inventaris #143 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-08-01 08:23:17', '0000-00-00 00:00:00'),
(1465, 'Data Pinjaman Dikembalikan 143 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-01 08:23:34', '0000-00-00 00:00:00'),
(1466, 'New Permission #78 Created by User: #1', '1', '::1', '2023-08-01 08:40:27', '0000-00-00 00:00:00'),
(1467, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-01 08:40:41', '0000-00-00 00:00:00'),
(1468, 'Permission # Deleted by User: #1', '1', '::1', '2023-08-01 08:52:02', '0000-00-00 00:00:00'),
(1469, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-01 11:32:26', '0000-00-00 00:00:00'),
(1470, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 00:03:28', '0000-00-00 00:00:00'),
(1471, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 02:11:34', '0000-00-00 00:00:00'),
(1472, 'Asep (asepp) Logged in', '8', '::1', '2023-08-02 02:16:28', '0000-00-00 00:00:00'),
(1473, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-02 02:17:47', '0000-00-00 00:00:00'),
(1474, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-02 02:17:56', '0000-00-00 00:00:00'),
(1475, 'Data Peminjam Ditambahkan 146 Created by User:Asep', '8', '::1', '2023-08-02 02:25:32', '0000-00-00 00:00:00'),
(1476, '#142 Data peminjam Deleted by User:Asep', '8', '::1', '2023-08-02 02:25:38', '0000-00-00 00:00:00'),
(1477, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-02 02:58:04', '0000-00-00 00:00:00'),
(1478, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 02:58:10', '0000-00-00 00:00:00'),
(1479, 'New Permission #79 Created by User: #1', '1', '::1', '2023-08-02 03:12:05', '0000-00-00 00:00:00'),
(1480, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-02 03:12:16', '0000-00-00 00:00:00'),
(1481, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-02 04:09:30', '0000-00-00 00:00:00'),
(1482, 'New Permission #80 Created by User: #1', '1', '::1', '2023-08-02 04:20:30', '0000-00-00 00:00:00'),
(1483, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-02 04:20:41', '0000-00-00 00:00:00'),
(1484, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-02 04:20:55', '0000-00-00 00:00:00'),
(1485, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-02 04:21:04', '0000-00-00 00:00:00'),
(1486, 'Data Laporan Sudah Dicek 17 Created by User:Taufik Hidayat', '5', '::1', '2023-08-02 05:01:35', '0000-00-00 00:00:00'),
(1487, 'Asep (asepp) Logged in', '8', '::1', '2023-08-02 05:30:50', '0000-00-00 00:00:00'),
(1488, 'Data Laporan Kerusakan Ditambahkan 19 Created by User:Asep', '8', '::1', '2023-08-02 05:31:18', '0000-00-00 00:00:00'),
(1489, 'Data Laporan Sudah Dicek 19 Created by User:Taufik Hidayat', '5', '::1', '2023-08-02 05:31:47', '0000-00-00 00:00:00'),
(1490, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-02 06:01:45', '0000-00-00 00:00:00'),
(1491, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 06:01:50', '0000-00-00 00:00:00'),
(1492, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-02 06:02:32', '0000-00-00 00:00:00'),
(1493, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-02 06:03:00', '0000-00-00 00:00:00'),
(1494, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-02 06:10:20', '0000-00-00 00:00:00'),
(1495, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-02 06:10:27', '0000-00-00 00:00:00'),
(1496, 'Data Laporan Kerusakan Ditambahkan 20 Created by User:Asep', '8', '::1', '2023-08-02 06:23:25', '0000-00-00 00:00:00'),
(1497, ' #1 Deleted by User:Asep', '8', '::1', '2023-08-02 06:23:50', '0000-00-00 00:00:00'),
(1498, 'Data Laporan Kerusakan Ditambahkan 21 Created by User:Asep', '8', '::1', '2023-08-02 06:25:30', '0000-00-00 00:00:00'),
(1499, ' #1 Deleted by User:Asep', '8', '::1', '2023-08-02 06:27:13', '0000-00-00 00:00:00'),
(1500, 'Data Laporan Kerusakan Ditambahkan 22 Created by User:Asep', '8', '::1', '2023-08-02 06:27:26', '0000-00-00 00:00:00'),
(1501, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 06:33:52', '0000-00-00 00:00:00'),
(1502, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-02 06:34:22', '0000-00-00 00:00:00'),
(1503, 'Data Laporan Sudah Dicek 22 Created by User:Taufik Hidayat', '5', '::1', '2023-08-02 07:20:10', '0000-00-00 00:00:00'),
(1504, 'Data Laporan Kerusakan Ditambahkan 23 Created by User:Asep', '8', '::1', '2023-08-02 07:26:29', '0000-00-00 00:00:00'),
(1505, 'Data Laporkan Kerusakan #23 Updated by User: #8', '8', '::1', '2023-08-02 07:30:05', '0000-00-00 00:00:00'),
(1506, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-02 08:00:39', '0000-00-00 00:00:00'),
(1507, 'Wahyu Saepudin (wahyu) Logged in', '6', '::1', '2023-08-02 08:00:53', '0000-00-00 00:00:00'),
(1508, 'Data Laporan Kerusakan Ditambahkan 24 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-02 08:01:52', '0000-00-00 00:00:00'),
(1509, 'New Permission #81 Created by User: #1', '1', '::1', '2023-08-02 08:17:08', '0000-00-00 00:00:00'),
(1510, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-02 08:17:25', '0000-00-00 00:00:00'),
(1511, 'Data Laporan Kerusakan Ditambahkan 25 Created by User:Asep', '8', '::1', '2023-08-02 08:30:56', '0000-00-00 00:00:00'),
(1512, ' #1 Deleted by User:Asep', '8', '::1', '2023-08-02 08:31:24', '0000-00-00 00:00:00'),
(1513, ' #1 Deleted by User:Asep', '8', '::1', '2023-08-02 08:32:38', '0000-00-00 00:00:00'),
(1514, 'Data Laporkan Kerusakan #24 Updated by User: #6', '6', '::1', '2023-08-02 08:40:38', '0000-00-00 00:00:00'),
(1515, 'Data Laporan Kerusakan Ditambahkan 26 Created by User:Asep', '8', '::1', '2023-08-02 08:45:22', '0000-00-00 00:00:00'),
(1516, 'User: Wahyu Saepudin Logged Out', '6', '::1', '2023-08-02 08:50:50', '0000-00-00 00:00:00'),
(1517, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 08:50:56', '0000-00-00 00:00:00'),
(1518, 'Role #4 Updated by User: #1', '1', '::1', '2023-08-02 08:51:29', '0000-00-00 00:00:00'),
(1519, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-02 12:28:07', '0000-00-00 00:00:00'),
(1520, 'New Permission #82 Created by User: #1', '1', '::1', '2023-08-02 13:11:24', '0000-00-00 00:00:00'),
(1521, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-02 13:11:47', '0000-00-00 00:00:00'),
(1522, 'New Permission #83 Created by User: #1', '1', '::1', '2023-08-02 13:22:34', '0000-00-00 00:00:00'),
(1523, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-02 13:22:48', '0000-00-00 00:00:00'),
(1524, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-02 13:23:41', '0000-00-00 00:00:00'),
(1525, 'Data Pengajuan Ditambahkan 1 Created by User:Admin Sarana', '1', '::1', '2023-08-02 13:38:54', '0000-00-00 00:00:00'),
(1526, 'New Permission #84 Created by User: #1', '1', '::1', '2023-08-02 13:40:48', '0000-00-00 00:00:00'),
(1527, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-02 13:41:09', '0000-00-00 00:00:00'),
(1528, 'Data Pengajuan Ditambahkan 2 Created by User:Admin Sarana', '1', '::1', '2023-08-02 13:41:41', '0000-00-00 00:00:00'),
(1529, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-02 13:41:52', '0000-00-00 00:00:00'),
(1530, 'New Permission #85 Created by User: #1', '1', '::1', '2023-08-02 13:50:00', '0000-00-00 00:00:00'),
(1531, 'Data Pengajuan Ditambahkan 3 Created by User:Admin Sarana', '1', '::1', '2023-08-02 13:50:24', '0000-00-00 00:00:00'),
(1532, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-02 13:50:42', '0000-00-00 00:00:00'),
(1533, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-03 00:34:48', '0000-00-00 00:00:00'),
(1534, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 00:49:05', '0000-00-00 00:00:00'),
(1535, 'Data Pengajuan Ditambahkan 4 Created by User:Admin Sarana', '1', '::1', '2023-08-03 00:49:51', '0000-00-00 00:00:00'),
(1536, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 00:50:49', '0000-00-00 00:00:00'),
(1537, 'Data Pengajuan Ditambahkan 5 Created by User:Admin Sarana', '1', '::1', '2023-08-03 00:51:42', '0000-00-00 00:00:00'),
(1538, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 00:51:56', '0000-00-00 00:00:00'),
(1539, 'Data Pengajuan Ditambahkan 6 Created by User:Admin Sarana', '1', '::1', '2023-08-03 00:53:34', '0000-00-00 00:00:00'),
(1540, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 01:18:44', '0000-00-00 00:00:00'),
(1541, 'Data Pengajuan Ditambahkan 7 Created by User:Admin Sarana', '1', '::1', '2023-08-03 01:19:28', '0000-00-00 00:00:00'),
(1542, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 01:23:47', '0000-00-00 00:00:00'),
(1543, 'New Permission #86 Created by User: #1', '1', '::1', '2023-08-03 01:27:24', '0000-00-00 00:00:00'),
(1544, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-03 01:27:34', '0000-00-00 00:00:00'),
(1545, 'Data Pengajuan Ditambahkan 8 Created by User:Admin Sarana', '1', '::1', '2023-08-03 01:28:08', '0000-00-00 00:00:00'),
(1546, 'Data pengajuan #8 Updated by User: #1', '1', '::1', '2023-08-03 02:26:39', '0000-00-00 00:00:00'),
(1547, 'New Permission #87 Created by User: #1', '1', '::1', '2023-08-03 04:23:32', '0000-00-00 00:00:00'),
(1548, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-03 04:23:46', '0000-00-00 00:00:00'),
(1549, 'New Permission #88 Created by User: #1', '1', '::1', '2023-08-03 04:46:45', '0000-00-00 00:00:00'),
(1550, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-03 04:47:01', '0000-00-00 00:00:00'),
(1551, 'Data Pengajuan Sudah Di Approve 8 Created by User:Admin Sarana', '1', '::1', '2023-08-03 05:21:45', '0000-00-00 00:00:00'),
(1552, 'Data Pengajuan Ditambahkan 9 Created by User:Admin Sarana', '1', '::1', '2023-08-03 05:24:46', '0000-00-00 00:00:00'),
(1553, 'Data Pengajuan Sudah Di Approve 9 Created by User:Admin Sarana', '1', '::1', '2023-08-03 05:27:42', '0000-00-00 00:00:00'),
(1554, 'Data Pengajuan Ditambahkan 10 Created by User:Admin Sarana', '1', '::1', '2023-08-03 05:39:38', '0000-00-00 00:00:00'),
(1555, 'Data Pengajuan Sudah Di Approve 10 Created by User:Admin Sarana', '1', '::1', '2023-08-03 05:45:02', '0000-00-00 00:00:00'),
(1556, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-03 07:54:23', '0000-00-00 00:00:00'),
(1557, 'Data Pengajuan Ditambahkan 11 Created by User:Admin Sarana', '1', '::1', '2023-08-03 07:54:50', '0000-00-00 00:00:00'),
(1558, 'Data pengajuan #11 Updated by User: #1', '1', '::1', '2023-08-03 07:57:25', '0000-00-00 00:00:00'),
(1559, 'Data Pengajuan Sudah Di Approve 11 Created by User:Admin Sarana', '1', '::1', '2023-08-03 08:04:38', '0000-00-00 00:00:00'),
(1560, 'Data Pengajuan Ditambahkan 12 Created by User:Admin Sarana', '1', '::1', '2023-08-03 08:25:13', '0000-00-00 00:00:00'),
(1561, ' #1 Deleted by User:Admin Sarana', '1', '::1', '2023-08-03 08:25:24', '0000-00-00 00:00:00'),
(1562, 'Data Pengajuan Ditambahkan 13 Created by User:Admin Sarana', '1', '::1', '2023-08-03 08:36:17', '0000-00-00 00:00:00'),
(1563, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-03 08:58:14', '0000-00-00 00:00:00'),
(1564, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-03 08:58:20', '0000-00-00 00:00:00'),
(1565, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-03 08:58:37', '0000-00-00 00:00:00'),
(1566, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-03 08:58:42', '0000-00-00 00:00:00'),
(1567, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-03 12:06:00', '0000-00-00 00:00:00'),
(1568, 'User #4 Updated by User:Admin Sarana', '1', '::1', '2023-08-03 12:07:34', '0000-00-00 00:00:00'),
(1569, 'Agus Rahmawan (agus rahmawan) Logged in', '4', '::1', '2023-08-03 12:08:32', '0000-00-00 00:00:00'),
(1570, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:12:38', '0000-00-00 00:00:00'),
(1571, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:14:22', '0000-00-00 00:00:00'),
(1572, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:14:52', '0000-00-00 00:00:00'),
(1573, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:17:20', '0000-00-00 00:00:00'),
(1574, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:18:10', '0000-00-00 00:00:00'),
(1575, 'New User $10 Created by User:Admin Sarana', '1', '::1', '2023-08-03 12:20:05', '0000-00-00 00:00:00'),
(1576, 'New Permission #89 Created by User: #1', '1', '::1', '2023-08-03 12:37:04', '0000-00-00 00:00:00'),
(1577, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-03 12:37:44', '0000-00-00 00:00:00'),
(1578, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:38:34', '0000-00-00 00:00:00'),
(1579, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-03 12:39:12', '0000-00-00 00:00:00'),
(1580, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:39:37', '0000-00-00 00:00:00'),
(1581, 'Permission #89 Updated by User: #1', '1', '::1', '2023-08-03 12:40:57', '0000-00-00 00:00:00'),
(1582, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-03 12:41:28', '0000-00-00 00:00:00'),
(1583, 'Data Pengajuan Ditambahkan 14 Created by User:Agus Rahmawan', '4', '::1', '2023-08-03 12:45:32', '0000-00-00 00:00:00'),
(1584, 'Data pengajuan #14 Updated by User: #4', '4', '::1', '2023-08-03 12:51:02', '0000-00-00 00:00:00'),
(1585, 'Data pengajuan #14 Updated by User: #4', '4', '::1', '2023-08-03 12:51:13', '0000-00-00 00:00:00'),
(1586, 'Data pengajuan #14 Updated by User: #4', '4', '::1', '2023-08-03 12:51:24', '0000-00-00 00:00:00'),
(1587, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-04 00:19:41', '0000-00-00 00:00:00'),
(1588, 'Data Pengajuan Sudah Di Approve 14 Created by User:Admin Sarana', '1', '::1', '2023-08-04 00:31:28', '0000-00-00 00:00:00'),
(1589, 'Agus Rahmawan (agus rahmawan) Logged in', '4', '::1', '2023-08-04 00:44:03', '0000-00-00 00:00:00'),
(1590, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-04 01:31:53', '0000-00-00 00:00:00'),
(1591, 'Data Pengajuan Ditambahkan 15 Created by User:Agus Rahmawan', '4', '::1', '2023-08-04 01:39:35', '0000-00-00 00:00:00'),
(1592, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 01:48:50', '0000-00-00 00:00:00'),
(1593, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 01:49:42', '0000-00-00 00:00:00'),
(1594, 'New Permission #90 Created by User: #1', '1', '::1', '2023-08-04 01:58:35', '0000-00-00 00:00:00'),
(1595, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 01:58:42', '0000-00-00 00:00:00'),
(1596, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-04 02:26:16', '0000-00-00 00:00:00'),
(1597, 'Data Pemeliharaan Ditambahkan 105 Created by User:Taufik Hidayat', '5', '::1', '2023-08-04 02:27:05', '0000-00-00 00:00:00'),
(1598, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-04 02:45:15', '0000-00-00 00:00:00'),
(1599, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-04 02:45:31', '0000-00-00 00:00:00'),
(1600, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-04 02:56:37', '0000-00-00 00:00:00'),
(1601, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-04 02:56:42', '0000-00-00 00:00:00'),
(1602, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-04 02:57:16', '0000-00-00 00:00:00'),
(1603, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-04 03:07:19', '0000-00-00 00:00:00'),
(1604, 'Agus Rahmawan (agus rahmawan) Logged in', '4', '::1', '2023-08-04 03:07:32', '0000-00-00 00:00:00'),
(1605, 'Data Pengajuan Ditambahkan 16 Created by User:Agus Rahmawan', '4', '::1', '2023-08-04 03:13:15', '0000-00-00 00:00:00'),
(1606, 'Data Pengajuan Sudah Di Approve 16 Created by User:Admin Sarana', '1', '::1', '2023-08-04 03:14:45', '0000-00-00 00:00:00'),
(1607, 'Data Pinjaman Ditambahkan 147 Created by User:Admin Sarana', '1', '::1', '2023-08-04 03:21:03', '0000-00-00 00:00:00'),
(1608, 'Data Pinjaman Inventaris #147 Dikonfirmasi Oleh Operator :Admin Sarana', '1', '::1', '2023-08-04 03:30:32', '0000-00-00 00:00:00'),
(1609, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-04 03:33:48', '0000-00-00 00:00:00'),
(1610, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-04 03:34:22', '0000-00-00 00:00:00'),
(1611, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-04 03:35:49', '0000-00-00 00:00:00'),
(1612, 'Agus Rahmawan (agus rahmawan) Logged in', '4', '::1', '2023-08-04 03:40:22', '0000-00-00 00:00:00'),
(1613, 'User: Agus Rahmawan Logged Out', '4', '::1', '2023-08-04 03:40:31', '0000-00-00 00:00:00'),
(1614, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-04 03:40:36', '0000-00-00 00:00:00'),
(1615, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 03:41:06', '0000-00-00 00:00:00'),
(1616, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 03:41:42', '0000-00-00 00:00:00'),
(1617, 'New Permission #91 Created by User: #1', '1', '::1', '2023-08-04 03:43:46', '0000-00-00 00:00:00'),
(1618, 'Role #2 Updated by User: #1', '1', '::1', '2023-08-04 03:44:04', '0000-00-00 00:00:00'),
(1619, 'Data Pengajuan Ditambahkan 17 Created by User:Agus Rahmawan', '4', '::1', '2023-08-04 03:45:57', '0000-00-00 00:00:00'),
(1620, ' #1 Deleted by User:Agus Rahmawan', '4', '::1', '2023-08-04 03:46:06', '0000-00-00 00:00:00'),
(1621, 'User: Agus Rahmawan Logged Out', '4', '::1', '2023-08-04 03:47:26', '0000-00-00 00:00:00'),
(1622, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-04 03:47:41', '0000-00-00 00:00:00'),
(1623, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-04 03:48:04', '0000-00-00 00:00:00'),
(1624, 'Role #1 Updated by User: #1', '1', '::1', '2023-08-04 03:48:33', '0000-00-00 00:00:00'),
(1625, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-04 03:49:14', '0000-00-00 00:00:00'),
(1626, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-04 03:51:28', '0000-00-00 00:00:00'),
(1627, 'Role #3 Updated by User: #1', '1', '::1', '2023-08-04 03:52:19', '0000-00-00 00:00:00'),
(1628, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-04 03:56:56', '0000-00-00 00:00:00'),
(1629, 'Asep (asepp) Logged in', '8', '::1', '2023-08-04 03:57:08', '0000-00-00 00:00:00'),
(1630, 'User: Admin Sarana Logged Out', '1', '::1', '2023-08-04 03:58:59', '0000-00-00 00:00:00'),
(1631, 'Taufik Hidayat (taufik) Logged in', '5', '::1', '2023-08-04 03:59:14', '0000-00-00 00:00:00'),
(1632, 'Data Pinjaman #147 Updated by User: Taufik Hidayat', '5', '::1', '2023-08-04 04:10:45', '0000-00-00 00:00:00'),
(1633, 'User: Asep Logged Out', '8', '::1', '2023-08-04 04:11:07', '0000-00-00 00:00:00'),
(1634, 'Wahyu Saepudin (wahyu) Logged in', '6', '::1', '2023-08-04 04:11:13', '0000-00-00 00:00:00'),
(1635, 'Data Pinjaman Inventaris #147 Dikonfirmasi Oleh Operator :Taufik Hidayat', '5', '::1', '2023-08-04 04:11:25', '0000-00-00 00:00:00'),
(1636, 'Data Pinjaman Dikembalikan 147 Created by User:Wahyu Saepudin', '6', '::1', '2023-08-04 04:11:42', '0000-00-00 00:00:00'),
(1637, 'User: Taufik Hidayat Logged Out', '5', '::1', '2023-08-04 04:12:12', '0000-00-00 00:00:00'),
(1638, 'Agus Rahmawan (agus rahmawan) Logged in', '4', '::1', '2023-08-04 04:12:29', '0000-00-00 00:00:00'),
(1639, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-04 05:48:59', '0000-00-00 00:00:00'),
(1640, 'Admin Sarana (admin) Logged in', '1', '::1', '2023-08-04 08:18:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_inventaris`
--

CREATE TABLE `data_inventaris` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `merek` varchar(100) NOT NULL,
  `asal_usul` varchar(100) NOT NULL,
  `tahun_peredaran` date NOT NULL,
  `harga_barang` varchar(500) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `masa_hidup_alat` varchar(100) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `id_jurusan` varchar(55) NOT NULL,
  `id_ruangan` varchar(255) NOT NULL,
  `stock` int(55) NOT NULL,
  `status_alat` varchar(255) NOT NULL,
  `total_alat` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_inventaris`
--

INSERT INTO `data_inventaris` (`id`, `kode_barang`, `nama_barang`, `merek`, `asal_usul`, `tahun_peredaran`, `harga_barang`, `keterangan`, `masa_hidup_alat`, `kategori`, `id_jurusan`, `id_ruangan`, `stock`, `status_alat`, `total_alat`) VALUES
(26, '222.333.444', 'PC All In One', 'Acer', 'BOPD', '2023-07-16', 'Rp. 7.000.000', 'PC SIJA', '1 Tahun', 'elektronik', '2', '4', 27, 'Tidak Di Pasang', 28),
(36, '111.222.333', 'Laptop Asus', 'Asus', 'BOPD', '2023-07-23', 'Rp. 5.000.000', 'laptop RPL', '1 Tahun', 'elektronik', '1', '3', 12, 'Tidak Di Pasang', 12),
(37, '666.777.888', 'Proyektor', 'Samsung', 'BOPD', '2023-07-29', 'Rp. 1.000.000', 'Proyektor Lab', '1 Tahun', 'elektronik', '2', '4', 8, 'Di Pasang', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pengajuan`
--

CREATE TABLE `data_pengajuan` (
  `id` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `spesifikasi` text NOT NULL,
  `banyak_alat` int(55) NOT NULL,
  `satuan` varchar(55) NOT NULL,
  `harga_satuan` varchar(55) NOT NULL,
  `link_beli` text NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `nama_alat` varchar(55) NOT NULL,
  `tahun_pengajuan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pinjam`
--

CREATE TABLE `data_pinjam` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_jurusan` varchar(55) NOT NULL,
  `tanggal_terpakai` date NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `stock` int(55) NOT NULL,
  `status` varchar(50) NOT NULL,
  `alasan_pinjam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pinjam`
--

INSERT INTO `data_pinjam` (`id`, `nama_barang`, `id_jurusan`, `tanggal_terpakai`, `id_pengguna`, `kelas`, `stock`, `status`, `alasan_pinjam`) VALUES
(146, 'PC All In One', '1', '2023-08-02', 0, 'x-a', 1, 'Menunggu Konfirmasi', 'dd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `code`, `data`, `created_at`) VALUES
(1, 'Reset Password Template', 'reset_password', '<h1><strong>{company_name}</strong></h1>\r\n\r\n<h3>Click on Reset Link to Proceed : <a href=\"{reset_link}\">Reset Now</a></h3>\r\n', '2020-01-03 04:10:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `historys`
--

CREATE TABLE `historys` (
  `id_history` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kode_barang` varchar(55) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `nama_pemindah_barang` varchar(255) NOT NULL,
  `jurusan` varchar(55) NOT NULL,
  `kondisi_barang` varchar(25) NOT NULL,
  `statuss` varchar(50) NOT NULL,
  `kelas` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `historys`
--

INSERT INTO `historys` (`id_history`, `nama_barang`, `kode_barang`, `tanggal_masuk`, `tanggal_keluar`, `nama_pemindah_barang`, `jurusan`, `kondisi_barang`, `statuss`, `kelas`) VALUES
(32, 'PC All In One', '222.333.444', '2023-07-30', '2023-07-30', 'Wahyu Saepudin', 'RPL', 'baik', 'Sudah Dikembalikan', 'x-b'),
(33, 'PC All In One', '222.333.444', '2023-07-30', '2023-07-30', 'Wahyu Saepudin', 'RPL', 'baik', 'Sudah Dikembalikan', 'x-a'),
(34, 'Laptop Asus', '111.222.333', '2023-08-01', '2023-08-01', 'Wahyu Saepudin', 'RPL', 'baik', 'Sudah Dikembalikan', 'x-a'),
(35, 'PC All In One', '222.333.444', '2023-08-04', '2023-08-04', 'Wahyu Saepudin', 'RPL', 'baik', 'Sudah Dikembalikan', 'x-a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `singkatan_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `singkatan_jurusan`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'RPL'),
(2, 'Sistem Informasi Jaringan Dasar', 'SIJA'),
(3, 'Teknik Komputer Jaringan', 'TKJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_inventaris`
--

CREATE TABLE `kategori_inventaris` (
  `id_kategori` int(11) NOT NULL,
  `jenis_barang` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori_inventaris`
--

INSERT INTO `kategori_inventaris` (`id_kategori`, `jenis_barang`, `keterangan`) VALUES
(1, 'Furnitur Kelas', 'Kebutuhan Kelas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapor_kerusakan`
--

CREATE TABLE `lapor_kerusakan` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `tingkat_kerusakan` varchar(55) NOT NULL,
  `keterangan` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal_laporan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lapor_kerusakan`
--

INSERT INTO `lapor_kerusakan` (`id`, `nama_barang`, `tingkat_kerusakan`, `keterangan`, `status`, `id_pengguna`, `tanggal_laporan`) VALUES
(24, '26', 'Komponen Alat Rusak', 'ahfkj', 'Menunggu Di Cek Oleh Teknisi', 6, '2023-08-02'),
(26, '26', 'Komponen Alat Rusak', 'hdfbnj', 'Menunggu Di Cek Oleh Teknisi', 8, '2023-08-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeliharaan`
--

CREATE TABLE `pemeliharaan` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `tanggal_pemeliharaan` date NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah_baik` int(55) NOT NULL,
  `jumlah_rusak` int(55) NOT NULL,
  `jumlah_hilang` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemeliharaan`
--

INSERT INTO `pemeliharaan` (`id`, `nama_barang`, `tanggal_pemeliharaan`, `keterangan`, `jumlah_baik`, `jumlah_rusak`, `jumlah_hilang`) VALUES
(105, '26', '2023-08-04', 'PC No.2 Layar mati', 11, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbaikan`
--

CREATE TABLE `perbaikan` (
  `id_konfirmasi` int(11) NOT NULL,
  `nama_barang` varchar(55) NOT NULL,
  `tingkat_kerusakan` varchar(55) NOT NULL,
  `keterangan` text NOT NULL,
  `statuss` varchar(55) NOT NULL,
  `nama_pelapor` varchar(55) NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `keterangan_perbaikan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perbaikan`
--

INSERT INTO `perbaikan` (`id_konfirmasi`, `nama_barang`, `tingkat_kerusakan`, `keterangan`, `statuss`, `nama_pelapor`, `tanggal_laporan`, `keterangan_perbaikan`) VALUES
(3, 'PC All In One', 'Mati Total', 'jknlkm', 'Sudah Dicek Oleh Teknisi', 'Asep', '2023-08-02', 'Sudah Diperbaiki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `code`) VALUES
(1, 'Users List', 'users_list'),
(2, 'Add Users', 'users_add'),
(3, 'Edit Users', 'users_edit'),
(4, 'Delete Users', 'users_delete'),
(5, 'Users View', 'users_view'),
(6, 'Activity Logs List', 'activity_log_list'),
(7, 'Acivity Log View', 'activity_log_view'),
(8, 'Roles List', 'roles_list'),
(9, 'Add Roles', 'roles_add'),
(10, 'Edit Roles', 'roles_edit'),
(11, 'Permissions List', 'permissions_list'),
(12, 'Add Permissions', 'permissions_add'),
(13, 'Permissions Edit', 'permissions_edit'),
(14, 'Delete Permissions', 'permissions_delete'),
(15, 'Company Settings', 'company_settings'),
(16, 'Backup', 'backup_db'),
(17, 'Manage Email Templates', 'email_templates'),
(18, 'General Settings', 'general_settings'),
(19, 'Inventaris List', 'inventaris_list'),
(20, 'Add Data Inventaris', 'inventaris_add'),
(21, 'Inventaris Delete', 'inventaris_delete'),
(22, 'Inventaris Edit', 'inventaris_edit'),
(23, 'Inventaris View', 'inventaris_view'),
(24, 'Fasilitas List', 'fasilitas_list'),
(25, 'Fasilitas Add', 'fasilitas_add'),
(26, 'Fasilitas Edit', 'fasilitas_edit'),
(27, 'Fasilitas Delete', 'fasilitas_delete'),
(28, 'Pinjaman List', 'pinjaman_list'),
(29, 'Pinjaman Add', 'pinjaman_add'),
(30, 'Pinjaman Delete', 'pinjaman_delete'),
(31, 'Pinjaman Edit', 'pinjaman_edit'),
(32, 'Konfirmasi Peminjaman', 'pinjaman_confirmation'),
(33, 'Pengembalian List', 'pengembalian_list'),
(34, 'Pengembalian Add', 'pengembalian_add'),
(35, 'List History', 'history_list'),
(40, 'Pindah Inventaris', 'move_inventory'),
(44, 'ruangan list', 'ruangan_list'),
(45, 'ruangan add', 'ruangan_add'),
(46, 'ruangan edit', 'ruangan_edit'),
(47, 'ruangan delete', 'ruangan_delete'),
(50, 'maintenance list', 'maintenance_list'),
(51, 'pemeliharaan list', 'pemeliharaan_list'),
(52, 'pemeliharaan add', 'pemeliharaan_add'),
(53, 'pemeliharaan delete', 'pemeliharaan_delete'),
(54, 'pemeliharaan edit', 'pemeliharaan_edit'),
(55, 'laporkan kerusakan list', 'laporkan_kerusakan_list'),
(56, 'laporkan kerusakan add', 'laporkan_kerusakan_add'),
(59, 'laporkan kerusakan delete', 'laporkan_kerusakan_delete'),
(60, 'laporkan kerusakan edit', 'laporkan_kerusakan_edit'),
(61, 'kerusakan confirmation', 'kerusakan_confirmation'),
(62, 'move inventory', 'pindah_inventaris'),
(63, 'jurusan list', 'jurusan_list'),
(64, 'jurusan add', 'jurusan_add'),
(65, 'jurusan edit', 'jurusan_edit'),
(66, 'jurusan delete', 'jurusan_delete'),
(67, 'filter data list', 'filter_data_list'),
(68, 'pemeliharaan print', 'pemeliharaan_print'),
(69, 'inventaris print', 'inventaris_print'),
(70, 'dashboard list', 'dashboard_list'),
(71, 'pinjaman dashboard', 'pinjaman_dashboard'),
(72, 'pindah inventaris list', 'ruangan_pindah_list'),
(73, 'pemeliharaan view', 'pemeliharaan_view'),
(74, 'peminjam_list', 'peminjam_list'),
(75, 'peminjam edit', 'peminjam_edit'),
(76, 'peminjam add', 'peminjam_add'),
(77, 'peminjam delete', 'peminjam_delete'),
(79, 'history konfirmasi list', 'history_konfirmasi_list'),
(80, 'konfirmasi add', 'konfirmasi_add'),
(81, 'laporkan kerusakan pengguna list', 'laporkan_kerusakan_pengguna_list'),
(82, 'pengajuan list', 'pengajuan_list'),
(83, 'pengajuan add', 'pengajuan_add'),
(84, 'pengajuan delete', 'pengajuan_delete'),
(85, 'pengajuan view', 'pengajuan_view'),
(86, 'pengajuan edit', 'pengajuan_edit'),
(87, 'acc pengajuan list', 'acc_pengajuan_list'),
(88, 'konfirmasi pengajuan add', 'konfirmasi_pengajuan_add'),
(89, 'pengajuan kajur list', 'pengajuan_kajur_list'),
(90, 'acc pengajuan kajur list', 'acc_pengajuan_kajur_list'),
(91, 'inventaris kajur', 'inventaris_kajur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `title`) VALUES
(1, 'Sarana'),
(2, 'Kajur'),
(3, 'Teknisi'),
(4, 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role`, `permission`) VALUES
(1, 1, 'users_list'),
(2, 1, 'users_add'),
(3, 1, 'users_edit'),
(4, 1, 'users_delete'),
(5, 1, 'users_view'),
(6, 1, 'activity_log_view'),
(7, 1, 'roles_list'),
(8, 1, 'roles_add'),
(9, 1, 'roles_edit'),
(10, 1, 'permissions_list'),
(11, 1, 'permissions_add'),
(12, 1, 'permissions_edit'),
(13, 1, 'permissions_delete'),
(15, 1, 'activity_log_list'),
(18, 1, 'backup_db'),
(31, 1, 'inventaris_list'),
(32, 1, 'inventaris_add'),
(33, 1, 'inventaris_delete'),
(34, 1, 'inventaris_edit'),
(35, 1, 'inventaris_view'),
(36, 1, 'fasilitas_list'),
(37, 1, 'fasilitas_add'),
(38, 1, 'fasilitas_edit'),
(39, 1, 'fasilitas_delete'),
(40, 4, 'inventaris_list'),
(41, 1, 'pinjaman_list'),
(45, 4, 'fasilitas_list'),
(49, 1, 'pengembalian_list'),
(51, 1, 'history_list'),
(52, 4, 'pengembalian_list'),
(53, 4, 'pengembalian_add'),
(54, 4, 'history_list'),
(62, 3, 'inventaris_list'),
(71, 3, 'pinjaman_list'),
(72, 3, 'pinjaman_add'),
(73, 3, 'pinjaman_delete'),
(74, 3, 'pinjaman_edit'),
(75, 3, 'pinjaman_confirmation'),
(76, 3, 'pengembalian_list'),
(77, 3, 'pengembalian_add'),
(78, 3, 'history_list'),
(79, 1, 'ruangan_list'),
(87, 1, 'move_inventory'),
(94, 1, 'ruangan_add'),
(95, 1, 'ruangan_edit'),
(96, 1, 'ruangan_delete'),
(99, 1, 'maintenance_list'),
(104, 1, 'pemeliharaan_list'),
(116, 4, 'laporkan_kerusakan_add'),
(117, 4, 'laporkan_kerusakan_delete'),
(118, 4, 'laporkan_kerusakan_edit'),
(119, 1, 'pindah_inventaris'),
(120, 1, 'jurusan_list'),
(121, 1, 'jurusan_add'),
(122, 1, 'jurusan_edit'),
(123, 1, 'jurusan_delete'),
(124, 1, 'filter_data_list'),
(125, 1, 'pemeliharaan_print'),
(126, 1, 'inventaris_print'),
(127, 3, 'pemeliharaan_list'),
(128, 3, 'pemeliharaan_add'),
(129, 3, 'pemeliharaan_delete'),
(130, 3, 'pemeliharaan_edit'),
(131, 3, 'laporkan_kerusakan_list'),
(135, 3, 'kerusakan_confirmation'),
(136, 3, 'pemeliharaan_print'),
(137, 3, 'inventaris_print'),
(138, 3, 'ruangan_list'),
(139, 3, 'jurusan_list'),
(143, 1, 'dashboard_list'),
(159, 1, 'pinjaman_dashboard'),
(162, 1, 'ruangan_pindah_list'),
(163, 3, 'dashboard_list'),
(164, 3, 'pinjaman_dashboard'),
(166, 3, 'pemeliharaan_view'),
(167, 4, 'dashboard_list'),
(168, 4, 'peminjam_list'),
(169, 4, 'peminjam_edit'),
(170, 4, 'peminjam_add'),
(171, 4, 'peminjam_delete'),
(173, 4, 'history_konfirmasi_list'),
(174, 3, 'history_konfirmasi_list'),
(175, 3, 'konfirmasi_add'),
(176, 4, 'laporkan_kerusakan_pengguna_list'),
(177, 1, 'pengajuan_list'),
(178, 3, 'pengajuan_add'),
(181, 1, 'pengajuan_view'),
(183, 1, 'acc_pengajuan_list'),
(184, 1, 'konfirmasi_pengajuan_add'),
(185, 2, 'inventaris_list'),
(187, 2, 'pinjaman_list'),
(188, 2, 'pinjaman_add'),
(189, 2, 'pinjaman_delete'),
(190, 2, 'pinjaman_edit'),
(191, 2, 'pinjaman_confirmation'),
(192, 2, 'pengembalian_list'),
(193, 2, 'pengembalian_add'),
(194, 2, 'ruangan_list'),
(195, 2, 'pemeliharaan_list'),
(196, 2, 'jurusan_list'),
(197, 2, 'inventaris_print'),
(198, 2, 'dashboard_list'),
(199, 2, 'pemeliharaan_view'),
(201, 2, 'konfirmasi_add'),
(203, 2, 'pengajuan_add'),
(204, 2, 'pengajuan_delete'),
(205, 2, 'pengajuan_view'),
(206, 2, 'pengajuan_edit'),
(211, 2, 'history_list'),
(215, 2, 'pengajuan_kajur_list'),
(216, 2, 'acc_pengajuan_kajur_list'),
(217, 2, 'pinjaman_dashboard'),
(218, 2, 'inventaris_kajur'),
(220, 1, 'inventaris_kajur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(255) NOT NULL,
  `kapasitas_ruangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `kapasitas_ruangan`) VALUES
(1, 'Labkom 1', '10 Orang'),
(3, 'LabKom 2', '40 Orang'),
(4, 'Labkom 3', '40 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` text NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`) VALUES
(1, 'company_name', 'SMKN 1 Cimahi', '2018-06-21 05:07:59'),
(2, 'company_email', 'smkn1cmi.gmail.com', '2018-07-10 22:39:58'),
(3, 'timezone', 'Asia/Kolkata', '2018-07-15 07:24:17'),
(4, 'login_theme', '1', '2019-06-06 01:34:28'),
(5, 'date_format', 'd F, Y', '2020-01-03 13:01:45'),
(6, 'datetime_format', 'h:m a - d M, Y ', '2020-01-03 13:02:24'),
(7, 'google_recaptcha_enabled', '0', '2020-01-04 12:14:03'),
(8, 'google_recaptcha_sitekey', '6LdIWswUAAAAAMRp6xt2wBu7V59jUvZvKWf_rbJc', '2020-01-04 12:14:17'),
(9, 'google_recaptcha_secretkey', '6LdIWswUAAAAAIsdboq_76c63PHFsOPJHNR-z-75', '2020-01-04 12:14:40'),
(10, 'bg_img_type', 'jpeg', '2020-01-06 11:23:33'),
(11, 'default_lang', 'en', '2021-04-12 03:23:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `phone` text NOT NULL,
  `address` longtext NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL,
  `reset_token` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `img_type` varchar(3000) NOT NULL DEFAULT 'png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`, `last_login`, `role`, `reset_token`, `status`, `img_type`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sarana', 'admin', 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '081312589637', 'Cibodas Campaka', '2023-08-04 06:08:48', 1, '', 1, 'jpg', '2018-06-27 06:00:16', '0000-00-00 00:00:00'),
(4, 'Agus Rahmawan', 'agus rahmawan', 'kajur@gmail.com', '1baedd25059490937a8f7a52dbaf5a7c168bc49f5bac0d7bc48bd6b58a84a421', '081312589637', 'cimahi', '2023-08-04 02:08:42', 2, '', 1, 'png', '2023-05-03 01:46:07', '0000-00-00 00:00:00'),
(5, 'Taufik Hidayat', 'taufik', 'taufik78964@gmail.com', '96eab8aec7841ecc477465c904f0ddcf5a556c95701f12de82b227aa81af5209', '081312589637', 'Jl. Mahar Martanegara No.48, Utama, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40521', '2023-08-04 02:08:29', 3, '', 1, 'png', '2023-05-03 01:47:29', '0000-00-00 00:00:00'),
(6, 'Wahyu Saepudin', 'wahyu', 'wahyu123@gmail.com', 'b36c0e9c1331c8ec00d7ddb7a798fed43a9f845503a009cdc0b9280c08329220', '08765361568', 'cimahi', '2023-08-04 02:08:41', 4, '$2y$10$2VWBvggnlzfFcVLapqFKgOb0zaJVHDb6NbVyDLs18pilh9d72AXne', 1, 'png', '2023-05-03 01:48:36', '0000-00-00 00:00:00'),
(8, 'Asep', 'asepp', 'asep@gmail.com', 'bc9122817c69bad28db7c97f5ee45e2ea94108fd95f00463352f81053ae0311b', '0895422526', 'cimahi', '2023-08-04 02:08:27', 4, '', 1, 'jpg', '2023-07-16 01:26:36', '0000-00-00 00:00:00'),
(9, 'Rifki', 'rifki', 'rifki@gmail.com', 'def5969afd6d4ac89feff40b68c9c6dde08c010ab9ed4a990c24de3e635b8adc', '08921273912819', 'Jl. Mahar Martanegara No.48, Utama, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40521', '2023-08-01 02:08:10', 3, '', 1, 'png', '2023-08-01 03:39:46', '0000-00-00 00:00:00'),
(10, 'Muhidin', 'muhidin', 'muhidin@gmail', '07b5c1e12bf7c84d7a3f10cd6cdac72cf5ee1801fc17d1067b4368ff933964b2', '08976546970', 'SMKN 1 CIMAHI, Jl. Mahar Martanegara No.48, Utama, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40521', '2023-08-03 12:20:05', 2, '', 1, 'png', '2023-08-03 12:20:05', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `acc_pengajuan`
--
ALTER TABLE `acc_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_inventaris`
--
ALTER TABLE `data_inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pengajuan`
--
ALTER TABLE `data_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_pinjam`
--
ALTER TABLE `data_pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `historys`
--
ALTER TABLE `historys`
  ADD PRIMARY KEY (`id_history`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_inventaris`
--
ALTER TABLE `kategori_inventaris`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `lapor_kerusakan`
--
ALTER TABLE `lapor_kerusakan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbaikan`
--
ALTER TABLE `perbaikan`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT untuk tabel `acc_pengajuan`
--
ALTER TABLE `acc_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1641;

--
-- AUTO_INCREMENT untuk tabel `data_inventaris`
--
ALTER TABLE `data_inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `data_pengajuan`
--
ALTER TABLE `data_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `data_pinjam`
--
ALTER TABLE `data_pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT untuk tabel `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `historys`
--
ALTER TABLE `historys`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lapor_kerusakan`
--
ALTER TABLE `lapor_kerusakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `pemeliharaan`
--
ALTER TABLE `pemeliharaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `perbaikan`
--
ALTER TABLE `perbaikan`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
