-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2021 at 05:11 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hajaraswad_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `jenis_kelamin`, `email`, `password`) VALUES
(1, 'Densu', 'Laki-Laki', 'denisoemarno@gmail.com', 'Mjtqs@123'),
(2, 'Aji', 'Laki-Laki', 'aji@gmail.com', 'Mjtqs@123'),
(4, 'kiki', 'Laki-Laki', 'nmr@gmail.com', 'Mjtqs@123');

-- --------------------------------------------------------

--
-- Table structure for table `atasan`
--

CREATE TABLE `atasan` (
  `id` int(11) NOT NULL,
  `nama_atasan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `noHp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atasan`
--

INSERT INTO `atasan` (`id`, `nama_atasan`, `jenis_kelamin`, `noHp`, `email`, `password`) VALUES
(1, 'AJI', 'Laki-Laki', '081xxx', 'ajiajah@gmail.com', 'Mjtqs@123'),
(2, 'Deni', 'Laki-Laki', '0896XXX', 'deni@gmail.com', 'Mjtqs@123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_cust` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `longtitude` double NOT NULL,
  `latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_cust`, `alamat`, `longtitude`, `latitude`) VALUES
(1, 'PT SUBARU BERKEMBANG', 'Grogol Jakarta Barat', -6.170528681437987, 106.78973675873998),
(2, 'Mall Pondok Indah', 'Pondok Indah Jakarta Selatan', -6.265302470898986, 106.78437118238253),
(3, 'PT Andara', 'Andara Raya Jagakarsa', -6.321396964830308, 106.80309642602941),
(5, 'PT KIKI', 'Sawangan', -6.408303826849554, 106.77651234005492),
(6, 'PT Sony', 'Sawangan', -6.408303826849554, 106.77651234005492);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `nama_driver` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `noHp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `nama_driver`, `jenis_kelamin`, `noHp`, `email`, `password`) VALUES
(3, 'Denu', 'Laki-Laki', '0812XXXX', 'denisoemarno@gmail.com', 'Mjtqs@123'),
(5, 'Sony', 'laki-laki', '0813xxxx', 'sony@gmail.com', 'Mjtqs@123');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atasan`
--
ALTER TABLE `atasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `atasan`
--
ALTER TABLE `atasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
