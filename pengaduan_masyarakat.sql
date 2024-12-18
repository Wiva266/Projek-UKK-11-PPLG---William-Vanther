-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 08:38 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` char(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('1234567890123456', 'I Putu William Vanther ', 'User William', 'ec983803485f2607bba3590a961ac14a', '085700000000');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` char(16) DEFAULT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('0','proses','selesai') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(4, '2024-12-18', '1234567890123456', 'Dengan hormat,\r\n\r\nSaya ingin melaporkan kerusakan pada fasilitas umum yang terletak di Jl. Raya Merdeka No. 45, Kota Bandung. Kerusakan ini sangat mengganggu kenyamanan warga sekitar dan bisa menimbulkan bahaya jika tidak segera diperbaiki.\r\n\r\nRincian kerusakan adalah sebagai berikut:\r\n\r\nJenis Fasilitas: Penerangan jalan umum\r\nKondisi Kerusakan: Lampu jalan tidak menyala\r\nDeskripsi Kerusakan: Lampu penerangan jalan di sepanjang jalan Raya Merdeka rusak dan tidak menyala sejak beberapa hari yang lalu. Hal ini menyebabkan jalan terlihat gelap pada malam hari, yang berpotensi menambah risiko kecelakaan.\r\nDampak yang Dirasakan: Kurangnya penerangan menyebabkan ketidaknyamanan bagi pejalan kaki dan pengendara motor, serta berisiko meningkatkan angka kecelakaan lalu lintas pada malam hari.\r\nSebagai bukti, kami lampirkan foto-foto kondisi lampu jalan yang rusak dan juga keadaan jalan pada malam hari.\r\n\r\nKami mengharapkan agar pihak terkait segera melakukan perbaikan secepatnya agar kenyamanan dan keselamatan warga kembali terjamin.\r\n\r\nDemikian laporan ini kami sampaikan, atas perhatian dan kerjasama yang diberikan, kami ucapkan terima kasih.\r\n\r\n', 'uploads/676276bb1b3dd_Lampu-Jalan-Patah.jpg', 'selesai'),
(5, '2024-12-18', '1234567890123456', 'Dengan hormat,\r\n\r\nSaya ingin melaporkan masalah terkait kualitas air yang sangat mengganggu kenyamanan warga. Sejak beberapa hari yang lalu, air yang keluar dari keran di rumah saya dan beberapa tetangga mengalami kekeruhan yang cukup parah. Hal ini sangat mengkhawatirkan karena kami khawatir akan mempengaruhi kesehatan, baik itu digunakan untuk mandi, mencuci, maupun keperluan konsumsi.\r\n\r\nRincian permasalahan adalah sebagai berikut:\r\n\r\nJenis Fasilitas: Air bersih keran rumah tangga\r\nKondisi Kerusakan: Kekeruhan pada air keran\r\nDeskripsi Kerusakan: Air yang keluar dari keran tidak jernih dan terlihat keruh dengan warna kekuningan. Meskipun sudah disaring, air tetap tampak keruh dan berbau tidak sedap. Kondisi ini berlangsung sejak sekitar 3 hari yang lalu dan semakin parah pada beberapa titik keran.\r\nDampak yang Dirasakan: Air yang keruh ini tidak hanya mengganggu kebersihan dan kenyamanan warga, tetapi juga menimbulkan kecemasan terkait potensi masalah kesehatan seperti gangguan pencernaan atau penyakit kulit.\r\nKami mengharapkan segera adanya pengecekan dan perbaikan dari pihak terkait untuk memastikan air yang disalurkan kembali memenuhi standar kualitas dan aman untuk digunakan oleh warga.\r\n\r\nSebagai bukti, kami lampirkan foto air yang keluar dari keran yang tampak keruh dan tidak layak digunakan.\r\n\r\nDemikian laporan ini kami sampaikan, atas perhatian dan kerjasama yang diberikan, kami ucapkan terima kasih.', 'uploads/67627781e70d7_062386500_1695989729-Screenshot_20230929_184745.webp', 'proses'),
(6, '2024-12-18', '1234567890123456', 'Perihal: Laporan Kasus Pencurian di Rumah\r\n\r\nDengan hormat,\r\n\r\nSaya dengan ini melaporkan kejadian pencurian yang terjadi di daerah saya pada malam hari, tepatnya antara pukul 23:30 WIB hingga 02:00 WIB, pada tanggal 17 Desember 2024.\r\n\r\nRincian peristiwa adalah sebagai berikut:\r\n\r\nJenis Kasus: Pencurian dengan pemberatan\r\nLokasi Kejadian: Jl. Raya No. 10, RT 02/RW 04, Surabaya\r\nWaktu Kejadian: Antara pukul 23:30 WIB hingga 02:00 WIB\r\nBarang yang Hilang:\r\n1 unit laptop merek HP Spectre x360\r\n1 unit televisi 50 inci merek LG\r\n1 unit ponsel iPhone 13 Pro\r\n2 buah gelang emas\r\nCara Pencurian: Pelaku diduga masuk melalui jendela kamar tidur yang terbuka. Setelah berhasil masuk ke dalam rumah, pelaku merusak sistem alarm dan mengambil barang-barang berharga yang ada di ruang keluarga dan kamar tidur utama.\r\nDampak yang Dirasakan:\r\nKehilangan barang-barang tersebut menyebabkan kerugian material yang cukup besar, diperkirakan mencapai Rp 25.000.000,-. Selain itu, kejadian ini membuat kami merasa sangat terganggu dan khawatir akan terjadi lagi di masa depan. Kami juga merasa tidak aman tinggal di rumah yang seharusnya aman dan terlindungi.\r\n\r\nSebagai bukti kejadian, kami lampirkan foto dari barang-barang yang hilang, serta dokumentasi kerusakan pada jendela kamar tidur yang diduga dimasuki oleh pelaku. Kami siap memberikan informasi lebih lanjut jika diperlukan.\r\n\r\nKami berharap pihak kepolisian dapat segera melakukan penyelidikan dan tindakan yang diperlukan untuk mengungkap pelaku pencurian ini.\r\n\r\nDemikian laporan ini kami buat, atas perhatian dan tindak lanjut yang diberikan, kami ucapkan terima kasih.', 'uploads/6762786646769_kantor-kejaksaan-klaten-dibobol.jpg', '0'),
(7, '2024-12-18', '1234567890123456', 'Perihal: Laporan Kerusakan Jalan\r\n\r\nDengan hormat,\r\nMelaporkan adanya kerusakan pada jalan yang terletak di Jalan Raya Pemuda, yang mana kondisi jalan tersebut sudah cukup parah dan berpotensi membahayakan pengendara. Berikut adalah rincian kerusakan yang saya temui:\r\n\r\nLokasi Kerusakan: Jalan Raya Pemuda, depan Toko Elektronik ABC\r\nJenis Kerusakan: Lubang besar dan jalan bergelombang\r\nTingkat Keparahan: Sangat parah\r\nLama Kerusakan Terjadi: Sudah berlangsung selama 2 minggu\r\nBahaya yang Ditimbulkan: Berpotensi menyebabkan kecelakaan, membuat kendaraan terperosok\r\nSaya mengharapkan agar pihak terkait segera melakukan perbaikan terhadap jalan tersebut guna mengurangi potensi kecelakaan dan meningkatkan kenyamanan bagi masyarakat yang melintasi area tersebut.\r\n\r\nDemikian laporan ini saya buat dengan sebenar-benarnya. Atas perhatian dan tindak lanjut yang diberikan, saya ucapkan terima kasih.', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) DEFAULT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(7, 'Admin I Putu William Vanther', 'Admin William', 'e1d22662fac4a74d61599af4ab6b395b', '085700000000', 'admin'),
(8, 'Petugas I Putu William Vanther', 'Petugas William', 'd2d1bb1aaf18934bbcbd2f282bf0d1e9', '085700000000', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) DEFAULT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(3, 4, '2024-12-18', 'Dengan hormat,\r\n\r\nTerima kasih atas laporan yang telah Bapak/Ibu ajukan terkait. Kami telah menerima laporan tersebut dan kami akan segera memprosesnya sesuai prosedur yang berlaku.\r\n\r\nPetugas kami akan melakukan penyelidikan dan penanganan lebih lanjut untuk memastikan masalah ini dapat ditangani dengan tepat. Kami akan berusaha secepat mungkin untuk menyelesaikan masalah ini dan memberikan solusi yang terbaik.\r\n\r\nApabila diperlukan, kami akan menghubungi Bapak/Ibu untuk memberikan keterangan lebih lanjut atau meminta dokumen tambahan yang mendukung proses penyelesaian laporan ini. Kami juga akan memberikan informasi terkait perkembangan penanganan laporan ini secara berkala.\r\n\r\nKami mengapresiasi perhatian dan kerjasama Bapak/Ibu dalam membantu kami untuk menjaga keamanan dan kenyamanan bersama.\r\n\r\nTerima kasih atas laporan yang telah disampaikan.\r\n\r\nHormat kami,\r\nStaff E-Lapor', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `fk_pengaduan_masyarakat` (`nik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `fk_tanggapan_pengaduan` (`id_pengaduan`),
  ADD KEY `fk_tanggapan_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `fk_pengaduan_masyarakat` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`) ON DELETE CASCADE;

--
-- Constraints for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `fk_tanggapan_pengaduan` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tanggapan_petugas` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
