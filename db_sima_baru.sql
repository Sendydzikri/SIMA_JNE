-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 07:18 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kp`
--
CREATE DATABASE IF NOT EXISTS `db_kp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_kp`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_kelas`
--

CREATE TABLE `tbl_detail_kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nim` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_detail_kelas`
--

INSERT INTO `tbl_detail_kelas` (`id_kelas`, `nim`) VALUES
('tYr7ondmor', '3411180882'),
('tYr7ondmor', '3411181060'),
('tYr7ondmor', '3411181071');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `id` int(11) NOT NULL,
  `nid` varchar(12) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id`, `nid`, `nama_dosen`, `password`) VALUES
(1, '22341', 'Tachbir Hendro Sudjono', 'Password'),
(2, '22340', 'Adam Syaifur', 'damdungdet'),
(4, '22349', 'Nadhif S.Kom', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `nama_kelas` varchar(11) NOT NULL,
  `nid` varchar(10) NOT NULL,
  `semester` int(2) NOT NULL,
  `jenis_semester` enum('Ganjil','Genap') NOT NULL,
  `jadwal` enum('senin','selasa','rabu','kamis','jumat','sabtu','minggu') NOT NULL,
  `jam_masuk` varchar(10) NOT NULL,
  `jam_keluar` varchar(10) NOT NULL,
  `total_jam` int(11) NOT NULL,
  `tahun_ajar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `kode_matkul`, `nama_kelas`, `nid`, `semester`, `jenis_semester`, `jadwal`, `jam_masuk`, `jam_keluar`, `total_jam`, `tahun_ajar`) VALUES
('tYr7ondmor', 'IF001', 'A', '22340', 1, 'Ganjil', 'kamis', '13:30', '14:30', 2, '2015');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nama_mahasiswa` varchar(50) NOT NULL,
  `tahun_masuk` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`id`, `nim`, `nama_mahasiswa`, `tahun_masuk`, `status`, `password`) VALUES
(15, '3411151061', 'Adnan idris', '2015', 'Aktif', 'password'),
(16, '3411180882', 'Djoehana', '2018', 'Aktif', 'password'),
(17, '3411181071', 'Bernard', '2018', 'Aktif', 'password'),
(18, '3411181072', 'Mahfoudz', '2018', 'Aktif', 'password'),
(19, '3411181073', 'Richardson Azriel', '2018', 'Aktif', 'password'),
(20, '3411141060', 'Mhs Abadi', '2014', 'Aktif', 'password'),
(21, '3411114182', 'Mahfoudz', '2014', 'Aktif', 'passwordd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(50) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `jenis_matkul` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`id`, `kode_matkul`, `nama_matkul`, `jumlah_sks`, `jenis_matkul`, `semester`) VALUES
(7, 'IF001', 'Algoritma', 4, 'Teori', 1),
(8, 'S1112', 'Pengantar ICT', 3, 'Praktikum', 1),
(9, 'KU1012', 'Bahasa Inggris 2', 2, 'Teori', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wali_dosen`
--

CREATE TABLE `tbl_wali_dosen` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nid` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_wali_dosen`
--

INSERT INTO `tbl_wali_dosen` (`id`, `nim`, `nid`) VALUES
(205, '3411151060', '22341'),
(206, '3411151061', '22340'),
(201, '3411180882', '22341'),
(200, '3411181060', '22341'),
(202, '3411181071', '22340'),
(203, '3411181072', '22340'),
(204, '3411181073', '22349');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wali_dosen`
--
ALTER TABLE `tbl_wali_dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nim` (`nim`,`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_wali_dosen`
--
ALTER TABLE `tbl_wali_dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- Database: `db_sima`
--
CREATE DATABASE IF NOT EXISTS `db_sima` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sima`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aset`
--

CREATE TABLE `tbl_aset` (
  `id_aset` varchar(10) NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `jumlah_aset` int(11) NOT NULL,
  `id_kategori` varchar(10) NOT NULL,
  `id_pengajuan` varchar(10) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_aset`
--

CREATE TABLE `tbl_kategori_aset` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manajemen_aset`
--

CREATE TABLE `tbl_manajemen_aset` (
  `id` varchar(10) NOT NULL,
  `tahun_perkiraan` date NOT NULL,
  `biaya_perkiraan` int(11) NOT NULL,
  `biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `nama_aset` varchar(50) NOT NULL,
  `id_kategori` varchar(50) NOT NULL,
  `jumlah_aset` int(11) NOT NULL,
  `harga_aset` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyusutan`
--

CREATE TABLE `tbl_penyusutan` (
  `id_penyusutan` varchar(10) NOT NULL,
  `id_aset` varchar(10) NOT NULL,
  `residu` int(11) NOT NULL,
  `umur_ekonomis` int(11) NOT NULL,
  `uem` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(10) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `alamat`, `email`, `username`, `password`, `jabatan`) VALUES
('abc', 'Sendy Dzikri Ferdiansyah', 'bandung', 'dzikrisendy6@gmail.com', 'sendy', '12345', 'admin'),
('aGblz6RfgS', 'Putri Salsabila', 'Bekasi', 'putrisbr27@gmail.com', 'putrisbr', '$2y$10$Ljn2rTFVhg7OSgRpg1t3tuEkgsubaUtkMfF/DnxUYbTR4/hBWXwW6', 'finance staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);
--
-- Database: `db_tiket`
--
CREATE DATABASE IF NOT EXISTS `db_tiket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_tiket`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_informasi`
--

CREATE TABLE `tbl_informasi` (
  `id_informasi` int(11) NOT NULL,
  `nama_informasi` varchar(255) NOT NULL,
  `penjelasan_informasi` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_informasi`
--

INSERT INTO `tbl_informasi` (`id_informasi`, `nama_informasi`, `penjelasan_informasi`, `tanggal`, `foto`) VALUES
(4, 'Promo', 'promo di bulan juli', '2021-08-20', ''),
(5, '8.8', 'promo 8.8 ', '2021-08-24', 'Khalid-bin-Walid.jpg'),
(6, 'Voucer', '123', '2021-08-27', 'haryanto.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id_mobil` int(11) NOT NULL,
  `plat_nomor` varchar(255) NOT NULL,
  `class_kendaraan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `kapasitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id_mobil`, `plat_nomor`, `class_kendaraan`, `foto`, `kapasitas`) VALUES
(6, 'D234Zbr', 'Ekonomi', '', '4049'),
(7, 'D234Zbr1', 'VVIP', '', '401'),
(8, '1234590', 'Ekonomi', 'damri.jpg', '401'),
(13, 'D 325 ZBT', 'VVIP', 'snaping.png', '200'),
(14, 'D3723727AUD', 'Ekonomi', 'Khalid-bin-Walid.jpg', '3001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat_pelanggan` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `username`, `password`) VALUES
(1, 'vita', 'banyuwangi', 'vita alvia', '123456'),
(2, 'ariel', 'banyuwangi', 'ariel', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sewa`
--

CREATE TABLE `tbl_sewa` (
  `id_sewa` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tgl_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama`, `username`, `password`, `jabatan`) VALUES
(1, 'jaja', 'ocha', 'asdasdasda', 'Admin'),
(2, 'kkarta', 'ocha112', '', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbl_sewa`
--
ALTER TABLE `tbl_sewa`
  ADD PRIMARY KEY (`id_sewa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_informasi`
--
ALTER TABLE `tbl_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sewa`
--
ALTER TABLE `tbl_sewa`
  MODIFY `id_sewa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `mica`
--
CREATE DATABASE IF NOT EXISTS `mica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mica`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_16_082719_create_packages_table', 1),
(5, '2021_06_16_082726_create_transactions_table', 1),
(6, '2021_07_22_132431_create_users_referal_table', 1),
(7, '2021_07_22_132536_create_users_point_table', 1),
(8, '2021_07_22_132627_create_users_commission_table', 1),
(9, '2021_07_22_132659_create_products_table', 1),
(10, '2021_07_30_135433_create_users_shipment_table', 1),
(11, '2021_07_30_183837_create_users_widthdraw_table', 1),
(12, '2021_07_31_224527_create_rewards_table', 1),
(13, '2021_07_31_224731_create_users_reward_table', 1),
(14, '2021_07_31_235351_create_users_omzet_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_point` int(11) NOT NULL DEFAULT 0,
  `package_price` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_minimum` int(11) NOT NULL DEFAULT 0,
  `package_benefit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_stock` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_name`, `package_point`, `package_price`, `package_minimum`, `package_benefit`, `package_stock`, `created_at`, `updated_at`) VALUES
('5037563943', 'TITANIUM', 2, '200000', 100, 'Lorem ipsum dolor sit amet', 20, '2021-08-12 21:12:38', '2021-08-13 00:40:10'),
('6263325052', 'SILVER', 1, '400000', 10, 'Lorem ipsum dolor sit amet', 0, '2021-08-12 21:12:38', '2021-08-12 21:12:38'),
('8331964050', 'BRONZES', 12, '89', 91, 'bisa naik haji bersama ustadz', 9, '2021-08-13 15:12:40', '2021-08-13 15:14:54'),
('9985289339', 'PLATINUM', 1, '350000', 50, 'Lorem ipsum dolor sit amet', 90, '2021-08-12 21:12:38', '2021-08-13 00:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `product_photo`, `created_at`, `updated_at`) VALUES
('0053071158', 'MICA NIGHT CREAM 15 Gr', '<h4>BRIGHTENING & MOISTURIZING</h4><br/>Kandungan : <br/>- Niacinamide<br/>- Glycolic Acid<br/>- Lactic Acid <br/>- Tranexamoyl Dipeptide-23<br/><p>MICA NIGHT CREAM Diformulasikan khusus untuk mencerahkan dan melembabkan kulit, dengan kandungan Niacinamide membantu meningkatkan kecerahan warna kulit dan di kombinasikan dengan Dimethicone dan Mineral Oil yang membantu meningkatkan kelembaban kulit. Serta dengan kandunagn AHA membantu menghilangkan sel sel kulit mati. Dengan tekstur yang lembut menjadikan cream mudah terserap kulit, tidak perih dan tidakmenimbulkan kemerahan</p>', '/img/products/nightcream.jpeg', '2021-08-12 21:12:38', '2021-08-12 21:12:38'),
('0572145103', 'MICA REFRESHING TONER 100 Ml', '<h4>REFRESHING & MOISTURIZING</h4><br/>Kandungan : <br/>- Chamomilla recutita (Matricaria)extract<br/>- Allantoin<br/>- Schizophyllan<br/><p>MICA REFRESHING TONER Diformulasikan khusus dengan kandungan Chamomilla recurita (Matricaria) extract dan dikombinasikan dengan fermentasi dari jamur Schizophyllan yang berfungsi sebagai moisturizer dan untuk mengurangi peradangan kulit akibat  jerawat . Di perkaya dengan allantoin yang berfungsi sebagai booster anti-inflamasi dan menghidrasi kulit dengan baik.</p>', '/img/products/refreshing-toner.jpeg', '2021-08-12 21:12:38', '2021-08-12 21:12:38'),
('2318040782', 'MICA SERUM ACNE 15 Gr', '<h4>ACNE CONTROL (PREVENT & ACNE CARE)</h4><br/>Kandungan : <br/>- Salycic Acid<br/>- Niacinamide<br/>- Sodium hyaluronate<br/>- Schizophyllan<br/><p>MICA SERUM ACNE Diformulasikan khusus untuk mencegah dan mengilangkan jerawat, dengan kandungan Salycic Acid yang merupakan bahan aktif untuk mencegah dan menghilangkan jerawat, Niacinamide dan fermentasi jamur Schizophyllan untuk mengurangi peradangan kulit akibat jerawat serta memudarkan bekas-bekas jerawat.. Sodium Hyaluronat merupakan role mode dalam moisturizer guna menjaga kelembaban kulit.</p>', '/img/products/serum-anti-acne.jpeg', '2021-08-12 21:12:38', '2021-08-12 21:12:38'),
('3380817992', 'MICA FACIAL WASH FOR NORMAL to Oily Skin 100 Ml', '<h4>DEEP CLEANSING & MOISTURIZING</h4><br/>Harga Satuan : Rp. 75.000,-<br/>Kandungan : <br/>- Cucumber extract <br/>- Allantoin<br/><p>Mica Facial Wash for Normal to Oily Skin Dengan busa yang lembut untuk mengangkat kotoran, debu dan sisa minyak pada wajah. Diformulasikan khusus dengan kandungan lauryl glucoside cocok untuk kulit sensitif. Dan dokombinasikan dengan Cucumber Extract yang berfungsi memberikan kelambaban pada kuit serta diperkaya dengan Allantoin yang berfungsi sebagai booster anti-inflamasi dan menghidrasi kulit dengan baik.</p>', '/img/products/facial-wash.jpeg', '2021-08-12 21:12:38', '2021-08-12 21:12:38'),
('8451954930', 'MICA DAY CREAM 15 Gr', '<h4>SUNSCREEN PROTECTION & BRIGHTENING</h4><br/>Kandungan : <br/>- Titanium Dioxide<br/>- Niacinamide<br/>- Ethylhexyl Methoxynnamate <br/>- Butyl Methoxydibenzoylmethane<br/>- Ethylhexyl Triazone<br/>- Octocrylene</br><p>MICA DAY CREAM Dengan Kandunagn Bahan aktif tabir surya dari titanium dioxide, ethylhexyl methoxynnamate, butyl methoxydibenzoylmethane, ethylhexyl triazone, octocrylene, untuk melindungin kulit dari pengaruh buruk sinar matahari. Dan dikombinasikan Niacinamide untuk membantu mencerahkan kulit.</p>', '/img/products/daycream.jpeg', '2021-08-12 21:12:38', '2021-08-12 21:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `reward_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_point` int(11) NOT NULL DEFAULT 0,
  `reward_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`reward_id`, `reward`, `reward_description`, `reward_point`, `reward_status`, `created_at`, `updated_at`) VALUES
('9757878250', 'hadiah_1', '22', 23, 24, '2021-08-13 10:37:59', '2021-08-13 11:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_qty` int(11) NOT NULL DEFAULT 0,
  `transaction_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_total` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` tinyint(4) NOT NULL DEFAULT 0,
  `transaction_shipment` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `user_id`, `package_id`, `transaction_date`, `transaction_qty`, `transaction_description`, `transaction_total`, `transaction_status`, `transaction_shipment`, `created_at`, `updated_at`) VALUES
('1677789638', '4521975968', '6263325052', '2021-08-14 23:35:27', 90, 'Pembelian Paket SILVER', '36000000', 0, 1, '2021-08-14 16:35:27', '2021-08-14 16:35:27'),
('9908922', '4798144935', '6263325052', '2021-08-13 16:41:00', 90, 'avsadasd', '20', 1, 1, NULL, NULL),
('990899', '4521975968', '5037563943', '2021-08-13 15:58:27', 90, 'abc', '20', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_shipment`
--

CREATE TABLE `transactions_shipment` (
  `transaction_shipment_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_shipment_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_shipment_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_shipment_provider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_shipment_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `email_token`, `email_verified_at`, `password`, `balance`, `account_bank`, `account_number`, `account_name`, `point`, `last_login`, `remember_token`, `status`, `is_admin`, `created_at`, `updated_at`) VALUES
('4521975968', 'Sendy', 'dzikrisendy6@gmail.com', 'ZHppa3Jpc2VuZHk2QGdtYWlsLmNvbQ==', '2021-08-12 23:38:07', '$2y$10$JPjLDOarbnNbUPu8jIaz/eMFENS6HjhQ25KlpELEHJ/x28ONBp3mO', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, '2021-08-12 23:37:33', '2021-08-15 20:05:42'),
('4798144935', 'Tizna', 'dody.tisna14@gmail.com', 'ZG9keS50aXNuYTE0QGdtYWlsLmNvbQ==', '2021-08-13 14:40:41', '$2y$10$POiA/aUxKbq572WlGdPJV.mpplVOXHgNDumuxgBrYlK.IY4IEpSZ2', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, '2021-08-13 14:40:15', '2021-08-16 09:06:18');

-- --------------------------------------------------------

--
-- Table structure for table `users_commission`
--

CREATE TABLE `users_commission` (
  `user_commission_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `earn_commission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `commission_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_commission`
--

INSERT INTO `users_commission` (`user_commission_id`, `user_id`, `earn_commission`, `commission_description`, `created_at`, `updated_at`) VALUES
('99123123', '4521975968', '20000', 'Mantap', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_omzet`
--

CREATE TABLE `users_omzet` (
  `user_omzet_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_reward_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_point`
--

CREATE TABLE `users_point` (
  `user_point_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `earn_point` int(11) NOT NULL DEFAULT 0,
  `point_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_referal`
--

CREATE TABLE `users_referal` (
  `user_referal_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `child_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_reward`
--

CREATE TABLE `users_reward` (
  `user_reward_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_reward_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_shipment`
--

CREATE TABLE `users_shipment` (
  `user_shipment_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_shipment`
--

INSERT INTO `users_shipment` (`user_shipment_id`, `user_id`, `shipment_name`, `shipment_phone`, `shipment_address`, `created_at`, `updated_at`) VALUES
('', '4798144935', 'abc', '231231321', 'asdasdasdada', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_withdraw`
--

CREATE TABLE `users_withdraw` (
  `user_withdraw_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_withdraw`
--

INSERT INTO `users_withdraw` (`user_withdraw_id`, `user_id`, `amount`, `account`, `status`, `created_at`, `updated_at`) VALUES
('1234567897', '4521975968', '6000000', 'asdasd', 0, NULL, '2021-08-16 06:28:50'),
('1234567899', '4521975968', '20000000', 'abc', 1, NULL, '2021-08-16 06:27:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`reward_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transactions_user_id_index` (`user_id`),
  ADD KEY `transactions_package_id_index` (`package_id`);

--
-- Indexes for table `transactions_shipment`
--
ALTER TABLE `transactions_shipment`
  ADD PRIMARY KEY (`transaction_shipment_id`),
  ADD KEY `transactions_shipment_transaction_id_index` (`transaction_id`),
  ADD KEY `transactions_shipment_user_id_index` (`user_id`),
  ADD KEY `transactions_shipment_user_shipment_id_index` (`user_shipment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_commission`
--
ALTER TABLE `users_commission`
  ADD PRIMARY KEY (`user_commission_id`),
  ADD KEY `users_commission_user_id_index` (`user_id`);

--
-- Indexes for table `users_omzet`
--
ALTER TABLE `users_omzet`
  ADD PRIMARY KEY (`user_omzet_id`),
  ADD KEY `users_omzet_user_id_index` (`user_id`),
  ADD KEY `users_omzet_reward_id_index` (`reward_id`);

--
-- Indexes for table `users_point`
--
ALTER TABLE `users_point`
  ADD PRIMARY KEY (`user_point_id`),
  ADD KEY `users_point_user_id_index` (`user_id`);

--
-- Indexes for table `users_referal`
--
ALTER TABLE `users_referal`
  ADD PRIMARY KEY (`user_referal_id`),
  ADD KEY `users_referal_parent_id_index` (`parent_id`),
  ADD KEY `users_referal_child_id_index` (`child_id`);

--
-- Indexes for table `users_reward`
--
ALTER TABLE `users_reward`
  ADD PRIMARY KEY (`user_reward_id`),
  ADD KEY `users_reward_user_id_index` (`user_id`),
  ADD KEY `users_reward_reward_id_index` (`reward_id`);

--
-- Indexes for table `users_shipment`
--
ALTER TABLE `users_shipment`
  ADD PRIMARY KEY (`user_shipment_id`),
  ADD KEY `users_shipment_user_id_index` (`user_id`);

--
-- Indexes for table `users_withdraw`
--
ALTER TABLE `users_withdraw`
  ADD PRIMARY KEY (`user_withdraw_id`),
  ADD KEY `users_withdraw_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`package_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions_shipment`
--
ALTER TABLE `transactions_shipment`
  ADD CONSTRAINT `transactions_shipment_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_shipment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_shipment_user_shipment_id_foreign` FOREIGN KEY (`user_shipment_id`) REFERENCES `users_shipment` (`user_shipment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_commission`
--
ALTER TABLE `users_commission`
  ADD CONSTRAINT `users_commission_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_omzet`
--
ALTER TABLE `users_omzet`
  ADD CONSTRAINT `users_omzet_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`reward_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_omzet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_point`
--
ALTER TABLE `users_point`
  ADD CONSTRAINT `users_point_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_referal`
--
ALTER TABLE `users_referal`
  ADD CONSTRAINT `users_referal_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_referal_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_reward`
--
ALTER TABLE `users_reward`
  ADD CONSTRAINT `users_reward_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `rewards` (`reward_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_reward_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_shipment`
--
ALTER TABLE `users_shipment`
  ADD CONSTRAINT `users_shipment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_withdraw`
--
ALTER TABLE `users_withdraw`
  ADD CONSTRAINT `users_withdraw_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_sima\",\"table\":\"tbl_pengajuan\"},{\"db\":\"db_sima\",\"table\":\"tbl_kategori_aset\"},{\"db\":\"db_sima\",\"table\":\"tbl_aset\"},{\"db\":\"db_sima\",\"table\":\"tbl_penyusutan\"},{\"db\":\"db_sima\",\"table\":\"tbl_user\"},{\"db\":\"db_sima\",\"table\":\"tbl_manajemen_aset\"},{\"db\":\"db_sima\",\"table\":\"manajemen_aset\"},{\"db\":\"db_kp\",\"table\":\"tbl_dosen\"},{\"db\":\"db_kp\",\"table\":\"tbl_wali_dosen\"},{\"db\":\"db_kp\",\"table\":\"tbl_matkul\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-09-27 05:17:13', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `smartwarung`
--
CREATE DATABASE IF NOT EXISTS `smartwarung` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `smartwarung`;

-- --------------------------------------------------------

--
-- Table structure for table `alasan_penolakans`
--

CREATE TABLE `alasan_penolakans` (
  `id_tolak` int(11) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alasan_penolakans`
--

INSERT INTO `alasan_penolakans` (`id_tolak`, `keterangan`) VALUES
(1, 'Rating warung kecil '),
(2, 'Banyak komentar barang tidak sesuai'),
(3, 'Barang yang dikirim rusak'),
(4, 'warung mengirim barang kadaluarsa');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id_bank_account` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `saldo` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `tgl_cair` date DEFAULT NULL,
  `nominal_cair` varchar(255) DEFAULT NULL,
  `bank` varchar(255) NOT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `warung_username` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id_bank_account`, `id`, `username`, `account_name`, `account_number`, `saldo`, `total`, `tgl_cair`, `nominal_cair`, `bank`, `bukti`, `status`, `warung_username`, `date`, `update`) VALUES
(1, NULL, NULL, 'Smart Warung', '9999999', NULL, NULL, NULL, NULL, 'BCA', NULL, NULL, 'admin', '2021-01-11 18:09:21', '2021-01-11 18:09:21'),
(2, NULL, NULL, 'Smart Warung', '123123123', NULL, NULL, NULL, NULL, 'BNI', NULL, NULL, 'admin', '2021-01-11 19:01:11', '2021-01-11 19:01:11'),
(3, NULL, NULL, 'Smart Warung', '111222333', NULL, NULL, NULL, NULL, 'BRI', NULL, NULL, 'admin', '2021-01-11 19:01:11', '2021-01-11 19:01:11'),
(4, NULL, NULL, 'Rajawalss', '1123123456', '8000', NULL, '2021-09-04', '800', 'BCA', '637dbbc2b9e3f53ff4af388c884de70c.jpg', 'Sudah ditransfer', 'rajawali', '2021-03-14 06:53:32', '2021-09-04 13:25:45'),
(7, NULL, NULL, 'Gallery', '1234567890', NULL, NULL, NULL, NULL, 'BNI', NULL, NULL, 'gallery', '2021-05-04 05:24:52', '2021-08-03 07:39:54'),
(9, NULL, NULL, 'Alaw', '1122334455', NULL, NULL, NULL, NULL, 'BCA', NULL, NULL, 'alaw', '2021-05-06 08:10:02', '2021-08-03 07:40:15'),
(11, NULL, NULL, 'Aa Jaya', '341121044', '49500', NULL, '2021-08-31', '200', 'BTPN', NULL, NULL, 'sukapura', '2021-08-30 02:45:57', '2021-08-30 02:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts_detail`
--

CREATE TABLE `bank_accounts_detail` (
  `id_bank_account_detail` int(11) NOT NULL,
  `id_bank_account` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `saldo` varchar(255) NOT NULL,
  `tgl_cair` date NOT NULL,
  `nominal_cair` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_accounts_detail`
--

INSERT INTO `bank_accounts_detail` (`id_bank_account_detail`, `id_bank_account`, `account_name`, `account_number`, `bank`, `saldo`, `tgl_cair`, `nominal_cair`) VALUES
(4, 7, 'zam', '291829182', 'BCA', '59600', '0000-00-00', '100'),
(5, 7, 'zam', '291829182', 'BCA', '58600', '2021-07-30', '1000'),
(7, 10, 'Aa Jaya', '09876141', 'MANDIRI', '29800', '2021-08-27', '100'),
(8, 7, 'zam', '291829182', 'BCA', '57600', '2021-08-04', '1000'),
(9, 10, 'Aa Jaya', '09876141', 'MANDIRI', '29600', '2021-08-12', '200'),
(10, 7, 'zam', '291829182', 'BCA', '57400', '2021-08-12', '200'),
(11, 11, 'Aa Jaya', '341121044', 'BTPN', '49700', '2021-08-30', '300'),
(12, 11, 'Aa Jaya', '341121044', 'BTPN', '49500', '2021-08-31', '200'),
(13, 4, 'Rajawalss', '1123123456', 'BCA', '7800', '2021-09-04', '200'),
(14, 4, 'Rajawalss', '1123123456', 'BCA', '800', '2021-09-04', '15000'),
(15, 4, 'Rajawalss', '1123123456', 'BCA', '8000', '2021-09-04', '800');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `username`) VALUES
('cart6082c60ae3dab', 'ocha'),
('cart60eab361dbca7', 'pipit');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id` varchar(255) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id`, `item`, `quantity`) VALUES
('cart6082c60ae3dab', 92, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sembako'),
(2, 'Makanan'),
(3, 'Laundry'),
(7, 'Kebersihan'),
(8, 'Perlengkapan Mandi'),
(9, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id_comment` int(11) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `to_whom` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `type` int(11) DEFAULT 0,
  `id_reply` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_email`
--

CREATE TABLE `config_email` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `config_email`
--

INSERT INTO `config_email` (`id`, `email`, `password`) VALUES
(1, 'smartwarung11@gmail.com', 'Adm_Smrt12');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `warung` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `origin_id` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `destination_id` varchar(255) NOT NULL,
  `distance` float NOT NULL,
  `delivery_fee` int(11) NOT NULL,
  `billing` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `benefit` varchar(255) DEFAULT NULL,
  `method` enum('Transfer','COD') NOT NULL,
  `bank_type` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `pdf_url` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user`, `warung`, `origin`, `origin_id`, `destination`, `destination_id`, `distance`, `delivery_fee`, `billing`, `total`, `benefit`, `method`, `bank_type`, `bank_account_number`, `pdf_url`, `status`, `date`) VALUES
('invoice60eab7ca42f6b', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJhYoXcKXpaC4RtsIsukYN274', 'Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'EjlKYWxhbiBTdWthYmlydXMsIENpdGV1cmV1cCwgQmFuZHVuZywgV2VzdCBKYXZhLCBJbmRvbmVzaWEiLiosChQKEglXwE9wpeloLhEXdO7et4UW3xIUChIJG0JxZqbpaC4R_3Oh4-GkIFg', 0, 0, 6300, 6300, NULL, 'COD', NULL, NULL, NULL, 'Sudah diterima', '2021-07-11 09:20:10'),
('invoice60eab7ee4716b', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJhYoXcKXpaC4RtsIsukYN274', 'Sukabirus Residence, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJp_aztKXpaC4RR7tcT6Ch85Q', 0.4, 1000, 6300, 7300, NULL, 'Transfer', NULL, NULL, NULL, 'Sudah diterima dan diulas', '2021-08-02 09:20:46'),
('invoice6109019e30986', 'ocha', 'alaw', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', 0, 0, 6299, 6299, NULL, 'COD', NULL, NULL, NULL, 'Menunggu proses penjual', '2021-08-03 08:43:10'),
('invoice6111fcca52513', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Jalan Adhyaksa III No.3, Sukapura, Bandung, West Java, Indonesia', 'ChIJER85Qk3oaC4R6cj20X-UTrg', 1.5, 3750, 23000, 26750, NULL, 'COD', NULL, NULL, NULL, 'Sudah diterima dan diulas', '2021-07-28 04:12:58'),
('invoice6111ff243dfbe', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Jalan Adhyaksa V No.3, Sukapura, Bandung, West Java, Indonesia', 'Ej5KYWxhbiBBZGh5YWtzYSBWIE5vLjMsIFN1a2FwdXJhLCBCYW5kdW5nLCBXZXN0IEphdmEsIEluZG9uZXNpYSJQEk4KNAoyCYeFCHtN6GguEYbo2owmBN_oGh4LEO7B7qEBGhQKEgm_-R6cRehoLhEAu45W68UAHAwQAyoUChIJ8WMFg1LoaC4RLOmxNTPbz78', 1.7, 4250, 10000, 14250, NULL, 'COD', NULL, NULL, NULL, 'Sudah diterima dan diulas', '2021-07-30 04:23:00'),
('invoice6111ff608bc1f', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Jalan Adhyaksa Raya No.4, Kujangsari, Bandung City, West Java, Indonesia', 'ChIJD2gxkfDpaC4R1UbTX984eYQ', 2.1, 5250, 76000, 81250, NULL, 'COD', NULL, NULL, NULL, 'Sudah diterima dan diulas', '2021-08-10 04:24:00'),
('invoice611f1e75e8fc6', 'ocha', 'alaw', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', 'lembang', '', 0, 0, 6299, 0, NULL, 'COD', NULL, NULL, NULL, 'Menunggu proses penjual', '2021-08-20 03:16:05'),
('invoice6124460414ebc', 'ocha', 'alaw', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', 'Bojongsoang, Bandung, West Java, Indonesia', 'ChIJR0hUPHXCaC4R8MYo_PHoAQQ', 1.2, 3000, 6299, 9299, '-23701', 'COD', NULL, NULL, NULL, 'Menunggu proses penjual', '2021-08-24 01:06:12'),
('invoice61259a685ea5c', 'ocha', 'alaw', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', 'Bojongsoang, Bandung, West Java, Indonesia', 'ChIJR0hUPHXCaC4R8MYo_PHoAQQ', 1.2, 3000, 6299, 9299, '-23701', 'Transfer', NULL, NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/b43c6ea8-0796-4cae-a199-32ac01cd7c2e/pdf', '201', '2021-08-25 01:19:12'),
('invoice61259c00ed707', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Bojongsoang, Bandung, West Java, Indonesia', 'ChIJR0hUPHXCaC4R8MYo_PHoAQQ', 1.7, 4250, 68400, 72650, '-4000', 'COD', NULL, NULL, NULL, 'Sedang dikirim', '2021-08-25 01:25:20'),
('invoice612c43e95fbca', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 3000, 8000, '3000', 'COD', NULL, NULL, NULL, 'Sedang dikirim', '2021-08-30 02:35:21'),
('invoice612cdb5cee648', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 3800, 8800, '1002', 'COD', NULL, NULL, NULL, 'Menunggu proses penjual', '2021-08-30 13:21:32'),
('invoice612cf1a2d2588', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 7600, 12600, '2004', 'COD', NULL, NULL, NULL, 'Sudah diterima', '2021-08-30 14:56:34'),
('invoice612d85dc105ed', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 3800, 8800, '1002', 'Transfer', 'bca', '24677016613', 'https://app.sandbox.midtrans.com/snap/v1/transactions/0f206aee-d665-48c5-b400-3f8b7d497275/pdf', '201', '2021-08-31 01:29:41'),
('invoice612d8750677c0', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 3800, 8800, '1002', 'Transfer', NULL, NULL, 'https://app.sandbox.midtrans.com/snap/v1/transactions/ea9636ec-f87a-43d3-a5d1-40ecd0245f66/pdf', '201', '2021-08-31 01:35:32'),
('invoice612d880914063', 'ocha', 'sukapura', 'Sukapura, Bandung, West Java, Indonesia', 'ChIJQXjDl6zpaC4RuiyZXIf658I', 'Dayeuhkolot, Bandung, West Java, Indonesia', 'ChIJv0T69gTpaC4Rmbexj007jd8', 2, 5000, 3800, 8800, '1002', 'Transfer', 'bca', '24677625508', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c9d22cfd-1e91-4e41-b423-f6e269971910/pdf', '201', '2021-08-31 01:41:41'),
('invoice612f3ede4c891', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Bojongsoang, Bandung, West Java, Indonesia', 'ChIJR0hUPHXCaC4R8MYo_PHoAQQ', 1.7, 4250, 1720, 5970, '2000', 'Transfer', NULL, NULL, NULL, '201', '2021-09-01 08:51:23'),
('invoice612f4009348d4', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'EjlKYWxhbiBTdWthYmlydXMsIENpdGV1cmV1cCwgQmFuZHVuZywgV2VzdCBKYXZhLCBJbmRvbmVzaWEiLiosChQKEglXwE9wpeloLhEXdO7et4UW3xIUChIJG0JxZqbpaC4R_3Oh4-GkIFg', 0.2, 500, 1720, 2220, '2000', 'COD', NULL, NULL, NULL, 'Menunggu proses penjual', '2021-09-01 08:55:37'),
('invoice612f40725f587', 'ocha', 'rajawali', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', 'Jalan Sukabirus Gang Demang, Citeureup, Bandung, West Java, Indonesia', 'EkVKYWxhbiBTdWthYmlydXMgR2FuZyBEZW1hbmcsIENpdGV1cmV1cCwgQmFuZHVuZywgV2VzdCBKYXZhLCBJbmRvbmVzaWEiLiosChQKEgnLkrnnr-loLhFP2HwHC7zUsBIUChIJG0JxZqbpaC4R_3Oh4-GkIFg', 0.5, 1250, 1720, 2970, '2000', 'Transfer', 'bca', '24677793306', 'https://app.sandbox.midtrans.com/snap/v1/transactions/2e6f7b36-a783-4ecf-a642-e11efa21a085/pdf', '201', '2021-09-01 08:58:46');

--
-- Triggers `invoices`
--
DELIMITER $$
CREATE TRIGGER `after_transfer` AFTER UPDATE ON `invoices` FOR EACH ROW BEGIN
      IF (OLD.method = 'Transfer' AND NEW.status = 'Sudah diterima') THEN
      		INSERT INTO transfer
            SET total = OLD.billing,
            username = OLD.warung,
            date = now();
      END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` varchar(255) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `item`, `quantity`, `price`) VALUES
('invoice6109019e30986', 27, 1, 6299),
('invoice6111fcca52513', 89, 1, 23000),
('invoice6111ff243dfbe', 89, 5, 2000),
('invoice6111ff608bc1f', 90, 1, 76000),
('invoice611f1e75e8fc6', 27, 1, 6299),
('invoice6124460414ebc', 27, 1, 6299),
('invoice61259a685ea5c', 27, 1, 6299),
('invoice61259c00ed707', 90, 1, 68400),
('invoice612c43e95fbca', 91, 1, 3000),
('invoice612cdb5cee648', 92, 1, 3800),
('invoice612cf1a2d2588', 92, 2, 3800),
('invoice612d85dc105ed', 92, 1, 3800),
('invoice612d8750677c0', 92, 1, 3800),
('invoice612d880914063', 92, 1, 3800),
('invoice612f3ede4c891', 89, 1, 1720),
('invoice612f4009348d4', 89, 1, 1720),
('invoice612f40725f587', 89, 1, 1720);

--
-- Triggers `invoice_details`
--
DELIMITER $$
CREATE TRIGGER `after_buy_products` AFTER INSERT ON `invoice_details` FOR EACH ROW BEGIN
	UPDATE items
    SET items.stock = items.stock-NEW.quantity
    WHERE items.id = NEW.item;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `harga_beli` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `photo` text NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `is_week_sale` int(11) NOT NULL DEFAULT 0,
  `date_week_sale` date DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `username`, `name`, `category`, `stock`, `price`, `harga_beli`, `description`, `photo`, `hide`, `discount`, `is_week_sale`, `date_week_sale`, `date`) VALUES
(27, 'alaw', 'KOBE Mi Bon Cabe', 2, 1, 6299, '30000', 'Mi Boncabe merupakan mie instan kenyal yang dipadukan dengan pedas sedapnya Boncabe, sehingga menjadi kombinasi mantap bagi Anda pecinta sensasi makan mie pedas yang HQQ. Kelebihan Mi Boncabe dengan produk Mie pedas lainnya adalah kepingan mie-nya sendiri sudah mengandung Boncabe. Mi Boncabe kepingan mie-nya tidak berwarna kuning, melainkan agak kemerahan karena kandungan Boncabe-nya. Selain itu, Mie goreng Boncahe ini juga bisa dimakan polos tanpa bumbu pun sudah ada sensasi khas Boncabe-nya.', 'e8d3b958968612f43a649380e5ba3be1.jpg', 0, 6, 1, '2021-08-30', '2021-05-06 08:52:36'),
(89, 'rajawali', 'Telur', 1, 41, 2000, NULL, '<p>harga satuan</p>\r\n', 'e2bccbb032b6c7f517b6efd5810cadfb.jpg', 0, 14, 1, '2021-08-30', '2021-08-10 04:11:45'),
(90, 'rajawali', 'Beras Haryana', 1, 8, 76000, '80000', '<p>1 Kg</p>\r\n', 'f45af6f8798a472eabb3cc5fc5f8b109.jpg', 0, 23, 1, '2021-08-30', '2021-08-10 04:20:07'),
(91, 'sukapura', 'mie ayam', 2, 9, 3000, NULL, '<p>barang oke</p>\r\n', '758a358bf67ba8d4b7313f106ef872b4.jpg', 0, 10, 1, '2021-08-30', '2021-08-30 02:16:36'),
(92, 'sukapura', 'marimas', 2, 6, 4000, '2998', '<p>Makanan Bisa Diseduh</p>\r\n', 'a1cef7ba9050cedea37b2d9ddc44980f.jpg', 0, 5, 1, '2021-08-30', '2021-08-30 13:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_aktifasi_akun`
--

CREATE TABLE `pengajuan_aktifasi_akun` (
  `id_pengajuan` int(11) NOT NULL,
  `nama_lengkap` varchar(250) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(250) NOT NULL,
  `no_hp` varchar(250) NOT NULL,
  `kendala` text NOT NULL,
  `bukti` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `username` varchar(255) NOT NULL,
  `item` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id_reviews` int(11) NOT NULL,
  `invoice_id` varchar(250) NOT NULL,
  `username` varchar(255) NOT NULL,
  `item` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id_reviews`, `invoice_id`, `username`, `item`, `review`, `rating`) VALUES
(15, 'invoice6111fcca52513', 'ocha', 89, 'barangnya bagus, tidak ada yg pecah', 4),
(16, 'invoice6111ff243dfbe', 'ocha', 89, 'barangnya sesuai tidak ada yang pecah', 5),
(17, 'invoice6111ff608bc1f', 'ocha', 90, 'pengirimannya agak lama', 3);

-- --------------------------------------------------------

--
-- Table structure for table `review_warung`
--

CREATE TABLE `review_warung` (
  `id_review` int(11) NOT NULL,
  `sender_name` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `to_whom` varchar(250) CHARACTER SET latin1 NOT NULL,
  `message` text NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `id_reply` int(11) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_warung`
--

INSERT INTO `review_warung` (`id_review`, `sender_name`, `username`, `to_whom`, `message`, `type`, `id_reply`, `reply`, `foto`, `rating`, `date`) VALUES
(6, 'Oktrichavita Jassinda', 'ocha', 'rajawali', 'saya sering belanja di sini, pengiriman barangnya cepat dan barangnya juga sesuai', 0, NULL, '', '2bcc12bce0ef57d7bcb5775007730bcb.JPG', 4, '2021-08-10 04:32:11'),
(7, 'Oktrichavita Jassinda', 'ocha', 'rajawali', 'bagus, barang yang dikirim sesuai', 0, NULL, '', 'bf070ad0071d8a9ce6a675deece33ad3.JPG', 5, '2021-08-10 04:32:50'),
(8, 'Oktrichavita Jassinda', 'ocha', 'sukapura', 'barang rusak', 0, NULL, 'diperbaiki', 'c84823dde8065bd6cf2e889f8bb5a90a.jpg', 0, '2021-08-30 06:57:58'),
(9, 'Oktrichavita Jassinda', 'ocha', 'sukapura', 'kurang', 0, NULL, '', 'efdad60b467e4787f5cb9a6cd757b462.jpg', 0, '2021-08-30 11:56:29'),
(10, 'Oktrichavita Jassinda', 'ocha', 'sukapura', 'kurang', 0, NULL, 'akan dibenarkan', '6b49a64b676bec5370c84da763350473.jpg', 3, '2021-08-30 12:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `total` decimal(32,0) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `bukti` text NOT NULL,
  `id_bank_account` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `tgl_cair` date DEFAULT NULL,
  `nominal_cair` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `sisa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `total`, `username`, `status`, `date`, `bukti`, `id_bank_account`, `account_name`, `tgl_cair`, `nominal_cair`, `bank`, `sisa`) VALUES
(20, '8000', 'rajawali', 'Sudah ditransfer', '2021-09-04 13:22:14', '1a783247362253761d92e50d4540c885.png', 4, 'Rajawalss', NULL, NULL, 'BCA', '0');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_detail`
--

CREATE TABLE `transfer_detail` (
  `id_transfer_detail` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_bank_account` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `nominal_cair` varchar(255) NOT NULL,
  `tgl_cair` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_detail`
--

INSERT INTO `transfer_detail` (`id_transfer_detail`, `id`, `id_bank_account`, `account_name`, `username`, `bank`, `total`, `nominal_cair`, `tgl_cair`) VALUES
(7, 20, 4, 'Rajawalss', 'rajawali', 'BCA', '72800', '200', '2021-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `is_aktif_cust` int(11) DEFAULT 1,
  `alasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `username`, `password`, `phone`, `email`, `role`, `photo`, `is_aktif_cust`, `alasan`) VALUES
('Waroeng Klasik', 'Abidin', '5f4dcc3b5aa765d61d8327deb882cf99', '08976219212', 'abidin@gmail.com', 1, '046af1b56c0dab163e8a19eb7ddcc45c.png', 1, ''),
('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '08111111', 'admin@smartwarung.com', 99, NULL, 1, ''),
('Toko Alaw', 'alaw', 'e2fc714c4727ee9395f324cd2e7f331f', '08123345665', 'alaw@gmail.com', 1, '851e30aef96292cb123a3efab99f19a4.png', 1, ''),
('ayi dangde', 'dangde', '1315ed173ddd37074315c204fe8ef4b0', '089762818271', 'dangde@gmail.com', 1, 'd9b2c40adad647af0e30405838174453.jpg', 1, ''),
('Warung Bi Erni', 'Erni', '5f4dcc3b5aa765d61d8327deb882cf99', '089629710886', 'ernyss@gmail.com', 1, '7c282e99b19bc06898cbea7e605a82ae.png', 1, ''),
('Warung Ibu Ika', 'ibuika', 'e2fc714c4727ee9395f324cd2e7f331f', '086532515211', 'warungibuika@gmail.com', 1, '19747304c29bebbbdb059a5f877e07b2.jpg', 1, ''),
('Azhyra Rana Pinasthika', 'jira', 'd20c781e9483ebfeddbaf38eeb88fdf7', '081386397855', 'ani@gmail.com', 0, NULL, 1, ''),
('Happy Dog Naturcroq', 'karyo', '5f4dcc3b5aa765d61d8327deb882cf99', '08923121', 'erny@gmail.com', 1, '8b4753f2dd1de1ce08fd3dbb24eb3292.jpg', 1, ''),
('Oktrichavita Jassinda', 'ocha', '2ea4dce70aecd3a50945105a01aa2cba', '081234567867', 'ocha1123@gmail.com', 0, NULL, 1, ''),
('Vita Jassinda', 'pipit', '5c40ee0ae05c339a9f8502d29a49541d', '08155069724', 'oktrichavitajk@gmail.com', 0, NULL, 1, ''),
('Rajawali', 'rajawali', 'e2fc714c4727ee9395f324cd2e7f331f', '08124567678897', 'a@b.cd', 1, '2557a0a8a0e7856fe8b6c5f4908229c8.png', 1, ''),
('sukapura', 'sukapura', 'e2fc714c4727ee9395f324cd2e7f331f', '08122222', 'adika@b.c', 1, '61f19a0afedc177bb403276b484e5a11.jpg', 1, ''),
('warung jauh', 'waruh', 'e2fc714c4727ee9395f324cd2e7f331f', '081234567890', 'waruh123@gmail.com', 1, '9cb9f89968549f060c7a6a3a1102b168.jpg', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `warungs`
--

CREATE TABLE `warungs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `place_id` varchar(255) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `lng` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` enum('Belum diverifikasi','Sudah diverifikasi','Verifikasi tidak disetujui','') NOT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `alasan` text DEFAULT NULL,
  `is_aktif` int(11) NOT NULL DEFAULT 0,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warungs`
--

INSERT INTO `warungs` (`id`, `username`, `place_id`, `lat`, `lng`, `address`, `status`, `ktp`, `alasan`, `is_aktif`, `updated_at`) VALUES
(14, 'rajawali', 'ChIJ4XzVX6XpaC4RG0c8UhI-qnc', '-6.978006', '107.631006', 'D\' Gallery Futsal, Jalan Sukabirus, Citeureup, Bandung, West Java, Indonesia', 'Sudah diverifikasi', NULL, 'Banyak komentar barang tidak sesuai, Barang yang dikirim rusak, ', 1, '2020-04-20'),
(15, 'sukapura', 'ChIJQXjDl6zpaC4RuiyZXIf658I', '-6.9699811', '107.6289307', 'Sukapura, Bandung, West Java, Indonesia', 'Sudah diverifikasi', NULL, '', 1, '2021-08-30'),
(18, 'alaw', 'ChIJTz8UzZTpaC4RQMvmtO2PRoY', '-6.972428900000001', '107.6341047', 'Toko Alaw, Sukapura, Bandung, West Java, Indonesia', 'Sudah diverifikasi', '5f75462113c0904fb17f7e0bd9d21576.png', '', 0, '2021-05-06'),
(19, 'ibuika', 'ChIJP8tCLpfmaC4RFk9fbCqNrvU', '-6.872345399999999', '107.5881284', 'Warung Ibu Ika, Jalan Picung, Sukarasa, Bandung City, West Java, Indonesia', 'Belum diverifikasi', '932a71465c0b848c1444f2dc70809bec.jpg', NULL, 0, NULL),
(20, 'waruh', 'EltKbC4gVGFtYW4gTG90dXMsIFJULjAxL1JXLjE1LCBDaWJhZGFrLCBLZWMuIFRhbmFoIFNlcmVhbCwgS290YSBCb2dvciwgSmF3YSBCYXJhdCwgSW5kb25lc2lhIi4qLAoUChIJMbQoJIHDaS4RE8YDZyZ2eZASFAoSCVnUKDSBw2kuETctrm-egU8q', '-6.543210200000001', '106.775597', 'Jl. Taman Lotus, RT.01/RW.15, Cibadak, Tanah Sereal, Bogor, West Java 16166, Indonesia', 'Sudah diverifikasi', 'cf41cdd708f19987128e356a043e2d51.jpg', 'Rating warung kecil , Banyak komentar barang tidak sesuai, ', 1, '2021-07-08'),
(24, 'Abidin', '', '-6.9021', '107.6191', 'Jl. Cilaki No.73, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115, Indonesia', 'Belum diverifikasi', '73e20b8222c40d88fb29531536956e1b.png', NULL, 0, NULL),
(25, 'karyo', 'ChIJO2R9JxroaC4R6UAiAhugh4s', '-6.941786', '107.6590436', 'Soekarno-Hatta Street No.590kel, Sekejati, Bandung City, West Java, Indonesia', 'Belum diverifikasi', '72930818c0874fc3845a1a8f5e86825c.png', NULL, 0, NULL),
(27, 'Erni', 'ChIJO2R9JxroaC4R6UAiAhugh4s', '-6.941650582586049', '107.65911121419147', 'Jl. Soekarno-Hatta No.590kel, Sekejati, Kec. Buahbatu, Kota Bandung, Jawa Barat 40286, Indonesia', 'Belum diverifikasi', 'f119f33f7c43abc0a362e778637b9e34.jpg', NULL, 0, NULL),
(28, 'dangde', 'ChIJzY8fZBToaC4R5DkeO1UmEn0', '-6.941888199222109', '107.65981286252001', 'Jalan Soekarno-Hatta No.590, Metro Indah Mall, Sekejati, Buahbatu, Bandung City, West Java 40286, Indonesia', 'Belum diverifikasi', '08817476784a6a0ada9576ee7a39929b.png', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alasan_penolakans`
--
ALTER TABLE `alasan_penolakans`
  ADD PRIMARY KEY (`id_tolak`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id_bank_account`);

--
-- Indexes for table `bank_accounts_detail`
--
ALTER TABLE `bank_accounts_detail`
  ADD PRIMARY KEY (`id_bank_account_detail`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD KEY `to_cart` (`id`),
  ADD KEY `to_items` (`item`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `config_email`
--
ALTER TABLE `config_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`,`warung`),
  ADD KEY `user_2` (`user`,`warung`),
  ADD KEY `warung` (`warung`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD KEY `id` (`id`,`item`),
  ADD KEY `invoice_details_ibfk_2` (`item`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `users_foods_fk1` (`username`);
ALTER TABLE `items` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `pengajuan_aktifasi_akun`
--
ALTER TABLE `pengajuan_aktifasi_akun`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `FK_Ajuan` (`username`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD KEY `item` (`item`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_reviews`),
  ADD KEY `username` (`username`),
  ADD KEY `item` (`item`);

--
-- Indexes for table `review_warung`
--
ALTER TABLE `review_warung`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `FK_Review_Warung` (`to_whom`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_detail`
--
ALTER TABLE `transfer_detail`
  ADD PRIMARY KEY (`id_transfer_detail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `warungs`
--
ALTER TABLE `warungs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_user` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alasan_penolakans`
--
ALTER TABLE `alasan_penolakans`
  MODIFY `id_tolak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id_bank_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bank_accounts_detail`
--
ALTER TABLE `bank_accounts_detail`
  MODIFY `id_bank_account_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `config_email`
--
ALTER TABLE `config_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `pengajuan_aktifasi_akun`
--
ALTER TABLE `pengajuan_aktifasi_akun`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_reviews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `review_warung`
--
ALTER TABLE `review_warung`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `transfer_detail`
--
ALTER TABLE `transfer_detail`
  MODIFY `id_transfer_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `warungs`
--
ALTER TABLE `warungs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `to_cart` FOREIGN KEY (`id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `to_items` FOREIGN KEY (`item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`warung`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoice_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_details_ibfk_2` FOREIGN KEY (`item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `FK_warungg` FOREIGN KEY (`username`) REFERENCES `warungs` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengajuan_aktifasi_akun`
--
ALTER TABLE `pengajuan_aktifasi_akun`
  ADD CONSTRAINT `FK_Ajuan` FOREIGN KEY (`username`) REFERENCES `warungs` (`username`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`item`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review_warung`
--
ALTER TABLE `review_warung`
  ADD CONSTRAINT `FK_Review_Warung` FOREIGN KEY (`to_whom`) REFERENCES `warungs` (`username`);

--
-- Constraints for table `warungs`
--
ALTER TABLE `warungs`
  ADD CONSTRAINT `to_user` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
