-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 02:35 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '123', '2020-01-15', '2020-01-15');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `idKaryawan` int(11) NOT NULL,
  `gajiKotor` int(11) NOT NULL,
  `hariLembur` int(11) NOT NULL,
  `jmlLembur` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `totalTunjangan` int(11) NOT NULL,
  `gajiBersih` int(11) NOT NULL,
  `bulan` varchar(25) NOT NULL,
  `tahun` varchar(5) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `idKaryawan`, `gajiKotor`, `hariLembur`, `jmlLembur`, `pajak`, `totalTunjangan`, `gajiBersih`, `bulan`, `tahun`, `createdAt`, `updatedAt`) VALUES
(2, 5, 7960000, 3, 210000, 700000, 1050000, 7260000, 'Januari', '2020', '2020-01-14', '2020-01-14');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `namaJabatan` varchar(50) NOT NULL,
  `jmlGajiPokok` int(11) NOT NULL,
  `upahLembur` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `namaJabatan`, `jmlGajiPokok`, `upahLembur`, `createdAt`, `updatedAt`) VALUES
(1, 'Direktur', 7000000, 70000, '2020-01-12', '2020-01-12'),
(2, 'Staff', 5000000, 50000, '2020-01-12', '2020-01-12');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `namaKaryawan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `noHp` varchar(50) NOT NULL,
  `tempatLahir` varchar(50) NOT NULL,
  `tanggalLahir` varchar(100) NOT NULL,
  `jk` enum('Perempuan','Laki-laki') NOT NULL,
  `idJabatan` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `jmlAnak` varchar(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `namaKaryawan`, `alamat`, `noHp`, `tempatLahir`, `tanggalLahir`, `jk`, `idJabatan`, `status`, `jmlAnak`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Gabril', 'Nawawi', '4631232564', 'Bogor', 'brapa kek', 'Laki-laki', 2, 'Menikah', '2', 'gab', '123', '2020-01-12', '2020-01-12'),
(5, 'diko', 'citeureup', '89887', 'bgr', 'Tuesday, October 15, 2019', 'Laki-laki', 1, 'Belum Menikah', '', 'dik', '123', '2020-01-13', '2020-01-13'),
(6, 'as', 'dsa', 'dsa', 'dsa', '31-01-2020', 'Laki-laki', 1, 'Menikah', '1', 'das', 'da', '2020-01-15', '2020-01-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idKaryawan` (`idKaryawan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idJabatan` (`idJabatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `gaji_ibfk_1` FOREIGN KEY (`idKaryawan`) REFERENCES `karyawan` (`id`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`idJabatan`) REFERENCES `jabatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
