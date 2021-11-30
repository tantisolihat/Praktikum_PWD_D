-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2021 at 03:17 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `nim` varchar(5) NOT NULL,
  `kodeMK` varchar(5) NOT NULL,
  `nilai` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`nim`, `kodeMK`, `nilai`) VALUES
('MHS01', '1', 'A'),
('MHS02', '2', 'B'),
('MHS03', '3', 'B+'),
('MHS04', '4', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tgllhr` date DEFAULT NULL,
  `asal_sekolah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`, `asal_sekolah`) VALUES
('MHS01', 'Siti Aminah', 'P', 'SOLO', '1995-10-01', 'SMA NEGERI 7'),
('MHS02', 'Rita', 'P', 'SOLO', '1999-01-01', 'SMA NEGERI 8'),
('MHS03', 'Amirudin', 'L', 'SEMARANG', '1998-08-11', 'SMA NEGERI 9'),
('MHS04', 'Siti Maryam', 'P', 'JAKARTA', '1995-04-15', 'SMA NEGERI 10');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(50) NOT NULL,
  `sem` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `nama`, `sks`, `sem`) VALUES
('1', 'Data Mining', 3, 7),
('2', 'Web Dinamis', 3, 7),
('3', 'Metopen', 4, 0),
('4', 'Grafika Terapan', 3, 7),
('5', 'Logika', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama_lengkap`, `email`, `level`) VALUES
('kevin', '827ccb0eea8a706c4c34a16891f84e7b', 'kevin dwiki hermawan', 'kevin1800018031@webmail.uad.ac.id', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD UNIQUE KEY `nim` (`nim`),
  ADD UNIQUE KEY `kodeMK` (`kodeMK`),
  ADD KEY `kodeMK_2` (`kodeMK`),
  ADD KEY `nim_2` (`nim`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `khs`
--
ALTER TABLE `khs`
  ADD CONSTRAINT `khs_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `khs_ibfk_2` FOREIGN KEY (`kodeMK`) REFERENCES `matakuliah` (`kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
