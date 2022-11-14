-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 03:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asrama`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensimalam`
--

CREATE TABLE `absensimalam` (
  `idabsensi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `nim` varchar(10) NOT NULL,
  `statuskehadiran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensimalam`
--

INSERT INTO `absensimalam` (`idabsensi`, `tanggal`, `waktu`, `nim`, `statuskehadiran`) VALUES
(1, '2021-12-13', '20:30:00', '1911522020', 'hadir'),
(2, '2021-12-14', '20:48:00', '1911522020', 'hadir'),
(3, '2021-12-15', '20:22:00', '1911522020', 'hadir'),
(4, '2021-12-13', '20:44:00', '1911522028', 'hadir'),
(5, '2021-12-14', '20:46:00', '1911522028', 'hadir'),
(6, '2021-12-15', '20:38:00', '1911522028', 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `absensisubuh`
--

CREATE TABLE `absensisubuh` (
  `idabsensi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `nim` varchar(10) NOT NULL,
  `statuskehadiran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensisubuh`
--

INSERT INTO `absensisubuh` (`idabsensi`, `tanggal`, `waktu`, `nim`, `statuskehadiran`) VALUES
(1, '2021-12-13', '05:47:00', '1911522020', 'hadir'),
(2, '2021-12-14', '05:53:00', '1911522020', 'hadir'),
(3, '2021-12-15', '05:30:00', '1911522020', 'sakit'),
(4, '2021-12-13', '05:46:00', '1911522028', 'hadir'),
(5, '2021-12-14', '05:51:00', '1911522028', 'hadir'),
(6, '2021-12-15', '05:41:00', '1911522028', 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `izinasrama`
--

CREATE TABLE `izinasrama` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `statuspersetujuan` varchar(20) DEFAULT 'Belum Disetujui'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izinasrama`
--

INSERT INTO `izinasrama` (`id`, `nim`, `tanggal`, `keterangan`, `statuspersetujuan`) VALUES
(3, '1911522020', '2021-12-17', 'Pulang kampung', 'Belum Disetujui'),
(5, '1911522028', '2021-12-14', 'Pulang Kampung', 'Belum Disetujui');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `notelpon` varchar(15) DEFAULT NULL,
  `pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `email`, `notelpon`, `pass`) VALUES
('1911521020', 'Farhan', 'Sistem Informasi', 'han123@gmail', '089552113919', '12345'),
('1911522018', 'Ufa Aurora Guciano', 'Sistem Informasi', 'ufa123@gmail', '084688750889', '12345'),
('1911522020', 'Zakiah', 'Sistem Informasi', 'zakiah123@gmail', '083618621780', '12345'),
('1911522028', 'Ranti Agustin', 'Sistem Informasi', 'ranti123@gmail', '086834539177 ', '12345'),
('2011522022', 'Muhammad Farhan Ananda Mirzah', 'Sistem Informasi', 'farhan.anandamirzah@gmail.com', NULL, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `pembina`
--

CREATE TABLE `pembina` (
  `idpembina` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `notelpon` varchar(15) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembina`
--

INSERT INTO `pembina` (`idpembina`, `email`, `nama`, `notelpon`, `password`) VALUES
('pembina', 'dimas123@gmail.com', 'Dimas Syahputra', '085201881287', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensimalam`
--
ALTER TABLE `absensimalam`
  ADD PRIMARY KEY (`idabsensi`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `absensisubuh`
--
ALTER TABLE `absensisubuh`
  ADD PRIMARY KEY (`idabsensi`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `izinasrama`
--
ALTER TABLE `izinasrama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pembina`
--
ALTER TABLE `pembina`
  ADD PRIMARY KEY (`idpembina`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensimalam`
--
ALTER TABLE `absensimalam`
  MODIFY `idabsensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `absensisubuh`
--
ALTER TABLE `absensisubuh`
  MODIFY `idabsensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `izinasrama`
--
ALTER TABLE `izinasrama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensimalam`
--
ALTER TABLE `absensimalam`
  ADD CONSTRAINT `absensimalam_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `absensisubuh`
--
ALTER TABLE `absensisubuh`
  ADD CONSTRAINT `absensisubuh_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);

--
-- Constraints for table `izinasrama`
--
ALTER TABLE `izinasrama`
  ADD CONSTRAINT `izinasrama_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
