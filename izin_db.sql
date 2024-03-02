-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3300
-- Generation Time: Feb 19, 2024 at 07:12 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Bangun, S.Sos.', 'bk1', '12345'),
(2, 'Darto, S.Pd.', 'bk2', '12345'),
(3, 'Firman, S.Gz.', 'bk3', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `NIP`, `foto`) VALUES
(1, 'Ariana, S.T.', 'Teknik Mesin', 'guru1', '12345', '123456789101112104', 'ariana.jpg'),
(2, 'Anang, S.Pd.', 'Bahasa Indonesia', 'guru2', '12345', '123456789101112105', 'anang.jpg'),
(3, 'Hendro, S.Pd.', 'PPkn', 'guru3', '12345', '123456789101112106', 'hendro.jpg'),
(4, 'Regan, S.Kom.', 'Teknik Komputer', 'guru4', '12345', '123456789101112107', 'regan.jpg'),
(5, 'Slamet, S.Pd., S.Mat.', 'Matematika', 'guru5', '12345', '123456789101112108', 'slamet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `is_approve` int(11) NOT NULL DEFAULT 0,
  `ffile_pendukung` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approve`, `ffile_pendukung`) VALUES
(1, 2, 1, 1, 'sakit', '2024', '2', '2024-02-16 08:28:33', 0, NULL),
(2, 2, 4, 2, 'Beli Minum', '2022', '4', '2024-02-16 08:58:07', 3, NULL),
(3, 1, 5, 3, 'Gabut', '2000', '1-7', '2024-02-16 17:44:26', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(50) NOT NULL,
  `email_add` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email_add`, `password`) VALUES
('', '', ''),
('Ari', 'ari@gmail.com', '12345'),
('Ilham Gimang', 'ilhamdzaky2007@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `jurusan` varchar(6) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `nis`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Afif Yulistian', '11', '20400', 'SIJA A', 'siswa1', '12345', 'afif.jpg'),
(2, 'Ahmad Rusli', '11', '20410', 'TKR A', 'siswa2', '12345', 'rusli.jpg'),
(3, 'Bima Nugraha', '11', '20411', 'TKR A', 'siswa3', '12345', 'bima.jpg'),
(4, 'Cristina ', '10', '20401', 'SIJA A', 'siswa4', '12345', 'cristina.jpg'),
(5, 'Christoper', '12', '20402', 'SIJA A', 'siswa5', '12345', 'christoper.jpg'),
(6, 'Desta Maliki', '11', '20412', 'TKR B', 'siswa6', '12345', 'desta.jpg'),
(7, 'Ethan Justice', '12', '20403', 'SIJA B', 'siswa7', '12345', 'ethan.jpg'),
(8, 'Falih Rafif', '12', '20392', 'SIJA B', 'siswa8', '12345', 'falih.jpg'),
(9, 'Galang D Gajah', '12', '20413', 'TKR B', 'siswa9', '12345', 'galang.jpg'),
(10, 'Han Del Perro', '12', '20399', 'SIJA B', 'siswa10', '12345', 'perro.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
