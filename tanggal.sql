-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 09:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tanggal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brg`
--

CREATE TABLE `tbl_brg` (
  `kode_brg` int(50) NOT NULL,
  `nama_brg` varchar(20) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jumlah` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_brg`
--

INSERT INTO `tbl_brg` (`kode_brg`, `nama_brg`, `tgl_masuk`, `jumlah`) VALUES
(123, 'komputer', '2021-05-01', 10),
(202, 'Laptop', '2021-05-01', 1),
(1010, 'TV', '2021-05-02', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brg`
--
ALTER TABLE `tbl_brg`
  ADD PRIMARY KEY (`kode_brg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brg`
--
ALTER TABLE `tbl_brg`
  MODIFY `kode_brg` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
