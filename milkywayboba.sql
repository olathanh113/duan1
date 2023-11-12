-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 12, 2023 lúc 04:15 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `milkywayboba`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh-luan`
--

CREATE TABLE `binh-luan` (
  `ma_bl` int(11) NOT NULL,
  `ma_kh` varchar(50) NOT NULL,
  `ma_hh` int(10) NOT NULL,
  `noi_dung` varchar(255) NOT NULL,
  `ngay_bl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi-tiet-hang-hoa`
--

CREATE TABLE `chi-tiet-hang-hoa` (
  `ma_hh` int(10) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `gia` int(11) NOT NULL,
  `mo_ta` varchar(50) NOT NULL,
  `ngay_nhap` date NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gio_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi-tiet-hoa-don`
--

CREATE TABLE `chi-tiet-hoa-don` (
  `ma_hd` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(20) NOT NULL,
  `ma_hh` int(11) NOT NULL,
  `size` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang-hoa`
--

CREATE TABLE `hang-hoa` (
  `ma_hh` int(10) NOT NULL,
  `ten_hh` varchar(50) NOT NULL,
  `hinh` varchar(50) NOT NULL,
  `don_gia` int(20) NOT NULL,
  `giam_gia` int(20) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ma_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa-don`
--

CREATE TABLE `hoa-don` (
  `ma_hh` int(10) NOT NULL,
  `ngay_mua` varchar(50) NOT NULL,
  `ghi_chu` varchar(50) NOT NULL,
  `tinh_trang` int(10) NOT NULL,
  `ma_kh` varchar(50) NOT NULL,
  `size` int(10) NOT NULL,
  `dia_chi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach-hang`
--

CREATE TABLE `khach-hang` (
  `ma_kh` varchar(50) NOT NULL,
  `ho_ten` varchar(50) NOT NULL,
  `mat_khau` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `vai_tro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai-hang`
--

CREATE TABLE `loai-hang` (
  `ma_loai` int(10) NOT NULL,
  `ten_loai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `ma_size` int(10) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh-luan`
--
ALTER TABLE `binh-luan`
  ADD PRIMARY KEY (`ma_bl`);

--
-- Chỉ mục cho bảng `chi-tiet-hang-hoa`
--
ALTER TABLE `chi-tiet-hang-hoa`
  ADD PRIMARY KEY (`ma_hh`);

--
-- Chỉ mục cho bảng `chi-tiet-hoa-don`
--
ALTER TABLE `chi-tiet-hoa-don`
  ADD PRIMARY KEY (`ma_hd`);

--
-- Chỉ mục cho bảng `hang-hoa`
--
ALTER TABLE `hang-hoa`
  ADD PRIMARY KEY (`ma_hh`);

--
-- Chỉ mục cho bảng `hoa-don`
--
ALTER TABLE `hoa-don`
  ADD PRIMARY KEY (`ma_hh`);

--
-- Chỉ mục cho bảng `khach-hang`
--
ALTER TABLE `khach-hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai-hang`
--
ALTER TABLE `loai-hang`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`ma_size`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh-luan`
--
ALTER TABLE `binh-luan`
  MODIFY `ma_bl` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi-tiet-hang-hoa`
--
ALTER TABLE `chi-tiet-hang-hoa`
  MODIFY `ma_hh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi-tiet-hoa-don`
--
ALTER TABLE `chi-tiet-hoa-don`
  MODIFY `ma_hd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hang-hoa`
--
ALTER TABLE `hang-hoa`
  MODIFY `ma_hh` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loai-hang`
--
ALTER TABLE `loai-hang`
  MODIFY `ma_loai` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `ma_size` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
