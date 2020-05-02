-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2020 pada 16.37
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_violationfour`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_datapelanggaran`
--

CREATE TABLE `t_datapelanggaran` (
  `no_data` int(10) UNSIGNED NOT NULL,
  `nis` varchar(10) NOT NULL,
  `no_pelanggaran` varchar(10) NOT NULL,
  `id_petugas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_datapelanggaran`
--

INSERT INTO `t_datapelanggaran` (`no_data`, `nis`, `no_pelanggaran`, `id_petugas`) VALUES
(1, '1819117641', '001', '111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_login`
--

CREATE TABLE `t_login` (
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_login`
--

INSERT INTO `t_login` (`username`, `password`) VALUES
('agussunandarr', 'agussunandarr'),
('elrusliano', 'corporesano'),
('nenengherawati', 'neneng1708'),
('shintapuspitasar', 'shinta23'),
('solehsodikin', 'solehsodikin98');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pelanggaran`
--

CREATE TABLE `t_pelanggaran` (
  `no_pelanggaran` varchar(10) NOT NULL,
  `jenis_pelanggaran` varchar(50) NOT NULL,
  `poin_pelanggaran` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_pelanggaran`
--

INSERT INTO `t_pelanggaran` (`no_pelanggaran`, `jenis_pelanggaran`, `poin_pelanggaran`) VALUES
('001', 'Terlambat datang ke sekolah', 10),
('002', 'Sepatu tidak sesuai aturan', 5),
('003', 'Celana/rok tidak sesuai aturan', 5),
('004', 'Rambut tidak sesuai aturan', 5),
('005', 'Pakaian tidak sesuai hari', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_petugas`
--

CREATE TABLE `t_petugas` (
  `id_petugas` varchar(20) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `username` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_petugas`
--

INSERT INTO `t_petugas` (`id_petugas`, `nama_petugas`, `username`) VALUES
('111', 'Kusmoro Rusli S.Pd', 'elrusliano'),
('112', 'Shinta Puspitasari S.Pd', 'shintapuspitasar'),
('113', 'Neneng Herawati M.P.d', 'nenengherawati'),
('114', 'Agus Sunandar S.St', 'agussunandarr'),
('115', 'Soleh Sodikin S.Pd.,M.M.Pd', 'solehsodikin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `nis` varchar(10) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `poin_siswa` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`nis`, `nama_lengkap`, `kelas`, `poin_siswa`) VALUES
('1819117641', 'Addyana Ilman', 'XI RPL 3', 100),
('1819117642', 'Adrian Maulana Firdaus', 'XI RPL 3', 100),
('1819117643', 'Adrian Satria Putra', 'XI RPL 3', 100),
('1819117644', 'Agus Rohendi', 'XI RPL 3', 100),
('1819117645', 'Ainani Tajriyan Muntaharridwan', 'XI RPL 3', 100),
('1819117646', 'Ananda Cipta Pamungkas', 'XI RPL 3', 100),
('1819117647', 'Angga Nabila', 'XI RPL 3', 100),
('1819117648', 'Angga Saputra', 'XI RPL 3', 100),
('1819117649', 'Anisa Noor Syami', 'XI RPL 3', 100),
('1819117650', 'Fahmi Lutfhi Fadhillah', 'XI RPL 3', 100),
('1819117651', 'Gilang Restu Ramadhan', 'XI RPL 3', 100),
('1819117652', 'Gilang Muhammad Arsy', 'XI RPL 3', 100),
('1819117653', 'Helmy Fauzi', 'XI RPL 3', 100),
('1819117654', 'Hilman Maulana Aziz', 'XI RPL 3', 100),
('1819117655', 'Ihsan Herdiansyah', 'XI RPL 3', 100),
('1819117656', 'Intannur Latifah', 'XI RPL 3', 100),
('1819117657', 'Irsyad Agung Hidayatullah', 'XI RPL 3', 100),
('1819117658', 'Mochammad Nouval Jahir', 'XI RPL 3', 100),
('1819117659', 'Mohammad Luthfi Ismail Valent', 'XI RPL 3', 100),
('1819117660', 'Muhamad Ervan Nugraha', 'XI RPL 3', 100),
('1819117661', 'Muhammad Syahrul Ramadhan', 'XI RPL 3', 100),
('1819117662', 'Muhammad Fadli Al Hafizh Wibiksana', 'XI RPL 3', 100),
('1819117663', 'Muhammad Rizal', 'XI RPL 3', 100),
('1819117664', 'Nezarian Saputra', 'XI RPL 3', 100),
('1819117665', 'Rafin Akhmad Farisly', 'XI RPL 3', 100),
('1819117666', 'Ramdan Rohendi', 'XI RPL 3', 100),
('1819117667', 'Rifqi Faudzan Adzikra', 'XI RPL 3', 100),
('1819117668', 'Rizky Firdaus', 'XI RPL 3', 100),
('1819117669', 'Vadlan Ramdani', 'XI RPL 3', 100),
('1819117670', 'Virgiawan Dejan', 'XI RPL 3', 100),
('1819117671', 'Yatia Nurdani', 'XI RPL 3', 100),
('1819117672', 'Yusuf Maulana Satriani', 'XI RPL 3', 100),
('1819117673', 'Zahy Habibi', 'XI RPL 3', 100);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_datapelanggaran`
--
ALTER TABLE `t_datapelanggaran`
  ADD PRIMARY KEY (`no_data`) USING BTREE,
  ADD KEY `nis` (`nis`),
  ADD KEY `no_pelanggaran` (`no_pelanggaran`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `t_pelanggaran`
--
ALTER TABLE `t_pelanggaran`
  ADD PRIMARY KEY (`no_pelanggaran`);

--
-- Indeks untuk tabel `t_petugas`
--
ALTER TABLE `t_petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_datapelanggaran`
--
ALTER TABLE `t_datapelanggaran`
  MODIFY `no_data` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_datapelanggaran`
--
ALTER TABLE `t_datapelanggaran`
  ADD CONSTRAINT `t_datapelanggaran_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `t_siswa` (`nis`),
  ADD CONSTRAINT `t_datapelanggaran_ibfk_2` FOREIGN KEY (`no_pelanggaran`) REFERENCES `t_pelanggaran` (`no_pelanggaran`),
  ADD CONSTRAINT `t_datapelanggaran_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `t_petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `t_petugas`
--
ALTER TABLE `t_petugas`
  ADD CONSTRAINT `t_petugas_ibfk_1` FOREIGN KEY (`username`) REFERENCES `t_login` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
