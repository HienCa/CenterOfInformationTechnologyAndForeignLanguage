-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 03:20 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cflithcmunre`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ADMINID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `VaiTro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ADMINID`, `Username`, `password`, `VaiTro`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'quanly', 'quanly', 'quanly'),
(5, 'hoanganh', 'hoanganh', 'quanly'),
(48, '080070043', 'tnmt12345', 'hocvien'),
(49, '080070044', 'tnmt12345', 'hocvien'),
(50, '080070045', 'tnmt12345', 'hocvien'),
(51, '080070046', 'tnmt12345', 'hocvien'),
(52, '080070047', 'tnmt12345', 'hocvien'),
(53, '080070048', 'tnmt12345', 'hocvien'),
(54, '080070049', 'tnmt12345', 'hocvien'),
(55, '080070050', 'tnmt12345', 'hocvien'),
(56, '080070051', 'tnmt12345', 'hocvien'),
(57, '080070052', 'tnmt12345', 'hocvien'),
(58, '080070053', 'tnmt12345', 'hocvien'),
(59, '080070054', 'tnmt12345', 'hocvien'),
(60, '080070055', 'tnmt12345', 'hocvien'),
(61, 'GV123456', 'hcmunre', 'giangvien'),
(62, 'GV654321', 'hcmunre', 'giangvien'),
(63, '0850080018', 'tnmt12345', 'hocvien'),
(64, '0850080006', 'tnmt12345', 'hocvien'),
(75, '0850080017', 'tnmt12345', 'hocvien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cahoc`
--

CREATE TABLE `cahoc` (
  `MaCa` int(11) NOT NULL,
  `TenCa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cahoc`
--

INSERT INTO `cahoc` (`MaCa`, `TenCa`) VALUES
(1, 'Sáng 2, 4, 6 ( từ 7h đến 9h )'),
(2, 'Tối 2, 4, 6 ( từ 19h đến 21h )'),
(3, 'Sáng 3, 5, 7 ( từ 7h đến 9h )'),
(4, 'Tối 3, 5, 7 ( từ 19h đến 21h )'),
(5, 'Sáng 2, 4, 6 ( từ 9h đến 11h )'),
(6, 'Tối 2, 4, 6 ( từ 21h đến 23h)'),
(7, 'Sáng 3, 5, 7 ( từ 9h đến 11h )'),
(8, 'Tối 3, 5, 7 ( từ 21h đến 23h)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdangkyhoc`
--

CREATE TABLE `chitietdangkyhoc` (
  `MaHV` varchar(20) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 0,
  `NgayDK` date NOT NULL DEFAULT current_timestamp(),
  `AnhCK` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdangkyhoc`
--

INSERT INTO `chitietdangkyhoc` (`MaHV`, `MaKH`, `Status`, `NgayDK`, `AnhCK`) VALUES
('080070043', 9, 0, '2022-11-09', 'anhck.jpg'),
('0850080006', 9, 1, '2022-11-06', 'anhck.jpg'),
('0850080006', 12, 1, '2022-11-05', 'anhck.jpg'),
('0850080017', 9, 1, '2022-11-05', 'anhck.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdangkythi`
--

CREATE TABLE `chitietdangkythi` (
  `MaHV` varchar(20) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NgayDK` date NOT NULL DEFAULT current_timestamp(),
  `Status` tinyint(1) NOT NULL DEFAULT 0,
  `AnhCK` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietdangkythi`
--

INSERT INTO `chitietdangkythi` (`MaHV`, `MaKH`, `NgayDK`, `Status`, `AnhCK`) VALUES
('342032360', 9, '2022-11-09', 0, 'anhck.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgiangday`
--

CREATE TABLE `chitietgiangday` (
  `MaGV` varchar(20) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL,
  `VaiTro` tinyint(1) NOT NULL DEFAULT 0,
  `GhiChu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietgiangday`
--

INSERT INTO `chitietgiangday` (`MaGV`, `MaLop`, `NgayBD`, `NgayKT`, `VaiTro`, `GhiChu`) VALUES
('GV123456', 1, '2022-10-05', '2022-12-05', 0, ''),
('GV123456', 2, '2022-10-05', '2022-12-05', 0, ''),
('GV654321', 19, '2022-10-05', '2022-12-05', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietketqua`
--

CREATE TABLE `chitietketqua` (
  `ID` int(11) NOT NULL,
  `MaHV` varchar(20) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaKQ` varchar(255) NOT NULL,
  `MaThi` int(11) NOT NULL,
  `KQ` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietketqua`
--

INSERT INTO `chitietketqua` (`ID`, `MaHV`, `MaKH`, `MaKQ`, `MaThi`, `KQ`) VALUES
(2, '0850080017', 9, '0850080017GV1234562800', 1, NULL),
(12, '0850080006', 9, '0850080006GV1234562900', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietkhoahoc`
--

CREATE TABLE `chitietkhoahoc` (
  `MaHV` varchar(20) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaCa` int(11) NOT NULL,
  `MaHT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietkhoahoc`
--

INSERT INTO `chitietkhoahoc` (`MaHV`, `MaKH`, `MaCa`, `MaHT`) VALUES
('080070043', 9, 1, 1),
('0850080006', 9, 1, 1),
('0850080006', 12, 1, 1),
('0850080007', 9, 1, 1),
('0850080017', 9, 4, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietlop`
--

CREATE TABLE `chitietlop` (
  `MaHV` varchar(20) NOT NULL,
  `MaLop` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitietlop`
--

INSERT INTO `chitietlop` (`MaHV`, `MaLop`, `MaKH`) VALUES
('0850080006', 2, 9),
('0850080006', 3, 12),
('0850080017', 2, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `MaGV` varchar(20) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL DEFAULT 'hcmunre',
  `SDT` varchar(50) NOT NULL,
  `CCCD` varchar(20) NOT NULL,
  `NoiSinh` varchar(20) NOT NULL,
  `NgaySinh` varchar(20) NOT NULL,
  `TrinhDo` varchar(50) NOT NULL,
  `GioiTinh` varchar(20) DEFAULT NULL,
  `IsForeign` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`MaGV`, `HoTen`, `EMAIL`, `Password`, `SDT`, `CCCD`, `NoiSinh`, `NgaySinh`, `TrinhDo`, `GioiTinh`, `IsForeign`) VALUES
('GV123456', 'Nguyễn T Bảo', 'abc@gmail.com', 'hcmunre', '0384319201', '123456789127', 'Bình Thạnh', '1990-01-02', 'Thạc sĩ', '1', 0),
('GV654321', 'Phạm Hoàng Anh', 'pha@gmail.com', 'hcmunre', '0384319205', '342032300664', 'Dak Lak', '1900-05-08', 'Thạc sĩ', '1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhthuc`
--

CREATE TABLE `hinhthuc` (
  `MaHT` int(11) NOT NULL,
  `TenHT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hinhthuc`
--

INSERT INTO `hinhthuc` (`MaHT`, `TenHT`) VALUES
(1, 'Offline'),
(2, 'Online');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `MaHV` varchar(20) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `EMAIL` varchar(200) NOT NULL,
  `Password` varchar(50) DEFAULT 'tnmt12345',
  `SDT` varchar(50) NOT NULL,
  `CCCD` varchar(20) NOT NULL,
  `NoiSinh` varchar(50) DEFAULT NULL,
  `NgaySinh` varchar(20) DEFAULT NULL,
  `Lop` varchar(50) DEFAULT NULL,
  `GioiTinh` varchar(20) DEFAULT NULL,
  `STATUS` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`MaHV`, `HoTen`, `EMAIL`, `Password`, `SDT`, `CCCD`, `NoiSinh`, `NgaySinh`, `Lop`, `GioiTinh`, `STATUS`) VALUES
('080070043', 'Nguyễn Văn A', 'nguyenvanhien@gmail.com', 'tnmt12345', '0384319101', '342032300', 'Đồng Tháp', '2001-05-05', '08CNPM', 'nam', 1),
('0850080003', 'Phạm Hoàng Anh', 'th@gmail.com', 'tnmt12345', '0384319203', '0850080003', 'Dak Lak', '2008-01-01', NULL, NULL, 1),
('0850080006', 'tuan bao', 'tuanbao.1005@gmail.com', 'tnmt12345', '0384319201', '12345678912', 'Đồng Tháp', '2022-11-23', '08CNPM', NULL, 1),
('0850080007', 'Phạm Hoàng Anh', 'th@gmail.com', 'tnmt12345', '0384319203', '0850080007', 'Dak Lak', '2008-01-01', NULL, NULL, 1),
('0850080011', 'Lê Nguyễn Anh Dũng', 'abc@gmail.com', 'tnmt12345', '0384319201', '0850080011', 'Hốc Môn', '2008-01-01', NULL, NULL, 1),
('0850080017', 'Phan Thanh Hải', 'tuanbao.1005@gmail.com', 'tnmt12345', '0384319201', '0850080017', 'Đồng Tháp', '2008-01-01', NULL, NULL, 1),
('342032360', 'Nguyễn Văn Hiền', 'nguyenvanhien@gmail.com', 'tnmt12345', '0384319202', '342032360', 'Đồng Tháp', '2008-01-01', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `MaKQ` int(11) NOT NULL,
  `DiemLT` varchar(20) NOT NULL,
  `DiemTH` varchar(20) DEFAULT NULL,
  `Ma` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`MaKQ`, `DiemLT`, `DiemTH`, `Ma`) VALUES
(84, '800', '', '0850080017GV1234562800'),
(116, '900', '', '0850080006GV1234562900');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(200) NOT NULL,
  `Gia` double NOT NULL DEFAULT 0,
  `MaLoai` int(11) NOT NULL,
  `TGBD` date DEFAULT NULL,
  `TGKT` date DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`MaKH`, `TenKH`, `Gia`, `MaLoai`, `TGBD`, `TGKT`, `Status`) VALUES
(9, 'Ứng dụng CNTT Nâng Cao', 0, 1, '2022-10-05', '2022-12-05', 0),
(10, 'TOEIC 100-300 điểm', 0, 2, '2022-10-05', '2022-12-05', 0),
(11, 'TOEIC 300-450 điểm', 0, 2, '2022-10-05', '2022-12-05', 0),
(12, 'TOEIC 450-650 điểm', 0, 2, '2022-10-05', '2022-12-05', 0),
(13, 'TOEIC 650-850 điểm', 3000000, 2, '2022-10-05', '2022-12-05', 0),
(14, 'TOEIC 850-990 điểm', 0, 2, '2022-10-05', '2022-12-05', 0),
(15, 'Ứng dụng CNTT Cơ Bản', 0, 1, '2022-10-05', '2022-12-05', 0),
(16, 'Tiếng anh đầu vào', 1000000, 2, '2022-10-06', '2022-10-26', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `MaLop` int(11) NOT NULL,
  `TenLop` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `SoPhong` varchar(50) NOT NULL,
  `MaKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `SoLuong`, `SoPhong`, `MaKH`) VALUES
(1, 'TOEIC Nâng Cao ', 10, 'A507', 14),
(2, 'TOEIC Trung Cấp 2', 20, 'A505', 9),
(3, 'TOEIC Trung Cấp 1', 30, 'A501', 12),
(4, 'TOEIC Sơ Cấp 2', 40, 'A500', 11),
(5, 'TOEIC Sơ Cấp 1', 50, 'A303', 10),
(7, 'Tin Học Nâng Cao', 40, 'A402', 9),
(8, 'Ứng dụng CNTT Cơ Bản', 50, 'A208', 15),
(9, 'Tiếng Anh Đầu Vào', 40, 'A403', 9),
(15, 'Tiếng Anh Đầu Vào 4', 50, 'A2023', 11),
(19, 'TOEIC Nâng Cao 2', 10, 'A517', 13),
(20, 'Tiếng Anh Đầu Vào 3', 50, 'A218', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`MaLoai`, `TenLoai`) VALUES
(1, 'Tin Học Văn Phòng'),
(2, 'Tiếng Anh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thi`
--

CREATE TABLE `thi` (
  `MaThi` int(11) NOT NULL,
  `Phong` varchar(50) NOT NULL,
  `DiaDiem` varchar(200) NOT NULL DEFAULT '236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh',
  `NgayThi` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thi`
--

INSERT INTO `thi` (`MaThi`, `Phong`, `DiaDiem`, `NgayThi`) VALUES
(1, 'A507', '236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh', '2022-10-03'),
(2, 'B301', '236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh', '2022-12-29'),
(3, 'A5072', '236B Lê Văn Sỹ, Phường 1, Quận Tân Bình, TP. Hồ Chí Minh', '2022-11-03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMINID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Chỉ mục cho bảng `cahoc`
--
ALTER TABLE `cahoc`
  ADD PRIMARY KEY (`MaCa`);

--
-- Chỉ mục cho bảng `chitietdangkyhoc`
--
ALTER TABLE `chitietdangkyhoc`
  ADD PRIMARY KEY (`MaHV`,`MaKH`),
  ADD KEY `fk-dkhkh` (`MaKH`);

--
-- Chỉ mục cho bảng `chitietdangkythi`
--
ALTER TABLE `chitietdangkythi`
  ADD PRIMARY KEY (`MaHV`,`MaKH`),
  ADD KEY `fk-dkhkhthi` (`MaKH`);

--
-- Chỉ mục cho bảng `chitietgiangday`
--
ALTER TABLE `chitietgiangday`
  ADD PRIMARY KEY (`MaGV`,`MaLop`);

--
-- Chỉ mục cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CTKQ_HV` (`MaHV`),
  ADD KEY `FK_CTKQ_KH` (`MaKH`),
  ADD KEY `FK_CTKQ_THI` (`MaThi`),
  ADD KEY `FK_CTKQ_MAKQ` (`MaKQ`);

--
-- Chỉ mục cho bảng `chitietkhoahoc`
--
ALTER TABLE `chitietkhoahoc`
  ADD PRIMARY KEY (`MaHV`,`MaKH`,`MaCa`),
  ADD KEY `FK-khca` (`MaCa`),
  ADD KEY `FK-kh` (`MaKH`),
  ADD KEY `FK-HT` (`MaHT`);

--
-- Chỉ mục cho bảng `chitietlop`
--
ALTER TABLE `chitietlop`
  ADD PRIMARY KEY (`MaHV`,`MaLop`,`MaKH`),
  ADD KEY `FK-CTLKH` (`MaKH`),
  ADD KEY `FK-CTLML` (`MaLop`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`MaGV`);

--
-- Chỉ mục cho bảng `hinhthuc`
--
ALTER TABLE `hinhthuc`
  ADD PRIMARY KEY (`MaHT`);

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`MaHV`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`MaKQ`),
  ADD UNIQUE KEY `Ma` (`Ma`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`MaKH`),
  ADD KEY `FK-loaikh` (`MaLoai`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `FK-LopMakh` (`MaKH`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `thi`
--
ALTER TABLE `thi`
  ADD PRIMARY KEY (`MaThi`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ADMINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `cahoc`
--
ALTER TABLE `cahoc`
  MODIFY `MaCa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `hinhthuc`
--
ALTER TABLE `hinhthuc`
  MODIFY `MaHT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `MaKQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `MaLop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thi`
--
ALTER TABLE `thi`
  MODIFY `MaThi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdangkyhoc`
--
ALTER TABLE `chitietdangkyhoc`
  ADD CONSTRAINT `fk-dkhkh` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`),
  ADD CONSTRAINT `fk-dkhkhhv` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`);

--
-- Các ràng buộc cho bảng `chitietdangkythi`
--
ALTER TABLE `chitietdangkythi`
  ADD CONSTRAINT `fk_ctdkthv` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`);

--
-- Các ràng buộc cho bảng `chitietgiangday`
--
ALTER TABLE `chitietgiangday`
  ADD CONSTRAINT `fk_tk_gv` FOREIGN KEY (`MaGV`) REFERENCES `giangvien` (`MaGV`);

--
-- Các ràng buộc cho bảng `chitietketqua`
--
ALTER TABLE `chitietketqua`
  ADD CONSTRAINT `FK_CTKQ_HV` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`),
  ADD CONSTRAINT `FK_CTKQ_KH` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`),
  ADD CONSTRAINT `FK_CTKQ_MAKQ` FOREIGN KEY (`MaKQ`) REFERENCES `ketqua` (`Ma`),
  ADD CONSTRAINT `FK_CTKQ_THI` FOREIGN KEY (`MaThi`) REFERENCES `thi` (`MaThi`);

--
-- Các ràng buộc cho bảng `chitietkhoahoc`
--
ALTER TABLE `chitietkhoahoc`
  ADD CONSTRAINT `FK-HT` FOREIGN KEY (`MaHT`) REFERENCES `hinhthuc` (`MaHT`),
  ADD CONSTRAINT `FK-kh` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`),
  ADD CONSTRAINT `FK-khca` FOREIGN KEY (`MaCa`) REFERENCES `cahoc` (`MaCa`),
  ADD CONSTRAINT `FK-khhv` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`);

--
-- Các ràng buộc cho bảng `chitietlop`
--
ALTER TABLE `chitietlop`
  ADD CONSTRAINT `FK-CTLKH` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`),
  ADD CONSTRAINT `FK-CTLML` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `FK-CTLhv` FOREIGN KEY (`MaHV`) REFERENCES `hocvien` (`MaHV`);

--
-- Các ràng buộc cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD CONSTRAINT `FK-loaikh` FOREIGN KEY (`MaLoai`) REFERENCES `theloai` (`MaLoai`);

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK-LopMakh` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
