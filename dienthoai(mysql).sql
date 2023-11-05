-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2023 lúc 08:40 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dienthoai`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `idSanPham` varchar(20) NOT NULL,
  `idNguoiDung` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id` int(11) NOT NULL,
  `idPhieuNhap` int(11) DEFAULT NULL,
  `idSanPham` varchar(20) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaNhap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `id` int(11) NOT NULL,
  `idPhieuXuat` int(11) DEFAULT NULL,
  `idSanPham` varchar(20) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaNhap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`id`, `name`) VALUES
('abc', 'abc'),
('b', 'b'),
('c', 'c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuahang`
--

CREATE TABLE `cuahang` (
  `id` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MoTa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cuahang`
--

INSERT INTO `cuahang` (`id`, `name`, `SDT`, `DiaChi`, `Email`, `MoTa`) VALUES
('congthuong', 'Công Thương', '0123456789', '140 Lê Trọng Tấn', 'congthuong@gmail.com', 'nothing');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `Anh`) VALUES
('samsung', 'SamSung', 'a'),
('xiaomi', 'Xiaomi', 'a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `TenDangNhap` varchar(50) DEFAULT NULL,
  `MatKhau` varchar(100) DEFAULT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  `NgayThayDoi` datetime DEFAULT NULL,
  `HoatDong` bit(1) DEFAULT NULL,
  `idChucVu` varchar(20) DEFAULT NULL,
  `GioiTinh` varchar(3) DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `name`, `TenDangNhap`, `MatKhau`, `NgaySinh`, `SDT`, `DiaChi`, `Email`, `NgayTao`, `NgayThayDoi`, `HoatDong`, `idChucVu`, `GioiTinh`, `Anh`) VALUES
(16, 'admin', 'admin', '$2y$10$7phOtM.NgkFW4atF1BJWqOSwYp65B3IsUR.E1gqNA9d1V.9rxCh5q', '2023-12-12 00:00:00', '0123456789', 'admin', 'admin@gmail.com', '2023-11-03 21:15:34', '2023-11-03 21:15:34', b'1', 'b', 'Nam', 'Screenshot 2023-04-13 213443.png'),
(17, 'Nguyễn Văn A', 'nguyenvana', '$2y$10$RzSev8jDwScXMRzoRp0VX.49CQ6PlpBYjB.EOKno.05jdcozK75oW', '2000-02-16 16:35:54', '0123456782', 'Hồ Chí Minh', 'nguyenvana@gmail.com', '2023-11-04 16:36:50', '2023-11-04 16:36:50', b'1', 'c', 'Nam', 'Screenshot 2023-04-13 214002.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `HoatDong` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `name`, `SDT`, `DiaChi`, `Email`, `HoatDong`) VALUES
('abc', 'abcaa', '0123456788', 'abcaaa', 'abcaaa@gmail.com', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhom`
--

CREATE TABLE `nhom` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhom`
--

INSERT INTO `nhom` (`id`, `name`) VALUES
('admin', 'admin'),
('thungan', 'Thu ngân');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomnguoidung`
--

CREATE TABLE `nhomnguoidung` (
  `id` int(11) NOT NULL,
  `idNguoiDung` int(11) DEFAULT NULL,
  `idnhom` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomnguoidung`
--

INSERT INTO `nhomnguoidung` (`id`, `idNguoiDung`, `idnhom`) VALUES
(1, 16, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id` int(11) NOT NULL,
  `idNhom` varchar(20) DEFAULT NULL,
  `idQuyen` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`id`, `idNhom`, `idQuyen`) VALUES
(1, 'admin', 'CuaHang'),
(2, 'admin', 'DanhMuc'),
(3, 'admin', 'NguoiDung'),
(4, 'admin', 'PhanQuyen'),
(5, 'admin', 'SanPham'),
(6, 'admin', 'NhaCungCap');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id` int(11) NOT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `TongSoLuong` int(11) DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `idNhaCungCap` varchar(20) DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` int(11) NOT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `TongSoLuong` int(11) DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TinhTrang` bit(1) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `name`) VALUES
('CuaHang', 'Cửa hàng'),
('DanhMuc', 'Danh mục'),
('NguoiDung', 'Người dùng'),
('NhaCungCap', 'Nhà cung cấp'),
('NhapHang', 'Nhập hàng'),
('PhanQuyen', 'Phân Quyền'),
('SanPham', 'Sản phẩm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `GiaGoc` int(11) DEFAULT NULL,
  `GiaKhuyenMai` int(11) DEFAULT NULL,
  `MoTa` varchar(100) DEFAULT NULL,
  `ManHinh` float DEFAULT NULL,
  `DoPhanGiai` varchar(15) DEFAULT NULL,
  `TanSoQuet` int(11) DEFAULT NULL,
  `CameraSau` varchar(100) DEFAULT NULL,
  `CameraTruoc` varchar(100) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `GPU` varchar(50) DEFAULT NULL,
  `RAM` varchar(30) DEFAULT NULL,
  `ROM` varchar(30) DEFAULT NULL,
  `Flash` bit(1) DEFAULT NULL,
  `Pin` int(11) DEFAULT NULL,
  `Sim` varchar(50) DEFAULT NULL,
  `HeDieuHanh` varchar(50) DEFAULT NULL,
  `HoTroMang` int(11) DEFAULT NULL,
  `KhangNuoc` bit(1) DEFAULT NULL,
  `ThoiDiemRaMat` datetime DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `ThoiGianBaoHanh` int(11) DEFAULT NULL,
  `ThoiGianDoiTra` int(11) DEFAULT NULL,
  `idDanhMuc` varchar(20) DEFAULT NULL,
  `idNhaCungCap` varchar(20) DEFAULT NULL,
  `Anh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `SoLuongTon`, `GiaGoc`, `GiaKhuyenMai`, `MoTa`, `ManHinh`, `DoPhanGiai`, `TanSoQuet`, `CameraSau`, `CameraTruoc`, `CPU`, `GPU`, `RAM`, `ROM`, `Flash`, `Pin`, `Sim`, `HeDieuHanh`, `HoTroMang`, `KhangNuoc`, `ThoiDiemRaMat`, `TrangThai`, `ThoiGianBaoHanh`, `ThoiGianDoiTra`, `idDanhMuc`, `idNhaCungCap`, `Anh`) VALUES
('aaaa', 'aaaaa', 1232, 123, 123, 'aaa', 6.67, 'aaaaa', 123, 'aaaaa', 'aaaaa', 'aaaa', 'aaaa', 'aaa', 'aa', b'0', 123, 'aaaaa', 'aaaaa', 123, b'0', '2023-11-04 22:24:47', b'0', 123, 123, 'samsung', 'abc', 'Screenshot 2023-04-13 213443.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSanPham` (`idSanPham`),
  ADD KEY `idNguoiDung` (`idNguoiDung`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPhieuNhap` (`idPhieuNhap`),
  ADD KEY `idSanPham` (`idSanPham`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPhieuXuat` (`idPhieuXuat`),
  ADD KEY `idSanPham` (`idSanPham`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cuahang`
--
ALTER TABLE `cuahang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `TenDangNhap` (`TenDangNhap`),
  ADD KEY `idChucVu` (`idChucVu`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhom`
--
ALTER TABLE `nhom`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idnhom` (`idnhom`),
  ADD KEY `idNguoiDung` (`idNguoiDung`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhom` (`idNhom`),
  ADD KEY `idQuyen` (`idQuyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idNhaCungCap` (`idNhaCungCap`),
  ADD KEY `idNhanVien` (`idNhanVien`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idKhachHang` (`idKhachHang`),
  ADD KEY `idNhanVien` (`idNhanVien`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDanhMuc` (`idDanhMuc`),
  ADD KEY `idNhaCungCap` (`idNhaCungCap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idSanPham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`idPhieuNhap`) REFERENCES `phieunhap` (`id`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`idSanPham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `chitietphieuxuat_ibfk_1` FOREIGN KEY (`idPhieuXuat`) REFERENCES `phieuxuat` (`id`),
  ADD CONSTRAINT `chitietphieuxuat_ibfk_2` FOREIGN KEY (`idSanPham`) REFERENCES `sanpham` (`id`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`idChucVu`) REFERENCES `chucvu` (`id`);

--
-- Các ràng buộc cho bảng `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  ADD CONSTRAINT `nhomnguoidung_ibfk_1` FOREIGN KEY (`idnhom`) REFERENCES `nhom` (`id`),
  ADD CONSTRAINT `nhomnguoidung_ibfk_2` FOREIGN KEY (`idNguoiDung`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD CONSTRAINT `phanquyen_ibfk_1` FOREIGN KEY (`idNhom`) REFERENCES `nhom` (`id`),
  ADD CONSTRAINT `phanquyen_ibfk_2` FOREIGN KEY (`idQuyen`) REFERENCES `quyen` (`id`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`idNhaCungCap`) REFERENCES `nhacungcap` (`id`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`idNhanVien`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`idKhachHang`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`idNhanVien`) REFERENCES `nguoidung` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idDanhMuc`) REFERENCES `danhmuc` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idNhaCungCap`) REFERENCES `nhacungcap` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
