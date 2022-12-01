-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 05:27 AM
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
(1, '2022-12-01', '20:31:00', '2011521008', 'hadir'),
(2, '2022-12-01', '20:39:00', '2011522020', 'hadir'),
(3, '2022-12-02', '20:45:00', '2011521008', 'izin'),
(4, '2022-12-02', '20:53:00', '2011522020', 'sakit');

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
(1, '2022-12-01', '05:33:00', '2011521008', 'hadir'),
(2, '2022-12-01', '05:39:00', '2011522020', 'hadir'),
(3, '2022-12-02', '05:36:00', '2011521008', 'hadir'),
(4, '2022-12-02', '05:44:00', '2011522020', 'hadir');

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
(1, '2011521008', '2022-12-02', 'Pulang Kampung', 'Belum Disetujui'),
(2, '2011522020', '2022-12-02', 'Demam', 'Belum Disetujui');

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
('2011521008', 'Desrilia Putri Utami', 'Sistem Informasi', 'desrilia008@gmail', '081364090730', '008'),
('2011522020', 'Muhammad Zaim Milzam', 'Sistem Informasi', 'zaim020@gmail', '081275143525', '020'),
('2011522022', 'Muhammad Farhan Ananda Mirzah', 'Sistem Informasi', 'farhan.anandamirzah@gmail.com', '082287221780', '022');

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
('pembina', 'farhan.anandamirzah@gmail.com', 'Farhan (Pembina)', '082287221780', '123');

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
  MODIFY `idabsensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `absensisubuh`
--
ALTER TABLE `absensisubuh`
  MODIFY `idabsensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `izinasrama`
--
ALTER TABLE `izinasrama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
