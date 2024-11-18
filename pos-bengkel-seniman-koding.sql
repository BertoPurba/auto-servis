-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 05:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos-bengkel-seniman-koding`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(11) NOT NULL,
  `barang_kode` varchar(500) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_kode_count` int(11) NOT NULL,
  `barang_nama` varchar(250) NOT NULL,
  `barang_harga_beli` varchar(250) NOT NULL,
  `barang_harga` varchar(250) NOT NULL,
  `barang_stock` text NOT NULL,
  `barang_tanggal` varchar(250) NOT NULL,
  `barang_kategori_id` int(11) NOT NULL,
  `kategori_id` varchar(250) NOT NULL,
  `barang_satuan_id` varchar(250) NOT NULL,
  `satuan_id` varchar(250) NOT NULL,
  `barang_deskripsi` text NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_status` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL,
  `barang_lokasi_rak` varchar(500) NOT NULL,
  `barang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `barang_kode`, `barang_kode_slug`, `barang_kode_count`, `barang_nama`, `barang_harga_beli`, `barang_harga`, `barang_stock`, `barang_tanggal`, `barang_kategori_id`, `kategori_id`, `barang_satuan_id`, `satuan_id`, `barang_deskripsi`, `barang_option_sn`, `barang_status`, `barang_terjual`, `barang_lokasi_rak`, `barang_cabang`) VALUES
(1, '79799', '79799', 1, 'Oli', '', '25000', '67', '17 October 2023 3:03:05 pm', 15, '15', '3', '3', 'Oli Mesin', 0, 3, 0, '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `barang_sn`
--

CREATE TABLE `barang_sn` (
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `barang_sn_status` int(11) NOT NULL,
  `barang_sn_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_nama` varchar(500) NOT NULL,
  `customer_tlpn` varchar(250) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_alamat` text NOT NULL,
  `customer_date` varchar(250) NOT NULL,
  `customer_create` varchar(250) NOT NULL,
  `customer_status` varchar(250) NOT NULL,
  `customer_count_invoice` int(11) NOT NULL,
  `customer_count_servis` int(11) NOT NULL,
  `customer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_nama`, `customer_tlpn`, `customer_email`, `customer_alamat`, `customer_date`, `customer_create`, `customer_status`, `customer_count_invoice`, `customer_count_servis`, `customer_cabang`) VALUES
(0, 'Customer Umum', '', '', '', '', '', '1', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_servis`
--

CREATE TABLE `data_servis` (
  `ds_id` int(11) NOT NULL,
  `ds_nota` text NOT NULL,
  `ds_nota_count` text NOT NULL,
  `ds_antrian` int(11) NOT NULL,
  `ds_customer_id` int(11) NOT NULL,
  `ds_kendaraan_id` int(11) NOT NULL,
  `ds_kendaraan_km` int(11) NOT NULL,
  `ds_kategori_jenis_barang_servis_id` int(11) NOT NULL,
  `ds_kerusakan` varchar(500) NOT NULL,
  `ds_kondisi_unit_masuk` varchar(250) NOT NULL,
  `ds_keterangan` text NOT NULL,
  `ds_dp` int(11) NOT NULL,
  `ds_penerima_id` int(11) NOT NULL,
  `ds_terima_date` varchar(250) NOT NULL,
  `ds_terima_date_time` varchar(250) NOT NULL,
  `ds_kondisi_barang` varchar(500) NOT NULL,
  `ds_note` text NOT NULL,
  `ds_tipe_servis` int(11) NOT NULL,
  `ds_total_biaya_jasa` int(11) NOT NULL,
  `ds_total_biaya_sparepart` int(11) NOT NULL,
  `ds_total_biaya_sparepart_beli` int(11) NOT NULL,
  `ds_total` int(11) NOT NULL,
  `ds_total_sisa_bayar` int(11) NOT NULL,
  `ds_teknisi` int(11) NOT NULL,
  `ds_teknisi_disarankan` int(11) NOT NULL,
  `ds_penyerah_id` int(11) NOT NULL,
  `ds_ambil_date` varchar(250) NOT NULL,
  `ds_ambil_date_time` varchar(250) NOT NULL,
  `ds_status` int(11) NOT NULL,
  `ds_garansi` varchar(250) NOT NULL,
  `ds_garansi_date_time` varchar(250) NOT NULL,
  `ds_garansi_waktu_angka` int(11) NOT NULL,
  `ds_garansi_waktu_teks` varchar(250) NOT NULL,
  `ds_servis_berkala` varchar(250) NOT NULL,
  `ds_servis_berkala_date_time` varchar(250) NOT NULL,
  `ds_servis_berkala_waktu_angka` int(11) NOT NULL,
  `ds_servis_berkala_waktu_teks` varchar(250) NOT NULL,
  `ds_servis_berkala_teks_wa` text NOT NULL,
  `ds_servis_berkala_status` int(11) NOT NULL,
  `ds_garansi_komplain_date` varchar(250) NOT NULL,
  `ds_garansi_komplain_date_time` varchar(250) NOT NULL,
  `ds_garansi_komplain_penerima_id` int(11) NOT NULL,
  `ds_garansi_komplain_note` text NOT NULL,
  `ds_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `data_servis`
--
DELIMITER $$
CREATE TRIGGER `customer_count_servis` AFTER INSERT ON `data_servis` FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_servis = customer_count_servis+1
    WHERE customer_id = NEW.ds_customer_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `customer_count_servis_delete` AFTER DELETE ON `data_servis` FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_servis = customer_count_servis - 1
WHERE customer_id = OLD.ds_customer_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_sparepart`
--

CREATE TABLE `data_servis_sparepart` (
  `dss_id` int(11) NOT NULL,
  `dss_nama` varchar(500) NOT NULL,
  `dss_harga_beli` varchar(250) NOT NULL,
  `dss_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(250) NOT NULL,
  `dss_qty` int(11) NOT NULL,
  `dss_barang_sn_id` int(11) NOT NULL,
  `dss_barang_option_sn` int(11) NOT NULL,
  `dss_sn` text NOT NULL,
  `dss_id_teknisi` int(11) NOT NULL,
  `dss_nota` varchar(500) NOT NULL,
  `dss_cek` int(11) NOT NULL,
  `dss_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `data_servis_sparepart`
--
DELIMITER $$
CREATE TRIGGER `batal_add_sparepart` AFTER DELETE ON `data_servis_sparepart` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.dss_qty,
 barang_terjual = barang_terjual - OLD.dss_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `data_servis_teknisi`
--

CREATE TABLE `data_servis_teknisi` (
  `dst_id` int(11) NOT NULL,
  `dst_id_nota` int(11) NOT NULL,
  `dst_teknisi_id` int(11) NOT NULL,
  `dst_id_servis` int(11) NOT NULL,
  `dst_kategori_servis` int(11) NOT NULL,
  `dst_nama_servis` varchar(500) NOT NULL,
  `ds_biaya_jasa_teknisi` int(11) NOT NULL,
  `ds_biaya_profit` int(11) NOT NULL,
  `dst_servis_biaya` int(11) NOT NULL,
  `dst_pengambilan_date` varchar(250) NOT NULL,
  `dst_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `ekspedisi_id` int(11) NOT NULL,
  `ekspedisi_nama` varchar(500) NOT NULL,
  `ekspedisi_status` varchar(250) NOT NULL,
  `ekspedisi_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history_servis_tekinis`
--

CREATE TABLE `history_servis_tekinis` (
  `hst_id` int(11) NOT NULL,
  `hst_nota` varchar(500) NOT NULL,
  `hst_teknisi` int(11) NOT NULL,
  `hst_status` int(11) NOT NULL,
  `hst_date` varchar(250) NOT NULL,
  `hst_date_time` varchar(250) NOT NULL,
  `hst_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_invoice` text NOT NULL,
  `hutang_invoice_parent` text NOT NULL,
  `hutang_date` varchar(500) NOT NULL,
  `hutang_date_time` varchar(500) NOT NULL,
  `hutang_kasir` int(11) NOT NULL,
  `hutang_nominal` varchar(500) NOT NULL,
  `hutang_tipe_pembayaran` int(11) NOT NULL,
  `hutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hutang_kembalian`
--

CREATE TABLE `hutang_kembalian` (
  `hl_id` int(11) NOT NULL,
  `hl_invoice` text NOT NULL,
  `hl_invoice_parent` text NOT NULL,
  `hl_date` varchar(500) NOT NULL,
  `hl_date_time` varchar(500) NOT NULL,
  `hl_nominal` varchar(500) NOT NULL,
  `hl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_invoice_count` varchar(250) NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_customer` varchar(500) NOT NULL,
  `invoice_kurir` varchar(500) NOT NULL,
  `invoice_status_kurir` int(11) NOT NULL,
  `invoice_tipe_transaksi` int(11) NOT NULL,
  `invoice_total_beli` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_ongkir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_beli_lama` int(11) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_ongkir_lama` int(11) NOT NULL,
  `invoice_sub_total_lama` int(11) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_marketplace` varchar(500) NOT NULL,
  `invoice_ekspedisi` int(11) NOT NULL,
  `invoice_no_resi` varchar(500) NOT NULL,
  `invoice_date_selesai_kurir` varchar(500) NOT NULL,
  `invoice_piutang` int(11) NOT NULL,
  `invoice_piutang_dp` varchar(500) NOT NULL,
  `invoice_piutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_piutang_lunas` int(11) NOT NULL,
  `invoice_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `invoice`
--
DELIMITER $$
CREATE TRIGGER `customer_count_invoice` AFTER INSERT ON `invoice` FOR EACH ROW BEGIN 
	UPDATE customer SET customer_count_invoice = customer_count_invoice+1
    WHERE customer_id = NEW.invoice_customer;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `customer_count_invoice_delete` AFTER DELETE ON `invoice` FOR EACH ROW BEGIN
 UPDATE customer
 SET customer_count_invoice = customer_count_invoice - 1
WHERE customer_id = OLD.invoice_customer;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian`
--

CREATE TABLE `invoice_pembelian` (
  `invoice_pembelian_id` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `invoice_tgl` varchar(250) NOT NULL,
  `invoice_supplier` varchar(500) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_bayar` int(11) NOT NULL,
  `invoice_kembali` int(11) NOT NULL,
  `invoice_kasir` varchar(500) NOT NULL,
  `invoice_date` date NOT NULL,
  `invoice_date_edit` varchar(500) NOT NULL,
  `invoice_kasir_edit` varchar(250) NOT NULL,
  `invoice_total_lama` varchar(500) NOT NULL,
  `invoice_bayar_lama` varchar(500) NOT NULL,
  `invoice_kembali_lama` varchar(500) NOT NULL,
  `invoice_hutang` int(11) NOT NULL,
  `invoice_hutang_dp` varchar(500) NOT NULL,
  `invoice_hutang_jatuh_tempo` varchar(500) NOT NULL,
  `invoice_hutang_lunas` int(11) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_pembelian_number`
--

CREATE TABLE `invoice_pembelian_number` (
  `invoice_pembelian_number_id` int(11) NOT NULL,
  `invoice_pembelian_number_input` varchar(250) NOT NULL,
  `invoice_pembelian_number_parent` text NOT NULL,
  `invoice_pembelian_number_user` varchar(250) NOT NULL,
  `invoice_pembelian_number_delete` varchar(250) NOT NULL,
  `invoice_pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(500) NOT NULL,
  `kategori_status` varchar(250) NOT NULL,
  `kategori_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_servis`
--

CREATE TABLE `kategori_servis` (
  `kategori_servis_id` int(11) NOT NULL,
  `kategori_servis_nama` varchar(500) NOT NULL,
  `kategori_servis_status` int(11) NOT NULL,
  `kategori_servis_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `kendaraan_id` int(11) NOT NULL,
  `kendaraan_nopol` varchar(500) NOT NULL,
  `kendaraan_pemilik` int(11) NOT NULL,
  `kendaraan_merek` varchar(500) NOT NULL,
  `kendaraan_tipe` varchar(500) NOT NULL,
  `kendaraan_jenis` varchar(500) NOT NULL,
  `kendaraan_tahun_buat` varchar(500) NOT NULL,
  `kendaraan_tahun_rakit` varchar(500) NOT NULL,
  `kendaraan_silinder` varchar(500) NOT NULL,
  `kendaraan_warna` varchar(500) NOT NULL,
  `kendaraan_no_rangka` varchar(500) NOT NULL,
  `kendaraan_no_mesin` varchar(500) NOT NULL,
  `kendaraan_keterangan` text NOT NULL,
  `kendaraan_date` varchar(250) NOT NULL,
  `kendaraan_datetime` varchar(250) NOT NULL,
  `kendaraan_km` int(11) NOT NULL,
  `kendaraan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga_beli` varchar(250) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` varchar(500) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_pembelian`
--

CREATE TABLE `keranjang_pembelian` (
  `keranjang_id` int(11) NOT NULL,
  `keranjang_nama` varchar(500) NOT NULL,
  `keranjang_harga` varchar(250) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `keranjang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_transfer`
--

CREATE TABLE `keranjang_transfer` (
  `keranjang_transfer_id` int(11) NOT NULL,
  `keranjang_transfer_nama` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_kode_slug` text NOT NULL,
  `keranjang_transfer_qty` int(11) NOT NULL,
  `keranjang_barang_sn_id` int(11) NOT NULL,
  `keranjang_barang_option_sn` int(11) NOT NULL,
  `keranjang_sn` text NOT NULL,
  `keranjang_transfer_id_kasir` int(11) NOT NULL,
  `keranjang_id_cek` varchar(500) NOT NULL,
  `keranjang_pengirim_cabang` int(11) NOT NULL,
  `keranjang_penerima_cabang` int(11) NOT NULL,
  `keranjang_transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `laba_bersih`
--

CREATE TABLE `laba_bersih` (
  `lb_id` int(11) NOT NULL,
  `lb_pendapatan_lain` int(11) NOT NULL,
  `lb_pengeluaran_gaji` int(11) NOT NULL,
  `lb_pengeluaran_listrik` int(11) NOT NULL,
  `lb_pengeluaran_tlpn_internet` int(11) NOT NULL,
  `lb_pengeluaran_perlengkapan_toko` int(11) NOT NULL,
  `lb_pengeluaran_biaya_penyusutan` int(11) NOT NULL,
  `lb_pengeluaran_bensin` int(11) NOT NULL,
  `lb_pengeluaran_tak_terduga` int(11) NOT NULL,
  `lb_pengeluaran_lain` int(11) NOT NULL,
  `lb_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laba_bersih`
--

INSERT INTO `laba_bersih` (`lb_id`, `lb_pendapatan_lain`, `lb_pengeluaran_gaji`, `lb_pengeluaran_listrik`, `lb_pengeluaran_tlpn_internet`, `lb_pengeluaran_perlengkapan_toko`, `lb_pengeluaran_biaya_penyusutan`, `lb_pengeluaran_bensin`, `lb_pengeluaran_tak_terduga`, `lb_pengeluaran_lain`, `lb_cabang`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `pembelian_id` int(11) NOT NULL,
  `pembelian_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `pembelian_invoice` text NOT NULL,
  `pembelian_invoice_parent` text NOT NULL,
  `pembelian_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_harga_beli` int(11) NOT NULL,
  `pembelian_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `pembelian`
--
DELIMITER $$
CREATE TRIGGER `barang_pembelian` AFTER INSERT ON `pembelian` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_stock = barang_stock+new.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tidak_jado` AFTER DELETE ON `pembelian` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `penjualan_id` int(11) NOT NULL,
  `penjualan_barang_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_qty` int(11) NOT NULL,
  `keranjang_harga_beli` varchar(500) NOT NULL,
  `keranjang_harga` varchar(500) NOT NULL,
  `keranjang_id_kasir` int(11) NOT NULL,
  `penjualan_invoice` text NOT NULL,
  `penjualan_date` date NOT NULL,
  `barang_qty_lama` varchar(500) NOT NULL,
  `barang_qty_lama_parent` varchar(500) NOT NULL,
  `barang_option_sn` int(11) NOT NULL,
  `barang_sn_id` int(11) NOT NULL,
  `barang_sn_desc` text NOT NULL,
  `penjualan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `batal_beli` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.barang_qty,
 barang_terjual = barang_terjual - OLD.barang_qty
 WHERE
 barang_id = OLD.barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `penjualan_barang` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.barang_qty
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_invoice` text NOT NULL,
  `piutang_date` varchar(500) NOT NULL,
  `piutang_date_time` varchar(500) NOT NULL,
  `piutang_kasir` int(11) NOT NULL,
  `piutang_nominal` varchar(500) NOT NULL,
  `piutang_tipe_pembayaran` int(11) NOT NULL,
  `piutang_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `piutang_kembalian`
--

CREATE TABLE `piutang_kembalian` (
  `pl_id` int(11) NOT NULL,
  `pl_invoice` text NOT NULL,
  `pl_date` varchar(500) NOT NULL,
  `pl_date_time` varchar(500) NOT NULL,
  `pl_nominal` varchar(250) NOT NULL,
  `pl_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `retur`
--

CREATE TABLE `retur` (
  `retur_id` int(11) NOT NULL,
  `retur_barang_id` varchar(500) NOT NULL,
  `retur_invoice` varchar(500) NOT NULL,
  `retur_admin_id` varchar(500) NOT NULL,
  `retur_date` date NOT NULL,
  `retur_alasan` text NOT NULL,
  `barang_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `satuan_id` int(11) NOT NULL,
  `satuan_nama` varchar(500) NOT NULL,
  `satuan_status` varchar(250) NOT NULL,
  `satuan_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `servis_id` int(11) NOT NULL,
  `servis_kode` varchar(500) NOT NULL,
  `servis_kode_slug` varchar(500) NOT NULL,
  `servis_nama` varchar(500) NOT NULL,
  `servis_desc` text NOT NULL,
  `servis_biaya_jasa_teknisi` int(11) NOT NULL,
  `servis_biaya_profit` int(11) NOT NULL,
  `servis_biaya` varchar(500) NOT NULL,
  `servis_kategori` int(11) NOT NULL,
  `servis_status` int(11) NOT NULL,
  `servis_date` varchar(250) NOT NULL,
  `servis_date_time` varchar(250) NOT NULL,
  `servis_id_user_create` int(11) NOT NULL,
  `servis_id_user_edit` int(11) NOT NULL,
  `servis_date_edit` varchar(250) NOT NULL,
  `servis_date_time_edit` varchar(250) NOT NULL,
  `servis_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_nama` varchar(250) NOT NULL,
  `supplier_wa` varchar(250) NOT NULL,
  `supplier_alamat` text NOT NULL,
  `supplier_company` varchar(250) NOT NULL,
  `supplier_status` int(11) NOT NULL,
  `supplier_create` varchar(250) NOT NULL,
  `supplier_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `terlaris`
--

CREATE TABLE `terlaris` (
  `terlaris_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `barang_terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `terlaris`
--
DELIMITER $$
CREATE TRIGGER `barang_terlaris` AFTER INSERT ON `terlaris` FOR EACH ROW BEGIN 
	UPDATE barang SET barang_terjual = barang_terjual+new.barang_terjual
    WHERE barang_id = NEW.barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `toko_id` int(11) NOT NULL,
  `toko_nama` varchar(500) NOT NULL,
  `toko_kota` varchar(250) NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_tlpn` varchar(250) NOT NULL,
  `toko_wa` varchar(250) NOT NULL,
  `toko_email` varchar(500) NOT NULL,
  `toko_tipe_print_toko` int(11) NOT NULL,
  `toko_lebar_print_toko` int(11) NOT NULL,
  `toko_tipe_print_servis` int(11) NOT NULL,
  `toko_lebar_print_servis` int(11) NOT NULL,
  `toko_link` varchar(250) NOT NULL,
  `toko_teks_nota_servis_masuk` text NOT NULL,
  `toko_teks_nota_servis_ambil` text NOT NULL,
  `toko_status` int(11) NOT NULL,
  `toko_ongkir` int(11) NOT NULL,
  `toko_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`toko_id`, `toko_nama`, `toko_kota`, `toko_alamat`, `toko_tlpn`, `toko_wa`, `toko_email`, `toko_tipe_print_toko`, `toko_lebar_print_toko`, `toko_tipe_print_servis`, `toko_lebar_print_servis`, `toko_link`, `toko_teks_nota_servis_masuk`, `toko_teks_nota_servis_ambil`, `toko_status`, `toko_ongkir`, `toko_cabang`) VALUES
(1, 'Bengkel Motor Maju Lancar', 'Surabaya Jawa Timur', 'RT 1/ RW 2 Jln Pahlawan Pertama', '031890876', '085780956487', 'senimankoding@gmail.com', 0, 8, 0, 8, 'http://localhost/pos-bengkel-seniman-koding', 'Garansi Servis maksimal 1 Minggu', 'Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil Barang servis sudah siambil', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_ref` text NOT NULL,
  `transfer_count` int(11) NOT NULL,
  `transfer_date` varchar(250) NOT NULL,
  `transfer_date_time` varchar(250) NOT NULL,
  `transfer_terima_date` varchar(250) NOT NULL,
  `transfer_terima_date_time` varchar(250) NOT NULL,
  `transfer_note` text NOT NULL,
  `transfer_pengirim_cabang` int(11) NOT NULL,
  `transfer_penerima_cabang` int(11) NOT NULL,
  `transfer_id_tipe_keluar` int(11) NOT NULL,
  `transfer_id_tipe_masuk` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `transfer_user` int(11) NOT NULL,
  `transfer_user_penerima` int(11) NOT NULL,
  `transfer_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_keluar`
--

CREATE TABLE `transfer_produk_keluar` (
  `tpk_id` int(11) NOT NULL,
  `tpk_transfer_barang_id` int(11) NOT NULL,
  `tpk_barang_id` int(11) NOT NULL,
  `tpk_kode_slug` varchar(500) NOT NULL,
  `tpk_qty` int(11) NOT NULL,
  `tpk_ref` text NOT NULL,
  `tpk_date` varchar(11) NOT NULL,
  `tpk_date_time` varchar(500) NOT NULL,
  `tpk_barang_option_sn` int(11) NOT NULL,
  `tpk_barang_sn_id` int(11) NOT NULL,
  `tpk_barang_sn_desc` varchar(500) NOT NULL,
  `tpk_user` int(11) NOT NULL,
  `tpk_pengirim_cabang` int(11) NOT NULL,
  `tpk_penerima_cabang` int(11) NOT NULL,
  `tpk_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `transfer_produk_keluar`
--
DELIMITER $$
CREATE TRIGGER `batal_transfer` AFTER DELETE ON `transfer_produk_keluar` FOR EACH ROW BEGIN
 UPDATE barang
 SET barang_stock = barang_stock + OLD.tpk_qty
 WHERE
 barang_id = OLD.tpk_barang_id;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pengeluaran_barang` AFTER INSERT ON `transfer_produk_keluar` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock-NEW.tpk_qty
    WHERE barang_id = NEW.tpk_barang_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_produk_masuk`
--

CREATE TABLE `transfer_produk_masuk` (
  `tpm_id` int(11) NOT NULL,
  `tpm_kode_slug` text NOT NULL,
  `tpm_qty` int(11) NOT NULL,
  `tpm_ref` text NOT NULL,
  `tpm_date` varchar(250) NOT NULL,
  `tpm_date_time` varchar(250) NOT NULL,
  `tpm_barang_option_sn` int(11) NOT NULL,
  `tpm_barang_sn_id` int(11) NOT NULL,
  `tpm_barang_sn_desc` varchar(500) NOT NULL,
  `tpm_user` int(11) NOT NULL,
  `tpm_pengirim_cabang` int(11) NOT NULL,
  `tpm_penerima_cabang` int(11) NOT NULL,
  `tpm_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `transfer_produk_masuk`
--
DELIMITER $$
CREATE TRIGGER `tambah_stock_cabang` AFTER INSERT ON `transfer_produk_masuk` FOR EACH ROW BEGIN
	UPDATE barang SET barang_stock=barang_stock+NEW.tpm_qty
    WHERE barang_kode_slug = NEW.tpm_kode_slug && barang_cabang = NEW.tpm_penerima_cabang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_select_cabang`
--

CREATE TABLE `transfer_select_cabang` (
  `tsc_id` int(11) NOT NULL,
  `tsc_cabang_pusat` int(11) NOT NULL,
  `tsc_cabang_penerima` int(11) NOT NULL,
  `tsc_user_id` int(11) NOT NULL,
  `tsc_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(500) NOT NULL,
  `user_no_hp` varchar(250) NOT NULL,
  `user_alamat` text NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `user_create` varchar(250) NOT NULL,
  `user_level` varchar(250) NOT NULL,
  `user_gaji_pokok` int(11) NOT NULL,
  `user_bonus` int(11) NOT NULL,
  `user_status` varchar(250) NOT NULL,
  `user_cabang_parent` int(11) NOT NULL,
  `user_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_no_hp`, `user_alamat`, `user_email`, `user_password`, `user_create`, `user_level`, `user_gaji_pokok`, `user_bonus`, `user_status`, `user_cabang_parent`, `user_cabang`) VALUES
(3, 'Seniman Koding', '086798890000', 'Surabaya', 'senimankoding@gmail.com', '6afd3b745ca3190e8b318e043a28c239', '30 March 2020 9:17:00 pm', 'super admin', 0, 0, '1', 0, 0),
(7, 'Naga Afandi ', '086798890000', 'Surabaya', 'superadmin@senimankoding.com', '550e1bafe077ff0b0b67f4e32f29d751', '16 April 2020 9:31:04 pm', 'super admin', 0, 0, '0', 0, 0),
(8, 'Doni Afandi', '085780956487', 'Surabaya', 'admin@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '16 April 2020 9:32:06 pm', 'admin', 0, 0, '1', 0, 0),
(15, 'Kasir', '087654567809', 'Surabaya', 'kasir@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '04 September 2021 1:31:34 pm', 'kasir', 500000, 0, '1', 0, 0),
(17, 'Afan T', '082276790999', 'Surabaya', 'mekanik@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '08 December 2021 2:58:14 pm', 'mekanik', 1500000, 100000, '1', 0, 0),
(18, 'Teknisi 2', '096796796776', 'Surabaya', 'teknisi2@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '30 January 2022 6:56:29 pm', 'teknisi', 0, 0, '1', 0, 0),
(22, 'Resita', '085789651299', 'Surabaya', 'kasirpusat@senimankoding.com', '6afd3b745ca3190e8b318e043a28c239', '16 September 2022 1:29:43 pm', 'kasir', 0, 0, '1', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `barang_sn`
--
ALTER TABLE `barang_sn`
  ADD PRIMARY KEY (`barang_sn_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `data_servis`
--
ALTER TABLE `data_servis`
  ADD PRIMARY KEY (`ds_id`);

--
-- Indexes for table `data_servis_sparepart`
--
ALTER TABLE `data_servis_sparepart`
  ADD PRIMARY KEY (`dss_id`);

--
-- Indexes for table `data_servis_teknisi`
--
ALTER TABLE `data_servis_teknisi`
  ADD PRIMARY KEY (`dst_id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`ekspedisi_id`);

--
-- Indexes for table `history_servis_tekinis`
--
ALTER TABLE `history_servis_tekinis`
  ADD PRIMARY KEY (`hst_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  ADD PRIMARY KEY (`hl_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  ADD PRIMARY KEY (`invoice_pembelian_id`);

--
-- Indexes for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  ADD PRIMARY KEY (`invoice_pembelian_number_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kategori_servis`
--
ALTER TABLE `kategori_servis`
  ADD PRIMARY KEY (`kategori_servis_id`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`kendaraan_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  ADD PRIMARY KEY (`keranjang_id`);

--
-- Indexes for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  ADD PRIMARY KEY (`keranjang_transfer_id`);

--
-- Indexes for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  ADD PRIMARY KEY (`lb_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`pembelian_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`penjualan_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `retur`
--
ALTER TABLE `retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`servis_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `terlaris`
--
ALTER TABLE `terlaris`
  ADD PRIMARY KEY (`terlaris_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`toko_id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  ADD PRIMARY KEY (`tpk_id`);

--
-- Indexes for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  ADD PRIMARY KEY (`tpm_id`);

--
-- Indexes for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  ADD PRIMARY KEY (`tsc_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `barang_sn`
--
ALTER TABLE `barang_sn`
  MODIFY `barang_sn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_servis`
--
ALTER TABLE `data_servis`
  MODIFY `ds_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `data_servis_sparepart`
--
ALTER TABLE `data_servis_sparepart`
  MODIFY `dss_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_servis_teknisi`
--
ALTER TABLE `data_servis_teknisi`
  MODIFY `dst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  MODIFY `ekspedisi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history_servis_tekinis`
--
ALTER TABLE `history_servis_tekinis`
  MODIFY `hst_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hutang_kembalian`
--
ALTER TABLE `hutang_kembalian`
  MODIFY `hl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice_pembelian`
--
ALTER TABLE `invoice_pembelian`
  MODIFY `invoice_pembelian_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_pembelian_number`
--
ALTER TABLE `invoice_pembelian_number`
  MODIFY `invoice_pembelian_number_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kategori_servis`
--
ALTER TABLE `kategori_servis`
  MODIFY `kategori_servis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `kendaraan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keranjang_pembelian`
--
ALTER TABLE `keranjang_pembelian`
  MODIFY `keranjang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keranjang_transfer`
--
ALTER TABLE `keranjang_transfer`
  MODIFY `keranjang_transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laba_bersih`
--
ALTER TABLE `laba_bersih`
  MODIFY `lb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `pembelian_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `piutang_kembalian`
--
ALTER TABLE `piutang_kembalian`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `retur`
--
ALTER TABLE `retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `satuan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `servis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `terlaris`
--
ALTER TABLE `terlaris`
  MODIFY `terlaris_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `toko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_produk_keluar`
--
ALTER TABLE `transfer_produk_keluar`
  MODIFY `tpk_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_produk_masuk`
--
ALTER TABLE `transfer_produk_masuk`
  MODIFY `tpm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transfer_select_cabang`
--
ALTER TABLE `transfer_select_cabang`
  MODIFY `tsc_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
