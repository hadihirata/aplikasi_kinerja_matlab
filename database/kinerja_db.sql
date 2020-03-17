-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2020 at 09:12 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kinerja_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kerja`
--

CREATE TABLE `hasil_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_kerja`
--

INSERT INTO `hasil_kerja` (`id`, `nama`, `a`, `b`, `c`) VALUES
(1, 'kurang', 0, 50, 70),
(2, 'baik', 50, 70, 80),
(3, 'baik_sekali', 70, 80, 100);

-- --------------------------------------------------------

--
-- Table structure for table `hubungan_kerja`
--

CREATE TABLE `hubungan_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hubungan_kerja`
--

INSERT INTO `hubungan_kerja` (`id`, `nama`, `a`, `b`, `c`) VALUES
(1, 'kurang', 0, 50, 70),
(2, 'baik', 50, 70, 80),
(3, 'sangat_baik', 70, 80, 100);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `kd` varchar(5) NOT NULL,
  `nama_karyawan` varchar(50) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `hasil_kerja` decimal(10,0) DEFAULT NULL,
  `komitmen_kerja` decimal(10,0) DEFAULT NULL,
  `hubungan_kerja` decimal(10,0) DEFAULT NULL,
  `nilai_kinerja` decimal(10,0) DEFAULT NULL,
  `Ket` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`kd`, `nama_karyawan`, `jabatan`, `hasil_kerja`, `komitmen_kerja`, `hubungan_kerja`, `nilai_kinerja`, `Ket`) VALUES
('1', 'dwi', 'staff', '70', '70', '79', NULL, NULL),
('2', 'hadi hirata', 'staff', '90', '90', '90', '88', 'baik sekali'),
('3', 'tes', 'tes', '90', '79', '80', '87', 'baik sekali'),
('4', 'azrai sirait', 'staff', '80', '80', '90', '88', 'baik sekali'),
('5', 'anton', 'staff', '90', '86', '70', '88', 'baik sekali');

-- --------------------------------------------------------

--
-- Table structure for table `komitmen_kerja`
--

CREATE TABLE `komitmen_kerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komitmen_kerja`
--

INSERT INTO `komitmen_kerja` (`id`, `nama`, `a`, `b`, `c`) VALUES
(1, 'kurang', 0, 50, 70),
(2, 'baik', 50, 70, 80),
(3, 'baik_sekali', 70, 80, 100);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kinerja`
--

CREATE TABLE `nilai_kinerja` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_kinerja`
--

INSERT INTO `nilai_kinerja` (`id`, `nama`, `a`, `b`, `c`) VALUES
(1, 'kurang', 0, 50, 70),
(2, 'baik', 50, 70, 80),
(3, 'sangat_baik', 70, 80, 100);

-- --------------------------------------------------------

--
-- Table structure for table `ruler`
--

CREATE TABLE `ruler` (
  `id` int(11) NOT NULL,
  `ruler` varchar(5) DEFAULT NULL,
  `hasil_kerja` varchar(20) DEFAULT NULL,
  `komitmen_kerja` varchar(20) DEFAULT NULL,
  `hubungan_kerja` varchar(20) DEFAULT NULL,
  `nilai_kinerja` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruler`
--

INSERT INTO `ruler` (`id`, `ruler`, `hasil_kerja`, `komitmen_kerja`, `hubungan_kerja`, `nilai_kinerja`) VALUES
(1, 'R1', 'kurang', 'kurang', 'kurang', 'kurang'),
(2, 'R2', 'kurang', 'kurang', 'baik', 'kurang'),
(3, 'R3', 'Kurang', 'kurang', 'baik_sekali', 'kurang'),
(4, 'R4', 'kurang', 'baik', 'kurang', 'kurang'),
(5, 'R5', 'kurang', 'baik', 'baik', 'baik'),
(6, 'R6', 'Kurang', 'baik', 'baik_sekali', 'Kurang'),
(7, 'R7', 'kurang', 'baik_sekali', 'kurang', 'kurang'),
(8, 'R8', 'kurang', 'baik_sekali', 'baik', 'kurang'),
(9, 'R9', 'kurang', 'baik_sekali', 'baik_sekali', 'baik_sekali'),
(10, 'R10', 'baik', 'kurang', 'kurang', 'kurang'),
(11, 'R11', 'baik', 'kurang', 'baik', 'baik'),
(12, 'R12', 'baik', 'kurang', 'baik_sekali', 'kurang'),
(13, 'R13', 'baik', 'baik', 'kurang', 'baik'),
(14, 'R14', 'baik', 'baik', 'baik', 'baik'),
(15, 'R15', 'baik', 'baik', 'baik_sekali', 'baik'),
(16, 'R16', 'baik', 'baik_sekali', 'kurang', 'kurang'),
(17, 'R17', 'baik', 'baik_sekali', 'baik', 'baik'),
(18, 'R18', 'baik', 'baik_sekali', 'baik_sekali', 'baik_sekali'),
(19, 'R19', 'baik_sekali', 'kurang', 'kurang', 'kurang'),
(20, 'R20', 'baik_sekali', 'kurang', 'baik', 'kurang'),
(21, 'R21', 'baik_sekali', 'kurang', 'baik_sekali', 'baik_sekali'),
(22, 'R22', 'baik_sekali', 'baik', 'kurang', 'kurang'),
(23, 'R23', 'baik_sekali', 'baik', 'baik', 'baik'),
(24, 'R24', 'baik_sekali', 'baik', 'baik_sekali', 'baik_sekali'),
(25, 'R25', 'baik_sekali', 'baik_sekali', 'kurang', 'baik_sekali'),
(26, 'R26', 'baik_sekali', 'baik_sekali', 'baik', 'baik_sekali'),
(27, 'R27', 'baik_sekali', 'baik_sekali', 'baik_sekali', 'baik_sekali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil_kerja`
--
ALTER TABLE `hasil_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hubungan_kerja`
--
ALTER TABLE `hubungan_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`kd`);

--
-- Indexes for table `komitmen_kerja`
--
ALTER TABLE `komitmen_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_kinerja`
--
ALTER TABLE `nilai_kinerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruler`
--
ALTER TABLE `ruler`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil_kerja`
--
ALTER TABLE `hasil_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hubungan_kerja`
--
ALTER TABLE `hubungan_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komitmen_kerja`
--
ALTER TABLE `komitmen_kerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai_kinerja`
--
ALTER TABLE `nilai_kinerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ruler`
--
ALTER TABLE `ruler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
