-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 13 Agu 2023 pada 04.40
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
(25, 'HRGA', 'Meja & Kursi Kantor', '-', 'Kantor Marabahan', '-', '2021-09-01', '16000000', '8', 'Pcs'),
(26, 'HRGA', 'Komputer PC Fullset Core i3 10105 Ddr4', '-', 'Kantor Marabahan', '-', '2021-09-02', '57600000', '8 ', 'Pcs'),
(27, 'HRGA', 'Printer Canon Pixma MG25705', '-', 'Kantor Marabahan', '-', '2021-09-03', '7200000', '8', 'Pcs'),
(28, 'HRGA', 'AC Split LG 1/2 PK H05TN 4', '-', 'Kantor Marabahan', '-', '2021-09-04', '22560000', '8', 'Pcs'),
(29, 'HRGA', 'Lemari Arsip  Kantor', '-', 'Kantor Marabahan', '-', '2021-09-05', '8000000', '8', 'Pcs'),
(30, 'HRGA', 'Kulkas 1 Pintu SHARP SJ-N162N HS', '-', 'Kantor Marabahan', '-', '2021-09-06', '6900000', '3', 'Pcs'),
(31, 'HRGA', 'Mesin Cuci 2 Tabung TW-882NP 9 KG', '-', 'Mess Marabahan', '-', '2021-09-07', '5298000', '2', 'Pcs'),
(32, 'HRGA', 'Laptop ASUS  X441 RAM 4GB SSD 128GB', '-', 'Kantor Marabahan', '-', '2021-09-08', '8000000', '2', 'Pcs'),
(33, 'HRGA', 'Sakula Loker Plastik', '-', 'Kantor Marabahan', '-', '2021-09-09', '6400000', '8', 'Pcs'),
(34, 'HRGA', 'Dispenser Multifungsi Arashi AMD 02B', '-', 'Kantor Marabahan', '-', '2021-09-10', '24000000', '8', 'Pcs');

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
(13, 'HRGA', '2021-08-01', '001/FPPK/GA/VIII/2021', 'Air Galon Isi Ulang', '20', 'Galon'),
(14, 'ENGINEERING', '2021-08-02', '002/FPPK/GA/VIII/2021', 'Stabilo', '2', 'Pcs'),
(15, 'HRGA', '2021-08-03', '003/FPPK/GA/VIII/2021', 'Gula Rose Brand', '10', 'Kg'),
(16, 'CSR', '2021-08-04', '004/FPPK/GA/VIII/2023', 'Amplop', '2 ', 'Kotak'),
(17, 'PORT', '2021-08-05', '005/FPPK/GA/VIII/2023', 'Kopi Kapal Api', '1 ', 'Kg'),
(18, 'LOGISTIK', '2021-08-06', '006/FPPK/GA/VIII/2021', 'Kertas HVS A4', '20', 'Rim'),
(19, 'PLANT', '2021-08-07', '007/FPPK/GA/VIII/2021', 'Tisu Paseo', '10', 'Pcs'),
(20, 'HSE', '2021-08-08', '008/FPPK/GA/VIII/2021', 'Glue Stick', '2', 'Pcs'),
(21, 'HRM', '2021-08-09', '009/FPPK/GA/VIII/2021', 'Baygon', '2', 'Pcs'),
(22, 'HSE', '2021-08-10', '010/FPPK/GA/VIII/2021', 'Gunting', '2', 'Pcs'),
(23, 'HRGA', '2022-08-01', '011/FPPK/GA/VIII/2022', 'Teh Sariwangi', '4', 'Kotak'),
(24, 'LOGISTIK', '2022-08-02', '012/FPPK/GA/VIII/2022', 'Stopmap Plastik', '20', 'Pcs'),
(25, 'HRGA', '2022-08-03', '013/FPPK/GA/VIII/2022', 'So Klin Lantai', '5', 'Pcs'),
(26, 'LOGISTIK', '2022-08-04', '014/FPPK/GA/VIII/2022', 'Sticky Note', '20', 'Pcs'),
(27, 'HRGA', '2022-08-05', '015/FPPK/GA/VIII/2022', 'Cling Pembersih Kaca', '4', 'Pcs'),
(28, 'PORT', '2022-08-06', '016/FPPK/GA/VIII/2022', 'Pupen ', '2', 'Kotak'),
(29, 'HRGA', '2022-08-07', '017/FPPK/GA/VIII/2022', 'Stella ', '5', 'Pcs'),
(30, 'LOGISTIK', '2022-08-08', '018/FPPK/GA/VIII/2022', 'Penghapus Whiteboard', '5', 'Pcs'),
(31, 'HRGA', '2022-08-09', '019/FPPK/GA/VIII/2022', 'Dettol ', '2', 'Pcs'),
(32, 'PLANT', '2022-08-10', '020/FPPK/GA/VIII/2022', 'Spidol Board Marker', '2', 'Kotak'),
(33, 'PORT', '2023-08-01', '021/FPPK/GA/VIII/2023', 'Staples', '4', 'Pcs'),
(34, 'HRGA', '2023-08-02', '022/FPPK/GA/VIII/2023', 'Sunligh', '4', 'Pcs'),
(35, 'HRM', '2023-08-03', '023/FPPK/GA/VIII/2023', 'Glade', '3', 'Pcs'),
(36, 'ENGINEERING', '2023-08-04', '024/FPPK/GA/VIII/2023', 'Penggaris', '2', 'Pcs'),
(37, 'PORT', '2023-08-05', '025/FPPK/GA/VIII/2023', 'Stapler', '2', 'Kotak'),
(38, 'PLANT', '2023-08-06', '026/FPPK/GA/VIII/2023', 'Sabun Rinso', '1', 'Dus'),
(39, 'LOGISTIK', '2023-08-07', '027/FPPK/GA/VIII/2023', 'Binder Clips', '10', 'Kotak'),
(40, 'HRGA', '2023-08-08', '028/FPPK/GA/VIII/2023', 'Mie Goreng', '5', 'Dus'),
(41, 'HSE', '2023-08-09', '029/FPPK/GA/VIII/2023', 'Selotip', '2', 'Pcs'),
(42, 'HRGA', '2023-08-10', '030/FPPK/GA/VIII/2023', 'Spons Cuci Piring', '3', 'Pcs');

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
(2, '2021-08-01', '001/FP3/SMD/GA/VIII/2021', 'Perbaikan O- Ring Elbow'),
(3, '2021-08-02', '002/FP3/SMD/GA/VIII/2021', 'Perbaikan Hole Hydraulic'),
(4, '2021-08-03', '003/FP3/SMD/GA/VIII/2021', 'Perbaikan Baut Timbangan di STA KM 2'),
(5, '2021-08-04', '004/FP3/SMD/GA/VIII/2021', 'Perbaikan Rotator Line 1'),
(6, '2021-08-05', '005/FP3/SMD/GA/VIII/2021', 'Perbaikan Per Belakang Sarana LV 03'),
(7, '2021-08-06', '006/FP3/SMD/GA/VIII/2021', 'Perbaikan Dongkrak 1 Ton'),
(8, '2021-08-07', '007/FP3/SMD/GA/VIII/2021', 'Perbaikan Gear Box Hopper 13'),
(9, '2021-08-08', '008/FP3/SMD/GA/VIII/2021', 'Perbaikan Genset No 1 & No 5'),
(10, '2021-08-09', '009/FP3/SMD/GA/VIII/2021', 'Perbaikan Kompresor Wipro'),
(11, '2021-08-10', '010/FP3/SMD/GA/VIII/2021', 'Perbaikan Jaringan Listrik Tegangan Menengah di Line 4'),
(12, '2022-08-01', '011/FP3/SMD/GA/VIII/2022', 'Perbaikan Bearing Roda Depan LV PLANT 02'),
(13, '2022-08-02', '012/FP3/SMD/GA/VIII/2022', 'Pengelasan Gorong- Gorong Line 1'),
(14, '2022-08-03', '013/FP3/SMD/GA/VIII/2022', 'Service Speed Boat PORT'),
(15, '2022-08-04', '014/FP3/SMD/GA/VIII/2022', 'Perbaikan Dolphin & Pompa Penyiraman Line 1'),
(16, '2022-08-05', '015/FP3/SMD/GA/VIII/2022', 'Ganti Oli Gearbox Transfer ');

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
(12, 'MARABAHAN', 2, 'Meja & Kursi Kantor', '001', 'PEMELIHARAAN'),
(13, 'MARABAHAN', 2, 'Komputer PC Fullset Core i3 10105 Ddr4', '002', 'PEMELIHARAAN'),
(14, 'MARABAHAN', 2, 'Printer Canon Pixma MG25705', '003', 'PEMELIHARAAN'),
(15, 'MARABAHAN', 2, 'AC Split LG 1/2 PK H05TN 4', '004', 'PEMELIHARAAN'),
(16, 'MARABAHAN', 2, 'Lemari Arsip Kantor', '005', 'PEMELIHARAAN'),
(17, 'MARABAHAN', 2, 'Kulkas 1 Pintu SHARP SJ-N162N HS', '006', 'PEMELIHARAAN'),
(18, 'MARABAHAN', 5, 'Mesin Cuci 2 Tabung TW-882NP 9 KG', '007', 'PEMELIHARAAN'),
(19, 'MARABAHAN', 2, 'Laptop ASUS X441 RAM 4GB SSD 128GB', '009', 'PEMELIHARAAN'),
(20, 'MARABAHAN', 2, 'Sakula Loker Plastik Kantor', '009', 'PEMELIHARAAN'),
(21, 'MARABAHAN', 2, 'Dispenser Mutifungsi Arashi AMD 02B', '010', 'PEMELIHARAAN');

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
(2, '2021-08-01', '001/PB/GA/VIII/2021', 'Element Filter AC LV PORT 02', '2', 'Pcs'),
(3, '2021-08-02', '002/PB/GA/VIII/2021', 'Bohlam Philips', '5', 'Pcs'),
(4, '2021-08-03', '003/PB/GA/VIII/2021', 'Stabilizer LH ', '2', 'Pcs'),
(5, '2021-08-04', '004/PB/GA/VIII/2021', 'Engine Mounting LH/RH ', '2', 'Pcs'),
(6, '2021-08-05', '005/PB/GA/VIII/2021', 'Transmisi Mounting ', '4', 'Pcs'),
(7, '2021-08-06', '006/PB/GA/VIII/2021', 'Filter Oli ', '4', 'Pcs'),
(8, '2021-08-07', '007/PB/GA/VIII/2021', 'Filter Solar ', '3', 'Pcs'),
(9, '2021-08-08', '008/PB/GA/VIII/2021', 'Pin Guide ', '6', 'Pcs'),
(10, '2021-08-09', '009/PB/GA/VIII/2021', 'Neple Grease Elbow ', '100', 'Pcs'),
(11, '2021-08-10', '010/PB/GA/VIII/2021', 'Fuse Mobil 15 A ', '25', 'Pcs'),
(12, '2022-08-01', '011/PB/GA/VIII/2022', 'Kaca Spion Mobil', '2', 'Pcs'),
(13, '2022-08-02', '012/PB/GA/VIII/2022', 'Krisbow Tang Kombinasi 20 CM', '1', 'Pcs'),
(14, '2022-08-03', '013/PB/GA/VIII/2022', 'Workpro W00136 ', '1', 'Set'),
(15, '2022-08-04', '014/PB/GA/VIII/2022', 'Bearing 6202', '3', 'Pcs'),
(16, '2022-08-05', '015/PB/GA/VIII/2022', 'Elemen Solder Kyp-60', '3', 'Pcs'),
(17, '2022-08-06', '016/PB/GA/VIII/2022', 'Sekop', '4', 'Pcs'),
(18, '2022-08-07', '017/PB/GA/VIII/2022', 'Pulley Roller ', '6', 'Pcs'),
(19, '2022-08-08', '018/PB/GA/VIII/2022', 'Isulation Continuity Tester', '1', 'Pcs'),
(20, '2022-08-09', '019/PB/GA/VIII/2022', 'Impact Roller', '50', 'Pcs'),
(21, '2022-08-10', '020/PB/GA/VIII/2022', 'Gearbox Paramax ', '1', 'Unit'),
(22, '2023-08-01', '021/PB/GA/VIII/2023', 'Mata Bor Piramid', '2', 'Pcs'),
(23, '2023-08-02', '022/PB/GA/VIII/2023', 'Bearing 6313 C3 Skf', '4', 'Pcs'),
(24, '2023-08-03', '023/PB/GA/VIII/2023', 'Mata Bor Baja 5.5 MM', '2', 'Pcs'),
(25, '2023-08-04', '024/PB/GA/VIII/2023', 'Tracker Enerpac BHP 252', '1', 'Unit'),
(26, '2023-08-05', '025/PB/GA/VIII/2023', 'Lampu PJU Led 50 Watt', '5', 'Pcs'),
(27, '2023-08-06', '026/PB/GA/VIII/2023', 'Fuse Cubicle 80 Ampere', '3', 'Pcs'),
(28, '2023-08-07', '027/PB/GA/VIII/2022', 'Relay Stater 24 Volt', '4', 'Pcs'),
(29, '2023-08-08', '028/PB/GA/VIII/2023', 'Joint Coupling 450', '1', 'Pcs'),
(30, '2023-08-09', '029/PB/GA/VIII/2023', 'Box Panel ', '1', 'Pcs'),
(31, '2023-08-10', '030/PB/GA/VIII/2023', 'Schneider Emergency Stop', '4', 'Pcs');

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
(26, '2021-08-01', '001/TB/PI/SMD/VII/2021', 'Meja & Kursi Kantor ', '8', 'Pcs'),
(27, '2021-08-02', '002/TB/PI/SMD/VII/2021', 'Komputer PC Fullset Core i3 10105 Ddr4', '8', 'Pcs'),
(28, '2021-08-03', '003/TB/PI/SMD/VII/2021', 'Printer Canon Pixma MG25705 ', '8', 'Pcs'),
(29, '2021-08-04', '004/TB/PI/SMD/VII/2021', 'AC Split LG 1/2 PK H05TN 4', '8', 'Pcs'),
(30, '2021-08-05', '005/TB/PI/SMD/VII/2021', 'Lemari Arsip Kantor', '8', 'Pcs'),
(31, '2021-08-06', '006/TB/PI/SMD/VII/2021', 'Kulkas 1 Pintu SHARP SJ-N162N HS', '3', 'Pcs'),
(32, '2021-08-07', '007/TB/PI/SMD/VII/2021', 'Mesin Cuci 2 Tabung TW-882NP 9 KG', '2', 'Pcs'),
(33, '2021-08-08', '008/TB/PI/SMD/VII/2021', 'Laptop ASUS  X441 RAM 4GB SSD 128GB', '2', 'Pcs'),
(34, '2021-08-09', '009/TB/PI/SMD/VII/2021', 'Sakula Loker Plastik Kantor', '8', 'Pcs'),
(35, '2021-08-10', '010/TB/PI/SMD/VII/2021', 'Dispenser Mutifungsi Arashi AMD 02B', '8', 'Pcs');

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
  `satuan` varchar(20) NOT NULL,
  `jumlah_pp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pp`
--

INSERT INTO `pp` (`id_pp`, `tanggal_permintaan`, `no_pp`, `keterangan`, `jumlah`, `satuan`, `jumlah_pp`) VALUES
(41, '2021-08-01', '001', 'Air Galon Isi Ulang Rp. 100.000,00', '20', 'Galon', '100000'),
(42, '2021-08-02', '002', 'Stabilo Rp. 14.000,00', '2', 'Pcs', '100000'),
(43, '2021-08-03', '003', 'Gula Rose Brand Rp 150.000,00', '10', 'Pcs', '100000'),
(44, '2021-08-04', '004', 'Amplop Rp. 40.000,00', '2', 'Kotak', '100000'),
(45, '2021-08-05', '005', 'Kopi Kapal Api Rp. 42.000,00', '1', 'Kg', '100000'),
(46, '2021-08-06', '006', 'Kertas HVS A4 Rp.1.040.000,00', '20', 'Rim', '100000'),
(47, '2021-08-07', '007', 'Tisu Paseo Rp. 100.000,00', '10', 'Pcs', '100000'),
(48, '2021-08-08', '008', 'Glue Stick Rp. 8.000,00', '2', 'Pcs', '100000'),
(49, '2021-08-09', '009', 'Baygon Rp. 118.000,00', '2', 'Pcs', '100000'),
(50, '2021-08-10', '010', 'Gunting Rp 14.000,00', '2', 'Pcs', '100000');

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
(84, 'MARABAHAN', '2021-08-01', 'HRGA', 0, 0, 13, 41, 0, 'Air Galon Isi Ulang', '20', 'Galon', '5000', 'Permintaan Air Galon Isi Ulang Untuk Keperluan Kantor & Mess PT. Talenta Bumi'),
(85, 'MARABAHAN', '2021-08-01', 'PLANT', 0, 2, 0, 0, 0, 'Element Filter AC LV PORT 02', '2', 'Pcs', '0', 'Permintaan Element Filter AC LV PORT 02 Untuk Keperluan LV Sarana 02 Departemen PORT'),
(86, 'MARABAHAN', '2021-08-01', 'PLANT', 0, 0, 0, 0, 2, 'Perbaikan O- Ring Elbow', '0', '-', '0', 'Permintaan Perbaikan O- Ring Elbow Oleh Departemen PLANT'),
(87, 'MARABAHAN', '2021-08-01', 'HRGA', 26, 0, 0, 0, 0, 'Meja & Kursi Kantor', '8', 'Pcs', '2000000', 'Permintaan Meja & Kursi Kantor Baru Oleh Departemen HRGA Untuk Semua Ddepartemen'),
(88, 'MARABAHAN', '2021-08-02', 'ENGINEERING', 0, 0, 14, 42, 0, 'Stabilo', '2', 'Pcs', '7000', 'Permintaan Stabilo Untuk Departemen ENGINEERING'),
(89, 'MARABAHAN', '2021-08-02', 'PLANT', 0, 3, 0, 0, 0, 'Bohlam Philips', '5', 'Pcs', '0', 'Permintaan Bohlam Philips Untuk Keperluan Electical Departemen PLANT'),
(90, 'MARABAHAN', '2021-08-02', 'PLANT', 0, 0, 0, 0, 3, 'Permintaan Perbaikan Hole Hydraulic ', '0', '-', '0', 'Perbaikan Hole Hydraulic Oleh Departemen PLANT'),
(91, 'MARABAHAN', '2021-08-02', 'HRGA', 27, 0, 0, 0, 0, 'Komputer PC Fullset Core i3 10105 Ddr4', '8', 'Pcs', '7200000', 'Permintaan Komputer PC Fullset Core i3 10105 Ddr4 Oleh HRGA Untuk Semua Departemen'),
(92, 'MARABAHAN', '2021-08-03', 'HRGA', 0, 0, 15, 0, 0, 'Gula Rose Brand', '10', 'Kg', '15000', 'Permintaan Gula Rose Brand Oleh Departemen HRGA'),
(93, 'MARABAHAN', '2021-08-02', 'PLANT', 0, 4, 0, 0, 0, 'Stabilizer LH', '2', 'Pcs', '0', 'Permintaan Stabilizer LH Untuk Keperluan Departemen PLANT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttd`
--

CREATE TABLE `ttd` (
  `id_ttd` int(11) NOT NULL,
  `nama_ketua` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ttd`
--

INSERT INTO `ttd` (`id_ttd`, `nama_ketua`) VALUES
(1, 'Samideri');

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
-- Indeks untuk tabel `ttd`
--
ALTER TABLE `ttd`
  ADD PRIMARY KEY (`id_ttd`);

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
  MODIFY `id_aktiva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `fppk`
--
ALTER TABLE `fppk`
  MODIFY `id_fppk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `fppp`
--
ALTER TABLE `fppp`
  MODIFY `id_fppp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pb`
--
ALTER TABLE `pb`
  MODIFY `id_pb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pi`
--
ALTER TABLE `pi`
  MODIFY `id_pi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `pp`
--
ALTER TABLE `pp`
  MODIFY `id_pp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `rekap_harian`
--
ALTER TABLE `rekap_harian`
  MODIFY `id_rh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `ttd`
--
ALTER TABLE `ttd`
  MODIFY `id_ttd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
