-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 02, 2023 lúc 03:54 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhaphang`
--

CREATE TABLE `chitietnhaphang` (
  `MaPhieu` varchar(10) NOT NULL,
  `MaSp` varchar(10) NOT NULL,
  `SoLuongNhap` int(11) DEFAULT NULL,
  `ThanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietxuathang`
--

CREATE TABLE `chitietxuathang` (
  `MaPhieu` varchar(10) NOT NULL,
  `MaSp` varchar(10) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `ThanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietyeucaunhaphang`
--

CREATE TABLE `chitietyeucaunhaphang` (
  `MaPhieuYCN` varchar(10) NOT NULL,
  `MaSp` varchar(10) NOT NULL,
  `SoLuongTheoYeuCau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietyeucaunhaphang`
--

INSERT INTO `chitietyeucaunhaphang` (`MaPhieuYCN`, `MaSp`, `SoLuongTheoYeuCau`) VALUES
('12344', '1362', 3),
('12344', '3422', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietyeucauxuathang`
--

CREATE TABLE `chitietyeucauxuathang` (
  `MaPhieuYCX` varchar(10) NOT NULL,
  `MaSp` varchar(10) NOT NULL,
  `SoLuongYeuCau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `MaCH` varchar(10) NOT NULL,
  `TenCH` varchar(60) DEFAULT NULL,
  `DiaChi` varchar(60) DEFAULT NULL,
  `SoDienThoai` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cuahang`
--

INSERT INTO `cuahang` (`MaCH`, `TenCH`, `DiaChi`, `SoDienThoai`) VALUES
('1423', 'Bác Tôm', 'Số 6, Nguyễn Công Trứ - Hai Bà Trưng', '091956789'),
('2486', 'Top Green', 'Số 50 - ngõ 6 phố Vĩnh Phúc - Ba Đình', '0912265174'),
('2596', 'Tâm Đạt Hữu Cơ', '110 Láng Hạ - Đống Đa', '0912265741'),
('3575', 'HinMart', 'Số 4 TT5 Chung cư VOV – Nam Từ Liêm', '0944827651'),
('4269', 'Clever Food', '11 Tô Ngọc Vân, Tây Hồ', '0944145208'),
('5735', 'K-Market', 'Số 83 Nguyễn Thị Định – Hoàn Kiếm', '02462872345'),
('7423', 'T-Mart Minh Khai', '189 Minh Khai - Hai Ba Trung', '0429384235'),
('7496', 'Sói Biển', 'Số 182 Hoàng Văn Thái – Thanh Xuân', '0919702078'),
('9124', 'Cricle K', 'Số 370 Nguyễn Trãi – Thanh Xuân', '02432011874');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(10) NOT NULL,
  `TenNCC` varchar(60) DEFAULT NULL,
  `DiaChi` varchar(60) DEFAULT NULL,
  `SoDienThoai` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SoDienThoai`) VALUES
('1235', 'Thực phẩm Tấn Tài', 'Nguyễn Duy, Phường 12, Quận 8,Tp. Hồ Chí Minh', '0706675696'),
('1565', 'DDT', 'Đống Đa, Hà Nội', '0343354235'),
('2213', 'Thực phẩm Zin Food', 'Khu Công Nghiệp Quang Minh, Mê Linh, TP. Hà Nội', '0366005005'),
('2470', 'Công Ty TNHH Supor Việt Nam', '50 Nguyễn Khang, P. Yên Hòa, Q. Cầu Giấy, Hà Nội', '02427764014'),
('2568', 'Công Ty CPTM Kim Cương', 'A8/24A Quốc Lộ 50, X. Đa Phước, H. Bình Chánh,Tp Hồ Chí Minh', '02837780524'),
('2843', 'Thực phẩm Zin Food', 'Khu Công Nghiệp Quang Minh, Mê Linh, TP. Hà Nội', '0366005005'),
('2921', 'San Hà Food', ' Số951 Tạ Quang Bửu, Q8,Tp Hồ Chí Minh', '02839814733'),
('2943', 'Thực phẩm Zin Food', ' Mê Linh,Hà Nội', '0366005005'),
('3096', 'Công Ty TNHH Megahome', 'KĐT Mới Cầu Bươu, Thanh Trì, Hà Nội', '0904257258'),
('3124', 'An An', 'Định công, Hoàng Mai, Hà Nội', '023984343'),
('7921', 'San Hà Food', ' Số 951 Tạ Quang Bửu, P. 6, Q. 8,Tp. Hồ Chí Minh', '02839814733'),
('7932', 'Công Ty TNHH Happy Cook', '102/51 Lương Khánh Thiện, Q. Hoàng Mai,Hà Nội', '0942000666');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phankhu`
--

CREATE TABLE `phankhu` (
  `MaPhanKhu` varchar(10) NOT NULL,
  `TenPhanKhu` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phankhu`
--

INSERT INTO `phankhu` (`MaPhanKhu`, `TenPhanKhu`) VALUES
('DELETED', 'Đã xóa'),
('PK1', 'Đồ gia dụng'),
('PK2-BK', 'Bánh kẹo'),
('PK3', 'Thực phẩm khô'),
('PK4', 'Thực phẩm đông lạnh'),
('PK5', 'Thực phẩm chức năng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPhieu` varchar(10) NOT NULL,
  `MaPhieuYCN` varchar(10) DEFAULT NULL,
  `NgayLapPhieu` date DEFAULT current_timestamp(),
  `DiaDiemLapPhieu` varchar(60) DEFAULT NULL,
  `TongSoTien` float DEFAULT NULL,
  `MaNguoiLap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`MaPhieu`, `MaPhieuYCN`, `NgayLapPhieu`, `DiaDiemLapPhieu`, `TongSoTien`, `MaNguoiLap`) VALUES
('1122', '1000', '2023-01-13', 'Tai kho', 0, 'admin'),
('1234', '1234', '2023-01-13', 'Tai kho', 0, 'admin'),
('1235', '1234', '2023-01-13', 'Tai kho', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPhieu` varchar(10) NOT NULL,
  `MaPhieuYCX` varchar(10) NOT NULL,
  `NgayLapPhieu` date DEFAULT NULL,
  `DiaDiemLapPhieu` varchar(60) DEFAULT NULL,
  `TongSoTien` float DEFAULT NULL,
  `MaNguoiLap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPhieu`, `MaPhieuYCX`, `NgayLapPhieu`, `DiaDiemLapPhieu`, `TongSoTien`, `MaNguoiLap`) VALUES
('989890', '00998', '2023-01-14', 'Tại kho', 0, 'admin'),
('99876', '00998', '2023-01-14', 'Tại kho', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuyeucaunhap`
--

CREATE TABLE `phieuyeucaunhap` (
  `MaPhieuYCN` varchar(10) NOT NULL,
  `MaNCC` varchar(10) DEFAULT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TrangThai` varchar(30) DEFAULT NULL,
  `MaNguoiLap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuyeucaunhap`
--

INSERT INTO `phieuyeucaunhap` (`MaPhieuYCN`, `MaNCC`, `NgayLap`, `TrangThai`, `MaNguoiLap`) VALUES
('12344', '1235', '2023-02-02 00:00:00', 'Đang chờ', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuyeucauxuat`
--

CREATE TABLE `phieuyeucauxuat` (
  `MaPhieuYCX` varchar(10) NOT NULL,
  `MaCH` varchar(10) DEFAULT NULL,
  `NgayLap` date DEFAULT NULL,
  `TrangThai` varchar(30) DEFAULT NULL,
  `LyDo` varchar(255) DEFAULT NULL,
  `MaNguoiLap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSp` varchar(10) NOT NULL,
  `TenSp` varchar(60) DEFAULT NULL,
  `MaViTri` varchar(10) NOT NULL,
  `XuatXu` varchar(60) DEFAULT NULL,
  `NhaSx` varchar(60) DEFAULT NULL,
  `NSX` date DEFAULT NULL,
  `HSD` date DEFAULT NULL,
  `GiaNhap` float DEFAULT NULL,
  `GiaBan` float DEFAULT NULL,
  `DonVi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSp`, `TenSp`, `MaViTri`, `XuatXu`, `NhaSx`, `NSX`, `HSD`, `GiaNhap`, `GiaBan`, `DonVi`) VALUES
('1234', 'Tủ lạnh', 'A-PK1', 'Nhật Bản', 'Toshiba', '0000-00-00', '0000-00-00', 12000000, 15000000, 'Chiếc'),
('1238', 'Nồi cơm Điện', 'B-PK1', 'Việt Nam', 'Benny', NULL, NULL, 1000000, 12000000, 'Chiếc'),
('1248', 'Bếp từ', 'C-PK1', 'Nhật Bản', 'Toshiba', NULL, NULL, 2000000, 3500000, 'Chiếc'),
('1267', 'Ấm siêu tốc', 'D-PK1', 'Việt Nam', 'Benny', NULL, NULL, 200000, 270000, 'Chiếc'),
('1362', 'Chảo chống dính', 'E-PK1', 'Việt Nam', 'Sunhouse', NULL, NULL, 120000, 199000, 'Chiếc'),
('2426', 'Bánh gạo An An', 'BK1AA', 'Việt Nam', 'Công ty CP Bánh kẹo AN AN', '2021-12-23', '2023-01-01', 17.5, 20, 'Gói'),
('3126', 'Thịt bò khô', 'A-PK3', 'Việt Nam', 'Viet Nam Food', '2023-01-01', '2023-01-01', 80000, 120000, 'Gói'),
('3224', 'Hạt điều rang bơ', 'B-PK3', 'Việt Nam', 'Viet Nam Food', '2023-02-02', '2023-01-18', 30000, 75000, 'Hộp'),
('3422', 'Dừa sấy khô', 'C-PK3', 'Việt Nam', 'Viet Nam Food', '2023-01-15', '2024-01-15', 30000, 60000, 'Gói'),
('3492', 'Gạo', 'D-PK3', 'Việt Nam', 'Gạo Quý', '2023-01-20', '2023-02-20', 35000, 50000, 'Gói'),
('3876', 'Miến', 'E-PK3', 'Việt Nam', 'Thực phẩm Zin Food', '2022-05-01', '2023-05-01', 20000, 40000, 'Gói'),
('3921', 'Hạt chia tím', 'F-PK3', 'Việt Nam', 'San Hà Food', '2022-04-12', '2023-04-12', 25000, 40000, 'Gói'),
('4123', 'Cá trứng đông lạnh', 'A-PK4', 'Việt Nam', 'San Hà Food', '2023-01-02', '2023-10-02', 30000, 50000, 'Khay'),
('4265', 'Cá bống đục đông lạnh', 'DELETED', 'Việt Nam', 'Thực phẩm Zin Food', '2022-10-20', '2023-10-20', 26000, 38000, 'Khay'),
('4329', 'Tôm sú', 'C-PK4', 'Việt Nam', 'Thực phẩm Zin Food', '2023-01-06', '2023-10-06', 50000, 70000, 'Khay'),
('4711', 'Thịt bò nướng đông lạnh San Hà', 'D-PK4', 'Việt Nam', 'San Hà Food', '2022-11-22', '2023-11-22', 89000, 110000, 'Khay'),
('4902', 'Mực nang trứng', 'F-PK4', 'Việt Nam', 'Viet Nam Food', '2022-05-05', '2023-05-05', 60000, 85000, 'Khay'),
('4972', 'Gầu bò Mỹ', 'E-PK4', 'Mỹ', 'ABC Food', '2023-01-01', '2024-01-01', 50000, 70000, 'Khay'),
('5102', 'Whey Gold Standard 5lbs', 'A-PK5', 'Mỹ', 'TPL', '2022-09-15', '2023-09-15', 1690000, 2000000, 'Gói'),
('5133', 'Ostrovit Testo Booster 90', 'B-PK5', 'Mỹ', 'APL', '2023-02-17', '2024-02-17', 32000, 50000, 'Lọ'),
('5777', 'Ostrovit Omega 3 ', 'D-PK5', 'Mỹ', 'APL', '2023-01-11', '2025-01-11', 650000, 850000, 'Lọ'),
('5920', 'Mass True Gainer', 'C-PK5', 'Mỹ', 'TPL', '2023-02-01', '2025-02-01', 850000, 1000000, 'Gói'),
('5985', 'Now Vitamin D3', 'F-PK5', 'Anh', 'NoW', '2023-02-02', '2023-02-21', 350000, 450000, 'Lọ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TenTaiKhoan` varchar(60) NOT NULL,
  `MatKhau` varchar(60) DEFAULT NULL,
  `ChucVu` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TenTaiKhoan`, `MatKhau`, `ChucVu`) VALUES
('admin', 'admin1234', 1),
('staff', 'staf1234', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vitri`
--

CREATE TABLE `vitri` (
  `MaViTri` varchar(10) NOT NULL,
  `MaPhanKhu` varchar(10) NOT NULL,
  `SoLuongToiDa` int(11) DEFAULT NULL,
  `SoLuongThucTe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vitri`
--

INSERT INTO `vitri` (`MaViTri`, `MaPhanKhu`, `SoLuongToiDa`, `SoLuongThucTe`) VALUES
('A-PK1', 'PK1', 200, 123),
('A-PK3', 'PK3', 200, 156),
('A-PK4', 'PK4', 200, 0),
('A-PK5', 'PK5', 200, 0),
('B-PK1', 'PK1', 200, 0),
('B-PK3', 'PK3', 200, 0),
('B-PK4', 'PK4', 200, 0),
('B-PK5', 'PK5', 200, 0),
('BK1AA', 'PK2-BK', 200, 19),
('C-PK1', 'PK1', 200, 0),
('C-PK3', 'PK3', 200, 0),
('C-PK4', 'PK4', 200, 0),
('C-PK5', 'PK5', 200, 0),
('D-PK1', 'PK1', 200, 0),
('D-PK3', 'PK3', 200, 0),
('D-PK4', 'PK4', 200, 0),
('D-PK5', 'PK5', 200, 0),
('DELETED', 'DELETED', 1000, 0),
('E-PK1', 'PK1', 200, 0),
('E-PK3', 'PK3', 200, 0),
('E-PK4', 'PK4', 200, 0),
('E-PK5', 'PK5', 200, 0),
('F-PK1', 'PK1', 200, 0),
('F-PK3', 'PK3', 200, 0),
('F-PK4', 'PK4', 200, 0),
('F-PK5', 'PK5', 200, 0),
('G-PK1', 'PK1', 200, 0),
('G-PK3', 'PK3', 200, 0),
('G-PK4', 'PK4', 200, 0),
('G-PK5', 'PK5', 200, 0),
('H-PK1', 'PK1', 200, 0),
('H-PK3', 'PK3', 200, 0),
('H-PK4', 'PK4', 200, 0),
('H-PK5', 'PK5', 200, 0),
('I-PK1', 'PK1', 200, 0),
('I-PK3', 'PK3', 200, 0),
('I-PK4', 'PK4', 200, 0),
('I-PK5', 'PK5', 200, 0),
('J-PK1', 'PK1', 200, 0),
('J-PK3', 'PK3', 200, 0),
('J-PK4', 'PK4', 200, 0),
('J-PK5', 'PK5', 200, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietnhaphang`
--
ALTER TABLE `chitietnhaphang`
  ADD PRIMARY KEY (`MaPhieu`,`MaSp`),
  ADD KEY `MaPhieu` (`MaPhieu`),
  ADD KEY `MaSp` (`MaSp`);

--
-- Chỉ mục cho bảng `chitietxuathang`
--
ALTER TABLE `chitietxuathang`
  ADD PRIMARY KEY (`MaPhieu`,`MaSp`),
  ADD KEY `MaPhieu` (`MaPhieu`),
  ADD KEY `MaSp` (`MaSp`);

--
-- Chỉ mục cho bảng `chitietyeucaunhaphang`
--
ALTER TABLE `chitietyeucaunhaphang`
  ADD PRIMARY KEY (`MaPhieuYCN`,`MaSp`),
  ADD KEY `MaPhieuYCN` (`MaPhieuYCN`),
  ADD KEY `MaSp` (`MaSp`);

--
-- Chỉ mục cho bảng `chitietyeucauxuathang`
--
ALTER TABLE `chitietyeucauxuathang`
  ADD PRIMARY KEY (`MaPhieuYCX`,`MaSp`),
  ADD KEY `MaPhieu` (`MaPhieuYCX`),
  ADD KEY `MaSp` (`MaSp`);

--
-- Chỉ mục cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`MaCH`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `phankhu`
--
ALTER TABLE `phankhu`
  ADD PRIMARY KEY (`MaPhanKhu`,`TenPhanKhu`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPhieu`),
  ADD KEY `MaPhieuYCN` (`MaPhieuYCN`),
  ADD KEY `MaNguoiLap` (`MaNguoiLap`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPhieu`),
  ADD KEY `MaNguoiLap` (`MaNguoiLap`),
  ADD KEY `MPYCX` (`MaPhieuYCX`);

--
-- Chỉ mục cho bảng `phieuyeucaunhap`
--
ALTER TABLE `phieuyeucaunhap`
  ADD PRIMARY KEY (`MaPhieuYCN`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaNguoiLap` (`MaNguoiLap`);

--
-- Chỉ mục cho bảng `phieuyeucauxuat`
--
ALTER TABLE `phieuyeucauxuat`
  ADD PRIMARY KEY (`MaPhieuYCX`),
  ADD KEY `MaCH` (`MaCH`),
  ADD KEY `MaNguoiLap` (`MaNguoiLap`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSp`,`MaViTri`),
  ADD KEY `MaViTri` (`MaViTri`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `vitri`
--
ALTER TABLE `vitri`
  ADD PRIMARY KEY (`MaViTri`,`MaPhanKhu`),
  ADD KEY `MaPhanKhu` (`MaPhanKhu`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietnhaphang`
--
ALTER TABLE `chitietnhaphang`
  ADD CONSTRAINT `chitietnhaphang_ibfk_1` FOREIGN KEY (`MaPhieu`) REFERENCES `phieunhap` (`MaPhieu`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietnhaphang_ibfk_2` FOREIGN KEY (`MaSp`) REFERENCES `sanpham` (`MaSp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietxuathang`
--
ALTER TABLE `chitietxuathang`
  ADD CONSTRAINT `chitietxuathang_ibfk_1` FOREIGN KEY (`MaPhieu`) REFERENCES `phieuxuat` (`MaPhieu`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietxuathang_ibfk_2` FOREIGN KEY (`MaSp`) REFERENCES `sanpham` (`MaSp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietyeucaunhaphang`
--
ALTER TABLE `chitietyeucaunhaphang`
  ADD CONSTRAINT `chitietyeucaunhaphang_ibfk_1` FOREIGN KEY (`MaPhieuYCN`) REFERENCES `phieuyeucaunhap` (`MaPhieuYCN`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietyeucaunhaphang_ibfk_3` FOREIGN KEY (`MaSp`) REFERENCES `sanpham` (`MaSp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chitietyeucauxuathang`
--
ALTER TABLE `chitietyeucauxuathang`
  ADD CONSTRAINT `chitietyeucauxuathang_ibfk_1` FOREIGN KEY (`MaPhieuYCX`) REFERENCES `phieuyeucauxuat` (`MaPhieuYCX`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietyeucauxuathang_ibfk_2` FOREIGN KEY (`MaSp`) REFERENCES `sanpham` (`MaSp`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
