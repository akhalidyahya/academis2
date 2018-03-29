-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 11:37 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sik`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `nis_siswa` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(10) DEFAULT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` enum('admin','guru','siswa','orangtua') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `id_user`, `username`, `password`, `status`) VALUES
(1, '1', 'admin', '0cc175b9c0f1b6a831c399e269772661', 'admin'),
(2, '1', 'guru', '0cc175b9c0f1b6a831c399e269772661', 'guru'),
(3, '1', 'siswa', '0cc175b9c0f1b6a831c399e269772661', 'siswa'),
(4, '1', 'ortu', '0cc175b9c0f1b6a831c399e269772661', 'orangtua');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `link` text CHARACTER SET utf8,
  `color` varchar(7) CHARACTER SET utf8 NOT NULL DEFAULT '#3a87ad',
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `allDay` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `link`, `color`, `start`, `end`, `allDay`) VALUES
(1, 'djnajk', 'sjdnaj', 'www.facebook.com', '#a30505', '2018-01-10 00:00:00', '2018-01-14 00:00:00', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_depan` varchar(15) NOT NULL,
  `nama_tengah` varchar(15) NOT NULL,
  `nama_belakang` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nip` varchar(18) NOT NULL,
  `email` varchar(25) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_depan`, `nama_tengah`, `nama_belakang`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `nip`, `email`, `no_telp`, `id_kelas`, `id_mapel`) VALUES
(1, 'Harun', 'fdsfsd', 'fdsfsd', 'gfhfhgf', 'sada', 'fdf', 'dsas', 'Alaska', 'Perempuan', 'fdfsd', '2017-12-03', '434324', 'harunarrosid07@gmail.com', '98765', 1, 1),
(17, 'fdfd', 'dsa', 'da', 'dsd', 'dsd', 'dsa', 'sds', 'Alaska', 'Perempuan', 'csds', '2017-11-05', '321323', 'daadad', '3423421', 1, 1),
(20, 'Harun', 'dsda', 'dsada', 'sdasd', 'dsa', 'sadas', 'dsadsa', 'Alabama', 'Laki - laki', 'dsdas', '2017-10-29', '34234', 'dfds', '7575', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kalender_akademik`
--

CREATE TABLE `kalender_akademik` (
  `id_kaldik` int(11) NOT NULL,
  `nama_event` varchar(20) NOT NULL,
  `tanggal_event` date DEFAULT NULL,
  `deskripsi_event` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, '1 A'),
(2, '1 B');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Tema 1'),
(2, 'Tema 2');

-- --------------------------------------------------------

--
-- Table structure for table `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id_ortu` int(11) NOT NULL,
  `nama_bapak` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `nama_wali` varchar(50) NOT NULL,
  `no_telp_bapak` varchar(12) DEFAULT NULL,
  `no_telp_ibu` varchar(12) DEFAULT NULL,
  `no_telp_wali` varchar(12) NOT NULL,
  `alamat_lengkap` varchar(100) NOT NULL,
  `pekerjaan_ayah` varchar(25) DEFAULT NULL,
  `pekerjaan_ibu` varchar(25) DEFAULT NULL,
  `pekerjaan_wali` varchar(25) NOT NULL,
  `penghasilan_ortu` varchar(25) DEFAULT NULL,
  `penghasilan_wali` varchar(25) DEFAULT NULL,
  `no_kk` varchar(16) NOT NULL,
  `email_aktif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orang_tua`
--

INSERT INTO `orang_tua` (`id_ortu`, `nama_bapak`, `nama_ibu`, `nama_wali`, `no_telp_bapak`, `no_telp_ibu`, `no_telp_wali`, `alamat_lengkap`, `pekerjaan_ayah`, `pekerjaan_ibu`, `pekerjaan_wali`, `penghasilan_ortu`, `penghasilan_wali`, `no_kk`, `email_aktif`) VALUES
(1, 'jdksdjak', 'djskdj', '-', '8329389', '9238', '92389', 'dsdasdjb', 'djsndj', 'djsdnaj', '-', 'djsndja', '-', '983982932932', 'djakdjakjksdj@gmail.com'),
(2, 'ndsjdn', 'sjdnsjd', 'sdnsjd', 'sdnsjd', '48938', '4839489', 'fdnfjsdnj', 'fnsjn', 'jdnsjdn', 'fdjfndj', '7483', '84728', '78247328', 'jdsjds@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul_pengumuman` varchar(25) NOT NULL,
  `timestamp` date NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `tujuan` varchar(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul_pengumuman`, `timestamp`, `deskripsi`, `gambar`, `tujuan`, `id_user`) VALUES
(1, 'contoh', '2018-02-26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'a', 'semua', 2);

-- --------------------------------------------------------

--
-- Table structure for table `rapot`
--

CREATE TABLE `rapot` (
  `id_rapot` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nis` varchar(15) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(12) NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `id_ortu` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `nis`, `nisn`, `jenis_kelamin`, `agama`, `alamat`, `kelurahan`, `kecamatan`, `kota`, `provinsi`, `id_ortu`, `id_kelas`) VALUES
(2, 'Abdullah Khalid Yahya', 'ndjsandj', '2018-02-01', '8232983', '3823982932', 'Laki - lak', 'islam', 'djhjshdajshd', 'djahdja', 'djsahdj', 'hsdjsah', 'Alabama', 1, 2),
(3, 'Aryo Mujahid', 'dnsajnj', '2018-02-10', 'dnsjdnsaj', 'sdnsjdn', 'Laki - lak', 'jsndjsnd', 'dsjdhsa', 'dhsjdhsj', 'jsndsjan', 'sndsjnd', 'Alabama', 2, 1),
(4, 'Harun Arrosyid', 'Bekasi', '2018-03-29', '21124124', '1242131241', 'laki-laki', 'Islam', 'Jl. Dahlia V/10', 'krawang', 'bekasi timur', 'Bekasi ', 'Jabar', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`),
  ADD UNIQUE KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `fk_guru_kelas` (`id_kelas`),
  ADD KEY `fk_guru_mapel` (`id_mapel`);

--
-- Indexes for table `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  ADD PRIMARY KEY (`id_kaldik`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id_ortu`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `rapot`
--
ALTER TABLE `rapot`
  ADD PRIMARY KEY (`id_rapot`),
  ADD UNIQUE KEY `id_siswa` (`id_siswa`),
  ADD UNIQUE KEY `id_mapel` (`id_mapel`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `fk_siswa_ortu` (`id_ortu`),
  ADD KEY `fk_siswa_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kalender_akademik`
--
ALTER TABLE `kalender_akademik`
  MODIFY `id_kaldik` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id_ortu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rapot`
--
ALTER TABLE `rapot`
  MODIFY `id_rapot` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `fk_guru_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `fk_guru_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Constraints for table `rapot`
--
ALTER TABLE `rapot`
  ADD CONSTRAINT `rapot_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `rapot_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `fk_siswa_ortu` FOREIGN KEY (`id_ortu`) REFERENCES `orang_tua` (`id_ortu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
