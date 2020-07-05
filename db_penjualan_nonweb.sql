-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 01:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan_nonweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT 0,
  `barang_min_stok` int(11) DEFAULT 0,
  `barang_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'ACYCLOVIR 200 MG', 'Biji', 5200, 6250, 6000, 1600, 1, '2020-05-20 17:19:45', NULL, 47, 1),
('BR000002', 'ACYCLOVIR 200 MG DUS 100 TAB', 'Kotak', 475000, 595000, 550000, 180, 1, '2020-05-20 17:20:30', '2020-06-18 15:06:34', 47, 1),
('BR000003', 'ACYCLOVIR 400 MG', 'Biji', 9600, 11100, 10600, 960, 1, '2020-05-20 17:22:19', NULL, 47, 1),
('BR000004', 'ACYCLOVIR 400 MG DUS 100 TAB', 'Kotak', 885000, 955000, 910000, 270, 1, '2020-05-20 17:23:14', '2020-06-20 12:00:26', 47, 1),
('BR000005', 'ALBUFORCE PLUS 60 ML', 'Botol', 78750, 88850, 84600, 451, 1, '2020-05-20 17:24:25', '2020-06-18 16:24:16', 40, 1),
('BR000006', 'ALERGINE 10 MG TABLET SALUT SELAPUT', 'Biji', 17000, 19950, 19200, 580, 1, '2020-05-20 17:25:30', NULL, 47, 1),
('BR000007', 'ALPHAMOL SYR 60 ML MOL', 'Botol', 43000, 45100, 44800, 200, 1, '2020-05-20 17:26:17', '2020-06-18 16:24:26', 40, 1),
('BR000008', 'AMBROXOL HCL 15 MG SYR 60 ML PEHA', 'Botol', 5200, 7250, 7000, 380, 1, '2020-05-20 17:27:43', '2020-06-18 16:24:33', 40, 1),
('BR000009', 'AMBROXOL HCL 30 MG 100 TAB PEHA', 'Biji', 400, 750, 725, 1300, 1, '2020-05-20 17:28:56', '2020-06-20 12:00:16', 47, 1),
('BR000010', 'AMBROXOL SIRUP BTL 60 ML', 'Botol', 55200, 62500, 61500, 165, 1, '2020-05-20 17:30:58', '2020-06-18 16:24:39', 40, 1),
('BR000011', 'AMPICILLIN 125 MG 60 ML PEHA', 'Botol', 4125, 5500, 5150, 290, 1, '2020-05-20 17:31:54', '2020-06-18 16:24:49', 40, 1),
('BR000012', 'ANTIFECT ALCOHOL 100 ML', 'Botol', 7200, 8600, 8200, 190, 1, '2020-05-20 17:32:36', NULL, 40, 1),
('BR000013', 'ANTIFECT POVIDONE IODINE 30 ML', 'Botol', 9200, 11800, 11450, 178, 1, '2020-05-20 17:33:24', NULL, 40, 1),
('BR000014', 'ANTIFECT POVIDONE IODINE 60 ML', 'Botol', 13500, 15300, 15000, 310, 1, '2020-05-20 17:34:36', NULL, 40, 1),
('BR000015', 'ANTIMO DEWASA TAB', 'Biji', 615, 850, 815, 1420, 1, '2020-05-20 17:35:28', NULL, 47, 1),
('BR000016', 'ASERING 500 ML OTSUKA', 'Botol', 67800, 79000, 78600, 730, 1, '2020-05-20 17:36:15', '2020-06-18 16:24:11', 40, 1),
('BR000017', 'ASTAMAX CAP 30 NUF', 'Kotak', 1200, 2100, 2000, 430, 1, '2020-05-20 17:38:07', '2020-06-20 11:59:37', 44, 1),
('BR000018', 'BATUGIN ELIXIR BT 120 ML', 'Botol', 34000, 42500, 42000, 540, 1, '2020-05-20 17:39:25', '2020-06-18 16:27:01', 40, 1),
('BR000019', 'BATUGIN ELIXIR BT 300 ML', 'Botol', 44000, 52500, 52000, 480, 1, '2020-05-21 04:47:46', '2020-06-18 20:22:42', 40, 1),
('BR000020', 'BEAR BRAND GOLD MALT PTH 140 ML', 'Botol', 6500, 7800, 7500, 267, 1, '2020-05-21 04:48:54', '2020-06-18 20:22:58', 40, 1),
('BR000021', 'BEAR BRAND RTD MILK 189 ML', 'Botol', 5500, 6800, 6500, 420, 1, '2020-05-21 04:49:40', '2020-06-20 11:59:21', 43, 1),
('BR000022', 'CAMIVITA SYR 60ML', 'Botol', 4800, 6000, 5750, 140, 1, '2020-05-21 04:50:23', NULL, 40, 1),
('BR000023', 'CENDO EYEFRESH EYE DROP 5 ML', 'Botol', 29200, 32800, 32500, 20, 1, '2020-05-21 04:51:31', NULL, 40, 1),
('BR000024', 'CODITAM TABLET', 'Kotak', 55000, 60000, 59250, 125, 1, '2020-05-21 04:52:59', NULL, 47, 1),
('BR000025', 'DEXTAMINE SYRUP 60 ML', 'Botol', 11000, 12500, 12300, 180, 1, '2020-05-21 04:53:41', NULL, 40, 1),
('BR000026', 'DEXTROESE10 500 ML SATORIA', 'Biji', 28500, 31000, 30500, 80, 1, '2020-05-21 04:54:44', '2020-06-18 20:23:24', 40, 1),
('BR000027', 'DEXTROSE10 INFUS 500 ML WIDATRA', 'Biji', 30200, 32500, 32200, 100, 1, '2020-05-21 04:55:19', '2020-06-18 20:23:42', 40, 1),
('BR000028', 'ENKASARI MOUTHWASH CITRUSMINT 100 ML', 'Botol', 8000, 10000, 9500, 100, 1, '2020-05-21 04:56:22', NULL, 40, 1),
('BR000029', 'ENKASARI MOUTHWASH CITRUSMINT 250 ML', 'Botol', 13000, 15000, 14500, 100, 1, '2020-05-21 04:56:51', NULL, 40, 1),
('BR000030', 'ENKASARI MOUTHWASH FRESHMINT 250 ML', 'Botol', 13000, 15000, 14500, 100, 1, '2020-05-21 04:57:14', NULL, 40, 1),
('BR000031', 'ENKASARI MOUTHWASH PEPERMINT 100 ML', 'Botol', 8000, 10000, 9500, 100, 1, '2020-05-21 04:57:42', NULL, 40, 1),
('BR000032', 'ENKASARI MOUTHWASH PEPERMINT 250 ML', 'Botol', 13000, 15000, 14500, 100, 1, '2020-05-21 04:58:04', NULL, 40, 1),
('BR000033', 'FITOCARE M KAYU PUTIH 30 ML', 'Botol', 3000, 4500, 4200, 70, 1, '2020-05-21 04:58:48', NULL, 40, 1),
('BR000034', 'FITOCARE M KAYU PUTIH 50 ML', 'Botol', 4000, 6500, 6200, 70, 1, '2020-05-21 04:59:15', NULL, 40, 1),
('BR000035', 'FITOCARE M KAYU PUTIH 100 ML', 'Botol', 8000, 10500, 10200, 75, 1, '2020-05-21 04:59:44', NULL, 40, 1),
('BR000036', 'FITOCARE M TELON BAYI 30 ML', 'Botol', 4500, 6000, 5800, 60, 1, '2020-05-21 05:00:30', '2020-06-18 20:24:07', 40, 1),
('BR000037', 'FITOCARE M TELON BAYI 50 ML', 'Botol', 4900, 6000, 5800, 60, 1, '2020-05-21 05:00:57', '2020-06-18 20:24:17', 40, 1),
('BR000038', 'GRATHAZON 1 MG 20 STRIP', 'Biji', 5000, 6500, 6200, 100, 1, '2020-05-21 05:01:52', '2020-06-20 12:02:13', 47, 1),
('BR000039', 'MARCKS TEEN MICELLAR WATER 100', 'Botol', 15000, 17500, 17200, 45, 1, '2020-05-21 05:03:02', NULL, 40, 1),
('BR000040', 'MARCKS TEEN MICELLAR WATER 250', 'Botol', 27500, 29000, 28800, 35, 1, '2020-05-21 05:03:33', NULL, 40, 1),
('BR000041', 'MEDIKA RIVANOL 100 ML', 'Botol', 6200, 8000, 7500, 190, 1, '2020-05-21 05:04:16', NULL, 40, 1),
('BR000042', 'MILO ACTIVGO RTD 240ML', 'Botol', 6700, 8300, 8100, 280, 1, '2020-05-21 05:05:51', NULL, 43, 1),
('BR000043', 'MILO ACTIVGO RTD HICAL 240ML', 'Botol', 8000, 8500, 8200, 280, 1, '2020-05-21 05:06:24', NULL, 43, 1),
('BR000044', 'NATUR E ADVANCE HBL 100 ML', 'Botol', 8000, 10000, 9800, 20, 1, '2020-05-21 05:48:42', NULL, 40, 1),
('BR000045', 'NATUR E ADVANCE HBL 245 ML', 'Botol', 19000, 21000, 20500, 25, 1, '2020-05-21 05:49:11', NULL, 40, 1),
('BR000046', 'NATUR E ADVANCED 32 S', 'Kotak', 4500, 5500, 5400, 80, 1, '2020-05-21 05:50:05', NULL, 44, 1),
('BR000047', 'NATUR E DAILY NOURISHING CALMING 100 ML', 'Botol', 8700, 11000, 10600, 30, 1, '2020-05-21 05:50:52', NULL, 40, 1),
('BR000048', 'NATUR-E ADVAN EYE CREAM 10ML', 'Botol', 35000, 38500, 38200, 40, 1, '2020-05-21 05:52:40', NULL, 40, 1),
('BR000049', 'NATUR-E ADVAN SKIN BALANCER', 'Botol', 26000, 28800, 28500, 23, 1, '2020-05-21 05:53:55', NULL, 40, 1),
('BR000050', 'NESCAFE CAN MOCHA 240ML', 'Botol', 6000, 7000, 6800, 50, 1, '2020-05-21 05:54:33', NULL, 43, 1),
('BR000051', 'NESCAFE LATTE CAN 240ML', 'Botol', 6000, 7000, 6800, 50, 1, '2020-05-21 05:55:05', NULL, 43, 1),
('BR000052', 'NESCAFE ORIGINAL CAN 240ML', 'Botol', 6000, 7000, 6800, 50, 1, '2020-05-21 05:55:42', NULL, 43, 1),
('BR000053', 'NITROKAF RETARD F KAPSUL 100', 'Kotak', 16000, 19500, 19200, 70, 1, '2020-05-21 05:57:34', '2020-06-20 11:59:58', 44, 1),
('BR000054', 'ORACEF 100 MG KAPSUL', 'Biji', 2200, 2800, 2500, 980, 1, '2020-05-21 05:58:27', NULL, 44, 1),
('BR000055', 'PARACETAMOL SIRUP 60 ML', 'Botol', 9000, 11500, 11200, 280, 1, '2020-05-21 05:59:03', '2020-06-20 11:58:39', 40, 1),
('BR000056', 'PREGABALINE 75 MG', 'Biji', 12000, 13500, 13200, 1400, 1, '2020-05-21 05:59:59', NULL, 44, 1),
('BR000057', 'PREGABALINE 150 MG', 'Biji', 20000, 22500, 22200, 680, 1, '2020-05-21 06:00:26', NULL, 44, 1),
('BR000058', 'RETINOL VIT A 100.000 BTL 50 KAPS', 'Botol', 17000, 19500, 19200, 40, 1, '2020-05-21 06:02:04', '2020-06-20 12:00:43', 44, 1),
('BR000059', 'RETINOL VIT A 200.000 UI BTL 50 KAPS', 'Botol', 22500, 25000, 24500, 70, 1, '2020-05-21 06:03:11', '2020-06-20 12:00:59', 44, 1),
('BR000060', 'SALICYL KF LOTION 60 ML', 'Botol', 7500, 9000, 8800, 100, 1, '2020-05-21 06:14:10', NULL, 40, 1),
('BR000061', 'TABLET TAMBAH DARAH PEHA', 'Biji', 750, 950, 900, 1120, 1, '2020-05-21 06:15:31', '2020-06-20 12:01:32', 47, 1),
('BR000062', 'VENUS BODY MILK 100 ML BENGKOANG', 'Botol', 7500, 8500, 8400, 80, 1, '2020-05-21 06:18:06', '2020-06-20 11:58:55', 40, 1),
('BR000063', 'VENUS BODY MILK 100 ML GREEN TEA', 'Botol', 7500, 8500, 8400, 80, 1, '2020-05-21 06:18:39', '2020-06-20 11:58:26', 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `beli_barang_id` varchar(15) NOT NULL,
  `beli_qty` double NOT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_barang_id`, `beli_qty`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('BELISORE2', '2020-07-05 10:28:30', 'BR000002', 10, 11, 3, 'BL000002'),
('BELISORE3', '2020-07-05 10:33:17', 'BR000001', 10, 17, 1, 'BL000003'),
('BELISORE4', '2020-07-05 10:38:17', 'BR000002', 10, 7, 1, 'BL000004');

--
-- Triggers `tbl_beli`
--
DELIMITER $$
CREATE TRIGGER `trigger_detail_pembelian` BEFORE INSERT ON `tbl_beli` FOR EACH ROW BEGIN
INSERT INTO tbl_detail_beli
(d_beli_nofak,d_beli_suplier,d_beli_barang_id,d_beli_nama_barang,d_beli_harga,d_beli_jumlah,d_beli_total,d_beli_kode,d_beli_penerima)
VALUES(
NEW.beli_nofak,
(SELECT suplier_nama FROM tbl_suplier WHERE suplier_id = NEW.beli_suplier_id),
NEW.beli_barang_id,
(SELECT barang_nama FROM tbl_barang WHERE barang_id = NEW.beli_barang_id),
(SELECT barang_harpok FROM tbl_barang WHERE barang_id = NEW.beli_barang_id),
NEW.beli_qty,
NEW.beli_qty*d_beli_harga,
NEW.beli_kode,
(SELECT user_nama FROM tbl_user WHERE user_id = NEW.beli_user_id));
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_stok_beli` BEFORE INSERT ON `tbl_beli` FOR EACH ROW BEGIN
UPDATE tbl_barang
SET barang_stok = barang_stok+NEW.beli_qty
WHERE barang_id = NEW.beli_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_suplier` varchar(40) NOT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_nama_barang` varchar(150) NOT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL,
  `d_beli_penerima` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_suplier`, `d_beli_barang_id`, `d_beli_nama_barang`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`, `d_beli_penerima`) VALUES
(6, 'BELISORE4', 'MOLEX AYUS, PT', 'BR000002', 'ACYCLOVIR 200 MG DUS 100 TAB', 475000, 10, 4750000, 'BL000004', 'WD Ananda'),
(7, 'BELISOREE', 'BINTANG TOEDJOE', 'BR000001', 'ACYCLOVIR 200 MG', 5200, 10, 52000, 'BL0000010', 'Akhmad Mukhibuddin Harvinanda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(1234569, 'JUALSORE', 'BR000008', 'AMBROXOL HCL 15 MG SYR 60 ML PEHA', 'Botol', 5200, 7250, 10, 0, 72500),
(1234572, 'JUALSORE2', 'BR000001', 'ACYCLOVIR 200 MG', 'Biji', 5200, 6250, 10, 0, 62500),
(1234573, 'JUALSORE3', 'BR000001', 'ACYCLOVIR 200 MG', 'Biji', 5200, 6250, 10, 0, 62500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `jual_barang_id` varchar(15) DEFAULT NULL,
  `jual_qty` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_barang_id`, `jual_qty`, `jual_user_id`, `jual_keterangan`) VALUES
('JUALSORE', '2020-07-05 09:21:50', 'BR000008', 10, 3, 'eceran'),
('JUALSORE2', '2020-07-05 09:58:45', 'BR000001', 10, 4, 'eceran'),
('JUALSORE3', '2020-07-05 10:44:00', 'BR000001', 10, 3, 'eceran');

--
-- Triggers `tbl_jual`
--
DELIMITER $$
CREATE TRIGGER `trigger_detail_penjualan` BEFORE INSERT ON `tbl_jual` FOR EACH ROW BEGIN
INSERT INTO tbl_detail_jual (
d_jual_nofak,
d_jual_barang_id,
d_jual_barang_nama,
d_jual_barang_satuan,
d_jual_barang_harpok,
d_jual_barang_harjul,
d_jual_qty,
d_jual_diskon,
d_jual_total)
VALUES (
NEW.jual_nofak,
NEW.jual_barang_id,
(SELECT barang_nama FROM tbl_barang WHERE barang_id = NEW.jual_barang_id),
(SELECT barang_satuan FROM tbl_barang WHERE barang_id = NEW.jual_barang_id),
(SELECT barang_harpok FROM tbl_barang WHERE barang_id = NEW.jual_barang_id),
(SELECT barang_harjul FROM tbl_barang WHERE barang_id = NEW.jual_barang_id),
NEW.jual_qty,
0,
NEW.jual_qty*d_jual_barang_harjul);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_stok_jual` AFTER INSERT ON `tbl_jual` FOR EACH ROW BEGIN
UPDATE tbl_barang
SET barang_stok = barang_stok-NEW.jual_qty
WHERE barang_id = NEW.jual_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(40, 'BT'),
(41, 'CTR'),
(42, 'JRG'),
(43, 'KLG'),
(44, 'KPS'),
(45, 'STR'),
(46, 'SUP'),
(47, 'TAB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur`
--

INSERT INTO `tbl_retur` (`retur_id`, `retur_tanggal`, `retur_barang_id`, `retur_qty`, `retur_keterangan`) VALUES
(6, '2020-07-05 11:21:16', 'BR000004', 10, 'Kemasan rusak'),
(7, '2020-07-05 11:21:16', 'BR000017', 8, 'Sudah kadaluarsa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(1, 'PHAPROS, PT', 'Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '(021) 5762709'),
(2, 'KIMIA FARMA', 'Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', '(021) 5712888'),
(3, 'NUFARINDO, PT', 'Kota Bandung, Jawa Barat', ' (022) 6001388'),
(4, 'DARYA VARIA, PT', 'Jl. Mercedes Benz Desa No.105, Bogor, Jawa Barat 16964', '(021) 8671038'),
(5, 'SATYA ABADI PHARMA, PT', 'Kota Tangerang Selatan, Banten', '(021) 7451965'),
(6, 'HARSEN LABORATORIES, PT', 'Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13750', '(021) 8404433'),
(7, 'MOLEX AYUS, PT', 'Kec. Cikupa, Tangerang, Banten 15710', '(021) 5960312'),
(8, 'LUCAS DJAJA', 'Jl. Margacinta No.100, Kec. Buahbatu, Kota Bandung, Jawa Bar', '(022) 7564032'),
(9, 'OTSUKA, PT', 'Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12310', '(021) 87783145'),
(10, 'GRAHA FARMA, PT', 'Kota Tangerang Selatan, Banten 15413', '(0266) 214192'),
(11, 'BIO AXION HEALTHINDO, PT', 'South Gandaria, Cilandak, South Jakarta City, Jakarta 12420', '(021) 7668096'),
(12, 'NESTLE INDONESIA, PT', 'Kawasan Industri Surya Cipta, Kabupaten Karawang, Jawa Barat', '(0267) 8630353'),
(13, 'BINTANG TOEDJOE', 'Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13210', '(021) 4757777'),
(14, 'CENDO, PT', 'Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12980', '(021) 8354050'),
(15, 'SATORIA ANEKA INDUSTRI, PT', 'Kec. Wonorejo, Pasuruan, Jawa Timur 67173', '(0343) 6752123'),
(16, 'WIDATRA BHAKTI, PT', 'Menteng, Central Jakarta City, Jakarta 10330', '(021) 3911775'),
(17, 'KASA HUSADA WIRA JATIM, PT', 'Kec. Pabean Cantian, Kota SBY, Jawa Timur 60163', '(031) 3526051'),
(18, 'LIQUID PHARMALAB, CV', 'Cinambo, Kota Bandung, Jawa Barat 40293', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'WD Ananda', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'Akhmad Mukhibuddin Harvinanda', 'kasir1', '29c748d4d8f4bd5cbc0f3f60cb7ed3d0', '2', '0'),
(3, 'Cholilur Rohman Maulana Sindrianto', 'kasir2', '8c86013d8ba23d9b5ade4d6463f81c45', '2', '1'),
(4, 'Mia Desi Dennisa', 'kasir', 'c7911af3adbd12a035b289556d96470a', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indexes for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `tbl_beli_ibfk_3` (`beli_barang_id`);

--
-- Indexes for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`),
  ADD KEY `jual_barang_id` (`jual_barang_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`),
  ADD KEY `retur_barang_id` (`retur_barang_id`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234574;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_3` FOREIGN KEY (`beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`);

--
-- Constraints for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_jual_ibfk_2` FOREIGN KEY (`jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`);

--
-- Constraints for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD CONSTRAINT `tbl_retur_ibfk_1` FOREIGN KEY (`retur_barang_id`) REFERENCES `tbl_barang` (`barang_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
