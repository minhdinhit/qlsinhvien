-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2020 at 11:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_sinhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_hedaotao`
--

CREATE TABLE `db_hedaotao` (
  `id` int(11) NOT NULL,
  `ma_he` varchar(50) NOT NULL,
  `ten_he` varchar(255) NOT NULL,
  `ngay_tao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_hedaotao`
--

INSERT INTO `db_hedaotao` (`id`, `ma_he`, `ten_he`, `ngay_tao`) VALUES
(1, 'H1414', 'Đại Học', '28-08-2020 09:57'),
(3, 'H7971', 'Chính Quy Cao Cấp', '28-08-2020 09:57'),
(5, 'H85&&', 'Cao Đẳng Công Thương HCM', '28-08-2020 10:31');

-- --------------------------------------------------------

--
-- Table structure for table `db_khoa`
--

CREATE TABLE `db_khoa` (
  `id` int(11) NOT NULL,
  `ma_khoa` varchar(50) NOT NULL,
  `ten_khoa` varchar(255) NOT NULL,
  `ngay_tao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_khoa`
--

INSERT INTO `db_khoa` (`id`, `ma_khoa`, `ten_khoa`, `ngay_tao`) VALUES
(2, 'KHTN & CN', 'Khoa Học Tự Nhiên & Công Nghệ', '28-08-2020 10:40');

-- --------------------------------------------------------

--
-- Table structure for table `db_khoahoc`
--

CREATE TABLE `db_khoahoc` (
  `id` int(11) NOT NULL,
  `ma_khoahoc` varchar(50) NOT NULL,
  `ten_khoahoc` varchar(50) NOT NULL,
  `ngay_tao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_khoahoc`
--

INSERT INTO `db_khoahoc` (`id`, `ma_khoahoc`, `ten_khoahoc`, `ngay_tao`) VALUES
(1, 'KH203600', '2009-2013', '28-08-2020 10:38');

-- --------------------------------------------------------

--
-- Table structure for table `db_lop`
--

CREATE TABLE `db_lop` (
  `id` int(11) NOT NULL,
  `ma_lop` varchar(50) NOT NULL,
  `ten_lop` varchar(255) NOT NULL,
  `ma_khoa` varchar(50) NOT NULL,
  `ma_khoahoc` varchar(50) NOT NULL,
  `ma_nganh` varchar(50) NOT NULL,
  `ma_he` varchar(50) NOT NULL,
  `ngay_tao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_lop`
--

INSERT INTO `db_lop` (`id`, `ma_lop`, `ten_lop`, `ma_khoa`, `ma_khoahoc`, `ma_nganh`, `ma_he`, `ngay_tao`) VALUES
(1, 'K1414', 'Công Nghệ Thông Tin K14', 'KHTN & CN', 'KH203600', 'D1413', 'H1414', '28-08-2020 10:54');

-- --------------------------------------------------------

--
-- Table structure for table `db_nganh`
--

CREATE TABLE `db_nganh` (
  `id` int(11) NOT NULL,
  `ma_nganh` varchar(50) NOT NULL,
  `ten_nganh` varchar(255) NOT NULL,
  `ma_khoa` varchar(50) NOT NULL,
  `ngay_tao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_nganh`
--

INSERT INTO `db_nganh` (`id`, `ma_nganh`, `ten_nganh`, `ma_khoa`, `ngay_tao`) VALUES
(2, 'D1413', 'Công Nghệ Thông Tin', 'KHTN & CN', '28-08-2020 10:51'),
(3, 'D3868', 'Công Nghệ Thông Tin K15', 'KHTN & CN', '28-08-2020 10:51');

-- --------------------------------------------------------

--
-- Table structure for table `db_sinhvien`
--

CREATE TABLE `db_sinhvien` (
  `id` int(11) NOT NULL,
  `ma_sv` varchar(8) NOT NULL,
  `ma_lop` varchar(50) NOT NULL,
  `ma_khoahoc` varchar(50) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `ngay_sinh` varchar(255) DEFAULT NULL,
  `dien_thoai` varchar(255) DEFAULT NULL,
  `gioi_tinh` int(1) DEFAULT 0 COMMENT '0=nam / 1=nu',
  `dia_chi` varchar(255) DEFAULT NULL,
  `noi_sinh` varchar(255) DEFAULT NULL,
  `hoten_cha` varchar(255) DEFAULT NULL,
  `hoten_me` varchar(255) DEFAULT NULL,
  `que_quan` varchar(255) DEFAULT NULL,
  `dan_toc` varchar(255) DEFAULT NULL,
  `ton_giao` varchar(255) DEFAULT NULL,
  `ngay_tao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `db_sinhvien`
--

INSERT INTO `db_sinhvien` (`id`, `ma_sv`, `ma_lop`, `ma_khoahoc`, `ho_ten`, `ngay_sinh`, `dien_thoai`, `gioi_tinh`, `dia_chi`, `noi_sinh`, `hoten_cha`, `hoten_me`, `que_quan`, `dan_toc`, `ton_giao`, `ngay_tao`) VALUES
(9, '14104012', 'K1414', 'KH203600', 'Nguyễn Hùng Dũng', '2020-08-05', '0383868205', 0, '12-Trần Não-Bình An-Q2-HCM', 'Cư jut - Daklak ', 'Hứa Văn Tâm', 'Vi Thị Trái', 'Chi Lăng-Lạng Sơn', 'Nùng', 'Không', '28-08-2020 13:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_hedaotao`
--
ALTER TABLE `db_hedaotao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_he` (`ma_he`);

--
-- Indexes for table `db_khoa`
--
ALTER TABLE `db_khoa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_khoa` (`ma_khoa`);

--
-- Indexes for table `db_khoahoc`
--
ALTER TABLE `db_khoahoc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_khoahoc` (`ma_khoahoc`);

--
-- Indexes for table `db_lop`
--
ALTER TABLE `db_lop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_lop` (`ma_lop`),
  ADD KEY `ma_khoa` (`ma_khoa`),
  ADD KEY `ma_he` (`ma_he`),
  ADD KEY `ma_khoahoc` (`ma_khoahoc`),
  ADD KEY `ma_nganh` (`ma_nganh`);

--
-- Indexes for table `db_nganh`
--
ALTER TABLE `db_nganh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_khoa` (`ma_khoa`),
  ADD KEY `ma_nganh` (`ma_nganh`);

--
-- Indexes for table `db_sinhvien`
--
ALTER TABLE `db_sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ma_sv` (`ma_sv`),
  ADD KEY `ma_lop` (`ma_lop`),
  ADD KEY `ma_khoahoc` (`ma_khoahoc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_hedaotao`
--
ALTER TABLE `db_hedaotao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_khoa`
--
ALTER TABLE `db_khoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_khoahoc`
--
ALTER TABLE `db_khoahoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_lop`
--
ALTER TABLE `db_lop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_nganh`
--
ALTER TABLE `db_nganh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_sinhvien`
--
ALTER TABLE `db_sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_lop`
--
ALTER TABLE `db_lop`
  ADD CONSTRAINT `db_lop_ibfk_1` FOREIGN KEY (`ma_he`) REFERENCES `db_hedaotao` (`ma_he`),
  ADD CONSTRAINT `db_lop_ibfk_2` FOREIGN KEY (`ma_nganh`) REFERENCES `db_nganh` (`ma_nganh`),
  ADD CONSTRAINT `db_lop_ibfk_3` FOREIGN KEY (`ma_khoahoc`) REFERENCES `db_khoahoc` (`ma_khoahoc`);

--
-- Constraints for table `db_nganh`
--
ALTER TABLE `db_nganh`
  ADD CONSTRAINT `db_nganh_ibfk_1` FOREIGN KEY (`ma_khoa`) REFERENCES `db_khoa` (`ma_khoa`);

--
-- Constraints for table `db_sinhvien`
--
ALTER TABLE `db_sinhvien`
  ADD CONSTRAINT `db_sinhvien_ibfk_1` FOREIGN KEY (`ma_lop`) REFERENCES `db_lop` (`ma_lop`),
  ADD CONSTRAINT `db_sinhvien_ibfk_2` FOREIGN KEY (`ma_khoahoc`) REFERENCES `db_khoahoc` (`ma_khoahoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
