-- MySQL dump 10.15  Distrib 10.0.36-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db_p45r0p
-- ------------------------------------------------------
-- Server version	10.0.36-MariaDB-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_accounting`
--

DROP TABLE IF EXISTS `tb_accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_accounting` (
  `id_accounting` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `laba_rugi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_accounting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_accounting`
--

LOCK TABLES `tb_accounting` WRITE;
/*!40000 ALTER TABLE `tb_accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detail_order`
--

DROP TABLE IF EXISTS `tb_detail_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detail_order` (
  `id_detail_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `jumlah_order` int(11) NOT NULL,
  `total_harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_detail_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detail_order`
--

LOCK TABLES `tb_detail_order` WRITE;
/*!40000 ALTER TABLE `tb_detail_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detail_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detail_payment`
--

DROP TABLE IF EXISTS `tb_detail_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detail_payment` (
  `id_status_payment` int(11) NOT NULL AUTO_INCREMENT,
  `id_payment` int(11) NOT NULL,
  `tgl_update_payment` date NOT NULL,
  `detail_payment` varchar(150) DEFAULT NULL,
  `sisa_payment` int(11) NOT NULL,
  `bukti_payment` varchar(255) NOT NULL,
  PRIMARY KEY (`id_status_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detail_payment`
--

LOCK TABLES `tb_detail_payment` WRITE;
/*!40000 ALTER TABLE `tb_detail_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detail_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detail_product`
--

DROP TABLE IF EXISTS `tb_detail_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detail_product` (
  `id_detail_product` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `tgl_datang` date NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_product` int(11) NOT NULL,
  `jenis_satuan` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `ukuran` varchar(20) NOT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `status_product` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_detail_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detail_product`
--

LOCK TABLES `tb_detail_product` WRITE;
/*!40000 ALTER TABLE `tb_detail_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detail_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detail_user`
--

DROP TABLE IF EXISTS `tb_detail_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detail_user` (
  `id_detail_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `ttl_user` date DEFAULT NULL,
  `email_user` varchar(150) DEFAULT NULL,
  `page_Set` int(11) DEFAULT '0',
  PRIMARY KEY (`id_detail_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detail_user`
--

LOCK TABLES `tb_detail_user` WRITE;
/*!40000 ALTER TABLE `tb_detail_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detail_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_order` date DEFAULT NULL,
  `status_order` varchar(150) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_payment`
--

DROP TABLE IF EXISTS `tb_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_payment` (
  `id_payment` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `tgl_payment` date NOT NULL,
  `total_payment` int(11) NOT NULL,
  `metod_payment` varchar(20) NOT NULL,
  `status_payment` varchar(20) NOT NULL,
  PRIMARY KEY (`id_payment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_payment`
--

LOCK TABLES `tb_payment` WRITE;
/*!40000 ALTER TABLE `tb_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pengiriman`
--

DROP TABLE IF EXISTS `tb_pengiriman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pengiriman` (
  `id_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `status_pengiriman` varchar(20) NOT NULL,
  `tgl_pengiriman` date NOT NULL,
  `alamat_tujuan` varchar(255) NOT NULL,
  `alamat_asal` varchar(255) NOT NULL,
  `id_order` int(11) NOT NULL,
  PRIMARY KEY (`id_pengiriman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pengiriman`
--

LOCK TABLES `tb_pengiriman` WRITE;
/*!40000 ALTER TABLE `tb_pengiriman` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pengiriman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL AUTO_INCREMENT,
  `name_product` varchar(20) NOT NULL,
  `jenis_product` varchar(150) NOT NULL,
  `harga_product` int(11) NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status_user`
--

DROP TABLE IF EXISTS `tb_status_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_status_user` (
  `id_status_user` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `name_status` varchar(20) NOT NULL,
  `detail_status` varchar(150) NOT NULL,
  PRIMARY KEY (`id_status_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status_user`
--

LOCK TABLES `tb_status_user` WRITE;
/*!40000 ALTER TABLE `tb_status_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_status_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_supplier`
--

DROP TABLE IF EXISTS `tb_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(150) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `nomor_supplier` varchar(25) DEFAULT NULL,
  `detail_supplier` varchar(255) DEFAULT NULL,
  `jenis_barang` varchar(255) NOT NULL,
  `penjabaran_jenis` varchar(255) NOT NULL,
  `status_supplier` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_supplier`
--

LOCK TABLES `tb_supplier` WRITE;
/*!40000 ALTER TABLE `tb_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-29 14:21:48
