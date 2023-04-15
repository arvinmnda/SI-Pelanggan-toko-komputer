-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 03:47 AM
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
-- Database: `si-pelanggan-toko_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `Kode_Barang` int(7) NOT NULL,
  `ID_Distributor` int(7) NOT NULL,
  `Nama_Barang` varchar(30) NOT NULL,
  `Deskripsi_Barang` varchar(20) NOT NULL,
  `Harga_Barang` int(11) NOT NULL,
  `Stok_Barang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_poin`
--

CREATE TABLE `tb_data_poin` (
  `Kode_Poin` int(7) NOT NULL,
  `Jumlah_Poin` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_distributor`
--

CREATE TABLE `tb_distributor` (
  `ID_Distributor` int(7) NOT NULL,
  `Nama_Distributor` varchar(30) NOT NULL,
  `Alamat_Distributor` varchar(20) NOT NULL,
  `No_Telepon_Distributor` int(16) NOT NULL,
  `Email_Distributor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_transaksi`
--

CREATE TABLE `tb_jenis_transaksi` (
  `Kode_Jenis_Transaksi` int(7) NOT NULL,
  `Nama_Jenis_Transaksi` varchar(20) NOT NULL,
  `ID_Konsumen` int(7) NOT NULL,
  `ID_Pelanggan` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `ID_Konsumen` int(7) NOT NULL,
  `Nama_Konsumen` varchar(30) NOT NULL,
  `Alamat_Konsumen` varchar(20) NOT NULL,
  `No_Telepon` varchar(16) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `ID_Saran_dan_Kritik` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai_dan_pengguna`
--

CREATE TABLE `tb_pegawai_dan_pengguna` (
  `ID_Pegawai` int(7) NOT NULL,
  `Nama_Pengguna` varchar(30) NOT NULL,
  `Email_Pengguna` varchar(40) NOT NULL,
  `Kata_Sandi_Pengguna` varchar(20) NOT NULL,
  `Jabatan_Pegawai` int(20) NOT NULL,
  `No_telepon_Pegawai` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `ID_Pelanggan` int(7) NOT NULL,
  `Nama_Pelanggan` int(30) NOT NULL,
  `Alamat_Pelanggan` int(20) NOT NULL,
  `No_Telepon` int(16) NOT NULL,
  `Email` int(40) NOT NULL,
  `ID_Saran_dan_Kritik` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penukaran_poin`
--

CREATE TABLE `tb_penukaran_poin` (
  `ID_Transaksi_Penukaran_Poin` int(7) NOT NULL,
  `Tanggal_Transaksi_Penukaran_Poin` date NOT NULL,
  `Kode_Poin` int(20) NOT NULL,
  `Jumlah_Poin_yang_Ditukarkan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_transaksi_konsumen`
--

CREATE TABLE `tb_riwayat_transaksi_konsumen` (
  `ID_Transaksi` int(7) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  `Kode_Jenis_Transaksi` int(7) NOT NULL,
  `Kode_Barang` int(7) NOT NULL,
  `Jumlah_Barang` int(50) NOT NULL,
  `Harga_Satuan_Barang` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Nama_barang` varchar(30) NOT NULL,
  `ID_Transaksi_Penukaran_Poin` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat_transaksi_pelanggan`
--

CREATE TABLE `tb_riwayat_transaksi_pelanggan` (
  `ID_Transaksi` int(7) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  `Kode_Jenis_Transaksi` int(7) NOT NULL,
  `Kode_Barang` int(7) NOT NULL,
  `Jumlah_Barang` int(50) NOT NULL,
  `Harga_Satuan_Barang` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Nama_barang` varchar(30) NOT NULL,
  `ID_Transaksi_Penukaran_Poin` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_saran_dan_kritik`
--

CREATE TABLE `tb_saran_dan_kritik` (
  `ID_Saran_dan_Kritik` int(7) NOT NULL,
  `Nama_Pengguna` varchar(30) NOT NULL,
  `Tanggal_Pengirimian_Saran_dan_Kritik` date NOT NULL,
  `Isi_Saran_dan_Kritik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_penjualan`
--

CREATE TABLE `tb_transaksi_penjualan` (
  `ID_Transaksi` int(7) NOT NULL,
  `Tanggal_Transaksi` date NOT NULL,
  `Kode_Barang` int(7) NOT NULL,
  `Jumlah_Barang` int(50) NOT NULL,
  `Harga_Satuan_Barang` int(11) NOT NULL,
  `Total_Harga` int(11) NOT NULL,
  `Kode_Jenis_Transaksi` int(7) NOT NULL,
  `Nama_barang` varchar(30) NOT NULL,
  `ID_Pegawai` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`Kode_Barang`),
  ADD KEY `ID_Distributor` (`ID_Distributor`);

--
-- Indexes for table `tb_data_poin`
--
ALTER TABLE `tb_data_poin`
  ADD PRIMARY KEY (`Kode_Poin`);

--
-- Indexes for table `tb_distributor`
--
ALTER TABLE `tb_distributor`
  ADD PRIMARY KEY (`ID_Distributor`);

--
-- Indexes for table `tb_jenis_transaksi`
--
ALTER TABLE `tb_jenis_transaksi`
  ADD PRIMARY KEY (`Kode_Jenis_Transaksi`),
  ADD KEY `ID_Konsumen` (`ID_Konsumen`),
  ADD KEY `ID_Pelanggan` (`ID_Pelanggan`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`ID_Konsumen`),
  ADD KEY `ID_Saran_dan_Kritik` (`ID_Saran_dan_Kritik`);

--
-- Indexes for table `tb_pegawai_dan_pengguna`
--
ALTER TABLE `tb_pegawai_dan_pengguna`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`),
  ADD KEY `ID_Saran_dan_Kritik` (`ID_Saran_dan_Kritik`);

--
-- Indexes for table `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD PRIMARY KEY (`ID_Transaksi_Penukaran_Poin`),
  ADD KEY `Kode_Poin` (`Kode_Poin`);

--
-- Indexes for table `tb_riwayat_transaksi_konsumen`
--
ALTER TABLE `tb_riwayat_transaksi_konsumen`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `Kode_Jenis_Transaksi` (`Kode_Jenis_Transaksi`),
  ADD KEY `ID_Transaksi_Penukaran_Poin` (`ID_Transaksi_Penukaran_Poin`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indexes for table `tb_riwayat_transaksi_pelanggan`
--
ALTER TABLE `tb_riwayat_transaksi_pelanggan`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `Kode_Jenis_Transaksi` (`Kode_Jenis_Transaksi`),
  ADD KEY `tb_riwayat_transaksi_pelanggan_ibfk_3` (`ID_Transaksi_Penukaran_Poin`),
  ADD KEY `Kode_Barang` (`Kode_Barang`);

--
-- Indexes for table `tb_saran_dan_kritik`
--
ALTER TABLE `tb_saran_dan_kritik`
  ADD PRIMARY KEY (`ID_Saran_dan_Kritik`);

--
-- Indexes for table `tb_transaksi_penjualan`
--
ALTER TABLE `tb_transaksi_penjualan`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `Kode_Barang` (`Kode_Barang`),
  ADD KEY `Kode_Jenis_Transaksi` (`Kode_Jenis_Transaksi`),
  ADD KEY `ID_Pegawai` (`ID_Pegawai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD CONSTRAINT `tb_barang_ibfk_1` FOREIGN KEY (`ID_Distributor`) REFERENCES `tb_distributor` (`ID_Distributor`);

--
-- Constraints for table `tb_jenis_transaksi`
--
ALTER TABLE `tb_jenis_transaksi`
  ADD CONSTRAINT `tb_jenis_transaksi_ibfk_1` FOREIGN KEY (`ID_Konsumen`) REFERENCES `tb_konsumen` (`ID_Konsumen`),
  ADD CONSTRAINT `tb_jenis_transaksi_ibfk_2` FOREIGN KEY (`ID_Pelanggan`) REFERENCES `tb_pelanggan` (`ID_Pelanggan`);

--
-- Constraints for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD CONSTRAINT `tb_konsumen_ibfk_1` FOREIGN KEY (`ID_Saran_dan_Kritik`) REFERENCES `tb_saran_dan_kritik` (`ID_Saran_dan_Kritik`);

--
-- Constraints for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD CONSTRAINT `tb_pelanggan_ibfk_1` FOREIGN KEY (`ID_Saran_dan_Kritik`) REFERENCES `tb_saran_dan_kritik` (`ID_Saran_dan_Kritik`);

--
-- Constraints for table `tb_penukaran_poin`
--
ALTER TABLE `tb_penukaran_poin`
  ADD CONSTRAINT `tb_penukaran_poin_ibfk_3` FOREIGN KEY (`Kode_Poin`) REFERENCES `tb_data_poin` (`Kode_Poin`);

--
-- Constraints for table `tb_riwayat_transaksi_konsumen`
--
ALTER TABLE `tb_riwayat_transaksi_konsumen`
  ADD CONSTRAINT `tb_riwayat_transaksi_konsumen_ibfk_2` FOREIGN KEY (`Kode_Jenis_Transaksi`) REFERENCES `tb_jenis_transaksi` (`Kode_Jenis_Transaksi`),
  ADD CONSTRAINT `tb_riwayat_transaksi_konsumen_ibfk_3` FOREIGN KEY (`ID_Transaksi_Penukaran_Poin`) REFERENCES `tb_penukaran_poin` (`ID_Transaksi_Penukaran_Poin`),
  ADD CONSTRAINT `tb_riwayat_transaksi_konsumen_ibfk_4` FOREIGN KEY (`Kode_Barang`) REFERENCES `tb_barang` (`Kode_Barang`);

--
-- Constraints for table `tb_riwayat_transaksi_pelanggan`
--
ALTER TABLE `tb_riwayat_transaksi_pelanggan`
  ADD CONSTRAINT `tb_riwayat_transaksi_pelanggan_ibfk_2` FOREIGN KEY (`Kode_Jenis_Transaksi`) REFERENCES `tb_jenis_transaksi` (`Kode_Jenis_Transaksi`),
  ADD CONSTRAINT `tb_riwayat_transaksi_pelanggan_ibfk_3` FOREIGN KEY (`ID_Transaksi_Penukaran_Poin`) REFERENCES `tb_penukaran_poin` (`ID_Transaksi_Penukaran_Poin`),
  ADD CONSTRAINT `tb_riwayat_transaksi_pelanggan_ibfk_4` FOREIGN KEY (`Kode_Barang`) REFERENCES `tb_barang` (`Kode_Barang`);

--
-- Constraints for table `tb_transaksi_penjualan`
--
ALTER TABLE `tb_transaksi_penjualan`
  ADD CONSTRAINT `tb_transaksi_penjualan_ibfk_3` FOREIGN KEY (`Kode_Barang`) REFERENCES `tb_barang` (`Kode_Barang`),
  ADD CONSTRAINT `tb_transaksi_penjualan_ibfk_5` FOREIGN KEY (`Kode_Jenis_Transaksi`) REFERENCES `tb_jenis_transaksi` (`Kode_Jenis_Transaksi`),
  ADD CONSTRAINT `tb_transaksi_penjualan_ibfk_6` FOREIGN KEY (`ID_Pegawai`) REFERENCES `tb_pegawai_dan_pengguna` (`ID_Pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
