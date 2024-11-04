-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 01:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `hari` varchar(250) NOT NULL,
  `tanggal` varchar(250) NOT NULL,
  `waktu_masuk` varchar(255) DEFAULT NULL,
  `waktu_pulang` varchar(250) DEFAULT NULL,
  `status_absen` varchar(100) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `latitude` varchar(250) DEFAULT NULL,
  `longitude` varchar(250) DEFAULT NULL,
  `jadwal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `id_karyawan`, `nama`, `hari`, `tanggal`, `waktu_masuk`, `waktu_pulang`, `status_absen`, `pekerjaan`, `latitude`, `longitude`, `jadwal`) VALUES
(21, 17190781, 'last dhita rio', 'Sabtu', '24-06-2023', '22:57:23', '22:57:27', 'Hadir', '', '-6.1837199', '106.8525037', NULL),
(25, 17190781, 'last dhita rio', 'Sabtu', '24-06-2023', '23:54:39', '', 'Bekerja', '', '', '', NULL),
(26, 17190780, 'Rinaldi', 'Kamis', '29-06-2023', '15:18:18', '17:43:31', 'Hadir', '', '-6.1903141', '106.8585984', NULL),
(27, 1234, 'test', 'Senin', '10-07-2023', '16:03:15', '', 'Bekerja', '', '-6.216665436415108', '106.82994933820427', NULL),
(28, 1234, 'test', 'Kamis', '13-07-2023', '13:58:04', '13:58:12', 'Hadir', '', '-6.216689972915208', '106.82994498114302', NULL),
(29, 1234, 'test', 'Kamis', '13-07-2023', '14:23:20', '', 'Bekerja', 'testt', '', '', NULL),
(30, 1234, 'test', 'Sabtu', '15-07-2023', '18:30:10', '18:30:21', 'Hadir', 'test', '-6.1468', '106.899', NULL),
(31, 1234, 'test', 'Sabtu', '15-07-2023', '18:33:22', '', 'Bekerja', 'test masuk', '-6.200602728032368', '106.86905230310494', NULL),
(32, 1234, 'test', 'Minggu', '16-07-2023', '22:17:08', '', 'Bekerja', '', '-6.2259', '106.8503', '07:00-16:00'),
(33, 1234, 'test', 'Senin', '17-07-2023', '13:50:19', '13:50:26', 'Hadir', '', '-6.2166900847530036', '106.8299790335929', '1'),
(35, 1234, 'test', 'Minggu', '23-07-2023', '16:53:37', '16:57:02', 'Hadir', 'test1', '-6.2114', '106.8446', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
(3, 'CEO'),
(4, 'CTO'),
(5, 'CFO'),
(7, 'CMO'),
(8, 'COO'),
(10, 'Operator'),
(11, 'Admin Lokasi'),
(12, 'Finance Officer'),
(13, 'Helper');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(32) NOT NULL,
  `hari` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `jam_masuk` varchar(11) CHARACTER SET utf8mb4 NOT NULL,
  `jam_pulang` varchar(11) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal`
--

INSERT INTO `tb_jadwal` (`id`, `id_karyawan`, `hari`, `jam_masuk`, `jam_pulang`) VALUES
(1, 17190780, 'senin', '08:00', '17:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmp_tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_tel` varchar(18) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `schedule` int(11) DEFAULT NULL,
  `jadwal` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`, `foto`, `schedule`, `jadwal`) VALUES
(1234, '81dc9bdb52d04dc20036dbd8313ed055', 'test', 'test', 'Laki-laki', 'Islam', 'teset', '000003030', 'CEO', '10072023103648tempsnip.png', 1, 'SHIFT NORMAL  ( 08:00 - 17:00 )'),
(12345678, '81dc9bdb52d04dc20036dbd8313ed055', 'test2', 'gfgdfgfd', 'Laki-laki', 'Islam', 'gfgdgdfgd', '143423424', 'Admin Lokasi', '23072023105730InkedWhatsApp Image 2022-06-16 at 10', 4, 'SHIFT NORMAL  ( 08:00 - 17:00 )'),
(17190780, '25d55ad283aa400af464c76d713c07ad', 'Rinaldi', 'jakarta', 'Laki-laki', 'Islam', 'jl. Kramat pulo ', '081316577895', 'CEO', '180620231420141627886129274.jpg', 2, 'SHIFT NORMAL  ( 08:00 - 17:00 )'),
(17190781, '25d55ad283aa400af464c76d713c07ad', 'last dhita rio', 'jakarta, 1-01-2001', 'Laki-laki', 'Islam', 'kemayoran lama', '123321123', 'Operator', '22062023103814601d4b4f871700de446276a2ea5901ea.jpg', 1, 'SHIFT NORMAL  ( 08:00 - 17:00 )');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keterangan`
--

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alasan` text NOT NULL,
  `hari` varchar(250) NOT NULL,
  `tanggal` varchar(250) NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `bukti` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_keterangan`
--

INSERT INTO `tb_keterangan` (`id`, `id_karyawan`, `nama`, `keterangan`, `alasan`, `hari`, `tanggal`, `waktu`, `bukti`) VALUES
(83, 17190781, 'last dhita rio', 'Izin', 'ada pernikahan kaka', 'Kamis', '22-06-2023', '15:43:25', '22062023104413employee.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_schedule`
--

CREATE TABLE `tb_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `in_out` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_schedule`
--

INSERT INTO `tb_schedule` (`id`, `code`, `in_out`) VALUES
(1, 'SHIFT NORMAL', '08:00 - 17:00'),
(2, 'SHIFT PAGI', '07:00 - 16:00'),
(3, 'SHIFT SIANG', '07:00 - 16:00'),
(4, 'SHIFT MALAM', '07:00 - 16:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(15, 'rinaldi', 'rinaldi'),
(16, 'test', '06:11 - 12:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jabatan` (`jabatan`(191));

--
-- Indexes for table `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `jabatan` (`jabatan`(191));

--
-- Indexes for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tb_schedule`
--
ALTER TABLE `tb_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD CONSTRAINT `tb_absen_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `tb_karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
