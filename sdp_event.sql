-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2016 at 07:31 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdp_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE IF NOT EXISTS `acara` (
  `IDACARA` varchar(15) NOT NULL,
  `IDPAKETSTANDAR` varchar(10) DEFAULT NULL,
  `IDCUSTOMPAKET` varchar(10) DEFAULT NULL,
  `NAMAACARA` varchar(200) DEFAULT NULL,
  `JENISACARA` varchar(200) DEFAULT NULL,
  `KETACARA` text,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`IDACARA`, `IDPAKETSTANDAR`, `IDCUSTOMPAKET`, `NAMAACARA`, `JENISACARA`, `KETACARA`, `start_date`, `end_date`) VALUES
('AC001', 'S001', NULL, 'meeting humu', 'meeting', NULL, '2016-06-14', '2016-06-15'),
('AC002', 'S003', NULL, 'pernikahan u and me', 'weeding', NULL, '2016-06-18', '2016-06-19'),
('AC003', 'S001', NULL, 'mari pesta', 'ballroom', NULL, '2016-06-22', '2016-06-23'),
('AC005\n', 'S001', NULL, 'wedding widi', NULL, NULL, '2016-06-19', '2016-06-19'),
('AD004\n', 'S001', NULL, 'pernikahan', NULL, NULL, '2016-06-16', '2016-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `acara_ruangan`
--

CREATE TABLE IF NOT EXISTS `acara_ruangan` (
  `IDACARA` varchar(15) NOT NULL,
  `IDRUANGAN` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `KDBARANG` varchar(10) NOT NULL,
  `KDLAPORANBARANG` varchar(10) DEFAULT NULL,
  `KDKATEGORI` varchar(10) NOT NULL,
  `NAMABARANG` varchar(200) DEFAULT NULL,
  `JUMLAHBARANG` int(11) DEFAULT NULL,
  `BARANGDIGUNAKAN` decimal(8,0) DEFAULT NULL,
  `BARANGTERSEDIA` decimal(8,0) DEFAULT NULL,
  `KADALUARSA` date DEFAULT NULL,
  `MINIMALBARANG` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `barang_purchase`
--

CREATE TABLE IF NOT EXISTS `barang_purchase` (
  `KDBELIINVENT` varchar(6) NOT NULL,
  `KDBARANG` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `IDCUSTOMER` varchar(5) NOT NULL,
  `IDHPAKETSPA` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `NAMACUSTOMER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dabsen`
--

CREATE TABLE IF NOT EXISTS `dabsen` (
  `KODEABSENSI` varchar(6) NOT NULL,
  `NIKKARYAWAN` varchar(6) NOT NULL,
  `JAMMASUKABSENKARYAWAN` datetime NOT NULL,
  `JAMKELUARABSENKARYAWAN` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dbarang`
--

CREATE TABLE IF NOT EXISTS `dbarang` (
  `KDBARANG` varchar(10) NOT NULL,
  `IDGUDANG` varchar(10) NOT NULL,
  `STOK` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE IF NOT EXISTS `departemen` (
  `IDDEPARTMEN` varchar(6) NOT NULL,
  `IDRUANGAN` varchar(15) DEFAULT NULL,
  `NAMADEPARTMEN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dgaji`
--

CREATE TABLE IF NOT EXISTS `dgaji` (
  `KODEGAJI` varchar(6) NOT NULL,
  `TUNJANGAN1` decimal(20,0) NOT NULL,
  `TUNJANGAN2` decimal(20,0) NOT NULL,
  `UPAHLEMBUR` decimal(20,0) NOT NULL,
  `JUMHADIR` decimal(3,0) NOT NULL,
  `SUBTOTAL` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dkamar`
--

CREATE TABLE IF NOT EXISTS `dkamar` (
  `NOTA_KAMAR` varchar(12) NOT NULL,
  `NO_KAMAR` varchar(5) NOT NULL,
  `SUBTOTAL_KAMAR` decimal(14,0) NOT NULL,
  `DURASI` decimal(2,0) NOT NULL,
  `KETERANGAN_DETAIL` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmakanan`
--

CREATE TABLE IF NOT EXISTS `dmakanan` (
  `NOTAMAKANAN` varchar(14) NOT NULL,
  `NOPESANAN` varchar(5) NOT NULL,
  `SUBTOTALMAKANAN` int(11) DEFAULT NULL,
  `JUMLAHMAKANAN` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmembergym`
--

CREATE TABLE IF NOT EXISTS `dmembergym` (
  `IDCUSTOMER` varchar(5) NOT NULL,
  `KODEPAKETGYM` varchar(6) NOT NULL,
  `TGLAWALPAKET` datetime DEFAULT NULL,
  `DURASIPAKETMEMBER` decimal(8,0) DEFAULT NULL,
  `TGLAKHIRPAKET` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dnotaacara`
--

CREATE TABLE IF NOT EXISTS `dnotaacara` (
  `IDCUSTOMPAKET` varchar(10) DEFAULT NULL,
  `IDNOTAACARA` varchar(15) NOT NULL,
  `IDPAKETSTANDAR` varchar(10) DEFAULT NULL,
  `SUBTOTAL_NOTA_BESAR3` decimal(14,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dpaket`
--

CREATE TABLE IF NOT EXISTS `dpaket` (
  `IDHPAKETSPA` varchar(15) NOT NULL,
  `IDDPAKETSPA` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dperlengkapan`
--

CREATE TABLE IF NOT EXISTS `dperlengkapan` (
  `NOTA_PERKAP` varchar(12) NOT NULL,
  `IDMOBIL` varchar(5) NOT NULL,
  `JUMLAHMOBIL` int(11) DEFAULT NULL,
  `SUBTOTALMOBIL` decimal(14,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dtransgym`
--

CREATE TABLE IF NOT EXISTS `dtransgym` (
  `NOTA_FASILITAS` varchar(12) NOT NULL,
  `KODEPAKETGYM` varchar(6) NOT NULL,
  `SUBTOTALGYM` decimal(8,0) DEFAULT NULL,
  `DISKONGYM` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gudang`
--

CREATE TABLE IF NOT EXISTS `gudang` (
  `IDGUDANG` varchar(10) NOT NULL,
  `IDDEPARTMEN` varchar(6) DEFAULT NULL,
  `LOKASIGUDANG` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `habsen`
--

CREATE TABLE IF NOT EXISTS `habsen` (
  `KODEABSENSI` varchar(6) NOT NULL,
  `TANGGALABSENSI` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hfasilitas`
--

CREATE TABLE IF NOT EXISTS `hfasilitas` (
  `NOTA_FASILITAS` varchar(12) NOT NULL,
  `NO_NOTA` varchar(12) DEFAULT NULL,
  `TOTAL_FASILITAS` decimal(14,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hgaji`
--

CREATE TABLE IF NOT EXISTS `hgaji` (
  `KODEGAJI` varchar(6) NOT NULL,
  `NIKKARYAWAN` varchar(6) DEFAULT NULL,
  `PERIODE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `historylogin`
--

CREATE TABLE IF NOT EXISTS `historylogin` (
  `IDCUSTOMER` varchar(5) NOT NULL,
  `LOKER` varchar(4) DEFAULT NULL,
  `JAMMASUKABSEN` char(10) DEFAULT NULL,
  `JAMKELUARABSEN` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hkamar`
--

CREATE TABLE IF NOT EXISTS `hkamar` (
  `NOTA_KAMAR` varchar(12) NOT NULL,
  `NO_NOTA` varchar(12) DEFAULT NULL,
  `TOTAL_KAMAR` decimal(14,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hmakanan`
--

CREATE TABLE IF NOT EXISTS `hmakanan` (
  `NOTAMAKANAN` varchar(14) NOT NULL,
  `NO_NOTA` varchar(12) DEFAULT NULL,
  `TOTALMAKANAN` decimal(14,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hnotaacara`
--

CREATE TABLE IF NOT EXISTS `hnotaacara` (
  `IDNOTAACARA` varchar(15) NOT NULL,
  `TGLBAYARACARA` date DEFAULT NULL,
  `TOTALACARA` decimal(10,0) DEFAULT NULL,
  `STATUSPEMBAYARANACARA` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hnotabesar`
--

CREATE TABLE IF NOT EXISTS `hnotabesar` (
  `NO_NOTA` varchar(12) NOT NULL,
  `ID_MEMBERSHIP` varchar(5) DEFAULT NULL,
  `ID_PERUSAHAAN` varchar(5) DEFAULT NULL,
  `IDCUSTOMER` varchar(5) NOT NULL,
  `TANGGAL` date NOT NULL,
  `TOTAL` decimal(14,0) NOT NULL,
  `STATUS_PEMBAYARAN` tinyint(1) NOT NULL,
  `CARA_PEMBAYARAN` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hpaket`
--

CREATE TABLE IF NOT EXISTS `hpaket` (
  `IDHPAKETSPA` varchar(15) NOT NULL,
  `IDTRANSSPA` varchar(15) DEFAULT NULL,
  `NAMAPAKETSPA` varchar(15) DEFAULT NULL,
  `HARGA_STANDARD_PAKET` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hperlengkapan`
--

CREATE TABLE IF NOT EXISTS `hperlengkapan` (
  `NOTA_PERKAP` varchar(12) NOT NULL,
  `NO_NOTA` varchar(12) DEFAULT NULL,
  `TOTAL_PERKAP` decimal(14,0) NOT NULL,
  `TANGGAL_PERKAP` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwalgym`
--

CREATE TABLE IF NOT EXISTS `jadwalgym` (
  `KODEJADWALGYM` varchar(6) NOT NULL,
  `IDRUANGAN` varchar(15) DEFAULT NULL,
  `MULAIJADWALGYM` datetime DEFAULT NULL,
  `SELESAIJADWALGYM` datetime DEFAULT NULL,
  `PELATIHGYM` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jadwalmenu`
--

CREATE TABLE IF NOT EXISTS `jadwalmenu` (
  `IDJADWAL` varchar(10) NOT NULL,
  `NAMAMENU` varchar(20) DEFAULT NULL,
  `WAKTUJADWAL` time DEFAULT NULL,
  `TANGGALJADWAL` date DEFAULT NULL,
  `JENISJADWAL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE IF NOT EXISTS `kamar` (
  `NO_KAMAR` varchar(5) NOT NULL,
  `KODETIPE` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `NIKKARYAWAN` varchar(6) NOT NULL,
  `IDPOSISI2` varchar(6) DEFAULT NULL,
  `IDDEPARTMEN` varchar(6) DEFAULT NULL,
  `NAMAKARYAWAN` varchar(50) NOT NULL,
  `ALAMATKARYAWAN` text NOT NULL,
  `NOTELP1` decimal(12,0) NOT NULL,
  `NOTELP2` decimal(12,0) NOT NULL,
  `TGL_LAHIR` date NOT NULL,
  `TGL_MASUK` date NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `STATUSKARYAWAN` text NOT NULL,
  `PASSWORDKARYAWAN` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan_record`
--

CREATE TABLE IF NOT EXISTS `karyawan_record` (
  `NIKKARYAWAN` varchar(6) NOT NULL,
  `IDRECORD` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategoribarang`
--

CREATE TABLE IF NOT EXISTS `kategoribarang` (
  `KDKATEGORI` varchar(10) NOT NULL,
  `NAMAKATEGORI` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kupongym`
--

CREATE TABLE IF NOT EXISTS `kupongym` (
  `KODEKUPONGYM` varchar(6) NOT NULL,
  `NO_KAMAR` varchar(5) NOT NULL,
  `WAKTUMULAIKUPON` date DEFAULT NULL,
  `WAKTUSELESAIKUPON` date DEFAULT NULL,
  `DURASIKUPON` decimal(8,0) DEFAULT NULL,
  `STATUSKUPON` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laporanbaranghilang`
--

CREATE TABLE IF NOT EXISTS `laporanbaranghilang` (
  `KDLAPORANBARANG` varchar(10) NOT NULL,
  `KDBARANG` varchar(10) DEFAULT NULL,
  `KDPINJAM` varchar(5) DEFAULT NULL,
  `KETHILANG` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `layananspa`
--

CREATE TABLE IF NOT EXISTS `layananspa` (
  `IDLAYANANSPA` varchar(15) NOT NULL,
  `IDHPAKETSPA` varchar(15) DEFAULT NULL,
  `NAMALAYANANSPA` varchar(20) DEFAULT NULL,
  `HARGALAYANANSPA` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE IF NOT EXISTS `lowongan` (
  `KODELOWONGAN` varchar(6) NOT NULL,
  `JUDULLOWONGAN` varchar(20) NOT NULL,
  `DESKRIPSILOWONGAN` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `melakukan`
--

CREATE TABLE IF NOT EXISTS `melakukan` (
  `KDBAYARPO` varchar(10) NOT NULL,
  `KDBELIINVENT` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `ID_MEMBERSHIP` varchar(5) NOT NULL,
  `NAMA_MEMBERSHIP` varchar(25) NOT NULL,
  `DISKON_MEMBERSHIP` decimal(2,0) NOT NULL,
  `KETERANGAN_MEMBERSHIP` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `memberspa`
--

CREATE TABLE IF NOT EXISTS `memberspa` (
  `IDHPAKETSPA` varchar(15) NOT NULL,
  `JENISMEMBERGYM` varchar(20) DEFAULT NULL,
  `DISKON` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `IDBAHAN` varchar(10) DEFAULT NULL,
  `IDRESEP` varchar(10) DEFAULT NULL,
  `NAMAMENU` varchar(20) NOT NULL,
  `HARGAMENU` int(11) DEFAULT NULL,
  `KATEGORIMENU` varchar(10) DEFAULT NULL,
  `DESKRIPSIMENU` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE IF NOT EXISTS `mobil` (
  `IDMOBIL` varchar(5) NOT NULL,
  `NAMAMOBIL` varchar(50) NOT NULL,
  `KAPASITASMOBIL` decimal(2,0) NOT NULL,
  `HARGAMOBIL` decimal(14,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE IF NOT EXISTS `orderlist` (
  `NOPESANAN` varchar(5) NOT NULL,
  `NAMAMENU` varchar(20) DEFAULT NULL,
  `JUMLAHPESANAN` int(11) DEFAULT NULL,
  `STATUSPESANAN` varchar(20) DEFAULT NULL,
  `TIPEPESANAN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paketcustom`
--

CREATE TABLE IF NOT EXISTS `paketcustom` (
  `IDCUSTOMPAKET` varchar(10) NOT NULL,
  `IDMENUCUSTOM` text,
  `HARGAPAKETCUSTOM` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paketgym`
--

CREATE TABLE IF NOT EXISTS `paketgym` (
  `KODEPAKETGYM` varchar(6) NOT NULL,
  `NAMAPAKETGYM` varchar(100) DEFAULT NULL,
  `HARGAGYM` decimal(8,0) DEFAULT NULL,
  `DURASIPAKETGYM` decimal(8,0) DEFAULT NULL,
  `GYM` tinyint(1) DEFAULT NULL,
  `RENANG` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paketstandard`
--

CREATE TABLE IF NOT EXISTS `paketstandard` (
  `IDPAKETSTANDAR` varchar(10) NOT NULL,
  `NAMAPAKETSTANDAR` varchar(200) NOT NULL,
  `IDMENUSTANDAR` text NOT NULL,
  `HARGAPAKETSTANDAR` decimal(9,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paketstandard`
--

INSERT INTO `paketstandard` (`IDPAKETSTANDAR`, `NAMAPAKETSTANDAR`, `IDMENUSTANDAR`, `HARGAPAKETSTANDAR`) VALUES
('S001', 'paket1', 'kepiting bakar,tequila', '5000'),
('S002', 'paket2', 'nasi goreng,teh manis', '9000'),
('S003', 'paket3', 'puding', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaranpobarang`
--

CREATE TABLE IF NOT EXISTS `pembayaranpobarang` (
  `KDBAYARPO` varchar(10) NOT NULL,
  `TOTALPO` float(8,2) DEFAULT NULL,
  `TANGGALBAYARPO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `KDBELIINVENT` varchar(6) NOT NULL,
  `KDSUPPLIER` varchar(10) DEFAULT NULL,
  `TGLBELIINVENT` date DEFAULT NULL,
  `TOTALBELIINVENT` float(8,2) DEFAULT NULL,
  `TOTALQTYPURCHASE_` decimal(8,0) DEFAULT NULL,
  `STATUSPURCHASE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalianbarang`
--

CREATE TABLE IF NOT EXISTS `pengembalianbarang` (
  `KDREQUEST` varchar(10) NOT NULL,
  `KDPINJAM` varchar(5) NOT NULL,
  `KETPINJAM` text,
  `JUMLAHPINJAM` decimal(8,0) DEFAULT NULL,
  `TANGGALKEMBALI` date DEFAULT NULL,
  `JUMLAHKEMBALI` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjadwalanspa`
--

CREATE TABLE IF NOT EXISTS `penjadwalanspa` (
  `KDJADWALSPA` varchar(15) NOT NULL,
  `IDRUANGAN` varchar(15) DEFAULT NULL,
  `TANGGALKERJASPA` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peralatangym`
--

CREATE TABLE IF NOT EXISTS `peralatangym` (
  `KDBARANG` varchar(10) NOT NULL,
  `NAMAALAT` varchar(108) DEFAULT NULL,
  `KONDISIALAT` char(1) DEFAULT NULL,
  `KETERANGANALAT` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perlengkapangym`
--

CREATE TABLE IF NOT EXISTS `perlengkapangym` (
  `KDBARANG` varchar(10) NOT NULL,
  `NAMAPERLENGKAPAN` varchar(108) DEFAULT NULL,
  `JUMLAHSEBELUMMAINTENANCE` decimal(8,0) DEFAULT NULL,
  `JUMLAHSESUDAHMAINTENANCE` decimal(8,0) DEFAULT NULL,
  `KETERANGANPERLENGKAPAN` text,
  `TANGGALMAINTENANCE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE IF NOT EXISTS `perusahaan` (
  `ID_PERUSAHAAN` varchar(5) NOT NULL,
  `NAMA_PERUSAHAAN` varchar(25) NOT NULL,
  `PERSENTASE_DISKON` decimal(2,0) NOT NULL,
  `TANGGAL_GABUNG` date NOT NULL,
  `KETERANGAN` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pinjambarang`
--

CREATE TABLE IF NOT EXISTS `pinjambarang` (
  `KDPINJAM` varchar(5) NOT NULL,
  `KDBARANG` varchar(10) DEFAULT NULL,
  `TGLPINJAM` date DEFAULT NULL,
  `TGLKEMBALI` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE IF NOT EXISTS `posisi` (
  `IDPOSISI2` varchar(6) NOT NULL,
  `NAMAPOSISI` text NOT NULL,
  `GAJIPOKOK` decimal(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recordlogin`
--

CREATE TABLE IF NOT EXISTS `recordlogin` (
  `JAMLOGIN` time NOT NULL,
  `IDRECORD` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `relationship_75`
--

CREATE TABLE IF NOT EXISTS `relationship_75` (
  `IDVENDORACARA` varchar(15) NOT NULL,
  `IDACARA` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requestacara`
--

CREATE TABLE IF NOT EXISTS `requestacara` (
`ID_requestAcara` int(11) NOT NULL,
  `nama_acara` varchar(20) NOT NULL,
  `namapaket` varchar(20) NOT NULL,
  `namavendor` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `requestacara`
--

INSERT INTO `requestacara` (`ID_requestAcara`, `nama_acara`, `namapaket`, `namavendor`, `start_date`, `end_date`) VALUES
(2, 'meeting', 'paket2', 'hans,kent, william, wilson', '2016-06-08', '2016-06-15'),
(3, 'meeting', 'paket3', 'asd,weq,zzz,aaa,qqq', '2016-06-17', '2016-06-17'),
(5, 'wedding', 'paket1', 'kkk,iii,wiquwe,kjvcxmnasd,asjdk', '2016-06-18', '2016-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `requestbarang`
--

CREATE TABLE IF NOT EXISTS `requestbarang` (
  `KDREQUEST` varchar(10) NOT NULL,
  `KDBARANG` varchar(10) DEFAULT NULL,
  `IDRUANGAN` varchar(15) DEFAULT NULL,
  `TGLREQUEST` datetime DEFAULT NULL,
  `STATUSREQUEST` varchar(100) DEFAULT NULL,
  `TGLBARANGMASUK` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE IF NOT EXISTS `resep` (
  `IDRESEP` varchar(10) NOT NULL,
  `CARAMASAK` text,
  `NAMARESEP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resep_bahan`
--

CREATE TABLE IF NOT EXISTS `resep_bahan` (
  `IDRESEP` varchar(10) NOT NULL,
  `IDBAHAN` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE IF NOT EXISTS `reservasi` (
  `KDRESERVASI` varchar(5) NOT NULL,
  `NIKKARYAWAN` varchar(6) DEFAULT NULL,
  `IDCUSTOMER` varchar(5) NOT NULL,
  `TANGGALRESERVASI` datetime DEFAULT NULL,
  `LAMAINAP` decimal(8,0) DEFAULT NULL,
  `NOKAMARYANGDIPILIH` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE IF NOT EXISTS `ruangan` (
  `IDRUANGAN` varchar(15) NOT NULL,
  `IDLAYANANSPA` varchar(15) DEFAULT NULL,
  `NIKKARYAWAN` varchar(6) DEFAULT NULL,
  `NAMARUANGAN` text,
  `KAPASITASORANG` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE IF NOT EXISTS `stok` (
  `IDBAHAN` varchar(10) NOT NULL,
  `NAMABAHAN` varchar(20) DEFAULT NULL,
  `GROUPBAHAN` varchar(10) DEFAULT NULL,
  `STOKBAHAN` int(11) DEFAULT NULL,
  `UNITBAHAN` varchar(10) DEFAULT NULL,
  `LOKASIBAHAN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `KDSUPPLIER` varchar(10) NOT NULL,
  `NAMASUPPLIER` varchar(15) DEFAULT NULL,
  `ALAMATSUPPLIER` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `terimapembelian`
--

CREATE TABLE IF NOT EXISTS `terimapembelian` (
  `KDPENERIMAAN` varchar(10) NOT NULL,
  `KDBELIINVENT` varchar(6) NOT NULL,
  `TGLTERIMAPO` datetime DEFAULT NULL,
  `TOTALQTYPO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testest`
--

CREATE TABLE IF NOT EXISTS `testest` (
`id` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tipekamar_reservasi`
--

CREATE TABLE IF NOT EXISTS `tipekamar_reservasi` (
  `KODETIPE` varchar(5) NOT NULL,
  `KDRESERVASI` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE IF NOT EXISTS `tipe_kamar` (
  `KODETIPE` varchar(5) NOT NULL,
  `JENIS` varchar(30) DEFAULT NULL,
  `UKURAN` varchar(1) DEFAULT NULL,
  `HARGA` decimal(8,0) DEFAULT NULL,
  `QTY` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transspa`
--

CREATE TABLE IF NOT EXISTS `transspa` (
  `IDTRANSSPA` varchar(15) NOT NULL,
  `NOTA_FASILITAS` varchar(12) NOT NULL,
  `IDHPAKETSPA` varchar(15) DEFAULT NULL,
  `TGLTRANSAKSISPA` date DEFAULT NULL,
  `TOTALSPA` decimal(8,0) DEFAULT NULL,
  `STATUSPEMBAYARANSPA` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `IDVENDORACARA` varchar(15) NOT NULL,
  `NAMAVENDORACARA` varchar(200) DEFAULT NULL,
  `ALAMATVENDORACARA` text,
  `NOTELPONVENDORACARA` decimal(12,0) DEFAULT NULL,
  `EMAILVENDORACARA` text,
  `JenisVendor` varchar(10) NOT NULL,
  `Costum` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`IDVENDORACARA`, `NAMAVENDORACARA`, `ALAMATVENDORACARA`, `NOTELPONVENDORACARA`, `EMAILVENDORACARA`, `JenisVendor`, `Costum`) VALUES
('0004\n', 'kent', 'test', '81', 'test@aaa.com', 'MC', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_dacara`
--

CREATE TABLE IF NOT EXISTS `vendor_dacara` (
  `IDVENDORACARA` varchar(15) NOT NULL,
  `IDNOTAACARA` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
 ADD PRIMARY KEY (`IDACARA`), ADD KEY `FK_DAPAT_MEMILIKI2` (`IDPAKETSTANDAR`), ADD KEY `FK_DAPAT_MEMILIKI3` (`IDCUSTOMPAKET`);

--
-- Indexes for table `acara_ruangan`
--
ALTER TABLE `acara_ruangan`
 ADD PRIMARY KEY (`IDACARA`,`IDRUANGAN`), ADD KEY `FK_ACARA_RUANGAN2` (`IDRUANGAN`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
 ADD PRIMARY KEY (`KDBARANG`), ADD KEY `FK_MEMILIKI` (`KDKATEGORI`), ADD KEY `FK_RELATIONSHIP_21` (`KDLAPORANBARANG`);

--
-- Indexes for table `barang_purchase`
--
ALTER TABLE `barang_purchase`
 ADD PRIMARY KEY (`KDBELIINVENT`,`KDBARANG`), ADD KEY `FK_BARANG_PURCHASE2` (`KDBARANG`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`IDCUSTOMER`), ADD KEY `FK_MEMBERSPA_CUSTOMER` (`IDHPAKETSPA`);

--
-- Indexes for table `dabsen`
--
ALTER TABLE `dabsen`
 ADD PRIMARY KEY (`KODEABSENSI`,`NIKKARYAWAN`), ADD KEY `FK_KARYAWAN_DABSEN` (`NIKKARYAWAN`);

--
-- Indexes for table `dbarang`
--
ALTER TABLE `dbarang`
 ADD PRIMARY KEY (`KDBARANG`,`IDGUDANG`), ADD KEY `FK_GUDANG_DBARANG` (`IDGUDANG`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
 ADD PRIMARY KEY (`IDDEPARTMEN`), ADD KEY `FK_RUANGAN_DEPARTEMEN` (`IDRUANGAN`);

--
-- Indexes for table `dgaji`
--
ALTER TABLE `dgaji`
 ADD PRIMARY KEY (`KODEGAJI`);

--
-- Indexes for table `dkamar`
--
ALTER TABLE `dkamar`
 ADD PRIMARY KEY (`NOTA_KAMAR`,`NO_KAMAR`), ADD KEY `FK_INCLUDE` (`NO_KAMAR`);

--
-- Indexes for table `dmakanan`
--
ALTER TABLE `dmakanan`
 ADD PRIMARY KEY (`NOTAMAKANAN`,`NOPESANAN`), ADD KEY `FK_ORDER_DMAKANAN` (`NOPESANAN`);

--
-- Indexes for table `dmembergym`
--
ALTER TABLE `dmembergym`
 ADD PRIMARY KEY (`IDCUSTOMER`,`KODEPAKETGYM`), ADD KEY `FK_PUNYA` (`KODEPAKETGYM`);

--
-- Indexes for table `dnotaacara`
--
ALTER TABLE `dnotaacara`
 ADD PRIMARY KEY (`IDNOTAACARA`), ADD KEY `FK_CUSTOM_DACARA` (`IDCUSTOMPAKET`), ADD KEY `FK_STANDARD_DACARA` (`IDPAKETSTANDAR`);

--
-- Indexes for table `dpaket`
--
ALTER TABLE `dpaket`
 ADD PRIMARY KEY (`IDHPAKETSPA`);

--
-- Indexes for table `dperlengkapan`
--
ALTER TABLE `dperlengkapan`
 ADD PRIMARY KEY (`NOTA_PERKAP`,`IDMOBIL`), ADD KEY `FK_HAVE_14` (`IDMOBIL`);

--
-- Indexes for table `dtransgym`
--
ALTER TABLE `dtransgym`
 ADD PRIMARY KEY (`NOTA_FASILITAS`,`KODEPAKETGYM`), ADD KEY `FK_PAKETAN` (`KODEPAKETGYM`);

--
-- Indexes for table `gudang`
--
ALTER TABLE `gudang`
 ADD PRIMARY KEY (`IDGUDANG`), ADD KEY `FK_DEPARTEMEN_GUDANG` (`IDDEPARTMEN`);

--
-- Indexes for table `habsen`
--
ALTER TABLE `habsen`
 ADD PRIMARY KEY (`KODEABSENSI`);

--
-- Indexes for table `hfasilitas`
--
ALTER TABLE `hfasilitas`
 ADD PRIMARY KEY (`NOTA_FASILITAS`), ADD KEY `FK_HAVE_5` (`NO_NOTA`);

--
-- Indexes for table `hgaji`
--
ALTER TABLE `hgaji`
 ADD PRIMARY KEY (`KODEGAJI`), ADD KEY `FK_KARYAWAN_GAJI` (`NIKKARYAWAN`);

--
-- Indexes for table `historylogin`
--
ALTER TABLE `historylogin`
 ADD PRIMARY KEY (`IDCUSTOMER`);

--
-- Indexes for table `hkamar`
--
ALTER TABLE `hkamar`
 ADD PRIMARY KEY (`NOTA_KAMAR`), ADD KEY `FK_HAVE` (`NO_NOTA`);

--
-- Indexes for table `hmakanan`
--
ALTER TABLE `hmakanan`
 ADD PRIMARY KEY (`NOTAMAKANAN`), ADD KEY `FK_HAVE_7` (`NO_NOTA`);

--
-- Indexes for table `hnotaacara`
--
ALTER TABLE `hnotaacara`
 ADD PRIMARY KEY (`IDNOTAACARA`);

--
-- Indexes for table `hnotabesar`
--
ALTER TABLE `hnotabesar`
 ADD PRIMARY KEY (`NO_NOTA`), ADD KEY `FK_AFFECT` (`ID_MEMBERSHIP`), ADD KEY `FK_AFFECT_2` (`ID_PERUSAHAAN`), ADD KEY `FK_CUSTOMER_NOTABESAR` (`IDCUSTOMER`);

--
-- Indexes for table `hpaket`
--
ALTER TABLE `hpaket`
 ADD PRIMARY KEY (`IDHPAKETSPA`), ADD KEY `FK_MEMBUAT2` (`IDTRANSSPA`);

--
-- Indexes for table `hperlengkapan`
--
ALTER TABLE `hperlengkapan`
 ADD PRIMARY KEY (`NOTA_PERKAP`), ADD KEY `FK_HAVE_3` (`NO_NOTA`);

--
-- Indexes for table `jadwalgym`
--
ALTER TABLE `jadwalgym`
 ADD PRIMARY KEY (`KODEJADWALGYM`), ADD KEY `FK_RUANGAN_JADWALGYM` (`IDRUANGAN`);

--
-- Indexes for table `jadwalmenu`
--
ALTER TABLE `jadwalmenu`
 ADD PRIMARY KEY (`IDJADWAL`), ADD KEY `FK_MENU_JADWAL` (`NAMAMENU`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
 ADD PRIMARY KEY (`NO_KAMAR`), ADD KEY `FK_TIPEKAMAR_KAMAR` (`KODETIPE`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
 ADD PRIMARY KEY (`NIKKARYAWAN`), ADD KEY `FK_MEMILIKI3` (`IDDEPARTMEN`), ADD KEY `FK_MEMILIKI4` (`IDPOSISI2`);

--
-- Indexes for table `karyawan_record`
--
ALTER TABLE `karyawan_record`
 ADD PRIMARY KEY (`NIKKARYAWAN`,`IDRECORD`), ADD KEY `FK_KARYAWAN_RECORD2` (`IDRECORD`);

--
-- Indexes for table `kategoribarang`
--
ALTER TABLE `kategoribarang`
 ADD PRIMARY KEY (`KDKATEGORI`);

--
-- Indexes for table `kupongym`
--
ALTER TABLE `kupongym`
 ADD PRIMARY KEY (`KODEKUPONGYM`), ADD KEY `FK_KAMAR_KUPON` (`NO_KAMAR`);

--
-- Indexes for table `laporanbaranghilang`
--
ALTER TABLE `laporanbaranghilang`
 ADD PRIMARY KEY (`KDLAPORANBARANG`), ADD KEY `FK_DAPAT_MEMILIKI` (`KDPINJAM`), ADD KEY `FK_RELATIONSHIP_22` (`KDBARANG`);

--
-- Indexes for table `layananspa`
--
ALTER TABLE `layananspa`
 ADD PRIMARY KEY (`IDLAYANANSPA`), ADD KEY `FK_MEMPUNYAI2` (`IDHPAKETSPA`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
 ADD PRIMARY KEY (`KODELOWONGAN`);

--
-- Indexes for table `melakukan`
--
ALTER TABLE `melakukan`
 ADD PRIMARY KEY (`KDBAYARPO`,`KDBELIINVENT`), ADD KEY `FK_MELAKUKAN2` (`KDBELIINVENT`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
 ADD PRIMARY KEY (`ID_MEMBERSHIP`);

--
-- Indexes for table `memberspa`
--
ALTER TABLE `memberspa`
 ADD PRIMARY KEY (`IDHPAKETSPA`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`NAMAMENU`), ADD KEY `FK_MENU_RESEP` (`IDRESEP`), ADD KEY `FK_STOK_MENU` (`IDBAHAN`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
 ADD PRIMARY KEY (`IDMOBIL`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
 ADD PRIMARY KEY (`NOPESANAN`), ADD KEY `FK_MENU_ORDER` (`NAMAMENU`);

--
-- Indexes for table `paketcustom`
--
ALTER TABLE `paketcustom`
 ADD PRIMARY KEY (`IDCUSTOMPAKET`);

--
-- Indexes for table `paketgym`
--
ALTER TABLE `paketgym`
 ADD PRIMARY KEY (`KODEPAKETGYM`);

--
-- Indexes for table `paketstandard`
--
ALTER TABLE `paketstandard`
 ADD PRIMARY KEY (`IDPAKETSTANDAR`);

--
-- Indexes for table `pembayaranpobarang`
--
ALTER TABLE `pembayaranpobarang`
 ADD PRIMARY KEY (`KDBAYARPO`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`KDBELIINVENT`), ADD KEY `FK_MEMPUNYAI` (`KDSUPPLIER`);

--
-- Indexes for table `pengembalianbarang`
--
ALTER TABLE `pengembalianbarang`
 ADD PRIMARY KEY (`KDREQUEST`,`KDPINJAM`), ADD KEY `FK_TERDAPAT` (`KDPINJAM`);

--
-- Indexes for table `penjadwalanspa`
--
ALTER TABLE `penjadwalanspa`
 ADD PRIMARY KEY (`KDJADWALSPA`), ADD KEY `FK_RUANGAN_JADWALSPA` (`IDRUANGAN`);

--
-- Indexes for table `peralatangym`
--
ALTER TABLE `peralatangym`
 ADD PRIMARY KEY (`KDBARANG`);

--
-- Indexes for table `perlengkapangym`
--
ALTER TABLE `perlengkapangym`
 ADD PRIMARY KEY (`KDBARANG`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
 ADD PRIMARY KEY (`ID_PERUSAHAAN`);

--
-- Indexes for table `pinjambarang`
--
ALTER TABLE `pinjambarang`
 ADD PRIMARY KEY (`KDPINJAM`), ADD KEY `FK_PEMINJAMAN_BARANG` (`KDBARANG`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
 ADD PRIMARY KEY (`IDPOSISI2`);

--
-- Indexes for table `recordlogin`
--
ALTER TABLE `recordlogin`
 ADD PRIMARY KEY (`IDRECORD`);

--
-- Indexes for table `relationship_75`
--
ALTER TABLE `relationship_75`
 ADD PRIMARY KEY (`IDVENDORACARA`,`IDACARA`), ADD KEY `FK_RELATIONSHIP_76` (`IDACARA`);

--
-- Indexes for table `requestacara`
--
ALTER TABLE `requestacara`
 ADD PRIMARY KEY (`ID_requestAcara`);

--
-- Indexes for table `requestbarang`
--
ALTER TABLE `requestbarang`
 ADD PRIMARY KEY (`KDREQUEST`), ADD KEY `FK_MEMINTA` (`KDBARANG`), ADD KEY `FK_RUANGAN_RBARANG` (`IDRUANGAN`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
 ADD PRIMARY KEY (`IDRESEP`);

--
-- Indexes for table `resep_bahan`
--
ALTER TABLE `resep_bahan`
 ADD PRIMARY KEY (`IDRESEP`,`IDBAHAN`), ADD KEY `FK_RESEP_BAHAN2` (`IDBAHAN`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
 ADD PRIMARY KEY (`KDRESERVASI`), ADD KEY `FK_CUSTOMER_RESERVASI` (`IDCUSTOMER`), ADD KEY `FK_KARYAWAN_RESERVASI` (`NIKKARYAWAN`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
 ADD PRIMARY KEY (`IDRUANGAN`), ADD KEY `FK_KARYAWAN_RUANGAN` (`NIKKARYAWAN`), ADD KEY `FK_RUANGAN_LAYANANSPA` (`IDLAYANANSPA`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
 ADD PRIMARY KEY (`IDBAHAN`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`KDSUPPLIER`);

--
-- Indexes for table `terimapembelian`
--
ALTER TABLE `terimapembelian`
 ADD PRIMARY KEY (`KDPENERIMAAN`), ADD KEY `FK_ADA` (`KDBELIINVENT`);

--
-- Indexes for table `testest`
--
ALTER TABLE `testest`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipekamar_reservasi`
--
ALTER TABLE `tipekamar_reservasi`
 ADD PRIMARY KEY (`KODETIPE`,`KDRESERVASI`), ADD KEY `FK_TIPEKAMAR_RESERVASI2` (`KDRESERVASI`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
 ADD PRIMARY KEY (`KODETIPE`);

--
-- Indexes for table `transspa`
--
ALTER TABLE `transspa`
 ADD PRIMARY KEY (`IDTRANSSPA`), ADD KEY `FK_MEMBUAT` (`IDHPAKETSPA`), ADD KEY `FK_TRANSSPA_FASILITAN` (`NOTA_FASILITAS`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
 ADD PRIMARY KEY (`IDVENDORACARA`);

--
-- Indexes for table `vendor_dacara`
--
ALTER TABLE `vendor_dacara`
 ADD PRIMARY KEY (`IDVENDORACARA`), ADD KEY `FK_VENDOR_DACARA` (`IDNOTAACARA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requestacara`
--
ALTER TABLE `requestacara`
MODIFY `ID_requestAcara` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `testest`
--
ALTER TABLE `testest`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `acara`
--
ALTER TABLE `acara`
ADD CONSTRAINT `FK_DAPAT_MEMILIKI2` FOREIGN KEY (`IDPAKETSTANDAR`) REFERENCES `paketstandard` (`IDPAKETSTANDAR`),
ADD CONSTRAINT `FK_DAPAT_MEMILIKI3` FOREIGN KEY (`IDCUSTOMPAKET`) REFERENCES `paketcustom` (`IDCUSTOMPAKET`);

--
-- Constraints for table `acara_ruangan`
--
ALTER TABLE `acara_ruangan`
ADD CONSTRAINT `FK_ACARA_RUANGAN` FOREIGN KEY (`IDACARA`) REFERENCES `acara` (`IDACARA`),
ADD CONSTRAINT `FK_ACARA_RUANGAN2` FOREIGN KEY (`IDRUANGAN`) REFERENCES `ruangan` (`IDRUANGAN`);

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`KDKATEGORI`) REFERENCES `kategoribarang` (`KDKATEGORI`),
ADD CONSTRAINT `FK_RELATIONSHIP_21` FOREIGN KEY (`KDLAPORANBARANG`) REFERENCES `laporanbaranghilang` (`KDLAPORANBARANG`);

--
-- Constraints for table `barang_purchase`
--
ALTER TABLE `barang_purchase`
ADD CONSTRAINT `FK_BARANG_PURCHASE` FOREIGN KEY (`KDBELIINVENT`) REFERENCES `pembelian` (`KDBELIINVENT`),
ADD CONSTRAINT `FK_BARANG_PURCHASE2` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
ADD CONSTRAINT `FK_MEMBERSPA_CUSTOMER` FOREIGN KEY (`IDHPAKETSPA`) REFERENCES `memberspa` (`IDHPAKETSPA`);

--
-- Constraints for table `dabsen`
--
ALTER TABLE `dabsen`
ADD CONSTRAINT `FK_H_DABSEN` FOREIGN KEY (`KODEABSENSI`) REFERENCES `habsen` (`KODEABSENSI`),
ADD CONSTRAINT `FK_KARYAWAN_DABSEN` FOREIGN KEY (`NIKKARYAWAN`) REFERENCES `karyawan` (`NIKKARYAWAN`);

--
-- Constraints for table `dbarang`
--
ALTER TABLE `dbarang`
ADD CONSTRAINT `FK_BARANG_DBARANG` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`),
ADD CONSTRAINT `FK_GUDANG_DBARANG` FOREIGN KEY (`IDGUDANG`) REFERENCES `gudang` (`IDGUDANG`);

--
-- Constraints for table `departemen`
--
ALTER TABLE `departemen`
ADD CONSTRAINT `FK_RUANGAN_DEPARTEMEN` FOREIGN KEY (`IDRUANGAN`) REFERENCES `ruangan` (`IDRUANGAN`);

--
-- Constraints for table `dgaji`
--
ALTER TABLE `dgaji`
ADD CONSTRAINT `FK_H_DGAJI` FOREIGN KEY (`KODEGAJI`) REFERENCES `hgaji` (`KODEGAJI`);

--
-- Constraints for table `dkamar`
--
ALTER TABLE `dkamar`
ADD CONSTRAINT `FK_HAVE2` FOREIGN KEY (`NOTA_KAMAR`) REFERENCES `hkamar` (`NOTA_KAMAR`),
ADD CONSTRAINT `FK_INCLUDE` FOREIGN KEY (`NO_KAMAR`) REFERENCES `kamar` (`NO_KAMAR`);

--
-- Constraints for table `dmakanan`
--
ALTER TABLE `dmakanan`
ADD CONSTRAINT `FK_HEADER_DETAIL_MAKANAN` FOREIGN KEY (`NOTAMAKANAN`) REFERENCES `hmakanan` (`NOTAMAKANAN`),
ADD CONSTRAINT `FK_ORDER_DMAKANAN` FOREIGN KEY (`NOPESANAN`) REFERENCES `orderlist` (`NOPESANAN`);

--
-- Constraints for table `dmembergym`
--
ALTER TABLE `dmembergym`
ADD CONSTRAINT `FK_CUSTOMER_MEMBERGYM` FOREIGN KEY (`IDCUSTOMER`) REFERENCES `customer` (`IDCUSTOMER`),
ADD CONSTRAINT `FK_PUNYA` FOREIGN KEY (`KODEPAKETGYM`) REFERENCES `paketgym` (`KODEPAKETGYM`);

--
-- Constraints for table `dnotaacara`
--
ALTER TABLE `dnotaacara`
ADD CONSTRAINT `FK_CUSTOM_DACARA` FOREIGN KEY (`IDCUSTOMPAKET`) REFERENCES `paketcustom` (`IDCUSTOMPAKET`),
ADD CONSTRAINT `FK_HEADER_DETAIL_ACARA` FOREIGN KEY (`IDNOTAACARA`) REFERENCES `hnotaacara` (`IDNOTAACARA`),
ADD CONSTRAINT `FK_STANDARD_DACARA` FOREIGN KEY (`IDPAKETSTANDAR`) REFERENCES `paketstandard` (`IDPAKETSTANDAR`);

--
-- Constraints for table `dpaket`
--
ALTER TABLE `dpaket`
ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`IDHPAKETSPA`) REFERENCES `hpaket` (`IDHPAKETSPA`);

--
-- Constraints for table `dperlengkapan`
--
ALTER TABLE `dperlengkapan`
ADD CONSTRAINT `FK_HAVE_14` FOREIGN KEY (`IDMOBIL`) REFERENCES `mobil` (`IDMOBIL`),
ADD CONSTRAINT `FK_REFERENCE_81` FOREIGN KEY (`NOTA_PERKAP`) REFERENCES `hperlengkapan` (`NOTA_PERKAP`);

--
-- Constraints for table `dtransgym`
--
ALTER TABLE `dtransgym`
ADD CONSTRAINT `FK_DTRANSGYM_FASILITAS` FOREIGN KEY (`NOTA_FASILITAS`) REFERENCES `hfasilitas` (`NOTA_FASILITAS`),
ADD CONSTRAINT `FK_PAKETAN` FOREIGN KEY (`KODEPAKETGYM`) REFERENCES `paketgym` (`KODEPAKETGYM`);

--
-- Constraints for table `gudang`
--
ALTER TABLE `gudang`
ADD CONSTRAINT `FK_DEPARTEMEN_GUDANG` FOREIGN KEY (`IDDEPARTMEN`) REFERENCES `departemen` (`IDDEPARTMEN`);

--
-- Constraints for table `hfasilitas`
--
ALTER TABLE `hfasilitas`
ADD CONSTRAINT `FK_HAVE_5` FOREIGN KEY (`NO_NOTA`) REFERENCES `hnotabesar` (`NO_NOTA`);

--
-- Constraints for table `hgaji`
--
ALTER TABLE `hgaji`
ADD CONSTRAINT `FK_KARYAWAN_GAJI` FOREIGN KEY (`NIKKARYAWAN`) REFERENCES `karyawan` (`NIKKARYAWAN`);

--
-- Constraints for table `historylogin`
--
ALTER TABLE `historylogin`
ADD CONSTRAINT `FK_CUSTOMER_LOGIN` FOREIGN KEY (`IDCUSTOMER`) REFERENCES `customer` (`IDCUSTOMER`);

--
-- Constraints for table `hkamar`
--
ALTER TABLE `hkamar`
ADD CONSTRAINT `FK_HAVE` FOREIGN KEY (`NO_NOTA`) REFERENCES `hnotabesar` (`NO_NOTA`);

--
-- Constraints for table `hmakanan`
--
ALTER TABLE `hmakanan`
ADD CONSTRAINT `FK_HAVE_7` FOREIGN KEY (`NO_NOTA`) REFERENCES `hnotabesar` (`NO_NOTA`);

--
-- Constraints for table `hnotabesar`
--
ALTER TABLE `hnotabesar`
ADD CONSTRAINT `FK_AFFECT` FOREIGN KEY (`ID_MEMBERSHIP`) REFERENCES `membership` (`ID_MEMBERSHIP`),
ADD CONSTRAINT `FK_AFFECT_2` FOREIGN KEY (`ID_PERUSAHAAN`) REFERENCES `perusahaan` (`ID_PERUSAHAAN`),
ADD CONSTRAINT `FK_CUSTOMER_NOTABESAR` FOREIGN KEY (`IDCUSTOMER`) REFERENCES `customer` (`IDCUSTOMER`);

--
-- Constraints for table `hpaket`
--
ALTER TABLE `hpaket`
ADD CONSTRAINT `FK_MEMBUAT2` FOREIGN KEY (`IDTRANSSPA`) REFERENCES `transspa` (`IDTRANSSPA`);

--
-- Constraints for table `hperlengkapan`
--
ALTER TABLE `hperlengkapan`
ADD CONSTRAINT `FK_HAVE_3` FOREIGN KEY (`NO_NOTA`) REFERENCES `hnotabesar` (`NO_NOTA`);

--
-- Constraints for table `jadwalgym`
--
ALTER TABLE `jadwalgym`
ADD CONSTRAINT `FK_RUANGAN_JADWALGYM` FOREIGN KEY (`IDRUANGAN`) REFERENCES `ruangan` (`IDRUANGAN`);

--
-- Constraints for table `jadwalmenu`
--
ALTER TABLE `jadwalmenu`
ADD CONSTRAINT `FK_MENU_JADWAL` FOREIGN KEY (`NAMAMENU`) REFERENCES `menu` (`NAMAMENU`);

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
ADD CONSTRAINT `FK_TIPEKAMAR_KAMAR` FOREIGN KEY (`KODETIPE`) REFERENCES `tipe_kamar` (`KODETIPE`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
ADD CONSTRAINT `FK_MEMILIKI3` FOREIGN KEY (`IDDEPARTMEN`) REFERENCES `departemen` (`IDDEPARTMEN`),
ADD CONSTRAINT `FK_MEMILIKI4` FOREIGN KEY (`IDPOSISI2`) REFERENCES `posisi` (`IDPOSISI2`);

--
-- Constraints for table `karyawan_record`
--
ALTER TABLE `karyawan_record`
ADD CONSTRAINT `FK_KARYAWAN_RECORD` FOREIGN KEY (`NIKKARYAWAN`) REFERENCES `karyawan` (`NIKKARYAWAN`),
ADD CONSTRAINT `FK_KARYAWAN_RECORD2` FOREIGN KEY (`IDRECORD`) REFERENCES `recordlogin` (`IDRECORD`);

--
-- Constraints for table `kupongym`
--
ALTER TABLE `kupongym`
ADD CONSTRAINT `FK_KAMAR_KUPON` FOREIGN KEY (`NO_KAMAR`) REFERENCES `kamar` (`NO_KAMAR`);

--
-- Constraints for table `laporanbaranghilang`
--
ALTER TABLE `laporanbaranghilang`
ADD CONSTRAINT `FK_DAPAT_MEMILIKI` FOREIGN KEY (`KDPINJAM`) REFERENCES `pinjambarang` (`KDPINJAM`),
ADD CONSTRAINT `FK_RELATIONSHIP_22` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`);

--
-- Constraints for table `layananspa`
--
ALTER TABLE `layananspa`
ADD CONSTRAINT `FK_MEMPUNYAI2` FOREIGN KEY (`IDHPAKETSPA`) REFERENCES `dpaket` (`IDHPAKETSPA`);

--
-- Constraints for table `melakukan`
--
ALTER TABLE `melakukan`
ADD CONSTRAINT `FK_MELAKUKAN` FOREIGN KEY (`KDBAYARPO`) REFERENCES `pembayaranpobarang` (`KDBAYARPO`),
ADD CONSTRAINT `FK_MELAKUKAN2` FOREIGN KEY (`KDBELIINVENT`) REFERENCES `pembelian` (`KDBELIINVENT`);

--
-- Constraints for table `memberspa`
--
ALTER TABLE `memberspa`
ADD CONSTRAINT `FK_LANGGANAN` FOREIGN KEY (`IDHPAKETSPA`) REFERENCES `hpaket` (`IDHPAKETSPA`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
ADD CONSTRAINT `FK_MENU_RESEP` FOREIGN KEY (`IDRESEP`) REFERENCES `resep` (`IDRESEP`),
ADD CONSTRAINT `FK_STOK_MENU` FOREIGN KEY (`IDBAHAN`) REFERENCES `stok` (`IDBAHAN`);

--
-- Constraints for table `orderlist`
--
ALTER TABLE `orderlist`
ADD CONSTRAINT `FK_MENU_ORDER` FOREIGN KEY (`NAMAMENU`) REFERENCES `menu` (`NAMAMENU`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`KDSUPPLIER`) REFERENCES `supplier` (`KDSUPPLIER`);

--
-- Constraints for table `pengembalianbarang`
--
ALTER TABLE `pengembalianbarang`
ADD CONSTRAINT `FK_REQUEST_KEMBALI` FOREIGN KEY (`KDREQUEST`) REFERENCES `requestbarang` (`KDREQUEST`),
ADD CONSTRAINT `FK_TERDAPAT` FOREIGN KEY (`KDPINJAM`) REFERENCES `pinjambarang` (`KDPINJAM`);

--
-- Constraints for table `penjadwalanspa`
--
ALTER TABLE `penjadwalanspa`
ADD CONSTRAINT `FK_RUANGAN_JADWALSPA` FOREIGN KEY (`IDRUANGAN`) REFERENCES `ruangan` (`IDRUANGAN`);

--
-- Constraints for table `peralatangym`
--
ALTER TABLE `peralatangym`
ADD CONSTRAINT `FK_BARANG_ALAT` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`);

--
-- Constraints for table `perlengkapangym`
--
ALTER TABLE `perlengkapangym`
ADD CONSTRAINT `FK_BARANG_PERKAPGYM` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`);

--
-- Constraints for table `pinjambarang`
--
ALTER TABLE `pinjambarang`
ADD CONSTRAINT `FK_PEMINJAMAN_BARANG` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`);

--
-- Constraints for table `relationship_75`
--
ALTER TABLE `relationship_75`
ADD CONSTRAINT `FK_RELATIONSHIP_75` FOREIGN KEY (`IDVENDORACARA`) REFERENCES `vendor` (`IDVENDORACARA`),
ADD CONSTRAINT `FK_RELATIONSHIP_76` FOREIGN KEY (`IDACARA`) REFERENCES `acara` (`IDACARA`);

--
-- Constraints for table `requestbarang`
--
ALTER TABLE `requestbarang`
ADD CONSTRAINT `FK_MEMINTA` FOREIGN KEY (`KDBARANG`) REFERENCES `barang` (`KDBARANG`),
ADD CONSTRAINT `FK_RUANGAN_RBARANG` FOREIGN KEY (`IDRUANGAN`) REFERENCES `ruangan` (`IDRUANGAN`);

--
-- Constraints for table `resep_bahan`
--
ALTER TABLE `resep_bahan`
ADD CONSTRAINT `FK_RESEP_BAHAN` FOREIGN KEY (`IDRESEP`) REFERENCES `resep` (`IDRESEP`),
ADD CONSTRAINT `FK_RESEP_BAHAN2` FOREIGN KEY (`IDBAHAN`) REFERENCES `stok` (`IDBAHAN`);

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
ADD CONSTRAINT `FK_CUSTOMER_RESERVASI` FOREIGN KEY (`IDCUSTOMER`) REFERENCES `customer` (`IDCUSTOMER`),
ADD CONSTRAINT `FK_KARYAWAN_RESERVASI` FOREIGN KEY (`NIKKARYAWAN`) REFERENCES `karyawan` (`NIKKARYAWAN`);

--
-- Constraints for table `ruangan`
--
ALTER TABLE `ruangan`
ADD CONSTRAINT `FK_KARYAWAN_RUANGAN` FOREIGN KEY (`NIKKARYAWAN`) REFERENCES `karyawan` (`NIKKARYAWAN`),
ADD CONSTRAINT `FK_RUANGAN_LAYANANSPA` FOREIGN KEY (`IDLAYANANSPA`) REFERENCES `layananspa` (`IDLAYANANSPA`);

--
-- Constraints for table `terimapembelian`
--
ALTER TABLE `terimapembelian`
ADD CONSTRAINT `FK_ADA` FOREIGN KEY (`KDBELIINVENT`) REFERENCES `pembelian` (`KDBELIINVENT`);

--
-- Constraints for table `tipekamar_reservasi`
--
ALTER TABLE `tipekamar_reservasi`
ADD CONSTRAINT `FK_TIPEKAMAR_RESERVASI` FOREIGN KEY (`KODETIPE`) REFERENCES `tipe_kamar` (`KODETIPE`),
ADD CONSTRAINT `FK_TIPEKAMAR_RESERVASI2` FOREIGN KEY (`KDRESERVASI`) REFERENCES `reservasi` (`KDRESERVASI`);

--
-- Constraints for table `transspa`
--
ALTER TABLE `transspa`
ADD CONSTRAINT `FK_MEMBUAT` FOREIGN KEY (`IDHPAKETSPA`) REFERENCES `hpaket` (`IDHPAKETSPA`),
ADD CONSTRAINT `FK_TRANSSPA_FASILITAN` FOREIGN KEY (`NOTA_FASILITAS`) REFERENCES `hfasilitas` (`NOTA_FASILITAS`);

--
-- Constraints for table `vendor_dacara`
--
ALTER TABLE `vendor_dacara`
ADD CONSTRAINT `FK_VENDOR_DACARA` FOREIGN KEY (`IDNOTAACARA`) REFERENCES `dnotaacara` (`IDNOTAACARA`),
ADD CONSTRAINT `FK_VENDOR_DACARA2` FOREIGN KEY (`IDVENDORACARA`) REFERENCES `vendor` (`IDVENDORACARA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
