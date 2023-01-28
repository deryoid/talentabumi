-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 21 Jan 2023 pada 11.38
-- Versi server: 5.7.34
-- Versi PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talenta_bumi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktiva_tetap`
--

CREATE TABLE `aktiva_tetap` (
  `id_aktiva` int(11) NOT NULL,
  `jenis_aktiva` varchar(25) NOT NULL,
  `nama_aktiva` varchar(40) NOT NULL,
  `no_register` varchar(25) NOT NULL,
  `lokasi1` varchar(150) NOT NULL,
  `lokasi2` varchar(150) NOT NULL,
  `tanggal_perolehan` date NOT NULL,
  `umur` varchar(50) NOT NULL,
  `nilai_perolehan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `aktiva_tetap`
--

INSERT INTO `aktiva_tetap` (`id_aktiva`, `jenis_aktiva`, `nama_aktiva`, `no_register`, `lokasi1`, `lokasi2`, `tanggal_perolehan`, `umur`, `nilai_perolehan`) VALUES
(1, 'HRGA', 'Aktiva1', 'Aktiva/1001', 'Lokasi 1', 'Lokasi 2', '2022-12-15', '1 Tahun', 'Rp. 5.000.000'),
(3, 'ENG', 'Aktiva2', '001', 'Lokasi 1', 'Lokasi 2', '2022-12-15', '2 tahun', 'Rp. 4.600.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fppk`
--

CREATE TABLE `fppk` (
  `id_fppk` int(11) NOT NULL,
  `departemen` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `no_fppk` varchar(25) NOT NULL,
  `uraian_kebutuhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fppk`
--

INSERT INTO `fppk` (`id_fppk`, `departemen`, `tanggal`, `no_fppk`, `uraian_kebutuhan`) VALUES
(1, 'Bagian Umum', '2022-12-16', '08/IV/No.18/19-222-01', '- Alat 1 \r\n- Alat 2\r\n- Alat 3\r\n- Alat 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fppp`
--

CREATE TABLE `fppp` (
  `id_fppp` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_fppp` varchar(40) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fppp`
--

INSERT INTO `fppp` (`id_fppp`, `tanggal_permintaan`, `no_fppp`, `keterangan`) VALUES
(1, '2022-11-15', '23/FP3.09/002', 'Perbaikan1,\r\nPerawatan2\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pb`
--

CREATE TABLE `pb` (
  `id_pb` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_pb` varchar(40) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pb`
--

INSERT INTO `pb` (`id_pb`, `tanggal_permintaan`, `no_pb`, `keterangan`) VALUES
(1, '2022-12-16', '746/PB.01/002', 'Permintaan Barang ini dan ini \r\n- Barang 1\r\n- Barang 2\r\n-Barang 3\r\ndst.....');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pi`
--

CREATE TABLE `pi` (
  `id_pi` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_pi` varchar(40) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pi`
--

INSERT INTO `pi` (`id_pi`, `tanggal_permintaan`, `no_pi`, `keterangan`) VALUES
(1, '2022-12-15', '2/PI.001/001', 'Permohonan Invest');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_harian`
--

CREATE TABLE `rekap_harian` (
  `id_rh` int(11) NOT NULL,
  `lokasi_rh` varchar(50) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `departemen_rh` varchar(40) NOT NULL,
  `id_pi` int(11) NOT NULL,
  `id_pb` int(11) NOT NULL,
  `id_fppk` int(11) NOT NULL,
  `no_pp` varchar(20) NOT NULL,
  `id_fppp` int(11) NOT NULL,
  `nama_kebutuhan` varchar(40) NOT NULL,
  `rp` varchar(50) NOT NULL,
  `keterangan_rh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rekap_harian`
--

INSERT INTO `rekap_harian` (`id_rh`, `lokasi_rh`, `tanggal_pembuatan`, `departemen_rh`, `id_pi`, `id_pb`, `id_fppk`, `no_pp`, `id_fppp`, `nama_kebutuhan`, `rp`, `keterangan_rh`) VALUES
(2, 'LIANG ANGGANG', '2022-12-15', '123', 1, 1, 1, '004', 1, 'Barang', '200000', '123'),
(3, 'LIANG ANGGANG', '2023-01-21', '1', 1, 1, 1, '1', 1, '2', '200000', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
(2, 'helda', '827ccb0eea8a706c4c34a16891f84e7b', 'Masyarakat'),
(3, 'husain', '827ccb0eea8a706c4c34a16891f84e7b', 'Masyarakat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktiva_tetap`
--
ALTER TABLE `aktiva_tetap`
  ADD PRIMARY KEY (`id_aktiva`);

--
-- Indeks untuk tabel `fppk`
--
ALTER TABLE `fppk`
  ADD PRIMARY KEY (`id_fppk`);

--
-- Indeks untuk tabel `fppp`
--
ALTER TABLE `fppp`
  ADD PRIMARY KEY (`id_fppp`);

--
-- Indeks untuk tabel `pb`
--
ALTER TABLE `pb`
  ADD PRIMARY KEY (`id_pb`);

--
-- Indeks untuk tabel `pi`
--
ALTER TABLE `pi`
  ADD PRIMARY KEY (`id_pi`);

--
-- Indeks untuk tabel `rekap_harian`
--
ALTER TABLE `rekap_harian`
  ADD PRIMARY KEY (`id_rh`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktiva_tetap`
--
ALTER TABLE `aktiva_tetap`
  MODIFY `id_aktiva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fppk`
--
ALTER TABLE `fppk`
  MODIFY `id_fppk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `fppp`
--
ALTER TABLE `fppp`
  MODIFY `id_fppp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pb`
--
ALTER TABLE `pb`
  MODIFY `id_pb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pi`
--
ALTER TABLE `pi`
  MODIFY `id_pi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rekap_harian`
--
ALTER TABLE `rekap_harian`
  MODIFY `id_rh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
