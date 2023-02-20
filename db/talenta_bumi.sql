-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 20 Feb 2023 pada 03.43
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
(4, 'HRGA', 'Hard Disk External 1 TB (SIAGATE)', '-', 'Kantor Marabahan', '-', '2023-02-02', '-', '1.100.000'),
(5, 'PORT', 'Komputer Desktop', '-', 'Kantor Marabahan', '-', '2023-02-02', '-', '3.900.000'),
(6, 'HRM', 'Komputer (ACER ASPIRATE 4750- 2312G50MN)', '-', 'Kantor Marabahan', '-', '2023-02-02', '-', '4.700.000'),
(7, 'LOGISTIK', 'Laptop (TOSHIBA SATELITE L645 1101)', '-', 'Kantor Marabahan', '-', '2023-02-02', '-', '7.250.000'),
(8, 'HRGA', 'Software WIN XP Professional SP3', '-', 'Kantor Marabahan', '-', '2023-02-02', '-', '1.350.000'),
(9, 'PORT', 'Mesin Pompa Air (NS-100+KOYO 22H)', '-', 'Jalan', '-', '2023-02-06', '-', '8.250.000'),
(10, 'PORT', 'Tandon Air 3.300 L', '-', 'Mess Marabahan', '-', '2023-02-06', '-', '4.500.000'),
(11, 'PORT', 'Container', '-', 'Jalan', '-', '2023-02-07', '-', '14.125.000.00'),
(12, 'HRGA', 'Tandon AIR 3.300 L (GRAND)', '-', 'Kantor Marabahan', '-', '2023-02-13', '-', '3.400.000'),
(13, 'HRGA', 'Meja Meeting (BCT 306)', '-', 'Kantor Marabahan', '-', '2023-02-13', '-', '1.200.000');

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
(2, 'HSE', '2023-01-02', '001', 'Papan Tulis Kaca Ukuran 70x100 CM (4 Pcs)'),
(3, 'HRGA', '2023-01-03', '002', 'Upah Tukang Pembuatan Gudang Besi Bekas Samping Ruang Genset'),
(4, 'HRGA', '2023-01-04', '003', 'Komsumsi Kegiatan Savety Talk Periode 03 Januari 2023'),
(5, 'PLANT', '2023-01-05', '004', 'Binder Clips No 105 (2 Box), Binder Clips No 111 (2 Box), Tisu (10 Pcs) & Penghapus Papan Tulis White Board (2 Pcs)'),
(6, 'ENG', '2023-01-06', '005', 'Baterai Drone Phantom 4 Pro (2 Pcs)'),
(7, 'HRGA', '2023-01-09', '006', 'Pembelian Baterai Radio HT I COM V88'),
(8, 'HSE', '2023-01-10', '007', 'Rak Besi Ukuran 50x100x200 CM (2 Set)'),
(9, 'HSE', '2023-01-11', '008', 'Jasa Angkut Sampah Area Talenta Bumi'),
(10, 'HRGA', '2023-01-12', '009', 'Jasa Laundry Bed Cover Full Set Talenta Bumi (34 Set)'),
(11, 'HRM', '2023-01-13', '010', 'Pembelian Silinder Imperial');

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
(2, '2023-01-02', '001/GA/I/23', 'Perbaikan O- Ring Elbow'),
(3, '2023-01-03', '002/GA/I/23', 'Perbaikan Hole Hydraulic'),
(4, '2023-01-04', '003/GA/I/23', 'Perbaikan Baut Timbangan di STA KM 2'),
(5, '2023-01-05', '004/GA/I/23', 'Perbaikan Rotator Line 1'),
(6, '2023-01-06', '005/GA/I/23', 'Perbaikan Per Belakang Sarana LV 03'),
(7, '2023-01-09', '006/GA/I/23', 'Perbaikan Dongkrak 1 Ton'),
(8, '2023-01-10', '007/GA/I/23', 'Perbaikan Gear Box Hopper 13'),
(9, '2023-01-11', '008/GA/I/23', 'Perbaikan Genset No 1 & No 5'),
(10, '2023-01-12', '009/GA/I/23', 'Perbaikan Kompresor Wipro'),
(11, '2023-01-13', '010/GA/I/23', 'Perbaikan Jaringan Listrik Tegangan Menengah di Line 4');

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
(2, '2023-01-02', '001/GA/I/23', 'Element Filter AC LV (8 Pcs)'),
(3, '2023-01-03', '002/GA/I/23', 'Bohlam Philips (2 Pcs)'),
(4, '2023-01-04', '003/GA/I/23', 'Stabilizer LH (2 Pcs)'),
(5, '2023-01-05', '004/GA/I/23', 'Engine Mounting LH/RH (2 Pcs)'),
(6, '2023-01-06', '005/GA/I/23', 'Transmisi Mounting (2 Pcs)'),
(7, '2023-01-09', '006/GA/I/23', 'Filter Oli 2 (Pcs)'),
(8, '2023-01-10', '007/GA/I/23', 'Filter Solar Atas (2 Pcs) & Filter Solar Bawah (2 Pcs)'),
(9, '2023-01-11', '008/GA/I/23', 'Pin Guide (2 Pcs)'),
(10, '2023-01-12', '009/GA/I/23', 'Neple Grease Elbow (100 Pcs)'),
(11, '2023-01-13', '010/GA/I/23', 'Fuse Mobil 15 A (25 Pcs)');

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
(12, '2023-01-02', '001/TB/PI/SMD/I/2023', 'Hard Disk External 1 TB (SIAGATE)'),
(13, '2023-01-02', '002/TB/PI/SMD/I/2023', 'Komputer Desktop'),
(14, '2023-01-02', '003/TB/PI/SMD/I/2023', 'Laptop (ACER ASPIRATE 4750- 2312G50MN)'),
(15, '2023-01-02', '004/TB/PI/SMD/I/2023', 'Laptop (TOSHIBA SATELITE L645 1101)'),
(16, '2023-01-02', '005/TB/PI/SMD/I/2023', 'Software WIN XP Professional SP3'),
(17, '2023-01-04', '006/TB/PI/SMD/I/2023', 'Mesin Pompa Air (NS-100+KOYO 22H)'),
(18, '2023-01-04', '007/TB/PI/SMD/I/2023', 'Tandon Air 1.100 L (GRAND)'),
(19, '2023-01-05', '008/TB/PI/SMD/I/2023', 'Container'),
(20, '2023-01-11', '009/TB/PI/SMD/I/2023', 'Tandon Air 3.300 L'),
(21, '2023-01-13', '010/TB/PI/SMD/I/2023', 'Meja Meeting (BCT 106)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekap_harian`
--

CREATE TABLE `rekap_harian` (
  `id_rh` int(11) NOT NULL,
  `lokasi_rh` varchar(50) DEFAULT NULL,
  `tanggal_pembuatan` date DEFAULT NULL,
  `departemen_rh` varchar(40) DEFAULT NULL,
  `id_pi` int(11) DEFAULT NULL,
  `id_pb` int(11) DEFAULT NULL,
  `id_fppk` int(11) DEFAULT NULL,
  `no_pp` varchar(20) DEFAULT NULL,
  `id_fppp` int(11) DEFAULT NULL,
  `nama_kebutuhan` varchar(40) DEFAULT NULL,
  `rp` varchar(50) DEFAULT NULL,
  `keterangan_rh` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rekap_harian`
--

INSERT INTO `rekap_harian` (`id_rh`, `lokasi_rh`, `tanggal_pembuatan`, `departemen_rh`, `id_pi`, `id_pb`, `id_fppk`, `no_pp`, `id_fppp`, `nama_kebutuhan`, `rp`, `keterangan_rh`) VALUES
(7, 'MARABAHAN', '2023-01-02', 'HSE', 0, 0, 2, '001', 0, 'Papan Tulis Kaca Ukuran 70x100 CM (4 Pcs', '400000', 'Rekap Nota'),
(18, 'LIANG ANGGANG', '2023-01-02', 'HRGA', 0, 2, 0, '', 0, 'Element Filter AC LV (8 Pcs)', '', 'Liang Anggang'),
(19, 'LIANG ANGGANG', '2023-01-02', 'PLANT', 0, 0, 0, '', 2, 'Perbaikan O- Ring Elbow', '', 'Liang Anggang'),
(22, 'LIANG ANGGANG', '2023-01-02', 'HRGA', 12, 0, 0, '', 0, 'Hard Disk External 1 TB (SIAGATE)', '', 'Liang Anggang'),
(23, 'LIANG ANGGANG', '2023-01-02', 'HRGA', 13, 0, 0, '', 0, 'Komputer Desktop', '', 'Liang Anggang'),
(24, 'LIANG ANGGANG', '2023-01-02', 'ENG', 14, 0, 0, '', 0, 'Laptop (ACER ASPIRATE 4750- 2312G50MN)', '', 'Liang Anggang'),
(25, 'LIANG ANGGANG', '2023-01-02', 'ENG', 16, 0, 0, '', 0, 'Laptop (TOSHIBA SATELITE L645 1101)', '', 'Liang Anggang'),
(26, 'LIANG ANGGANG', '2023-01-02', 'HRGA', 17, 0, 0, '', 0, 'Software WIN XP Professional SP3', '', 'Liang Anggang'),
(30, 'MARABAHAN', '2023-01-03', 'HRGA', 0, 0, 3, '002', 0, 'Upah Tukang Pembuatan Gudang Besi Bekas ', '600000', 'Kwitansi'),
(40, 'LIANG ANGGANG', '2023-01-03', 'HRGA', 0, 3, 0, '', 0, 'Bohlam Philips (2 Pcs)', '', 'Liang Anggang'),
(41, 'LIANG ANGGANG', '2023-01-03', 'PLANT', 21, 0, 0, '', 3, 'Perbaikan Hole Hydraulic', '', 'Liang Anggang'),
(47, 'MARABAHAN', '2023-01-04', 'HRGA', 0, 0, 4, '003', 0, 'Konsumsi Kegiatan Savety Talk Periode 03', '', 'Rekap Nota'),
(48, 'LIANG ANGGANG', '2023-01-04', 'HRGA', 0, 4, 0, '', 0, 'Stabilizer LH (2 Pcs)', '', 'Liang Anggang'),
(49, 'LIANG ANGGANG', '2023-01-04', 'PORT', 0, 0, 0, '', 4, 'Perbaikan Baut Timbangan di STA KM 2', '', 'Liang Anggang'),
(50, 'LIANG ANGGANG', '2023-01-04', 'PORT', 17, 0, 0, '', 0, 'Mesin Pompa Air (NS-100+KOYO 22H)', '', 'Liang Anggang'),
(51, 'LIANG ANGGANG', '2023-01-04', 'PORT', 18, 0, 0, '', 0, 'Tandon Air 1.100 L (GRAND)', '', 'Liang Anggang'),
(52, 'MARABAHAN', '2023-01-05', 'PLANT', 0, 0, 5, '004', 0, 'Binder Clips No 105 (2 Box), Binder Clip', '200000', 'Rekap Nota'),
(53, 'LIANG ANGGANG', '2023-01-05', 'HRGA', 0, 5, 0, '', 0, 'Engine Mounting LH/RH (2 Pcs)', '', 'Liang Anggang'),
(54, 'LIANG ANGGANG', '2023-01-05', 'PLANT', 0, 0, 0, '', 5, 'Perbaikan Rotator Line 1', '', 'Liang Anggang'),
(55, 'LIANG ANGGANG', '2023-01-05', 'PORT', 19, 0, 0, '', 0, 'Container', '', 'Liang Anggang'),
(56, 'MARABAHAN', '2023-01-06', 'ENG', 0, 0, 6, '005', 0, 'Baterai Drone Phantom  4 Pro (2 Pcs)', '4000000', 'Kwitansi'),
(57, 'LIANG ANGGANG', '2023-01-06', '', 0, 6, 0, '', 0, 'Transmisi Mounting (2 Pcs)', '', 'Liang Anggang'),
(58, 'LIANG ANGGANG', '2023-01-06', 'PORT', 0, 0, 0, '', 6, 'Perbaikan Per Belakang Sarana LV 03', '', 'Liang Anggang'),
(61, 'MARABAHAN', '2023-01-09', 'HRGA', 0, 0, 7, '006', 0, 'Pembelian Baterai Radio HT 1 COM V88', '800000', 'Rekap Nota'),
(62, 'LIANG ANGGANG', '2023-01-09', 'HRGA', 0, 7, 0, '', 0, 'Filter Oli (2 Pcs)', '', 'Liang Anggang'),
(63, 'LIANG ANGGANG', '2023-01-09', 'PLANT', 0, 0, 0, '', 7, 'Perbaikan Dongkrak 1 Ton', '', 'Liang Anggang'),
(64, 'MARABAHAN', '2023-01-10', 'ENG', 0, 0, 8, '007', 0, 'Rak Besi Ukuran 50x100x200 CM (2 Set)', '900000', 'Kwitansi'),
(65, 'LIANG ANGGANG', '2023-01-10', 'PLANT', 0, 8, 0, '', 0, 'Filter Solar Atas (2 Pcs) & Filter Solar', '', 'Liang Anggang'),
(66, 'LIANG ANGGANG', '2023-01-10', 'PLANT', 0, 0, 0, '', 8, 'Perbaikan Gear Box Hopper 13 ', '', 'Liang Anggang'),
(67, 'MARABAHAN', '2023-01-11', 'HSE', 0, 0, 9, '008', 0, 'Jasa Angkut Sampah Area Talenta Bumi', '250000', 'Kwitansi'),
(68, 'LIANG ANGGANG', '2023-01-11', 'PLANT', 0, 9, 0, '', 0, 'Pin Guide (2 Pcs)', '', 'Liang Anggang'),
(69, 'LIANG ANGGANG', '2023-01-11', '', 0, 0, 0, '', 9, 'Perbaikan Genset 01 & No 05', '', 'Liang Anggang'),
(70, 'LIANG ANGGANG', '2023-01-11', 'PORT', 20, 0, 0, '', 0, 'Tandon Air 3.300 L ', '', 'Liang Anggang'),
(71, 'MARABAHAN', '2023-01-12', 'HRGA', 0, 0, 10, '009', 0, 'Jasa Laundry Bed Cover Full Set Talenta ', '300000', 'Kwitansi'),
(72, 'LIANG ANGGANG', '2023-01-12', 'PLANT', 0, 10, 0, '', 0, 'Neple Grease Elbow (100 Pcs)', '', 'Liang Anggang'),
(73, 'LIANG ANGGANG', '2023-01-12', 'PLANT', 0, 0, 10, '', 0, 'Perbaikan Kompresor Wipro ', '', 'Liang Anggang'),
(74, 'MARABAHAN', '2023-01-13', 'HRGA', 0, 0, 11, '010', 0, 'Pembelian Silinder Imperial', '600000', 'Kwitansi'),
(75, 'LIANG ANGGANG', '2023-01-13', 'PORT', 0, 11, 0, '', 0, 'Fuse Mobil 15 A (25 Pcs)', '', 'Liang Anggang'),
(76, 'LIANG ANGGANG', '2023-01-13', 'PLANT', 0, 0, 0, '', 11, 'Perbaikan Jaringan Listrik Tegangan Mene', '', 'Liang Anggang'),
(77, 'LIANG ANGGANG', '2023-01-13', 'HRGA', 21, 0, 0, '', 0, 'Meja Meeting (BCT 106)', '', 'Liang Anggang');

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
  MODIFY `id_aktiva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `fppk`
--
ALTER TABLE `fppk`
  MODIFY `id_fppk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `fppp`
--
ALTER TABLE `fppp`
  MODIFY `id_fppp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pb`
--
ALTER TABLE `pb`
  MODIFY `id_pb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pi`
--
ALTER TABLE `pi`
  MODIFY `id_pi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `rekap_harian`
--
ALTER TABLE `rekap_harian`
  MODIFY `id_rh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
