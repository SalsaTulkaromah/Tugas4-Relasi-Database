-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2022 pada 17.11
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tugas_rumah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ambil_mk`
--

CREATE TABLE `tbl_ambil_mk` (
  `nip` varchar(5) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `ruangan` varchar(10) DEFAULT NULL,
  `jml_mhs` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_ambil_mk`
--

INSERT INTO `tbl_ambil_mk` (`nip`, `kd_mk`, `ruangan`, `jml_mhs`) VALUES
('1', 'IS101', '17312', '30'),
('2', 'PTI102', 'H5212', '45'),
('3', 'PTI101', 'H5211', '40'),
('4', 'PTI103', 'H5206', '40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` varchar(5) NOT NULL,
  `customer_name` varchar(10) NOT NULL,
  `custumer_addres` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `custumer_addres`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif ', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instruktur`
--

CREATE TABLE `tbl_instruktur` (
  `nip` varchar(5) NOT NULL,
  `nama_ins` varchar(20) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  `asal_kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_instruktur`
--

INSERT INTO `tbl_instruktur` (`nip`, `nama_ins`, `jurusan`, `asal_kota`) VALUES
('1', 'Muhammad Akbar', 'Ilmu Sejarah', 'Malang'),
('2', 'Saichul Fitrian A', 'Ilmu Komputer', 'Malang'),
('3', 'Annafia Oktafian', 'Ilmu Komputer', 'Klaten'),
('4', 'Budy Pratama', 'Ilmu Komputer', 'Magelang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mk`
--

CREATE TABLE `tbl_mk` (
  `kd_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mk`
--

INSERT INTO `tbl_mk` (`kd_mk`, `nama_mk`, `sks`) VALUES
('IS101', 'Sejarah Indonesia ', '3'),
('PTI101', 'Algoritma dan Pemograman', '3'),
('PTI102', 'Basis Data', '3'),
('PTI103', 'Visual Basic', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` varchar(5) NOT NULL,
  `customer_id` varchar(5) DEFAULT NULL,
  `qty` varchar(5) DEFAULT NULL,
  `aumont` float DEFAULT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `customer_id`, `qty`, `aumont`, `order_date`) VALUES
('CS001', 'CS001', '1', 40000, '2016-12-10'),
('CS002', 'CS002', '2', 50000, '2017-11-01'),
('CS003', 'CS005', '3', 35000, '2017-12-01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_instruktur`
--
ALTER TABLE `tbl_instruktur`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tbl_mk`
--
ALTER TABLE `tbl_mk`
  ADD PRIMARY KEY (`kd_mk`);

--
-- Indeks untuk tabel `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
