-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Nov 2023 pada 00.01
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `administrasi_puskesmas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `usere` text DEFAULT NULL,
  `passworde` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`usere`, `passworde`) VALUES
('q½YÄ™\'â•É…£Å¸Êe', 'Ç§\\§\0ôgÈº®c²WÛ„'),
('q½YÄ™\'â•É…£Å¸Êe', 'Ç§\\§\0ôgÈº®c²WÛ„'),
('q½YÄ™\'â•É…£Å¸Êe', 'Ç§\\§\0ôgÈº®c²WÛ„');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_penyakit`
--

CREATE TABLE `kategori_penyakit` (
  `kd_ktg` varchar(8) NOT NULL,
  `nm_kategori` varchar(30) DEFAULT NULL,
  `ciri_umum` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_penyakit`
--

INSERT INTO `kategori_penyakit` (`kd_ktg`, `nm_kategori`, `ciri_umum`) VALUES
('01', 'Jantung', 'Sesak Nafas'),
('02', 'Mata', 'Merah Berair'),
('03', 'Kepala', 'Sakit Kepala Sebelah'),
('04', 'Ginjal', 'Susah Kencing'),
('05', 'Perut', 'Sembelit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `noregis_pasien` text NOT NULL,
  `kode_obat` varchar(20) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `banyak_obat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`noregis_pasien`, `kode_obat`, `nama_obat`, `banyak_obat`) VALUES
('010101', '01', 'Fisioterapi', '1'),
('010102', '02', 'Paracetamol', '1'),
('010103', '03', 'Meloxicam', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `noregis_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `umur_pasien` varchar(10) NOT NULL,
  `tgllahir_pasien` date NOT NULL,
  `jk_pasien` varchar(20) NOT NULL,
  `alamat_pasien` varchar(50) NOT NULL,
  `jns_penyakit` varchar(30) NOT NULL,
  `poli_tujuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`noregis_pasien`, `nama_pasien`, `umur_pasien`, `tgllahir_pasien`, `jk_pasien`, `alamat_pasien`, `jns_penyakit`, `poli_tujuan`) VALUES
(10101, 'Deny Nastiar', '20', '2002-12-28', 'L', 'Sungai Lulut', 'Cedera Lutut', 'Fisioterapi'),
(10102, 'Deny Nastiar', '20', '2002-12-28', 'L', 'Sungai Lulut', 'Sakit Kepala', 'Umum'),
(10103, 'Deny Nastiar', '20', '2002-12-28', 'L', 'Sungai Lulut', 'Keseleo', 'Orthopedi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `noregis_pasien` text NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `jns_penyakit` varchar(50) NOT NULL,
  `obat_penyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`noregis_pasien`, `nama_dokter`, `jns_penyakit`, `obat_penyakit`) VALUES
('010101', 'Deny', 'Cedera Lutut', 'Fisioterapi'),
('010102', 'Nastiar', 'Sakit Kepala', 'Amoxilin'),
('010103', 'Bang Den', 'Keseleo', 'Meloxicam'),
('010104', 'Bang Denden', 'Peradangan Tenggorokan', 'Strepsil'),
('010105', 'Deny Nastiar', 'Sakit Kepala', 'Paracetamol');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori_penyakit`
--
ALTER TABLE `kategori_penyakit`
  ADD PRIMARY KEY (`kd_ktg`),
  ADD KEY `nm_kategori` (`nm_kategori`),
  ADD KEY `ciri_umum` (`ciri_umum`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`noregis_pasien`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `noregis_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
