-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for dblaporansiswa
CREATE DATABASE IF NOT EXISTS `dblaporansiswa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dblaporansiswa`;

-- Dumping structure for table dblaporansiswa.hubungan
CREATE TABLE IF NOT EXISTS `hubungan` (
  `idhub` int NOT NULL AUTO_INCREMENT,
  `idsiswa` int DEFAULT NULL,
  `idortu` int DEFAULT NULL,
  `status_hub_anak` char(50) DEFAULT NULL,
  `keterangan` char(50) DEFAULT NULL,
  `status_ortu` char(20) DEFAULT NULL,
  PRIMARY KEY (`idhub`) USING BTREE,
  UNIQUE KEY `FK__siswa` (`idsiswa`) USING BTREE,
  KEY `FK__ortu` (`idortu`) USING BTREE,
  CONSTRAINT `FK__ortu` FOREIGN KEY (`idortu`) REFERENCES `ortu` (`idortu`),
  CONSTRAINT `FK__siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.hubungan: ~5 rows (approximately)
REPLACE INTO `hubungan` (`idhub`, `idsiswa`, `idortu`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
	(1, 1, 1, 'Kandung', 'Ayah', 'Hidup'),
	(2, 2, 2, 'Kandung', 'Ayah', 'Hidup'),
	(3, 3, 3, 'Kandung', 'Ibu', 'Hidup'),
	(6, 6, 6, 'Bukan', 'Paman', 'Hidup'),
	(10, 7, 7, 'Kandung', 'Ayah', 'Hidup');

-- Dumping structure for table dblaporansiswa.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(60) DEFAULT NULL,
  `jurusan` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idkelas`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.kelas: ~4 rows (approximately)
REPLACE INTO `kelas` (`idkelas`, `nama`, `jurusan`) VALUES
	(1, '10 IPA 1', 'IPA'),
	(2, '10 IPA 2', 'IPA'),
	(3, '10 IPS 1', 'IPS'),
	(4, '10 IPS 2', 'IPS');

-- Dumping structure for table dblaporansiswa.ortu
CREATE TABLE IF NOT EXISTS `ortu` (
  `idortu` int NOT NULL AUTO_INCREMENT,
  `nik` char(20) DEFAULT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `pendidikan` char(50) DEFAULT NULL,
  `pekerjaan` char(50) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `alamat` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `agama` char(10) DEFAULT NULL,
  `is_active` char(8) DEFAULT NULL,
  PRIMARY KEY (`idortu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.ortu: ~5 rows (approximately)
REPLACE INTO `ortu` (`idortu`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jk`, `agama`, `is_active`) VALUES
	(1, '10011980', 'Fachri', 'S1 Hukum', 'PNS', '0812892', 'Sungai Andai', 'L', 'Islam', 'hidup'),
	(2, '10021980', 'Bambang', 'S1 Ekonomi', 'PNS', '0823727', 'Sungai Miai', 'L', 'Islam', 'hidup'),
	(3, '10031985', 'Aisyah', 'SMA', 'Pedagang', '0812399', 'Kayu Tangi', 'P', 'Islam', 'hidup'),
	(6, '10061982', 'Ariffin', 'S1 Matematika', 'PNS', '0812823', 'Handil Bakti', 'L', 'Islam', 'hidup'),
	(7, '10071987', 'Ramadhan', 'S1 Sastra Inggris', 'PNS', '081238123', 'BJM', 'L', 'Islam', 'hidup');

-- Dumping structure for table dblaporansiswa.poin
CREATE TABLE IF NOT EXISTS `poin` (
  `idpoin` int NOT NULL AUTO_INCREMENT,
  `nama_poin` varchar(100) DEFAULT NULL,
  `bobot` char(100) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`idpoin`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.poin: ~57 rows (approximately)
REPLACE INTO `poin` (`idpoin`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
	(1, 'Siswa Teladan', '35', 'Prestasi', 'True'),
	(2, 'Juara Kelas Peringkat 1', '20', 'Prestasi', 'True'),
	(3, 'Juara Kelas Peringkat 2', '15', 'Prestasi', 'True'),
	(4, 'Juara Kelas Peringkat 3', '10', 'Prestasi', 'True'),
	(5, 'Juara Umum', '30', 'Prestasi', 'True'),
	(6, 'Juara 1 Lomba Tingkat Kab/Kota', '15', 'Prestasi', 'True'),
	(7, 'Juara 2 Lomba Tingkat Kab/Kota', '10', 'Prestasi', 'True'),
	(8, 'Juara 3 Lomba Tingkat Kab/Kota', '5', 'Prestasi', 'True'),
	(9, 'Juara 1 Lomba Tingkat Provinsi', '30', 'Prestasi', 'True'),
	(10, 'Juara 2 Lomba Tingkat Provinsi', '25', 'Prestasi', 'True'),
	(11, 'Juara 3 Lomba Tingkat Provinsi', '20', 'Prestasi', 'True'),
	(12, 'Juara 1 Lomba Tingkat Nasional', '75', 'Prestasi', 'True'),
	(13, 'Juara 2 Lomba Tingkat Nasional', '60', 'Prestasi', 'True'),
	(14, 'Juara 3 Lomba Tingkat Nasional', '45', 'Prestasi', 'True'),
	(15, 'Datang Terlambat', '5', 'Pelanggaran', 'True'),
	(16, 'Keluar kelas tanpa izin', '5', 'Pelanggaran', 'True'),
	(17, 'Tidak melaksanakan tugas piket sekolah', '5', 'Pelanggaran', 'True'),
	(18, 'Tidak berseragam lengkap dan rapi/ olah raga', '5', 'Pelanggaran', 'True'),
	(19, 'Membuang sampah tidak pada tempatnya', '5', 'Pelanggaran', 'True'),
	(20, 'Mencoret-coret tembok/meja/kursi, dan merusak tanaman', '5', 'Pelanggaran', 'True'),
	(21, 'Siswa memasuki ruang Kepala Madrasah (Guru/TU/Laboratorium/Perpustakaan) tanpa izin sebelumnya', '5', 'Pelanggaran', 'True'),
	(22, 'Menggunakan perhiasan yang berlebihan', '5', 'Pelanggaran', 'True'),
	(23, 'Rambut gondrong / memakai gelang, anting, kalung bagi pria', '5', 'Pelanggaran', 'True'),
	(24, 'Rambut di cat, kuku panjang, kuku dicat', '5', 'Pelanggaran', 'True'),
	(25, 'Tidak mengikuti kegiatan madrasah/Ekstra kurikuler', '5', 'Pelanggaran', 'True'),
	(26, 'Perbuatan tidak menyenangkan', '5', 'Pelanggaran', 'True'),
	(27, 'Melakukan olah raga pada jam pelajaran lain/jam istirahat', '5', 'Pelanggaran', 'True'),
	(28, 'Keluar halaman sekolah tanpa ijin/alpa', '10', 'Pelanggaran', 'True'),
	(29, 'Melompat pagar atau jendela', '10', 'Pelanggaran', 'True'),
	(30, 'Tidak mengikuti sholat berjamaah', '10', 'Pelanggaran', 'True'),
	(31, 'Membawa barang-barang yang tidak ada kaitannya dengan pelajaran', '10', 'Pelanggaran', 'True'),
	(32, 'Mengacau sekolah/kelas', '10', 'Pelanggaran', 'True'),
	(33, 'Tidur di kelas pada saat jam pelajaran', '10', 'Pelanggaran', 'True'),
	(34, 'Terlibat perkelahian ringan', '10', 'Pelanggaran', 'True'),
	(35, 'Membuat izin palsu/tanda tangan palsu', '10', 'Pelanggaran', 'True'),
	(36, 'Siswa berlainan jenis berduaan', '20', 'Pelanggaran', 'True'),
	(37, 'Bergandengan tangan', '20', 'Pelanggaran', 'True'),
	(38, 'Membawa HP/menggunakan pada saat pelajaran', '20', 'Pelanggaran', 'True'),
	(39, 'Memalsu raport', '25', 'Pelanggaran', 'True'),
	(40, 'Membawa buku/gambar/vidio porno', '25', 'Pelanggaran', 'True'),
	(41, 'Merusak sarana prasarana sekolah', '25', 'Pelanggaran', 'True'),
	(42, 'Bersikap tidak sopan/ menentang guru', '25', 'Pelanggaran', 'True'),
	(43, 'Menyinggung guru / karyawan', '25', 'Pelanggaran', 'True'),
	(44, 'Merokok / membawa rokok di dalam lingkungan sekolah', '25', 'Pelanggaran', 'True'),
	(45, 'Mengambil barang tanpa izin pemiliknya atau membajak siswa lain', '25', 'Pelanggaran', 'True'),
	(46, 'Terlibat perkelahian berat (tauran) / Pencurian di luar sekolah', '75', 'Pelanggaran', 'True'),
	(47, 'Membawa minum-minuman keras, Mabuk atau sejenisnya', '75', 'Pelanggaran', 'True'),
	(48, 'Terlibat penyalahgunaan narkoba / obat terlarang lainnya', '75', 'Pelanggaran', 'True'),
	(49, 'Berurusan dengan pihak berwajib karena tindak kejahatan / criminal', '75', 'Pelanggaran', 'True'),
	(50, 'Membawa senjata tajam tanpa sepengetahuan sekolah', '75', 'Pelanggaran', 'True'),
	(51, 'Berjudi di sekolah dan di lingkungan sekolah', '75', 'Pelanggaran', 'True'),
	(52, 'Mengancam guru / karyawan sekolah', '75', 'Pelanggaran', 'True'),
	(53, 'Siswa berlainan jenis, berpelukan, berciuman', '75', 'Pelanggaran', 'True'),
	(54, 'Berzinah', '100', 'Pelanggaran', 'True'),
	(55, 'Menikah', '100', 'Pelanggaran', 'True'),
	(56, 'Hamil / menghamili', '100', 'Pelanggaran', 'True'),
	(57, 'Membawa senjata tajam untuk melukai', '100', 'Pelanggaran', 'True');

-- Dumping structure for table dblaporansiswa.rangkuman
CREATE TABLE IF NOT EXISTS `rangkuman` (
  `idrangkuman` int NOT NULL AUTO_INCREMENT,
  `idsemester` int DEFAULT NULL,
  `idprestasi` int DEFAULT NULL,
  `idpelanggaran` int DEFAULT NULL,
  PRIMARY KEY (`idrangkuman`),
  KEY `idsemester` (`idsemester`),
  KEY `FK_rangkuman_poin` (`idprestasi`) USING BTREE,
  KEY `FK_rangkuman_poin_2` (`idpelanggaran`) USING BTREE,
  CONSTRAINT `FK_rangkuman_poin` FOREIGN KEY (`idprestasi`) REFERENCES `poin` (`idpoin`),
  CONSTRAINT `FK_rangkuman_poin_2` FOREIGN KEY (`idpelanggaran`) REFERENCES `poin` (`idpoin`),
  CONSTRAINT `FK_rangkuman_semester` FOREIGN KEY (`idsemester`) REFERENCES `semester` (`idsemester`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.rangkuman: ~1 rows (approximately)
REPLACE INTO `rangkuman` (`idrangkuman`, `idsemester`, `idprestasi`, `idpelanggaran`) VALUES
	(1, 2, 2, 15);

-- Dumping structure for table dblaporansiswa.semester
CREATE TABLE IF NOT EXISTS `semester` (
  `idsemester` int NOT NULL AUTO_INCREMENT,
  `idsiswa` int DEFAULT NULL,
  `idpoin` int DEFAULT NULL,
  `idwalkel` int DEFAULT NULL,
  `idortu` int DEFAULT NULL,
  `idkelas` int DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  `tingkat_kelas` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idsemester`) USING BTREE,
  KEY `FK__poin` (`idpoin`) USING BTREE,
  KEY `FK__wali_kelas` (`idwalkel`) USING BTREE,
  KEY `FK__kelas` (`idkelas`) USING BTREE,
  KEY `FK__ortusem` (`idortu`) USING BTREE,
  KEY `FK__siswasem` (`idsiswa`) USING BTREE,
  CONSTRAINT `FK_semester_kelas` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`idkelas`),
  CONSTRAINT `FK_semester_ortu` FOREIGN KEY (`idortu`) REFERENCES `ortu` (`idortu`),
  CONSTRAINT `FK_semester_poin` FOREIGN KEY (`idpoin`) REFERENCES `poin` (`idpoin`),
  CONSTRAINT `FK_semester_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`),
  CONSTRAINT `FK_semester_wali_kelas` FOREIGN KEY (`idwalkel`) REFERENCES `wali_kelas` (`idwalkel`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.semester: ~5 rows (approximately)
REPLACE INTO `semester` (`idsemester`, `idsiswa`, `idpoin`, `idwalkel`, `idortu`, `idkelas`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
	(1, 1, 1, 1, 1, 1, '2023-06-25', '1', 'Aktif', '10'),
	(2, 2, 2, 1, 2, 1, '2023-06-27', '1', 'Aktif', '10'),
	(3, 1, 3, 1, 1, 1, '2023-06-27', '1', 'Aktif', '10'),
	(5, 3, 4, 1, 3, 1, '2023-06-27', '1', 'Aktif', '10'),
	(6, 2, 15, 1, 2, 1, '2023-06-27', '1', 'Aktif', '10');

-- Dumping structure for table dblaporansiswa.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `idsiswa` int NOT NULL AUTO_INCREMENT,
  `nis` char(20) DEFAULT NULL,
  `nisn` char(20) DEFAULT NULL,
  `nama_siswa` varchar(60) DEFAULT NULL,
  `nik` char(20) DEFAULT NULL,
  `tempat_lahir` varchar(150) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `alamat` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `hp` char(20) DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`idsiswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.siswa: ~5 rows (approximately)
REPLACE INTO `siswa` (`idsiswa`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jk`, `alamat`, `telp`, `hp`, `status`) VALUES
	(1, '110', '1101', 'Hendra', '11012003', 'Banjarmasin', '2003-05-10', 'L', 'Sungai Andai', '0811551', '08115512381', 'Aktif'),
	(2, '111', '1102', 'Salsa', '11022003', 'Banjarmasin', '2003-05-13', 'P', 'Sungai Miai', '089231', '081123132', 'Aktif'),
	(3, '113', '1103', 'Reza', '11032003', 'Banjarmasin', '2003-06-10', 'L', 'Kayutangi', '081213', '0812318232', 'Aktif'),
	(6, '116', '1106', 'Alfin', '11062003', 'Banjarmasin', '2003-03-15', 'L', 'Handil Bakti', '081238', '0812394298', 'Aktif'),
	(7, '117', '1107', 'Hadi', '11072003', 'Banjarmasin', '2003-02-04', 'L', 'BJM', '08123131', '083223', 'Aktif');

-- Dumping structure for table dblaporansiswa.user
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int NOT NULL AUTO_INCREMENT,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `level` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`iduser`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.user: ~1 rows (approximately)
REPLACE INTO `user` (`iduser`, `username`, `password`, `level`, `status`) VALUES
	(1, 'daud', 'daudal', '1', 'Aktif');

-- Dumping structure for table dblaporansiswa.wali_kelas
CREATE TABLE IF NOT EXISTS `wali_kelas` (
  `idwalkel` int NOT NULL AUTO_INCREMENT,
  `nip` char(20) DEFAULT NULL,
  `nama` char(60) DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `pendidikan` char(60) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `matpel` char(30) DEFAULT NULL,
  `alamat` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  PRIMARY KEY (`idwalkel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table dblaporansiswa.wali_kelas: ~2 rows (approximately)
REPLACE INTO `wali_kelas` (`idwalkel`, `nip`, `nama`, `jk`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
	(1, '11001', 'Ahmad', 'L', 'S1 Matematika', '08123282349', 'Matematika', 'Sungai Miai', 'Aktif'),
	(2, '11002', 'Annisah', 'P', 'S1 Seni Budaya', '082931283', 'Seni Budaya', 'Sungai Miai', 'Aktif');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
