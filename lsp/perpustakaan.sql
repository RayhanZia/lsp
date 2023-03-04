-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 11:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_penerbit` int(11) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` char(20) NOT NULL,
  `j_buku_baik` int(100) NOT NULL,
  `j_buku_rusak` int(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul`, `id_kategori`, `id_penerbit`, `tahun_terbit`, `isbn`, `j_buku_baik`, `j_buku_rusak`, `pengarang`) VALUES
(1, 'Cara Menulis', 1, 1, 2019, '124252', 17, 11, 'Shuke'),
(2, 'Cara Berenang', 2, 2, 2019, '1244567', 14, 9, 'Ali\r\n'),
(6, 'Cara Bernafas', 3, 2, 2019, '3552234', 17, 12, 'Reva\r\n'),
(7, 'How to Basic 3', 1, 1, 2008, '4234224', 8, 11, 'Fazly'),
(9, 'cara ngoding', 3, 1, 2012, '2345325', 5, 7, 'Rayhan');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(100) NOT NULL,
  `nomor_hp` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kode`, `nama`) VALUES
(1, 'K001', 'Sejarah'),
(2, 'K002', 'Sains'),
(3, 'K003', 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemberitahuan`
--

INSERT INTO `pemberitahuan` (`id`, `isi`, `level`, `status`) VALUES
(1, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Revallina', 'admin', 'nonaktif'),
(2, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(3, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(4, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(5, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(6, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(7, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(8, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(9, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(10, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(11, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(12, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(13, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(14, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(15, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(16, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(17, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(18, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(19, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(20, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(21, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(22, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(23, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(24, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(25, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(26, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(27, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(28, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(29, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(30, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(31, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Vio Samlan ', 'admin', 'aktif'),
(32, 'BUKU  SEDANG DI PINJAM OLEH Revallina', 'admin', 'aktif'),
(33, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Revallina', 'admin', 'aktif'),
(34, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(35, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(36, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(37, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(38, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(39, 'BUKU How to Basic 3 SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(40, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(41, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(42, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(43, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(44, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(45, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(46, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(47, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(48, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(49, 'BUKU cara ngoding SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(50, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(51, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(52, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(53, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(54, 'BUKU  SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(55, 'BUKU Cara Menulis SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(56, 'BUKU Cara Berenang SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif'),
(57, 'BUKU Cara Bernafas SEDANG DI PINJAM OLEH Rayhan Zia', 'admin', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_peminjaman` datetime NOT NULL,
  `tanggal_pengembalian` datetime DEFAULT NULL,
  `kondisi_buku_saat_dipinjam` enum('baik','rusak') NOT NULL,
  `kondisi_buku_saat_dikembalikan` enum('baik','rusak') DEFAULT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `id_user`, `id_buku`, `tanggal_peminjaman`, `tanggal_pengembalian`, `kondisi_buku_saat_dipinjam`, `kondisi_buku_saat_dikembalikan`, `denda`) VALUES
(47, 2, 1, '2023-02-09 00:00:00', '2023-02-09 00:00:00', 'rusak', 'baik', 0),
(48, 2, 1, '2023-02-09 00:00:00', '2023-02-09 00:00:00', '', '', 0),
(49, 2, 2, '2023-02-11 00:00:00', '2023-02-11 00:00:00', 'baik', 'baik', 0),
(50, 2, 6, '2023-02-11 00:00:00', NULL, 'baik', NULL, 0),
(52, 5, 7, '2023-02-11 00:00:00', NULL, 'baik', NULL, 0),
(53, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', '', '', 0),
(54, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(55, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', '', 0),
(56, 10, 2, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'rusak', 0),
(57, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(58, 10, 7, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'rusak', 0),
(65, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(67, 10, 2, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(68, 10, 9, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(69, 10, 2, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', 'baik', 0),
(72, 10, 1, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', '', 0),
(74, 10, 1, '2023-03-04 00:00:00', '2023-03-04 00:00:00', 'baik', '', 0),
(75, 10, 2, '2023-03-04 00:00:00', NULL, 'baik', NULL, 0),
(76, 10, 6, '2023-03-04 00:00:00', NULL, 'baik', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `verif` varchar(100) NOT NULL DEFAULT 'Verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id`, `kode`, `nama`, `verif`) VALUES
(1, 'P001', 'Gramedia', 'Penerbit Terverifikasi'),
(2, 'P002', 'BSE', 'Penerbit Terverifikasi'),
(3, 'P003', 'Second', 'Penerbit Terverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `status` enum('terkirim','dibaca') NOT NULL,
  `tanggal_kirim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `id_penerima`, `id_pengirim`, `judul`, `isi`, `status`, `tanggal_kirim`) VALUES
(1, 2, 1, 'Test Judul', 'Test isi', 'dibaca', '2023-02-08 01:16:31'),
(2, 2, 1, 'Kamu Membakar perpustakaan', 'test bakar ', 'dibaca', '2023-02-09 02:04:24');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `nis` char(50) DEFAULT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `verif` varchar(100) NOT NULL DEFAULT 'akun terverifikasi',
  `role` enum('admin','user') NOT NULL,
  `foto` text DEFAULT NULL,
  `join_date` datetime NOT NULL,
  `terakhir_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `kode`, `nis`, `fullname`, `username`, `password`, `kelas`, `alamat`, `verif`, `role`, `foto`, `join_date`, `terakhir_login`) VALUES
(1, 'A001', NULL, 'Admin', 'admin', 'admin', NULL, 'cloud', 'akun terverifikasi', 'admin', NULL, '2023-02-01 03:22:34', '2023-02-01 03:22:34'),
(2, 'U002', '010299', 'Martin Siahaan', 'martin', '123', 'XII', 'Belanda', 'akun terverifikasi', 'admin', '../assets/images20230208083000ahir 2.jpg', '2023-02-01 00:00:00', '2023-02-01 03:22:34'),
(5, 'U004', '1234', 'Revallina', 'reva', '123', 'XII', 'Condet', 'akun terverifikasi', 'user', '', '2023-02-02 00:00:00', '0000-00-00 00:00:00'),
(10, 'U092', '0092', 'Rayhan Zia', 'rayhan', '123', 'XII', 'Depok', 'akun terverifikasi', 'user', '../assets/images202303040730122022_Acer_Commercial_Default_3840x2400.jpg', '2023-03-04 04:21:15', '2023-03-04 04:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_penerbit` (`id_penerbit`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penerima` (`id_penerima`),
  ADD KEY `id_pengirim` (`id_pengirim`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id`);

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_penerima`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pesan_ibfk_2` FOREIGN KEY (`id_pengirim`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
