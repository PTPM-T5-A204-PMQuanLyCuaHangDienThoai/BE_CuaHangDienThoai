-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2023 lúc 06:20 AM
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
-- Cấu trúc bảng cho bảng `baohanh`
--

CREATE TABLE `baohanh` (
  `id` int(11) NOT NULL,
  `idChiTietPhieuXuat` int(11) DEFAULT NULL,
  `LyDo` varchar(100) DEFAULT NULL,
  `NgayBaoHanh` datetime DEFAULT NULL,
  `NgayTraHang` datetime DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `ChiPhi` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `idPhieuXuat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `idSanPham`, `idNguoiDung`, `NoiDung`, `ThoiGian`) VALUES
(1, 'dienthoaisamsunggala', 48, 'àdsa', '2023-11-29 04:42:55');

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

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `idPhieuNhap`, `idSanPham`, `SoLuong`, `GiaNhap`) VALUES
(8, 8, 'iphone11', 100, 0),
(9, 8, 'iphone12', 100, 0),
(10, 8, 'iphone14plus', 100, 0),
(11, 8, 'iphone14pro', 100, 0),
(12, 8, 'iphone15', 100, 0),
(13, 8, 'iphone15plus', 100, 0),
(14, 8, 'iphone15pro', 100, 0),
(15, 8, 'iphone15promax', 100, 0),
(16, 8, 'oppoa38', 100, 0),
(17, 8, 'oppoa57', 100, 0),
(18, 8, 'opporeno8', 100, 0),
(19, 8, 'realme11', 100, 0),
(20, 8, 'realmec53', 100, 0),
(21, 8, 'realmec55', 100, 0),
(22, 8, 'samsunggalaxys22ultr', 100, 0),
(23, 8, 'samsunggalaxyzflip4', 100, 0),
(24, 8, 'dienthoaisamsunggala', 100, 0),
(25, 8, 'vivov27e', 100, 0),
(26, 8, 'vivov29e', 100, 0),
(27, 8, 'vivoy22s', 100, 0),
(28, 8, 'vivoy36', 100, 0),
(29, 8, 'xiaomi12', 100, 0),
(30, 8, 'xiaomi13t', 100, 0),
(31, 8, 'xiaomiredmi12', 100, 0),
(32, 8, 'xiaomiredminote12', 100, 0);

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

--
-- Đang đổ dữ liệu cho bảng `chitietphieuxuat`
--

INSERT INTO `chitietphieuxuat` (`id`, `idPhieuXuat`, `idSanPham`, `SoLuong`, `GiaNhap`) VALUES
(7, 7, 'iphone14pro', 1, 25190000),
(11, 10, 'iphone14pro', 1, 25190000),
(12, 11, 'iphone15', 1, 21990000);

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
('c', 'c'),
('nguoidung', 'Người Dùng'),
('nhanvien', 'Nhân Viên');

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
('iphone', 'IPhone', 'Apple.jpg'),
('oppo', 'Oppo', 'Oppo.jpg'),
('realme', 'Realme', 'Realme.png'),
('samsung', 'SamSung', 'Samsung.jpg'),
('vivo', 'Vivo', 'Vivo.jpg'),
('xiaomi', 'Xiaomi', 'Xiaomi.png');

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
(16, 'admin', 'admin', '$2y$10$nk5To67d9AQRnxvBdvo9l.BQrtBoSwQP9Fow8njyKl.3xdhv0u.r.', '2023-12-12 00:00:00', '0123456789', 'admin', 'admin@gmail.com', '2023-11-03 21:15:34', '2023-11-03 21:15:34', b'1', 'b', 'Nam', 'Screenshot 2023-04-13 213443.png'),
(17, 'Nguyễn Văn A', 'nguyenvana', '$2y$10$RzSev8jDwScXMRzoRp0VX.49CQ6PlpBYjB.EOKno.05jdcozK75oW', '2000-02-16 16:35:54', '0123456782', 'Hồ Chí Minh', 'nguyenvana@gmail.com', '2023-11-04 16:36:50', '2023-11-04 16:36:50', b'1', 'c', 'Nam', 'Screenshot 2023-04-13 214002.png'),
(47, 'Trần Văn B', 'khkhkh', '$2y$10$35BwEBGORnUj9Ike4yV8tO417bVxM7aEOPJQoKE/HmAa/aohJp7BK', '2023-11-16 00:00:00', '0231456987', 'nothing', 'dotuankha@gmail.com', '2023-11-28 12:42:08', '2023-11-28 12:42:08', b'1', 'nguoidung', 'Nu', 'abc.jpg'),
(48, 'Trần Văn B', 'dotuankha', '$2y$10$zWD.umEUUzU1sqrbkTpV3OrNp7kVxtb03HT6DcpRavIb.XQo2je5m', '2023-11-15 00:00:00', '0943039039', 'nothing', 'tuankhaba@gmail.com', '2023-11-29 04:40:58', '2023-11-29 04:40:58', b'1', 'nguoidung', 'Nam', 'abc.jpg');

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
('maihoang', 'Mai Hoàng', '1800608815', 'Không biết', 'maihoang@gmail.com', b'1');

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
(6, 'admin', 'NhaCungCap'),
(7, 'admin', 'NhapHang'),
(8, 'admin', 'XuatHang'),
(9, 'admin', 'BaoHanh'),
(10, 'admin', 'ThongKe');

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

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id`, `NgayNhap`, `TongSoLuong`, `TongTien`, `TrangThai`, `idNhaCungCap`, `idNhanVien`) VALUES
(8, '2023-11-29 09:39:43', 2500, 0, b'1', 'maihoang', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `id` int(11) NOT NULL,
  `NgayXuat` datetime DEFAULT NULL,
  `TongSoLuong` int(11) DEFAULT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `TinhTrang` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `idKhachHang` int(11) DEFAULT NULL,
  `idNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`id`, `NgayXuat`, `TongSoLuong`, `TongTien`, `TinhTrang`, `TrangThai`, `idKhachHang`, `idNhanVien`) VALUES
(7, '2023-11-29 10:57:41', 1, 25190000, 2, b'1', 17, 16),
(8, '2023-11-29 11:10:44', 0, 0, 1, b'0', 17, 16),
(10, '2023-11-29 04:41:54', 1, 25190000, 1, b'1', 48, 48),
(11, '2023-11-29 04:48:50', 1, 21990000, 2, b'0', 48, 48);

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
('BaoHanh', 'Bảo hành'),
('CuaHang', 'Cửa hàng'),
('DanhMuc', 'Danh mục'),
('NguoiDung', 'Người dùng'),
('NhaCungCap', 'Nhà cung cấp'),
('NhapHang', 'Nhập hàng'),
('PhanQuyen', 'Phân Quyền'),
('SanPham', 'Sản phẩm'),
('ThongKe', 'Thống kê'),
('XuatHang', 'Xuất hàng');

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
  `DoPhanGiai` varchar(100) DEFAULT NULL,
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
('dienthoaisamsunggala', 'SamSung Galaxy Z Fold 5G', 100, 40990000, 33490000, 'nothing', 7.6, 'Chính: QXGA+ (2176 x 1812 Pixels) & Phụ: HD+ (2316 x 904 Pixels)', 120, 'Chính 50 MP & Phụ 12 MP, 10 MP', '10 MP & 4 MP', 'Snapdragon 8 Gen 2 for Galaxy', 'Adreno 740', '12', '256', b'1', 4400, '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Android 13', 5, b'1', '2023-07-01 09:50:42', b'1', 12, 0, 'samsung', 'maihoang', 'dienthoaisamsunggalaxyzfold55g.jpg'),
('iphone11', 'Iphone 11', 100, 11990000, 10990000, 'nothing', 6.1, 'Liquid Retina (828 x 1792 Pixels)', 60, '2 camera 12 MP', '12 MP', 'Apple A13 Bionic 6 nhân', 'Apple GPU 4 nhân', '4', '64', b'1', 3110, '1 Nano SIM & 1 eSIM', 'iOS 15', 4, b'1', '2019-11-01 09:32:31', b'1', 12, 0, 'iphone', 'maihoang', 'iphone15.jpg'),
('iphone12', 'Iphone 12', 100, 17990000, 13190000, 'nothing', 6.1, 'Super Retina XDR (1170 x 2532 Pixels)', 60, '2 camera 12 MP', '12 MP', 'Apple A14 Bionic 6 nhân', 'Apple GPU 4 nhân', '4', '64', b'1', 2815, '1 Nano SIM & 1 eSIM', 'iOS 15', 5, b'1', '2020-10-01 09:35:54', b'1', 12, 0, 'iphone', 'maihoang', 'iphone12.jpg'),
('iphone14plus', 'Iphone 14 Plus', 100, 24990000, 21990000, 'nothing', 6.7, 'Super Retina XDR (1284 x 2778 Pixels)', 60, '2 camera 12 MP', '12 MP', 'Apple A15 Bionic 6 nhân', 'Apple GPU 5 nhân', '6', '128', b'1', 4325, '1 Nano SIM & 1 eSIM', 'iOS 16', 5, b'1', '2022-09-01 09:40:19', b'1', 12, 0, 'iphone', 'maihoang', 'iphone14plus.jpg'),
('iphone14pro', 'Iphone 14 Pro', 99, 27990000, 25190000, 'nothing', 6.1, 'Super Retina XDR (1179 x 2556 Pixels)', 120, 'Chính 48 MP & Phụ 12 MP, 12 MP', '12 MP', 'Apple A16 Bionic 6 nhân', 'Apple GPU 5 nhân', '6', '128', b'1', 3200, '1 Nano SIM & 1 eSIM', 'iOS 16', 5, b'1', '2022-09-01 09:40:19', b'1', 12, 0, 'iphone', 'maihoang', 'iphone14pro.jpg'),
('iphone15', 'Iphone 15', 100, 22990000, 21990000, 'nothing', 6.1, 'Super Retina XDR (1179 x 2556 Pixels)', 60, 'Chính 48 MP & Phụ 12 MP', '12 MP', 'Apple A16 Bionic 6 nhân', 'Apple GPU 5 nhân', '6', '128', b'1', 3349, '1 Nano SIM & 1 eSIM', 'iOS 17', 5, b'1', '2023-09-01 09:25:19', b'1', 12, 0, 'iphone', 'maihoang', 'iphone15.jpg'),
('iphone15plus', 'Iphone 15 Plus', 100, 25990000, 25790000, 'nothing', 6.7, 'Super Retina XDR (1290 x 2796 Pixels)', 60, 'Chính 48 MP & Phụ 12 MP', '12 MP', 'Apple A16 Bionic 6 nhân', 'Apple GPU 5 nhân', '6', '128', b'1', 4383, '1 Nano SIM & 1 eSIM', 'iOS 17', 5, b'1', '2023-09-01 09:25:19', b'1', 12, 0, 'iphone', 'maihoang', 'iphone15plus.jpg'),
('iphone15pro', 'Iphone 15 Pro', 100, 28990000, 28290000, 'nothing', 6.1, 'Super Retina XDR (1179 x 2556 Pixels)', 120, 'Chính 48 MP & Phụ 12 MP, 12 MP', '12 MP', 'Apple A17 Pro 6 nhân', 'Apple GPU 6 nhân', '8', '128', b'1', 3274, '1 Nano SIM & 1 eSIM', 'iOS 17', 5, b'1', '2023-09-01 09:14:24', b'1', 12, 0, 'iphone', 'maihoang', 'iphone15pro.jpg'),
('iphone15promax', 'Iphone 15 Pro Max', 100, 34990000, 33890000, 'nothing', 6.7, 'Super Retina XDR (1290 x 2796 Pixels)', 120, 'Chính 48 MP & Phụ 12 MP, 12 MP', '12 MP', 'Apple A17 Pro 6 nhân', 'Apple GPU 6 nhân', '8', '256', b'1', 4422, '1 Nano SIM & 1 eSIM', 'iOS 17', 5, b'1', '2023-09-01 09:14:24', b'1', 12, 0, 'iphone', 'maihoang', 'iphone15promax.jpg'),
('oppoa38', 'Oppo A38', 100, 4490000, 4190000, 'nothing', 6.56, 'HD+ (720 x 1612 Pixels)', 90, 'Chính 50 MP & Phụ 2 MP', '5 MP', 'MediaTek Helio G85 8 nhân', 'Mali-G52 MP2', '4', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'0', '2023-09-01 10:03:45', b'1', 12, 0, 'oppo', 'maihoang', 'oppoa38.jpg'),
('oppoa57', 'Oppo A57', 100, 4990000, 3790000, 'nothing', 6.56, 'HD+ (720 x 1612 Pixels)', 60, 'Chính 13 MP & Phụ 2 MP', '8 MP', 'MediaTek Helio G35 8 nhân', 'IMG PowerVR GE8320', '4', '128', b'1', 5000, '2 Nano SIM', 'Android 12', 4, b'0', '2022-07-01 10:06:41', b'1', 12, 0, 'oppo', 'maihoang', 'oppoa57.jpeg'),
('opporeno8', 'Oppo Reno8 T', 100, 10990000, 8990000, 'nothing', 6.7, 'Full HD+ (1080 x 2412 Pixels)', 120, 'Chính 108 MP & Phụ 2 MP, 2 MP', '32 MP', 'Snapdragon 695 5G 8 nhân', 'Adreno 619', '8', '256', b'1', 4800, '2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 'Android 13', 5, b'1', '2023-01-01 10:10:29', b'1', 12, 0, 'oppo', 'maihoang', 'opporeno8.jpg'),
('realme11', 'Realme 11', 100, 7390000, 6490000, 'nothing', 6.4, 'Full HD+ (1080 x 2400 Pixels)', 90, 'Chính 108 MP & Phụ 2 MP', '16 MP', 'MediaTek Helio G99 8 nhân', 'Apple GPU 4 nhân', '8', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'1', '2023-07-01 09:50:42', b'1', 12, 0, 'realme', 'maihoang', 'realme11.jpg'),
('realmec53', 'Realme C53', 100, 4290000, 3990000, 'nothing', 6.74, 'HD+ (720 x 1600 Pixels)', 90, 'Chính 50 MP & Phụ 0.08 MP', '8 MP', 'Unisoc Tiger T612', 'Mali-G57', '6', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'1', '2023-05-01 10:40:56', b'1', 12, 0, 'realme', 'maihoang', 'realmec53.jpg'),
('realmec55', 'Realme C55', 100, 4990000, 4190000, 'nothing', 6.72, 'Full HD+ (1080 x 2400 Pixels)', 90, 'Chính 64 MP & Phụ 2 MP', '8 MP', 'MediaTek Helio G88 8 nhân', 'Mali-G52', '6', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'1', '2023-03-01 10:43:11', b'1', 12, 0, 'realme', 'maihoang', 'realmec55.jpg'),
('samsunggalaxya05s', 'SamSung Galaxy A05s', 0, 4490000, 4290000, 'nothing', 6.7, 'HD+ (720 x 1600 Pixels)', 60, 'Chính 50 MP & Phụ 2 MP', '8 MP', 'MediaTek Helio G85 8 nhân', 'Mali-G52', '6', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'0', '2023-09-01 09:25:19', b'0', 12, 0, 'samsung', 'maihoang', 'samsunggalaxya05s.jpeg'),
('samsunggalaxys22ultr', 'SamSung Galaxy S22 Ultra', 100, 30990000, 16990000, 'nothing', 6.8, '2K+ (1440 x 3088 Pixels)', 120, 'Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP', '40 MP', 'Snapdragon 8 Gen 1 8 nhân', 'Adreno 730', '8', '128', b'1', 5000, '2 Nano SIM hoặc 1 Nano SIM + 1 eSIM', 'Android 12', 5, b'1', '2022-02-01 09:55:16', b'1', 12, 0, 'samsung', 'maihoang', 'samsunggalaxys22ultraburgundy.jpg'),
('samsunggalaxyzflip4', 'SamSung Galaxy Z Flip4 5G', 100, 23990000, 12990000, 'nothing', 6.7, 'Chính: FHD+ (2640 x 1080 Pixels) x Phụ: (260 x 512 Pixels)', 120, '2 camera 12 MP', '10 MP', 'Snapdragon 8+ Gen 1 8 nhân', 'Adreno 670', '8', '128', b'1', 3700, '1 Nano SIM & 1 eSIM', 'Android 12', 5, b'1', '2022-08-01 09:59:47', b'1', 12, 0, 'samsung', 'maihoang', 'samsunggalaxyzflip4.jpg'),
('vivov27e', 'Vivo V27e', 100, 8990000, 8290000, 'nothing', 6.62, 'Full HD+ (1080 x 2400 Pixels)', 120, 'Chính 64 MP & Phụ 2 MP, 2 MP', '32 MP', 'MediaTek Helio G99 8 nhân', 'Mali-G57', '8', '256', b'1', 4600, '2 Nano SIM', 'Android 13', 4, b'1', '2023-05-01 10:35:13', b'1', 12, 0, 'vivo', 'maihoang', 'vivov27e.jpg'),
('vivov29e', 'Vivo V289e', 100, 8990000, 8990000, 'nothing', 6.67, 'Full HD+ (1080 x 2400 Pixels)', 120, 'Chính 64 MP & Phụ 8 MP', '50 MP', 'Snapdragon 695 5G 8 nhân', 'Adreno 619', '8', '256', b'1', 4800, '2 Nano SIM', 'Android 13', 5, b'1', '2023-10-01 10:30:26', b'1', 12, 0, 'vivo', 'maihoang', 'vivov29e.jpg'),
('vivoy22s', 'Vivo Y22s', 100, 5290000, 3690000, 'nothing', 6.55, 'HD+ (720 x 1612 Pixels)', 90, 'Chính 50 MP & Phụ 2 MP', '8 MP', 'Snapdragon 680 8 nhân', 'Adreno 610', '4', '128', b'1', 5000, '2 Nano SIM', 'Android 12', 4, b'1', '2022-09-01 09:40:19', b'1', 12, 0, 'vivo', 'maihoang', 'vivoy22s.jpeg'),
('vivoy36', 'Vivo Y36', 100, 6290000, 5790000, 'nothing', 6.64, 'Full HD+ (1080 x 2388 Pixels)', 90, 'Chính 50 MP & Phụ 2 MP', '16 MP', 'Snapdragon 680 8 nhân', 'Adreno 610', '8', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'1', '2023-07-01 09:50:42', b'1', 12, 0, 'vivo', 'maihoang', 'vivoy36.jpg'),
('xiaomi12', 'Xiaomi 12', 100, 13990000, 9490000, 'nothing', 6.28, 'Full HD+ (1080 x 2400 Pixels)', 120, 'Chính 50 MP & Phụ 13 MP, 5 MP', '32 MP', 'Snapdragon 8 Gen 1 8 nhân', 'Adreno 730', '8', '256', b'1', 4500, '2 Nano SIM', 'Android 12', 5, b'1', '2022-03-01 10:23:27', b'1', 12, 0, 'xiaomi', 'maihoang', 'xiaomi12.jpg'),
('xiaomi13t', 'Xiaomi 13T', 100, 11990000, 10990000, 'nothing', 6.67, '1.5K (1220 x 2712 Pixels)', 144, 'Chính 50 MP & Phụ 50 MP, 12 MP', '20 MP', 'MediaTek Dimensity 8200-Ultra', 'Mali-G610', '8', '256', b'1', 5000, '2 Nano SIM', 'Android 13', 5, b'1', '2022-09-01 09:40:19', b'1', 12, 0, 'xiaomi', 'maihoang', 'xiaomi13t.jpg'),
('xiaomiredmi12', 'Xiaomi Redmi 12', 100, 4290000, 3690000, 'nothing', 6.79, 'Full HD+ (1080 x 2460 Pixels)', 90, 'Chính 50 MP & Phụ 8 MP, 2 MP', '8 MP', 'MediaTek Helio G88 8 nhân', 'Mali-G52', '4', '128', b'1', 5000, '2 Nano SIM (SIM 2 chung khe thẻ nhớ)', 'Android 13', 4, b'1', '2023-06-01 10:14:08', b'1', 12, 0, 'xiaomi', 'maihoang', 'xiaomiredmi12.jpg'),
('xiaomiredminote12', 'Xiaomi Redmi Note 12', 100, 5790000, 4790000, 'nothing', 6.67, 'Full HD+ (1080 x 2400 Pixels)', 120, 'Chính 50 MP & Phụ 8 MP, 2 MP', '13 MP', 'Snapdragon 685 8 nhân', 'Adreno 610', '8', '128', b'1', 5000, '2 Nano SIM', 'Android 13', 4, b'1', '2023-04-01 10:19:35', b'1', 12, 0, 'xiaomi', 'maihoang', 'xiaomiredminote12.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idChiTietPhieuXuat` (`idChiTietPhieuXuat`),
  ADD KEY `idNhanVien` (`idNhanVien`),
  ADD KEY `idKhachHang` (`idKhachHang`),
  ADD KEY `idPhieuXuat` (`idPhieuXuat`);

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
-- AUTO_INCREMENT cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `nhomnguoidung`
--
ALTER TABLE `nhomnguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  ADD CONSTRAINT `baohanh_ibfk_1` FOREIGN KEY (`idChiTietPhieuXuat`) REFERENCES `chitietphieuxuat` (`id`),
  ADD CONSTRAINT `baohanh_ibfk_2` FOREIGN KEY (`idNhanVien`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `baohanh_ibfk_3` FOREIGN KEY (`idKhachHang`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `baohanh_ibfk_4` FOREIGN KEY (`idPhieuXuat`) REFERENCES `phieuxuat` (`id`);

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
