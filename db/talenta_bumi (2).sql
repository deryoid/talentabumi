-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 07 Jul 2023 pada 13.41
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
  `nilai_perolehan` varchar(50) NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `aktiva_tetap`
--

INSERT INTO `aktiva_tetap` (`id_aktiva`, `jenis_aktiva`, `nama_aktiva`, `no_register`, `lokasi1`, `lokasi2`, `tanggal_perolehan`, `nilai_perolehan`, `jumlah`, `satuan`) VALUES
(14, 'HSE', 'Hard Disk External 1 TB (SIAGATE)', '001', 'Kantor Marabahan', '-', '2023-02-02', '1000000', '1', 'Pcs'),
(15, 'HRGA', 'Komputer Desktop', '002', 'Kantor Liang Anggang', '-', '2023-02-02', '1000000', '', ''),
(16, 'LOGISTIK', 'Komputer (ACER ASPIRATE 4750- 2312G50MN)', '003', 'Kantor Marabahan', '-', '2023-02-02', '1000000', '', ''),
(17, 'HRGA', 'Laptop (TOSHIBA SATELITE L645 1101)', '004', 'Kantor Liang Anggang', '-', '2023-02-02', '1000000', '', ''),
(18, 'HRGA', 'Software WIN XP Professional SP3', '005', 'Kantor Liang Anggang', '-', '2023-02-02', '1000000', '', ''),
(19, 'PORT', 'Mesin Pompa Air (NS-100+KOYO 22H)', '006', 'Kantor Marabahan', '-', '2023-02-04', '1000000', '', ''),
(20, 'HRGA', 'Tandon Air 1.100 L (GRAND)', '007', 'Kantor Marabahan', '-', '2023-02-04', '1000000', '', ''),
(21, 'PORT', 'Container', '008', 'Kantor Marabahan', '-', '2023-02-05', '1000000', '', ''),
(22, 'HRGA', 'Tandon Air 3.300 L', '009', 'Kantor Marabahan', '-', '2023-02-11', '1000000', '', ''),
(23, 'HRGA', 'Meja Meeting (BCT 106)', '010', 'Kantor Liang Anggang', '-', '2023-02-13', '1000000', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fppk`
--

CREATE TABLE `fppk` (
  `id_fppk` int(11) NOT NULL,
  `departemen` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `no_fppk` varchar(25) NOT NULL,
  `uraian_kebutuhan` text NOT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fppk`
--

INSERT INTO `fppk` (`id_fppk`, `departemen`, `tanggal`, `no_fppk`, `uraian_kebutuhan`, `jumlah`, `satuan`) VALUES
(2, 'HSE', '2023-01-02', '001', 'Papan Tulis Kaca Ukuran 70x100 CM \r\n', '4', 'pcs'),
(3, 'HRGA', '2023-01-03', '002', 'Upah Tukang Pembuatan Gudang Besi Bekas Samping Ruang Genset', '', ''),
(4, 'HRGA', '2023-01-04', '003', 'Komsumsi Kegiatan Savety Talk Periode 03 Januari 2023', '', ''),
(5, 'PLANT', '2023-01-05', '004', 'Binder Clips No 105 (2 Box), Binder Clips No 111 (2 Box), Tisu (10 Pcs) & Penghapus Papan Tulis White Board (2 Pcs)', '', ''),
(6, 'ENG', '2023-01-06', '005', 'Baterai Drone Phantom 4 Pro (2 Pcs)', '', ''),
(7, 'HRGA', '2023-01-09', '006', 'Pembelian Baterai Radio HT I COM V88', '', ''),
(8, 'HSE', '2023-01-10', '007', 'Rak Besi Ukuran 50x100x200 CM (2 Set)', '', ''),
(9, 'HSE', '2023-01-11', '008', 'Jasa Angkut Sampah Area Talenta Bumi', '', ''),
(10, 'HRGA', '2023-01-12', '009', 'Jasa Laundry Bed Cover Full Set Talenta Bumi (34 Set)', '', ''),
(11, 'HRM', '2023-01-13', '010', 'Pembelian Silinder Imperial', '', '');

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
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `bagian` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `bagian`) VALUES
(2, 'Kantor Marabahan'),
(3, 'Kantor Liang Aggang'),
(4, 'Jalan JGA KM 71'),
(5, 'Mess Marabahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `monitoring`
--

CREATE TABLE `monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `lokasi_rh` varchar(20) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `nama_inventaris` varchar(50) NOT NULL,
  `nomor_inventaris` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `monitoring`
--

INSERT INTO `monitoring` (`id_monitoring`, `lokasi_rh`, `id_lokasi`, `nama_inventaris`, `nomor_inventaris`, `status`) VALUES
(2, 'MARABAHAN', 2, 'Hard Disk 1 TB (SIAGATE)', '001/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(3, 'LIANG ANGGANG', 3, 'Komputer Desktop', '002/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(4, 'MARABAHAN', 2, 'Komputer (ACER ASPIRATE 4750- 2312G50MN)', '003/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(5, 'LIANG ANGGANG', 3, 'Laptop (TOSHIBA SATELITE L645 1101)', '004/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(6, 'LIANG ANGGANG', 3, 'Software WIN XP Professional', '005/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(7, 'MARABAHAN', 4, 'Mesin Pompa Air (NS-100+KOYO 22H)', '006/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(8, 'MARABAHAN', 5, 'Tandon Air 3.300 L', '007/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(9, 'MARABAHAN', 4, 'Container', '008/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(10, 'MARABAHAN', 2, 'Tandon Air 3.300 L (GRAND)', '009/TB/PI/SMD/I/2023', 'PEMELIHARAAN'),
(11, 'LIANG ANGGANG', 3, 'Meja Meeting (BCT 306)', '010/TB/PI/SMD/I/2023', 'PEMELIHARAAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pb`
--

CREATE TABLE `pb` (
  `id_pb` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_pb` varchar(40) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` varchar(20) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pb`
--

INSERT INTO `pb` (`id_pb`, `tanggal_permintaan`, `no_pb`, `keterangan`, `jumlah`, `satuan`) VALUES
(2, '2023-01-02', '001/GA/I/23', 'Element Filter AC LV ', '8', 'Pcs'),
(3, '2023-01-03', '002/GA/I/23', 'Bohlam Philips (2 Pcs)', NULL, NULL),
(4, '2023-01-04', '003/GA/I/23', 'Stabilizer LH (2 Pcs)', NULL, NULL),
(5, '2023-01-05', '004/GA/I/23', 'Engine Mounting LH/RH (2 Pcs)', NULL, NULL),
(6, '2023-01-06', '005/GA/I/23', 'Transmisi Mounting (2 Pcs)', NULL, NULL),
(7, '2023-01-09', '006/GA/I/23', 'Filter Oli 2 (Pcs)', NULL, NULL),
(8, '2023-01-10', '007/GA/I/23', 'Filter Solar Atas (2 Pcs) & Filter Solar Bawah (2 Pcs)', NULL, NULL),
(9, '2023-01-11', '008/GA/I/23', 'Pin Guide (2 Pcs)', NULL, NULL),
(10, '2023-01-12', '009/GA/I/23', 'Neple Grease Elbow (100 Pcs)', NULL, NULL),
(11, '2023-01-13', '010/GA/I/23', 'Fuse Mobil 15 A (25 Pcs)', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pi`
--

CREATE TABLE `pi` (
  `id_pi` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_pi` varchar(40) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pi`
--

INSERT INTO `pi` (`id_pi`, `tanggal_permintaan`, `no_pi`, `keterangan`, `jumlah`, `satuan`) VALUES
(12, '2023-01-02', '001/TB/PI/SMD/I/2023', 'Hard Disk External 1 TB (SIAGATE)', '1', 'Pcs'),
(13, '2023-01-02', '002/TB/PI/SMD/I/2023', 'Komputer Desktop', '', ''),
(14, '2023-01-02', '003/TB/PI/SMD/I/2023', 'Komputer (ACER ASPIRATE 4750- 2312G50MN)', '', ''),
(15, '2023-01-02', '004/TB/PI/SMD/I/2023', 'Laptop (TOSHIBA SATELITE L645 1101)', '', ''),
(16, '2023-01-02', '005/TB/PI/SMD/I/2023', 'Software WIN XP Professional SP3', '', ''),
(17, '2023-01-04', '006/TB/PI/SMD/I/2023', 'Mesin Pompa Air (NS-100+KOYO 22H)', '', ''),
(18, '2023-01-04', '007/TB/PI/SMD/I/2023', 'Tandon Air 1.100 L (GRAND)', '', ''),
(19, '2023-01-05', '008/TB/PI/SMD/I/2023', 'Container', '', ''),
(20, '2023-01-11', '009/TB/PI/SMD/I/2023', 'Tandon Air 3.300 L', '', ''),
(21, '2023-01-13', '010/TB/PI/SMD/I/2023', 'Meja Meeting (BCT 106)', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pp`
--

CREATE TABLE `pp` (
  `id_pp` int(11) NOT NULL,
  `tanggal_permintaan` date NOT NULL,
  `no_pp` varchar(40) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` varchar(20) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pp`
--

INSERT INTO `pp` (`id_pp`, `tanggal_permintaan`, `no_pp`, `keterangan`, `jumlah`, `satuan`) VALUES
(25, '2023-01-02', '001', 'Papan Tulis Kaca Ukuran 70x100 CM Untuk Keperluan Dept. ENG', '4', 'Pcs'),
(26, '2023-01-02', '002', 'Element Filter AC LV (8 Pcs) Untuk Keperluan Dept. HRGA', '', ''),
(27, '2023-01-02', '003', 'Hard Disk External 1 TB (SIAGATE) Untuk Keperluan Dept. HSE', '', ''),
(28, '2023-01-02', '004', 'Komputer Desktop Untuk Keperluan Admin Baru Dept. PORT', '', ''),
(29, '2023-01-02', '005', 'Komputer (ACER ASPIRATE 4750- 2312G50MN) Untuk Keperluan Dept. LOGISTIK', '', ''),
(30, '2023-01-02', '006', 'Laptop (TOSHIBA SATELITE L645 1101) Untuk Keperluan Manager Dept. HRGA', '', ''),
(31, '2023-01-02', '007', 'Softrware WIN XP Professional SP3 Untuk Keperluan Dept. HRGA', '', ''),
(32, '2023-01-03', '008', 'Bohlam Philips  (2 Pcs) Untuk Keperluan Dept. HSE', '', ''),
(33, '2023-01-04', '009', 'Stabilizer LH (2 Pcs) Untuk Keperluan Dept. Plant', '', ''),
(34, '2023-01-04', '010', 'Mesin Pompa Air (NS-100+KOYO 22H) Untuk Keperluan Dept. PORT', '', ''),
(35, '2023-01-04', '011', 'Tandon Air 1.100 L (GRAND) Untuk Keperluan Dept. HRGA', '', ''),
(36, '2023-01-05', '012', 'Binder Clips NO 105 (2 Box) Untuk Keperluan Dept. Plant', '', ''),
(37, '2023-01-05', '013', 'Engine Mounting LH/RH (2 Pcs) Untuk Keperluan Dept. Plant', '', ''),
(38, '2023-01-05', '014', 'Container Untuk Keperluan Dept. PORT', '', ''),
(39, '2023-01-11', '015', 'Tandon Air 3.300 L Untuk Keperluan Mess Dept. HRGA', '', ''),
(40, '2023-01-13', '016', 'Meja Meeting  (BCT 106) Untuk Keperluan Dept. HRGA', '', '');

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
  `id_pp` int(11) DEFAULT NULL,
  `id_fppp` int(11) DEFAULT NULL,
  `nama_kebutuhan` varchar(40) DEFAULT NULL,
  `jumlah_rh` varchar(20) NOT NULL,
  `satuan_rh` varchar(20) NOT NULL,
  `rp` varchar(50) DEFAULT NULL,
  `keterangan_rh` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rekap_harian`
--

INSERT INTO `rekap_harian` (`id_rh`, `lokasi_rh`, `tanggal_pembuatan`, `departemen_rh`, `id_pi`, `id_pb`, `id_fppk`, `id_pp`, `id_fppp`, `nama_kebutuhan`, `jumlah_rh`, `satuan_rh`, `rp`, `keterangan_rh`) VALUES
(81, 'MARABAHAN', '2023-01-02', 'HSE', 0, 0, 2, 25, 0, 'Papan Tulis Kaca Ukuran 70x100 CM ', '4', 'Pcs', '200000', 'Untuk Keperluan Dept. HSE'),
(82, 'LIANG ANGGANG', '2023-01-02', 'LOGISTIK', 0, 2, 0, 26, 0, 'Element Filter AC LV (8 Pcs)', '8', 'Pcs', '300000', 'Untuk Keperluan Dept. Logistik'),
(83, 'MARABAHAN', '2023-07-07', 'Logistik', 12, 0, 0, 0, 0, 'Komputer', '1', 'Set', '3500000', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
(2, 'MARABAHAN', 'marabahan', '202cb962ac59075b964b07152d234b70', 'User'),
(3, 'LIANG ANGGANG', 'lianganggang', '202cb962ac59075b964b07152d234b70', 'User'),
(4, 'Pimpinan', 'pimpinan', '202cb962ac59075b964b07152d234b70', 'Pimpinan');

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
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indeks untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `id_lokasi` (`id_lokasi`);

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
-- Indeks untuk tabel `pp`
--
ALTER TABLE `pp`
  ADD PRIMARY KEY (`id_pp`);

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
  MODIFY `id_aktiva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
-- AUTO_INCREMENT untuk tabel `pp`
--
ALTER TABLE `pp`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `rekap_harian`
--
ALTER TABLE `rekap_harian`
  MODIFY `id_rh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
