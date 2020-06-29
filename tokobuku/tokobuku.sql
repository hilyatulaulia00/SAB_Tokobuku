# Host: localhost  (Version 5.5.5-10.4.11-MariaDB)
# Date: 2020-06-29 16:52:44
# Generator: MySQL-Front 5.3  (Build 5.33)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'tokobuku.com','tokobuku','Toko Buku Aulia');

#
# Structure for table "ongkir"
#

DROP TABLE IF EXISTS `ongkir`;
CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

#
# Data for table "ongkir"
#

INSERT INTO `ongkir` VALUES (1,'Watansoppeng',20000),(2,'Sengkang',30000);

#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(20) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Data for table "pelanggan"
#

INSERT INTO `pelanggan` VALUES (1,'hilyatul0905@gmail.com','hilyatul0905','hilyatul','082293514770',''),(2,'navyaazzahra01@gmail.co','navya01','Navya Azzahra','081245678219',''),(3,'sulfiana2310@gmail.com','sulfiana','Sulfiana','081340202227','Watansoppeng');

#
# Structure for table "pembelian"
#

DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

#
# Data for table "pembelian"
#

INSERT INTO `pembelian` VALUES (1,2,1,'2020-06-01',100000,'',0,'','pending'),(2,2,1,'2020-06-01',60000,'',0,'','pending'),(5,2,0,'2020-06-26',290000,'',0,'','pending'),(6,2,0,'2020-06-26',290000,'',0,'','pending'),(7,2,0,'2020-06-26',290000,'',0,'','pending'),(8,2,2,'2020-06-26',320000,'',0,'','pending'),(9,2,1,'2020-06-26',310000,'',0,'','pending'),(10,2,1,'2020-06-26',120000,'',0,'','pending'),(11,2,1,'2020-06-26',190000,'',0,'','pending'),(12,2,1,'2020-06-26',220000,'Watansoppeng',20000,'','pending'),(13,2,2,'2020-06-26',260000,'Sengkang',30000,'jl poros soppeng cabbeng no 20 akkampeng desa maccile kode pos 9081','pending'),(14,1,0,'2020-06-28',230000,'',0,'','pending'),(15,1,1,'2020-06-28',210000,'Watansoppeng',20000,'','pending'),(16,1,2,'2020-06-28',130000,'Sengkang',30000,'','pending'),(17,1,2,'2020-06-28',30000,'Sengkang',30000,'','pending'),(18,1,2,'2020-06-28',130000,'Sengkang',30000,'','pending'),(19,1,1,'2020-06-28',120000,'Watansoppeng',20000,'Jln.Kemakmuran watnsoppeng no 21 kode pos 08199','pending'),(20,1,1,'2020-06-28',150000,'Watansoppeng',20000,'jl kayangan watansoppeng 08190','pending'),(21,3,1,'2020-06-28',120000,'Watansoppeng',20000,'jl pemuda','pending'),(22,3,1,'2020-06-28',110000,'Watansoppeng',20000,'jlpemuda','pending'),(23,1,1,'2020-06-28',150000,'Watansoppeng',20000,'jl.kemakmuran','pending'),(24,1,2,'2020-06-28',225000,'Sengkang',30000,'jl pahlawan','pending'),(25,3,2,'2020-06-29',230000,'Sengkang',30000,'jl balubu no 12 kode pos 09089','pending');

#
# Structure for table "pembelian_produk"
#

DROP TABLE IF EXISTS `pembelian_produk`;
CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

#
# Data for table "pembelian_produk"
#

INSERT INTO `pembelian_produk` VALUES (1,1,1,1,'',0,0,0,0),(2,1,2,1,'',0,0,0,0),(3,0,20,2,'',0,0,0,0),(4,0,23,1,'',0,0,0,0),(5,8,20,2,'',0,0,0,0),(6,8,23,1,'',0,0,0,0),(7,9,20,2,'',0,0,0,0),(8,9,23,1,'',0,0,0,0),(9,10,20,1,'',0,0,0,0),(10,11,27,1,'Novel Merindu Baginda Nabi',100000,300,300,100000),(11,11,22,1,'Novel Sebuah Seni untuk Bersikap Bodo Amat',70000,300,300,70000),(12,12,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(13,12,24,1,'Novel Melangkah Searah',100000,210,210,100000),(14,13,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(15,13,21,1,'Buku Manajemen Sumber Daya Pembelajaran Bahasa Berbantuan Komputer',130000,315,315,130000),(16,14,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(17,14,21,1,'Buku Pembelajaran Bhs Berbantuan Komputer',130000,315,315,130000),(18,15,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(19,15,23,1,'Novel KKN di desa penari',90000,250,250,90000),(20,16,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(21,18,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(22,19,20,1,'Novel Selembar itu Berarti',100000,200,200,100000),(23,20,21,1,'Buku Pembelajaran Bhs Berbantuan Komputer',130000,315,315,130000),(24,21,24,1,'Novel Melangkah Searah',100000,210,210,100000),(25,22,23,1,'Novel KKN di desa penari',90000,250,250,90000),(26,23,21,1,'Buku Pembelajaran Bhs Berbantuan Komputer',130000,315,315,130000),(27,24,21,1,'Buku Pembelajaran Bhs komputer',130000,315,315,130000),(28,24,26,1,'Novel Hijrah itu Cinta',65000,250,250,65000),(29,25,21,1,'Buku Pembelajaran Bhs komputer',130000,315,315,130000),(30,25,25,1,'Buku Pemprograman Web Edisi Revisi',70000,350,350,70000);

#
# Structure for table "produk"
#

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` varchar(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

#
# Data for table "produk"
#

INSERT INTO `produk` VALUES (20,'Novel Selembar itu Berarti',100000,'200','Selembar itu berarti.png','Selembar itu berarti bercerita mengenai perjalanan kakak beradik yang penuh liku,lembar demi lembar kertas bekas mereka kumpulkan untuk biaya sekolah.'),(21,'Buku Pembelajaran Bhs komputer',130000,'315','IMG-20200628-WA0045.jpg','buku ini dijadikan sebagai Referensi matakuliah'),(22,'Novel Seni utk Bersikap Bodo Amat',70000,'300','sebuahseni.JPG','Dalam hidup ini kita hanya punya kepedulian dalam jumlah yang terbatas.Makanya anda harus bijaksana dalam menentukan kepedulian anda.'),(25,'Buku Pemprograman Web Edisi Revisi',70000,'350','pemprog.jpg','Buku Yang cocok untuk menyelesaikan tugas mata kuliah pemprograman web dan tugas akhir dengan topik web atau sistem informasi'),(26,'Novel Hijrah itu Cinta',65000,'250','hijrah.jpg','Sebuah kesadaran untuk berubah menyeruak dalam hati,mampukah ia bertaubat dan menjalani proses hijrah yang sulit?akan kah masa depan yang indah masih pantas ia dapati? '),(27,'Novel Merindu Baginda Nabi',110000,'300','merindu.jpg','Sebuah novel yang emnggambarkan perjuangan seorang gadis muda sederhana namun kaya prestasi'),(28,'Novel Pulang',70000,'350','pulang.jpg','Sebuah kisah tentang perjalanan pulang,melalui pertarungan demi pertarungan,kesedihan demi kesedihan,untuk memeluk erat semua kebencian dan rasa sakit '),(29,'Novel Romansa di bawah Langit',80000,'300','romansa langit.jpg','Persahabtan diuji ketika enam manusia memutuskan untuk melakkukan petualanan kekota malang.dibawah romansa langit malang,tabir rahasia satu persatu terungkap,mampukah mereka bertahan');
