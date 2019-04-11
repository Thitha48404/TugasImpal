-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2019 at 11:35 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga_produk` double NOT NULL,
  `foto_produk` varchar(200) NOT NULL,
  `kategori` enum('fashion','accessories','electronic','hobby') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_produk`, `nama_produk`, `harga_produk`, `foto_produk`, `kategori`) VALUES
(1, 'SAMSUNG FLIP E1195', 300000, 'img/top01.PNG', 'fashion'),
(2, 'DAIYA MOZARELLA CHEESE', 90000, 'img/top02.PNG', 'fashion'),
(3, 'CATTON SCARF HIJAB', 30000, 'img/top03.PNG', 'fashion'),
(4, 'TOASTED NORI', 80000, 'img/top04.PNG', 'fashion'),
(5, 'Tshirt', 150000, 'img/new01.png', 'fashion'),
(6, 'Watch', 800000, 'img/new04.png', 'fashion');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
