-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 10:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_alatberat`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_sparepart` varchar(20) NOT NULL,
  `nama_sparepart` varchar(20) NOT NULL,
  `spesifikasi` varchar(50) NOT NULL,
  `harga_satuan` varchar(10) NOT NULL,
  `stock` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_sparepart`, `nama_sparepart`, `spesifikasi`, `harga_satuan`, `stock`) VALUES
('HS200355', 'Hose', 'Selang PC5000', '1000000', '5'),
('GS54261', 'Lamp', 'Lampu HD755', '400000', '20'),
('SC5000', 'Shovel', 'Sekop PC5000', '10000000', '3'),
('DT6542', 'Bucket', 'Bucket HD500', '5000000', '5'),
('SD852246', 'Shock', 'Shockbreaker UD truck', '4000000', '30'),
('AD-01', 'ADARO', 'Bpk.Chris', 'Jepara', '0821345698'),
('ADMO01', 'ADARO', 'Bpk.Cris', 'Jepara', '0845987562'),
('ADMO01', 'Adaro', 'Chris Jeon', 'Jepara', '08745641');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id_konsumen` varchar(10) NOT NULL,
  `nama_perusahaan` varchar(20) NOT NULL,
  `nama_pemilik` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id_konsumen`, `nama_perusahaan`, `nama_pemilik`, `alamat`, `telepon`) VALUES
('ADMO01', 'Adaro', 'Chris Jeomg', 'Jepara', '0845632897'),
('ADMO02', 'Adaro', 'Zunaedi', 'Tabalong', '084567546'),
('PMA', 'Pama', 'Indra', 'Jakarta', '0854685'),
('PMA02', 'Pama', 'Febri', 'Banjarmasin', '08645764'),
('SIS02', 'SIS', 'Coki', 'Banjarmasin', '014865685');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_pengiriman`
--

CREATE TABLE `laporan_pengiriman` (
  `tanggal_cetak` varchar(20) NOT NULL,
  `nama_pengawas` varchar(20) NOT NULL,
  `no_unit_pengirim` varchar(20) NOT NULL,
  `tanggal_kirim` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_pengiriman`
--

INSERT INTO `laporan_pengiriman` (`tanggal_cetak`, `nama_pengawas`, `no_unit_pengirim`, `tanggal_kirim`) VALUES
('20/01/2003', 'Budi', 'HK-778', '20/03/2003'),
('20/04/2003', 'Budi', 'HK-778', '20/05/2003'),
('20/04/2003', 'Lutfi', 'AB-210', '20/05/2003'),
('20/08/2003', 'Dani', 'CK-002', '20/10/2003'),
('20/08/2003', 'Dani', 'CK-002', '20/11/2003');

-- --------------------------------------------------------

--
-- Table structure for table `pendataan_penjualan`
--

CREATE TABLE `pendataan_penjualan` (
  `no_kuitansi` varchar(5) NOT NULL,
  `tanggal_penjualan` varchar(20) NOT NULL,
  `id_konsumer` varchar(6) NOT NULL,
  `nama_konsumer` varchar(20) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_sparepart` varchar(20) NOT NULL,
  `spesifikasi` varchar(10) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `stock` varchar(100) NOT NULL,
  `jumlah_jual` varchar(10) NOT NULL,
  `jumlah_harga` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendataan_penjualan`
--

INSERT INTO `pendataan_penjualan` (`no_kuitansi`, `tanggal_penjualan`, `id_konsumer`, `nama_konsumer`, `kode_barang`, `nama_sparepart`, `spesifikasi`, `harga`, `satuan`, `stock`, `jumlah_jual`, `jumlah_harga`) VALUES
('KC/01', '20/08/2002', 'ADMO01', 'Chris Jeomg', 'HS200355', 'Hose', 'Selang PC5', '1000000', 'Kilo', '5', '2', '2000000'),
('KC/02', '20/10/2002', 'ADMO01', 'Chris Jeomg', 'DT6542', 'Bucket', 'Bucket HD5', '5000000', 'Ton', '5', '1', '5000000'),
('KC/03', '8/10/2002', 'PMA02', 'Febri', 'SC5000 ', 'Shovel', 'Sekop PC50', '10000000', 'Ton', '3', '1', '10000000'),
('KC/04', '8/10/2002', 'PMA02', 'Febri', 'SD852246', 'Shock', 'Shockbreak', '4000000', 'Kilo', '30', '5', '20000000'),
('KC/05', '8/10/2002', 'SIS02', 'Febri', 'SD852246', 'Shock', 'Shockbreak', '4000000', 'Kilo', '30', '8', '32000000');

-- --------------------------------------------------------

--
-- Table structure for table `update_stock`
--

CREATE TABLE `update_stock` (
  `no_kuitansi` varchar(20) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `nama_sparepart` varchar(20) NOT NULL,
  `spesifikasi` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `stock` varchar(20) NOT NULL,
  `update` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `update_stock`
--

INSERT INTO `update_stock` (`no_kuitansi`, `tanggal_penjualan`, `kode_barang`, `nama_sparepart`, `spesifikasi`, `harga`, `stock`, `update`) VALUES
('HS/09', '0000-00-00', 'HS875', 'Hose', 'Selang HD75', '2500000', '10', 'Barang Baru'),
('HS/09', '0000-00-00', 'HS875', 'Hose', 'Selang HD40', '2500000', '10', 'Barang Baru'),
('DK/09', '0000-00-00', 'DP', 'Bucket', 'PC8000', '23000000', '50', 'Barang Baru'),
('PK/01', '0000-00-00', 'DP', 'Bucket', 'HB8000', '23000000', '50', 'Barang Baru'),
('PK/01', '0000-00-00', 'DP', 'Bucket', 'HB8000', '23000000', '50', 'Barang Baru');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
