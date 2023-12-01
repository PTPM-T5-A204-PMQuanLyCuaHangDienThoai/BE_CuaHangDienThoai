-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2023 lúc 09:30 AM
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
-- Cấu trúc bảng cho bảng `ai`
--

CREATE TABLE `ai` (
  `id` int(11) NOT NULL,
  `HieuSuat` varchar(50) DEFAULT NULL,
  `Camera` varchar(50) DEFAULT NULL,
  `Pin` int(11) DEFAULT NULL,
  `TanSo` int(11) DEFAULT NULL,
  `idSanPham` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ai`
--

INSERT INTO `ai` (`id`, `HieuSuat`, `Camera`, `Pin`, `TanSo`, `idSanPham`) VALUES
(1, 'Lướt web', 'Sắc nét', 4000, 144, 'dienthoaisamsunggala'),
(2, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'vivov29e'),
(3, 'Games', 'Sắc nét', 5000, 60, 'xiaomi12'),
(4, 'Games', 'Không quan trọng', 5000, 60, 'iphone11'),
(5, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'vivov29e'),
(6, 'Lướt web', 'Không quan trọng', 5000, 120, 'realmec55'),
(7, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone14plus'),
(8, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'oppoa57'),
(9, 'Lướt web', 'Không quan trọng', 4000, 60, 'xiaomi12'),
(10, 'Games', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(11, 'Lướt web', 'Không quan trọng', 5000, 60, 'samsunggalaxyzflip4'),
(12, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone14plus'),
(13, 'Games', 'Không quan trọng', 5000, 60, 'a'),
(14, 'Lướt web', 'Không quan trọng', 5000, 90, 'iphone15'),
(15, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(16, 'Lướt web', 'Sắc nét', 4000, 90, 'vivov29e'),
(17, 'Lướt web', 'Sắc nét', 5000, 144, 'realmec53'),
(18, 'Games', 'Không quan trọng', 4000, 90, 'dienthoaisamsunggala'),
(19, 'Games', 'Sắc nét', 5000, 144, 'iphone15pro'),
(20, 'Games', 'Không quan trọng', 4000, 60, 'iphone15plus'),
(21, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'oppoa38'),
(22, 'Lướt web', 'Sắc nét', 5000, 120, 'xiaomi13t'),
(23, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(24, 'Lướt web', 'Sắc nét', 5000, 120, 'vivov29e'),
(25, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'a'),
(26, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone15plus'),
(27, 'Games', 'Không quan trọng', 4000, 90, 'samsunggalaxyzflip4'),
(28, 'Games', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(29, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'dienthoaisamsunggala'),
(30, 'Lướt web', 'Sắc nét', 4000, 144, 'vivov29e'),
(31, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'xiaomiredmi12'),
(32, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'a'),
(33, 'Lướt web', 'Sắc nét', 4000, 144, 'samsunggalaxyzflip4'),
(34, 'Lướt web', 'Không quan trọng', 5000, 144, 'vivoy36'),
(35, 'Games', 'Không quan trọng', 4000, 144, 'opporeno8'),
(36, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'samsunggalaxyzflip4'),
(37, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone15plus'),
(38, 'Lướt web', 'Sắc nét', 5000, 90, 'dienthoaisamsunggala'),
(39, 'Games', 'Không quan trọng', 4000, 144, 'xiaomi12'),
(40, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'iphone15promax'),
(41, 'Games', 'Sắc nét', 4000, 144, 'oppoa38'),
(42, 'Lướt web', 'Không quan trọng', 4000, 144, 'vivov29e'),
(43, 'Games', 'Sắc nét', 4000, 60, 'vivov27e'),
(44, 'Games', 'Sắc nét', 4000, 120, 'samsunggalaxyzflip4'),
(45, 'Games', 'Sắc nét', 4000, 60, 'vivoy36'),
(46, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone15'),
(47, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'samsunggalaxya05s'),
(48, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'xiaomi12'),
(49, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone14plus'),
(50, 'Lướt web', 'Không quan trọng', 5000, 120, 'dienthoaisamsunggala'),
(51, 'Games', 'Không quan trọng', 4000, 90, 'oppoa38'),
(52, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone14plus'),
(53, 'Games', 'Sắc nét', 5000, 90, 'samsunggalaxys22ultr'),
(54, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone14plus'),
(55, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone15'),
(56, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'oppoa38'),
(57, 'Games', 'Sắc nét', 4000, 120, 'xiaomi12'),
(58, 'Games', 'Sắc nét', 5000, 144, 'vivoy36'),
(59, 'Games', 'Không quan trọng', 4000, 90, 'iphone15pro'),
(60, 'Games', 'Không quan trọng', 4000, 60, 'vivoy36'),
(61, 'Lướt web', 'Sắc nét', 5000, 60, 'vivoy36'),
(62, 'Games', 'Sắc nét', 4000, 90, 'xiaomiredmi12'),
(63, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone11'),
(64, 'Games', 'Không quan trọng', 5000, 90, 'opporeno8'),
(65, 'Games', 'Sắc nét', 5000, 90, 'xiaomiredminote12'),
(66, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'oppoa57'),
(67, 'Games', 'Không quan trọng', 4000, 90, 'a'),
(68, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'oppoa57'),
(69, 'Games', 'Không quan trọng', 5000, 90, 'oppoa57'),
(70, 'Lướt web', 'Sắc nét', 4000, 144, 'realme11'),
(71, 'Lướt web', 'Sắc nét', 4000, 90, 'vivov27e'),
(72, 'Lướt web', 'Không quan trọng', 5000, 90, 'opporeno8'),
(73, 'Lướt web', 'Không quan trọng', 4000, 90, 'xiaomi12'),
(74, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'vivoy36'),
(75, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone11'),
(76, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone15pro'),
(77, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'samsunggalaxyzflip4'),
(78, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'vivov29e'),
(79, 'Lướt web', 'Không quan trọng', 4000, 60, 'a'),
(80, 'Games', 'Sắc nét', 5000, 120, 'iphone15'),
(81, 'Games', 'Không quan trọng', 4000, 90, 'realme11'),
(82, 'Lướt web', 'Không quan trọng', 4000, 120, 'vivov29e'),
(83, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'a'),
(84, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone14pro'),
(85, 'Lướt web', 'Sắc nét', 4000, 120, 'iphone15'),
(86, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15promax'),
(87, 'Games', 'Sắc nét', 5000, 60, 'realmec55'),
(88, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'realmec53'),
(89, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'oppoa38'),
(90, 'Lướt web', 'Không quan trọng', 4000, 144, 'oppoa57'),
(91, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'oppoa57'),
(92, 'Lướt web', 'Không quan trọng', 5000, 144, 'xiaomi13t'),
(93, 'Games', 'Không quan trọng', 4000, 120, 'vivoy36'),
(94, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'vivoy36'),
(95, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'samsunggalaxya05s'),
(96, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomiredmi12'),
(97, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15pro'),
(98, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxyzflip4'),
(99, 'Games', 'Sắc nét', 5000, 60, 'oppoa57'),
(100, 'Lướt web', 'Sắc nét', 4000, 144, 'xiaomi13t'),
(101, 'Games', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(102, 'Games', 'Không quan trọng', 5000, 120, 'oppoa38'),
(103, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone15pro'),
(104, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone14plus'),
(105, 'Games', 'Không quan trọng', 4000, 144, 'oppoa57'),
(106, 'Lướt web', 'Không quan trọng', 5000, 90, 'vivoy36'),
(107, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone14pro'),
(108, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone15'),
(109, 'Games', 'Không quan trọng', 4000, 144, 'xiaomiredminote12'),
(110, 'Games', 'Không quan trọng', 4000, 60, 'vivoy22s'),
(111, 'Games', 'Sắc nét', 4000, 60, 'xiaomi13t'),
(112, 'Games', 'Không quan trọng', 5000, 144, 'vivov29e'),
(113, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'samsunggalaxya05s'),
(114, 'Games', 'Không quan trọng', 4000, 144, 'vivov27e'),
(115, 'Games', 'Không quan trọng', 4000, 120, 'a'),
(116, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone15pro'),
(117, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone15'),
(118, 'Lướt web', 'Sắc nét', 4000, 144, 'xiaomiredmi12'),
(119, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone11'),
(120, 'Games', 'Không quan trọng', 4000, 120, 'a'),
(121, 'Lướt web', 'Không quan trọng', 4000, 120, 'samsunggalaxyzflip4'),
(122, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone14plus'),
(123, 'Lướt web', 'Sắc nét', 4000, 120, 'oppoa38'),
(124, 'Games', 'Không quan trọng', 5000, 60, 'opporeno8'),
(125, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'vivov29e'),
(126, 'Lướt web', 'Không quan trọng', 5000, 120, 'samsunggalaxya05s'),
(127, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone12'),
(128, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone14plus'),
(129, 'Games', 'Không quan trọng', 4000, 90, 'oppoa57'),
(130, 'Games', 'Sắc nét', 5000, 90, 'oppoa57'),
(131, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'realmec55'),
(132, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'samsunggalaxys22ultr'),
(133, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'opporeno8'),
(134, 'Lướt web', 'Không quan trọng', 4000, 120, 'realmec55'),
(135, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'samsunggalaxys22ultr'),
(136, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxyzflip4'),
(137, 'Games', 'Sắc nét', 4000, 120, 'iphone15plus'),
(138, 'Games', 'Không quan trọng', 5000, 90, 'dienthoaisamsunggala'),
(139, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone15promax'),
(140, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone15pro'),
(141, 'Games', 'Sắc nét', 5000, 60, 'xiaomiredminote12'),
(142, 'Lướt web', 'Không quan trọng', 5000, 60, 'opporeno8'),
(143, 'Games', 'Sắc nét', 4000, 90, 'iphone11'),
(144, 'Games', 'Sắc nét', 5000, 144, 'vivoy22s'),
(145, 'Lướt web', 'Không quan trọng', 5000, 120, 'opporeno8'),
(146, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone15'),
(147, 'Games', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(148, 'Games', 'Không quan trọng', 5000, 90, 'iphone15pro'),
(149, 'Lướt web', 'Sắc nét', 5000, 90, 'xiaomi13t'),
(150, 'Lướt web', 'Không quan trọng', 5000, 90, 'vivov27e'),
(151, 'Games', 'Sắc nét', 4000, 90, 'iphone15pro'),
(152, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(153, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone11'),
(154, 'Lướt web', 'Sắc nét', 4000, 144, 'samsunggalaxys22ultr'),
(155, 'Games', 'Không quan trọng', 5000, 144, 'dienthoaisamsunggala'),
(156, 'Lướt web', 'Sắc nét', 4000, 144, 'iphone15pro'),
(157, 'Games', 'Sắc nét', 4000, 144, 'iphone14plus'),
(158, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'samsunggalaxya05s'),
(159, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'realme11'),
(160, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'realmec53'),
(161, 'Games', 'Không quan trọng', 5000, 120, 'vivoy36'),
(162, 'Games', 'Sắc nét', 5000, 60, 'iphone14plus'),
(163, 'Games', 'Sắc nét', 5000, 120, 'iphone15promax'),
(164, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'xiaomiredminote12'),
(165, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone15pro'),
(166, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomiredminote12'),
(167, 'Games', 'Sắc nét', 4000, 120, 'oppoa38'),
(168, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone14plus'),
(169, 'Lướt web', 'Sắc nét', 4000, 120, 'iphone15promax'),
(170, 'Lướt web', 'Sắc nét', 5000, 90, 'samsunggalaxya05s'),
(171, 'Lướt web', 'Sắc nét', 4000, 60, 'realmec53'),
(172, 'Lướt web', 'Không quan trọng', 4000, 90, 'oppoa38'),
(173, 'Lướt web', 'Sắc nét', 4000, 60, 'dienthoaisamsunggala'),
(174, 'Lướt web', 'Sắc nét', 5000, 144, 'samsunggalaxys22ultr'),
(175, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomi12'),
(176, 'Games', 'Không quan trọng', 5000, 144, 'iphone15plus'),
(177, 'Lướt web', 'Sắc nét', 4000, 120, 'realme11'),
(178, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'vivov29e'),
(179, 'Games', 'Không quan trọng', 5000, 60, 'realme11'),
(180, 'Games', 'Không quan trọng', 4000, 144, 'vivov29e'),
(181, 'Games', 'Sắc nét', 4000, 90, 'oppoa57'),
(182, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'oppoa57'),
(183, 'Games', 'Sắc nét', 4000, 120, 'realmec53'),
(184, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'vivov29e'),
(185, 'Games', 'Không quan trọng', 4000, 90, 'iphone14plus'),
(186, 'Games', 'Sắc nét', 4000, 120, 'iphone12'),
(187, 'Games', 'Không quan trọng', 4000, 90, 'opporeno8'),
(188, 'Games', 'Không quan trọng', 5000, 120, 'vivoy22s'),
(189, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'realme11'),
(190, 'Games', 'Sắc nét', 5000, 60, 'iphone15'),
(191, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15pro'),
(192, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'iphone15'),
(193, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone15pro'),
(194, 'Lướt web', 'Không quan trọng', 5000, 120, 'xiaomiredminote12'),
(195, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone14pro'),
(196, 'Games', 'Sắc nét', 4000, 60, 'opporeno8'),
(197, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone15'),
(198, 'Games', 'Sắc nét', 4000, 90, 'xiaomi13t'),
(199, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'vivoy36'),
(200, 'Games', 'Sắc nét', 4000, 144, 'realmec53'),
(201, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'iphone12'),
(202, 'Games', 'Sắc nét', 5000, 90, 'vivov29e'),
(203, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'iphone12'),
(204, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'iphone15pro'),
(205, 'Games', 'Sắc nét', 4000, 144, 'samsunggalaxya05s'),
(206, 'Lướt web', 'Không quan trọng', 5000, 120, 'samsunggalaxya05s'),
(207, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone14plus'),
(208, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone15'),
(209, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone12'),
(210, 'Games', 'Sắc nét', 5000, 90, 'a'),
(211, 'Games', 'Không quan trọng', 5000, 144, 'vivov27e'),
(212, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'vivov29e'),
(213, 'Games', 'Sắc nét', 5000, 90, 'vivov27e'),
(214, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'vivov29e'),
(215, 'Lướt web', 'Không quan trọng', 5000, 120, 'vivov29e'),
(216, 'Games', 'Không quan trọng', 5000, 120, 'samsunggalaxyzflip4'),
(217, 'Games', 'Sắc nét', 4000, 144, 'iphone12'),
(218, 'Lướt web', 'Sắc nét', 4000, 90, 'realme11'),
(219, 'Games', 'Không quan trọng', 4000, 90, 'iphone14plus'),
(220, 'Lướt web', 'Không quan trọng', 5000, 120, 'xiaomiredmi12'),
(221, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'realme11'),
(222, 'Lướt web', 'Không quan trọng', 5000, 60, 'samsunggalaxya05s'),
(223, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'realme11'),
(224, 'Games', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(225, 'Lướt web', 'Sắc nét', 4000, 60, 'realmec55'),
(226, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'samsunggalaxyzflip4'),
(227, 'Games', 'Sắc nét', 4000, 90, 'vivov29e'),
(228, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone15'),
(229, 'Lướt web', 'Không quan trọng', 4000, 120, 'a'),
(230, 'Games', 'Không quan trọng', 5000, 144, 'samsunggalaxya05s'),
(231, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone14plus'),
(232, 'Lướt web', 'Sắc nét', 4000, 60, 'xiaomiredmi12'),
(233, 'Games', 'Sắc nét', 5000, 120, 'realmec53'),
(234, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'vivov29e'),
(235, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'samsunggalaxys22ultr'),
(236, 'Games', 'Sắc nét', 5000, 90, 'iphone15pro'),
(237, 'Games', 'Không quan trọng', 4000, 60, 'vivov27e'),
(238, 'Lướt web', 'Không quan trọng', 5000, 120, 'iphone14plus'),
(239, 'Games', 'Sắc nét', 5000, 90, 'vivoy22s'),
(240, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone15pro'),
(241, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone15plus'),
(242, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomiredmi12'),
(243, 'Games', 'Sắc nét', 4000, 144, 'opporeno8'),
(244, 'Games', 'Không quan trọng', 4000, 60, 'iphone14plus'),
(245, 'Lướt web', 'Sắc nét', 5000, 90, 'oppoa38'),
(246, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone15'),
(247, 'Lướt web', 'Sắc nét', 5000, 144, 'realmec55'),
(248, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'vivov27e'),
(249, 'Lướt web', 'Sắc nét', 5000, 144, 'samsunggalaxys22ultr'),
(250, 'Lướt web', 'Không quan trọng', 4000, 144, 'xiaomi13t'),
(251, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone15pro'),
(252, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'oppoa57'),
(253, 'Games', 'Sắc nét', 4000, 90, 'dienthoaisamsunggala'),
(254, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(255, 'Games', 'Không quan trọng', 5000, 90, 'iphone15pro'),
(256, 'Games', 'Sắc nét', 4000, 120, 'iphone15promax'),
(257, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone15promax'),
(258, 'Lướt web', 'Không quan trọng', 5000, 120, 'vivov29e'),
(259, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'vivov27e'),
(260, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'vivoy22s'),
(261, 'Games', 'Không quan trọng', 5000, 120, 'vivoy36'),
(262, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone15promax'),
(263, 'Lướt web', 'Sắc nét', 4000, 60, 'opporeno8'),
(264, 'Lướt web', 'Không quan trọng', 5000, 144, 'opporeno8'),
(265, 'Games', 'Sắc nét', 5000, 144, 'vivov29e'),
(266, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone11'),
(267, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone14plus'),
(268, 'Games', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(269, 'Games', 'Không quan trọng', 5000, 120, 'oppoa57'),
(270, 'Lướt web', 'Sắc nét', 5000, 120, 'a'),
(271, 'Lướt web', 'Không quan trọng', 5000, 90, 'vivoy22s'),
(272, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'xiaomi12'),
(273, 'Games', 'Sắc nét', 4000, 144, 'iphone12'),
(274, 'Games', 'Không quan trọng', 5000, 144, 'vivov29e'),
(275, 'Lướt web', 'Sắc nét', 4000, 144, 'realmec55'),
(276, 'Games', 'Sắc nét', 5000, 60, 'a'),
(277, 'Games', 'Không quan trọng', 4000, 60, 'iphone14pro'),
(278, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'iphone14plus'),
(279, 'Games', 'Sắc nét', 4000, 120, 'realme11'),
(280, 'Lướt web', 'Không quan trọng', 4000, 144, 'a'),
(281, 'Games', 'Sắc nét', 4000, 120, 'vivov27e'),
(282, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone12'),
(283, 'Lướt web', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(284, 'Games', 'Sắc nét', 4000, 120, 'iphone11'),
(285, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'opporeno8'),
(286, 'Lướt web', 'Sắc nét', 5000, 90, 'oppoa57'),
(287, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'oppoa38'),
(288, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'dienthoaisamsunggala'),
(289, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'dienthoaisamsunggala'),
(290, 'Games', 'Không quan trọng', 5000, 60, 'opporeno8'),
(291, 'Games', 'Sắc nét', 5000, 144, 'opporeno8'),
(292, 'Lướt web', 'Không quan trọng', 4000, 120, 'xiaomiredmi12'),
(293, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'dienthoaisamsunggala'),
(294, 'Games', 'Không quan trọng', 4000, 144, 'iphone15pro'),
(295, 'Lướt web', 'Không quan trọng', 5000, 60, 'xiaomiredminote12'),
(296, 'Games', 'Không quan trọng', 5000, 144, 'oppoa57'),
(297, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'opporeno8'),
(298, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'oppoa57'),
(299, 'Games', 'Không quan trọng', 4000, 144, 'xiaomiredminote12'),
(300, 'Lướt web', 'Không quan trọng', 4000, 120, 'a'),
(301, 'Lướt web', 'Không quan trọng', 5000, 60, 'realme11'),
(302, 'Games', 'Không quan trọng', 5000, 120, 'iphone15promax'),
(303, 'Games', 'Sắc nét', 4000, 144, 'realme11'),
(304, 'Lướt web', 'Không quan trọng', 5000, 90, 'xiaomiredmi12'),
(305, 'Games', 'Không quan trọng', 4000, 60, 'iphone15promax'),
(306, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'vivov27e'),
(307, 'Lướt web', 'Không quan trọng', 5000, 120, 'dienthoaisamsunggala'),
(308, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone15'),
(309, 'Lướt web', 'Sắc nét', 5000, 60, 'oppoa57'),
(310, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'oppoa38'),
(311, 'Lướt web', 'Sắc nét', 4000, 120, 'iphone11'),
(312, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone15plus'),
(313, 'Games', 'Sắc nét', 4000, 60, 'iphone14plus'),
(314, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'samsunggalaxys22ultr'),
(315, 'Games', 'Sắc nét', 4000, 60, 'vivoy36'),
(316, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'iphone15promax'),
(317, 'Games', 'Sắc nét', 4000, 120, 'samsunggalaxya05s'),
(318, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'a'),
(319, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone15promax'),
(320, 'Games', 'Không quan trọng', 5000, 60, 'vivoy22s'),
(321, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone15plus'),
(322, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'vivov27e'),
(323, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone11'),
(324, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'samsunggalaxya05s'),
(325, 'Games', 'Sắc nét', 5000, 144, 'a'),
(326, 'Games', 'Sắc nét', 4000, 90, 'iphone15plus'),
(327, 'Games', 'Không quan trọng', 4000, 144, 'iphone15pro'),
(328, 'Games', 'Sắc nét', 5000, 120, 'samsunggalaxya05s'),
(329, 'Lướt web', 'Sắc nét', 4000, 120, 'a'),
(330, 'Games', 'Không quan trọng', 5000, 120, 'dienthoaisamsunggala'),
(331, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone14pro'),
(332, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'oppoa38'),
(333, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'iphone11'),
(334, 'Games', 'Không quan trọng', 4000, 90, 'iphone15pro'),
(335, 'Games', 'Không quan trọng', 5000, 120, 'iphone14pro'),
(336, 'Lướt web', 'Sắc nét', 5000, 120, 'iphone15plus'),
(337, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone12'),
(338, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'realmec53'),
(339, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'samsunggalaxys22ultr'),
(340, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'a'),
(341, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'xiaomiredmi12'),
(342, 'Games', 'Không quan trọng', 4000, 60, 'xiaomi13t'),
(343, 'Games', 'Sắc nét', 5000, 144, 'iphone11'),
(344, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'realme11'),
(345, 'Games', 'Không quan trọng', 4000, 120, 'vivoy36'),
(346, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'realme11'),
(347, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15pro'),
(348, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone14plus'),
(349, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone15promax'),
(350, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'a'),
(351, 'Lướt web', 'Sắc nét', 4000, 90, 'oppoa57'),
(352, 'Games', 'Sắc nét', 4000, 120, 'samsunggalaxya05s'),
(353, 'Games', 'Sắc nét', 5000, 60, 'dienthoaisamsunggala'),
(354, 'Lướt web', 'Sắc nét', 4000, 120, 'oppoa57'),
(355, 'Lướt web', 'Sắc nét', 5000, 120, 'xiaomiredmi12'),
(356, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone15promax'),
(357, 'Lướt web', 'Không quan trọng', 4000, 144, 'opporeno8'),
(358, 'Lướt web', 'Không quan trọng', 4000, 90, 'realmec53'),
(359, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone14plus'),
(360, 'Games', 'Không quan trọng', 4000, 120, 'realmec53'),
(361, 'Lướt web', 'Không quan trọng', 5000, 60, 'samsunggalaxyzflip4'),
(362, 'Games', 'Sắc nét', 4000, 60, 'samsunggalaxys22ultr'),
(363, 'Games', 'Sắc nét', 4000, 120, 'iphone14pro'),
(364, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxys22ultr'),
(365, 'Games', 'Không quan trọng', 4000, 144, 'samsunggalaxys22ultr'),
(366, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'samsunggalaxya05s'),
(367, 'Games', 'Không quan trọng', 5000, 120, 'samsunggalaxyzflip4'),
(368, 'Lướt web', 'Không quan trọng', 4000, 120, 'opporeno8'),
(369, 'Games', 'Sắc nét', 4000, 144, 'opporeno8'),
(370, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone11'),
(371, 'Lướt web', 'Sắc nét', 5000, 120, 'oppoa38'),
(372, 'Lướt web', 'Không quan trọng', 4000, 144, 'vivoy22s'),
(373, 'Lướt web', 'Không quan trọng', 5000, 144, 'vivov27e'),
(374, 'Games', 'Sắc nét', 4000, 144, 'samsunggalaxyzflip4'),
(375, 'Games', 'Không quan trọng', 4000, 90, 'iphone14pro'),
(376, 'Games', 'Không quan trọng', 5000, 60, 'dienthoaisamsunggala'),
(377, 'Games', 'Sắc nét', 4000, 120, 'vivoy36'),
(378, 'Games', 'Không quan trọng', 5000, 144, 'realmec55'),
(379, 'Games', 'Sắc nét', 5000, 120, 'samsunggalaxya05s'),
(380, 'Games', 'Sắc nét', 4000, 90, 'vivov27e'),
(381, 'Games', 'Không quan trọng', 5000, 90, 'vivov29e'),
(382, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'iphone15'),
(383, 'Games', 'Không quan trọng', 5000, 60, 'vivov27e'),
(384, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'xiaomi12'),
(385, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'vivov29e'),
(386, 'Games', 'Sắc nét', 5000, 144, 'samsunggalaxya05s'),
(387, 'Lướt web', 'Không quan trọng', 5000, 144, 'samsunggalaxys22ultr'),
(388, 'Lướt web', 'Sắc nét', 4000, 120, 'opporeno8'),
(389, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'samsunggalaxya05s'),
(390, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'xiaomi13t'),
(391, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'samsunggalaxya05s'),
(392, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone15plus'),
(393, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'realmec53'),
(394, 'Games', 'Không quan trọng', 4000, 120, 'dienthoaisamsunggala'),
(395, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'vivov27e'),
(396, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone14pro'),
(397, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone11'),
(398, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'vivoy22s'),
(399, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'vivoy36'),
(400, 'Games', 'Không quan trọng', 4000, 144, 'samsunggalaxys22ultr'),
(401, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'oppoa57'),
(402, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomi12'),
(403, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15'),
(404, 'Lướt web', 'Sắc nét', 5000, 60, 'vivoy22s'),
(405, 'Lướt web', 'Không quan trọng', 5000, 90, 'xiaomiredmi12'),
(406, 'Games', 'Sắc nét', 5000, 144, 'iphone11'),
(407, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'xiaomiredmi12'),
(408, 'Games', 'Sắc nét', 5000, 144, 'vivov27e'),
(409, 'Lướt web', 'Sắc nét', 4000, 60, 'vivoy36'),
(410, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'xiaomiredminote12'),
(411, 'Games', 'Sắc nét', 5000, 120, 'oppoa57'),
(412, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'realmec55'),
(413, 'Lướt web', 'Không quan trọng', 5000, 90, 'a'),
(414, 'Games', 'Sắc nét', 5000, 90, 'realmec53'),
(415, 'Lướt web', 'Không quan trọng', 4000, 60, 'realmec55'),
(416, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'opporeno8'),
(417, 'Lướt web', 'Sắc nét', 4000, 60, 'opporeno8'),
(418, 'Games', 'Sắc nét', 5000, 90, 'xiaomiredminote12'),
(419, 'Lướt web', 'Không quan trọng', 4000, 90, 'iphone11'),
(420, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(421, 'Lướt web', 'Sắc nét', 4000, 120, 'vivoy22s'),
(422, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'vivov27e'),
(423, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'xiaomiredminote12'),
(424, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone12'),
(425, 'Lướt web', 'Sắc nét', 4000, 120, 'xiaomiredmi12'),
(426, 'Games', 'Sắc nét', 5000, 120, 'iphone12'),
(427, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'realmec53'),
(428, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone14pro'),
(429, 'Games', 'Sắc nét', 5000, 120, 'xiaomiredmi12'),
(430, 'Games', 'Không quan trọng', 5000, 90, 'iphone12'),
(431, 'Lướt web', 'Không quan trọng', 4000, 144, 'samsunggalaxys22ultr'),
(432, 'Lướt web', 'Không quan trọng', 4000, 60, 'opporeno8'),
(433, 'Games', 'Sắc nét', 5000, 120, 'iphone15plus'),
(434, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomiredmi12'),
(435, 'Lướt web', 'Không quan trọng', 5000, 60, 'realme11'),
(436, 'Lướt web', 'Không quan trọng', 4000, 60, 'vivoy36'),
(437, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'vivoy36'),
(438, 'Lướt web', 'Sắc nét', 4000, 60, 'vivoy22s'),
(439, 'Lướt web', 'Sắc nét', 4000, 90, 'realmec55'),
(440, 'Lướt web', 'Không quan trọng', 5000, 144, 'vivov29e'),
(441, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'xiaomiredminote12'),
(442, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone11'),
(443, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'vivoy22s'),
(444, 'Lướt web', 'Sắc nét', 4000, 60, 'opporeno8'),
(445, 'Lướt web', 'Sắc nét', 5000, 90, 'xiaomiredminote12'),
(446, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'realmec53'),
(447, 'Lướt web', 'Sắc nét', 5000, 90, 'xiaomi12'),
(448, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'realme11'),
(449, 'Games', 'Sắc nét', 4000, 90, 'a'),
(450, 'Games', 'Sắc nét', 4000, 60, 'a'),
(451, 'Lướt web', 'Không quan trọng', 5000, 144, 'realmec55'),
(452, 'Games', 'Sắc nét', 4000, 60, 'samsunggalaxys22ultr'),
(453, 'Games', 'Sắc nét', 5000, 90, 'a'),
(454, 'Games', 'Sắc nét', 4000, 60, 'vivov29e'),
(455, 'Games', 'Sắc nét', 5000, 90, 'samsunggalaxys22ultr'),
(456, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(457, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone12'),
(458, 'Lướt web', 'Sắc nét', 5000, 144, 'oppoa57'),
(459, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone15promax'),
(460, 'Games', 'Không quan trọng', 4000, 120, 'iphone12'),
(461, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'realmec55'),
(462, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'realme11'),
(463, 'Games', 'Sắc nét', 5000, 90, 'xiaomi13t'),
(464, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone15promax'),
(465, 'Lướt web', 'Sắc nét', 4000, 90, 'a'),
(466, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone14pro'),
(467, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'iphone14plus'),
(468, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'vivoy22s'),
(469, 'Games', 'Không quan trọng', 5000, 90, 'samsunggalaxyzflip4'),
(470, 'Games', 'Không quan trọng', 4000, 90, 'vivov29e'),
(471, 'Games', 'Sắc nét', 4000, 144, 'vivov27e'),
(472, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'oppoa57'),
(473, 'Lướt web', 'Không quan trọng', 5000, 90, 'samsunggalaxya05s'),
(474, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'samsunggalaxys22ultr'),
(475, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomi13t'),
(476, 'Games', 'Không quan trọng', 5000, 144, 'vivov27e'),
(477, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'xiaomiredmi12'),
(478, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'vivov29e'),
(479, 'Lướt web', 'Không quan trọng', 5000, 60, 'oppoa38'),
(480, 'Games', 'Không quan trọng', 5000, 144, 'iphone11'),
(481, 'Games', 'Không quan trọng', 4000, 90, 'iphone11'),
(482, 'Lướt web', 'Sắc nét', 4000, 144, 'iphone12'),
(483, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'xiaomiredmi12'),
(484, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomi12'),
(485, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'vivov27e'),
(486, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'samsunggalaxya05s'),
(487, 'Games', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(488, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone15promax'),
(489, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone15plus'),
(490, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'samsunggalaxys22ultr'),
(491, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'realme11'),
(492, 'Games', 'Sắc nét', 5000, 120, 'dienthoaisamsunggala'),
(493, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'vivoy22s'),
(494, 'Games', 'Không quan trọng', 4000, 60, 'iphone14pro'),
(495, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'samsunggalaxys22ultr'),
(496, 'Lướt web', 'Sắc nét', 5000, 144, 'a'),
(497, 'Games', 'Sắc nét', 5000, 60, 'samsunggalaxys22ultr'),
(498, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'xiaomi12'),
(499, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone15plus'),
(500, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone12'),
(501, 'Games', 'Không quan trọng', 4000, 120, 'oppoa57'),
(502, 'Games', 'Không quan trọng', 5000, 144, 'vivoy36'),
(503, 'Lướt web', 'Sắc nét', 4000, 60, 'a'),
(504, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'oppoa38'),
(505, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'dienthoaisamsunggala'),
(506, 'Games', 'Sắc nét', 4000, 144, 'opporeno8'),
(507, 'Games', 'Không quan trọng', 4000, 120, 'vivoy36'),
(508, 'Games', 'Sắc nét', 5000, 90, 'iphone12'),
(509, 'Games', 'Sắc nét', 5000, 90, 'realme11'),
(510, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone12'),
(511, 'Games', 'Không quan trọng', 4000, 120, 'xiaomiredminote12'),
(512, 'Lướt web', 'Không quan trọng', 4000, 120, 'vivoy22s'),
(513, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'a'),
(514, 'Games', 'Không quan trọng', 5000, 120, 'vivoy22s'),
(515, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone15pro'),
(516, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'vivoy36'),
(517, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(518, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomiredminote12'),
(519, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'opporeno8'),
(520, 'Lướt web', 'Không quan trọng', 5000, 60, 'realmec53'),
(521, 'Games', 'Sắc nét', 4000, 90, 'dienthoaisamsunggala'),
(522, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone15pro'),
(523, 'Lướt web', 'Không quan trọng', 5000, 60, 'oppoa38'),
(524, 'Games', 'Không quan trọng', 5000, 60, 'iphone15'),
(525, 'Lướt web', 'Sắc nét', 4000, 120, 'a'),
(526, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'samsunggalaxys22ultr'),
(527, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone15plus'),
(528, 'Lướt web', 'Không quan trọng', 4000, 90, 'realmec55'),
(529, 'Lướt web', 'Không quan trọng', 5000, 120, 'iphone14plus'),
(530, 'Lướt web', 'Không quan trọng', 5000, 120, 'realmec55'),
(531, 'Games', 'Không quan trọng', 5000, 120, 'samsunggalaxya05s'),
(532, 'Games', 'Không quan trọng', 4000, 120, 'opporeno8'),
(533, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone15pro'),
(534, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(535, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone12'),
(536, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'oppoa38'),
(537, 'Games', 'Sắc nét', 5000, 60, 'dienthoaisamsunggala'),
(538, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'realme11'),
(539, 'Lướt web', 'Sắc nét', 5000, 144, 'samsunggalaxys22ultr'),
(540, 'Games', 'Sắc nét', 4000, 120, 'iphone12'),
(541, 'Games', 'Sắc nét', 5000, 90, 'iphone14pro'),
(542, 'Lướt web', 'Không quan trọng', 5000, 144, 'realmec55'),
(543, 'Lướt web', 'Sắc nét', 5000, 90, 'realmec53'),
(544, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'xiaomiredmi12'),
(545, 'Games', 'Sắc nét', 4000, 90, 'samsunggalaxys22ultr'),
(546, 'Games', 'Không quan trọng', 5000, 144, 'iphone14plus'),
(547, 'Lướt web', 'Không quan trọng', 5000, 120, 'samsunggalaxys22ultr'),
(548, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'iphone14plus'),
(549, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'realmec53'),
(550, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'realmec53'),
(551, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone12'),
(552, 'Games', 'Không quan trọng', 5000, 60, 'realmec53'),
(553, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'realme11'),
(554, 'Games', 'Sắc nét', 4000, 60, 'dienthoaisamsunggala'),
(555, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'vivov29e'),
(556, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(557, 'Lướt web', 'Không quan trọng', 5000, 60, 'opporeno8'),
(558, 'Lướt web', 'Sắc nét', 5000, 60, 'a'),
(559, 'Games', 'Sắc nét', 5000, 120, 'iphone14pro'),
(560, 'Games', 'Sắc nét', 4000, 90, 'iphone12'),
(561, 'Lướt web', 'Sắc nét', 5000, 144, 'xiaomi12'),
(562, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone14pro'),
(563, 'Lướt web', 'Không quan trọng', 5000, 120, 'vivov29e'),
(564, 'Games', 'Không quan trọng', 5000, 60, 'oppoa57'),
(565, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone15pro'),
(566, 'Games', 'Sắc nét', 4000, 144, 'vivoy36'),
(567, 'Lướt web', 'Không quan trọng', 5000, 90, 'iphone15pro'),
(568, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone12'),
(569, 'Lướt web', 'Không quan trọng', 4000, 120, 'iphone15'),
(570, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'xiaomiredminote12'),
(571, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone15promax'),
(572, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'samsunggalaxys22ultr'),
(573, 'Lướt web', 'Sắc nét', 4000, 144, 'dienthoaisamsunggala'),
(574, 'Games', 'Sắc nét', 5000, 144, 'xiaomiredmi12'),
(575, 'Games', 'Không quan trọng', 5000, 144, 'iphone11'),
(576, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone11'),
(577, 'Lướt web', 'Sắc nét', 5000, 120, 'iphone11'),
(578, 'Games', 'Không quan trọng', 4000, 144, 'opporeno8'),
(579, 'Games', 'Sắc nét', 5000, 120, 'xiaomiredminote12'),
(580, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'opporeno8'),
(581, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'iphone11'),
(582, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15pro'),
(583, 'Games', 'Không quan trọng', 5000, 90, 'iphone15'),
(584, 'Lướt web', 'Sắc nét', 5000, 120, 'realme11'),
(585, 'Games', 'Sắc nét', 5000, 144, 'samsunggalaxys22ultr'),
(586, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15promax'),
(587, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(588, 'Games', 'Không quan trọng', 4000, 144, 'samsunggalaxys22ultr'),
(589, 'Games', 'Sắc nét', 5000, 120, 'samsunggalaxya05s'),
(590, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'xiaomi12'),
(591, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone12'),
(592, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'oppoa38'),
(593, 'Lướt web', 'Sắc nét', 4000, 120, 'a'),
(594, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'realme11'),
(595, 'Games', 'Sắc nét', 5000, 120, 'opporeno8'),
(596, 'Games', 'Sắc nét', 5000, 144, 'oppoa38'),
(597, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'vivov27e'),
(598, 'Lướt web', 'Sắc nét', 5000, 120, 'iphone15plus'),
(599, 'Games', 'Sắc nét', 5000, 90, 'dienthoaisamsunggala'),
(600, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'vivov27e'),
(601, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'realmec53'),
(602, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'xiaomi12'),
(603, 'Games', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(604, 'Games', 'Không quan trọng', 4000, 120, 'iphone11'),
(605, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'oppoa38'),
(606, 'Games', 'Sắc nét', 5000, 144, 'vivoy22s'),
(607, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'iphone15pro'),
(608, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'xiaomi13t'),
(609, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'xiaomiredmi12'),
(610, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'xiaomiredmi12'),
(611, 'Games', 'Không quan trọng', 4000, 144, 'iphone14pro'),
(612, 'Lướt web', 'Sắc nét', 4000, 120, 'oppoa38'),
(613, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomiredmi12'),
(614, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxys22ultr'),
(615, 'Games', 'Không quan trọng', 5000, 144, 'iphone15pro'),
(616, 'Games', 'Không quan trọng', 4000, 120, 'realmec53'),
(617, 'Lướt web', 'Không quan trọng', 4000, 144, 'vivov29e'),
(618, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(619, 'Lướt web', 'Không quan trọng', 5000, 60, 'xiaomi13t'),
(620, 'Games', 'Không quan trọng', 5000, 60, 'dienthoaisamsunggala'),
(621, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'vivoy22s'),
(622, 'Lướt web', 'Sắc nét', 5000, 120, 'xiaomi13t'),
(623, 'Lướt web', 'Sắc nét', 5000, 144, 'realmec53'),
(624, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone14pro'),
(625, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'samsunggalaxyzflip4'),
(626, 'Lướt web', 'Không quan trọng', 4000, 120, 'oppoa57'),
(627, 'Lướt web', 'Sắc nét', 4000, 144, 'iphone14pro'),
(628, 'Lướt web', 'Không quan trọng', 5000, 90, 'xiaomiredminote12'),
(629, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone14plus'),
(630, 'Games', 'Sắc nét', 4000, 60, 'vivov29e'),
(631, 'Lướt web', 'Không quan trọng', 4000, 60, 'oppoa57'),
(632, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'vivoy22s'),
(633, 'Lướt web', 'Sắc nét', 5000, 120, 'iphone11'),
(634, 'Lướt web', 'Sắc nét', 4000, 60, 'xiaomiredmi12'),
(635, 'Games', 'Không quan trọng', 5000, 144, 'iphone15'),
(636, 'Games', 'Không quan trọng', 4000, 60, 'xiaomiredmi12'),
(637, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'iphone15'),
(638, 'Games', 'Không quan trọng', 4000, 90, 'iphone15plus'),
(639, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'opporeno8'),
(640, 'Games', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(641, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'vivoy22s'),
(642, 'Lướt web', 'Sắc nét', 5000, 90, 'dienthoaisamsunggala'),
(643, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'iphone15promax'),
(644, 'Games', 'Sắc nét', 4000, 120, 'dienthoaisamsunggala'),
(645, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone15plus'),
(646, 'Lướt web', 'Sắc nét', 4000, 90, 'a'),
(647, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'xiaomiredminote12'),
(648, 'Lướt web', 'Không quan trọng', 4000, 120, 'xiaomiredminote12'),
(649, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone14pro'),
(650, 'Games', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(651, 'Lướt web', 'Không quan trọng', 5000, 120, 'iphone12'),
(652, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone15pro'),
(653, 'Games', 'Không quan trọng', 4000, 90, 'xiaomiredmi12'),
(654, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'realmec53'),
(655, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone12'),
(656, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone11'),
(657, 'Games', 'Sắc nét', 5000, 144, 'samsunggalaxya05s'),
(658, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone14plus'),
(659, 'Games', 'Không quan trọng', 4000, 60, 'xiaomiredminote12'),
(660, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone12'),
(661, 'Lướt web', 'Sắc nét', 4000, 144, 'dienthoaisamsunggala'),
(662, 'Lướt web', 'Sắc nét', 4000, 120, 'vivoy22s'),
(663, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'iphone14plus'),
(664, 'Games', 'Không quan trọng', 5000, 60, 'xiaomiredmi12'),
(665, 'Games', 'Sắc nét', 5000, 144, 'iphone15plus'),
(666, 'Games', 'Sắc nét', 4000, 120, 'vivoy36'),
(667, 'Lướt web', 'Không quan trọng', 4000, 90, 'a'),
(668, 'Games', 'Sắc nét', 4000, 144, 'opporeno8'),
(669, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'vivoy22s'),
(670, 'Lướt web', 'Sắc nét', 4000, 144, 'xiaomiredminote12'),
(671, 'Lướt web', 'Sắc nét', 5000, 144, 'a'),
(672, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone12'),
(673, 'Games', 'Không quan trọng', 4000, 60, 'iphone15'),
(674, 'Games', 'Không quan trọng', 5000, 120, 'oppoa38'),
(675, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'samsunggalaxya05s'),
(676, 'Lướt web', 'Sắc nét', 5000, 90, 'vivov29e'),
(677, 'Lướt web', 'Không quan trọng', 4000, 90, 'iphone15'),
(678, 'Lướt web', 'Sắc nét', 4000, 144, 'xiaomiredmi12'),
(679, 'Lướt web', 'Không quan trọng', 4000, 144, 'realmec53'),
(680, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'iphone11'),
(681, 'Lướt web', 'Sắc nét', 4000, 144, 'iphone15'),
(682, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'vivov27e'),
(683, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'xiaomi12'),
(684, 'Games', 'Không quan trọng', 4000, 90, 'xiaomiredmi12'),
(685, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone14plus'),
(686, 'Lướt web', 'Sắc nét', 5000, 120, 'a'),
(687, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone15promax'),
(688, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone12'),
(689, 'Lướt web', 'Không quan trọng', 4000, 120, 'samsunggalaxys22ultr'),
(690, 'Games', 'Không quan trọng', 4000, 120, 'iphone15'),
(691, 'Lướt web', 'Sắc nét', 4000, 90, 'samsunggalaxyzflip4'),
(692, 'Games', 'Sắc nét', 4000, 90, 'samsunggalaxys22ultr'),
(693, 'Lướt web', 'Sắc nét', 5000, 60, 'dienthoaisamsunggala'),
(694, 'Lướt web', 'Sắc nét', 4000, 144, 'oppoa57'),
(695, 'Games', 'Không quan trọng', 4000, 60, 'vivoy22s'),
(696, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'samsunggalaxyzflip4'),
(697, 'Games', 'Sắc nét', 4000, 60, 'iphone11'),
(698, 'Lướt web', 'Không quan trọng', 5000, 120, 'samsunggalaxys22ultr'),
(699, 'Games', 'Sắc nét', 5000, 60, 'xiaomiredmi12'),
(700, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone12'),
(701, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'opporeno8'),
(702, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'realme11'),
(703, 'Lướt web', 'Không quan trọng', 5000, 120, 'vivov27e'),
(704, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'vivoy36'),
(705, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'xiaomi12'),
(706, 'Lướt web', 'Không quan trọng', 5000, 90, 'vivoy36'),
(707, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'realmec55'),
(708, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'samsunggalaxys22ultr'),
(709, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'realmec55'),
(710, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'samsunggalaxyzflip4'),
(711, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'dienthoaisamsunggala'),
(712, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'vivoy36'),
(713, 'Lướt web', 'Không quan trọng', 4000, 144, 'vivov27e'),
(714, 'Games', 'Không quan trọng', 5000, 120, 'iphone15pro'),
(715, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'samsunggalaxys22ultr'),
(716, 'Lướt web', 'Không quan trọng', 5000, 60, 'samsunggalaxys22ultr'),
(717, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'samsunggalaxys22ultr'),
(718, 'Lướt web', 'Không quan trọng', 5000, 90, 'realmec55'),
(719, 'Games', 'Sắc nét', 5000, 120, 'vivoy22s'),
(720, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'vivov29e'),
(721, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'opporeno8'),
(722, 'Games', 'Không quan trọng', 4000, 90, 'samsunggalaxys22ultr'),
(723, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'vivov29e'),
(724, 'Lướt web', 'Sắc nét', 5000, 60, 'vivoy36'),
(725, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'xiaomiredminote12'),
(726, 'Games', 'Không quan trọng', 4000, 90, 'iphone15promax'),
(727, 'Lướt web', 'Sắc nét', 4000, 120, 'xiaomi13t'),
(728, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone15'),
(729, 'Games', 'Sắc nét', 5000, 144, 'xiaomi13t'),
(730, 'Games', 'Không quan trọng', 4000, 144, 'realmec55'),
(731, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone15pro'),
(732, 'Lướt web', 'Sắc nét', 5000, 144, 'realmec53'),
(733, 'Games', 'Sắc nét', 4000, 120, 'vivoy36'),
(734, 'Lướt web', 'Sắc nét', 5000, 120, 'iphone14plus'),
(735, 'Games', 'Không quan trọng', 4000, 90, 'xiaomi13t'),
(736, 'Games', 'Sắc nét', 5000, 120, 'iphone12'),
(737, 'Lướt web', 'Sắc nét', 5000, 120, 'samsunggalaxyzflip4'),
(738, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone15plus'),
(739, 'Games', 'Sắc nét', 5000, 60, 'xiaomiredminote12'),
(740, 'Games', 'Sắc nét', 5000, 144, 'samsunggalaxya05s'),
(741, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone12'),
(742, 'Lướt web', 'Không quan trọng', 4000, 90, 'iphone12'),
(743, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone15'),
(744, 'Lướt web', 'Không quan trọng', 5000, 90, 'samsunggalaxyzflip4'),
(745, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'iphone11'),
(746, 'Lướt web', 'Không quan trọng', 4000, 120, 'vivoy22s'),
(747, 'Games', 'Không quan trọng', 4000, 60, 'iphone12'),
(748, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'realmec55'),
(749, 'Games', 'Sắc nét', 4000, 144, 'samsunggalaxys22ultr'),
(750, 'Games', 'Sắc nét', 4000, 120, 'xiaomi13t'),
(751, 'Games', 'Không quan trọng', 5000, 120, 'iphone14plus'),
(752, 'Lướt web', 'Sắc nét', 5000, 144, 'iphone15'),
(753, 'Lướt web', 'Sắc nét', 4000, 120, 'vivoy36'),
(754, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'xiaomi13t'),
(755, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'oppoa57'),
(756, 'Games', 'Sắc nét', 5000, 144, 'oppoa57'),
(757, 'Lướt web', 'Sắc nét', 4000, 60, 'oppoa57'),
(758, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone11'),
(759, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'oppoa38'),
(760, 'Lướt web', 'Sắc nét', 4000, 120, 'opporeno8'),
(761, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'iphone11'),
(762, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone12'),
(763, 'Lướt web', 'Sắc nét', 4000, 60, 'vivoy36'),
(764, 'Lướt web', 'Không quan trọng', 4000, 60, 'samsunggalaxya05s'),
(765, 'Lướt web', 'Không quan trọng', 4000, 90, 'oppoa38'),
(766, 'Games', 'Sắc nét', 5000, 120, 'oppoa57'),
(767, 'Lướt web', 'Sắc nét', 5000, 90, 'oppoa57'),
(768, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'realme11'),
(769, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'samsunggalaxya05s'),
(770, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone14plus'),
(771, 'Lướt web', 'Sắc nét', 5000, 90, 'iphone15'),
(772, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'dienthoaisamsunggala'),
(773, 'Lướt web', 'Sắc nét', 4000, 60, 'vivov27e'),
(774, 'Games', 'Không quan trọng', 5000, 90, 'a'),
(775, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'vivoy36'),
(776, 'Lướt web', 'Sắc nét', 4000, 60, 'samsunggalaxya05s'),
(777, 'Games', 'Sắc nét', 5000, 144, 'oppoa38'),
(778, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'xiaomiredmi12'),
(779, 'Lướt web', 'Sắc nét', 4000, 120, 'a'),
(780, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'iphone12'),
(781, 'Lướt web', 'Không quan trọng', 5000, 144, 'oppoa38'),
(782, 'Games', 'Không quan trọng', 5000, 60, 'xiaomiredmi12'),
(783, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'samsunggalaxya05s'),
(784, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'dienthoaisamsunggala'),
(785, 'Lướt web', 'Sắc nét', 5000, 90, 'vivov27e'),
(786, 'Games', 'Không quan trọng', 4000, 90, 'vivov29e'),
(787, 'Games', 'Không quan trọng', 5000, 144, 'vivov27e'),
(788, 'Games', 'Không quan trọng', 4000, 60, 'xiaomiredminote12'),
(789, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone14plus'),
(790, 'Games', 'Sắc nét', 5000, 120, 'vivov27e'),
(791, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'xiaomiredmi12'),
(792, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxyzflip4'),
(793, 'Lướt web', 'Sắc nét', 5000, 120, 'oppoa57'),
(794, 'Games', 'Không quan trọng', 5000, 144, 'oppoa38'),
(795, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone14pro'),
(796, 'Games', 'Sắc nét', 4000, 90, 'iphone15plus'),
(797, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone15promax'),
(798, 'Games', 'Sắc nét', 5000, 120, 'iphone15'),
(799, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'vivov27e'),
(800, 'Games', 'Không quan trọng', 5000, 90, 'samsunggalaxyzflip4'),
(801, 'Lướt web', 'Sắc nét', 4000, 144, 'vivov27e'),
(802, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone15'),
(803, 'Lướt web', 'Không quan trọng', 4000, 144, 'iphone12'),
(804, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'dienthoaisamsunggala'),
(805, 'Lướt web', 'Sắc nét', 4000, 120, 'xiaomiredmi12'),
(806, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'realmec53'),
(807, 'Games', 'Không quan trọng', 5000, 144, 'realmec55'),
(808, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'realmec55'),
(809, 'Lướt web', 'Không quan trọng', 4000, 60, 'samsunggalaxys22ultr'),
(810, 'Lướt web', 'Sắc nét', 4000, 144, 'xiaomiredmi12'),
(811, 'Games', 'Không quan trọng', 5000, 120, 'samsunggalaxya05s'),
(812, 'Games', 'Không quan trọng', 4000, 60, 'vivov29e'),
(813, 'Lướt web', 'Không quan trọng', 4000, 120, 'xiaomiredmi12'),
(814, 'Games', 'Không quan trọng', 5000, 120, 'iphone15promax'),
(815, 'Games', 'Sắc nét', 5000, 60, 'realmec53'),
(816, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'opporeno8'),
(817, 'Lướt web', 'Không quan trọng', 5000, 60, 'vivoy22s'),
(818, 'Games', 'Không quan trọng', 4000, 90, 'iphone15promax'),
(819, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone15pro'),
(820, 'Games', 'Không quan trọng', 4000, 144, 'xiaomiredmi12'),
(821, 'Lướt web', 'Sắc nét', 4000, 120, 'realme11'),
(822, 'Lướt web', 'Sắc nét', 5000, 120, 'vivov27e'),
(823, 'Lướt web', 'Sắc nét', 5000, 144, 'vivoy36'),
(824, 'Games', 'Sắc nét', 4000, 90, 'vivov27e'),
(825, 'Games', 'Không quan trọng', 4000, 144, 'xiaomiredminote12'),
(826, 'Lướt web', 'Sắc nét', 5000, 90, 'realme11'),
(827, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'realmec55'),
(828, 'Chụp ảnh', 'Sắc nét', 5000, 60, 'iphone15'),
(829, 'Games', 'Sắc nét', 4000, 90, 'iphone11'),
(830, 'Games', 'Không quan trọng', 5000, 60, 'iphone14pro'),
(831, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomi12'),
(832, 'Games', 'Không quan trọng', 4000, 60, 'oppoa57'),
(833, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone15pro'),
(834, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone15'),
(835, 'Games', 'Sắc nét', 5000, 120, 'realme11'),
(836, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15plus'),
(837, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone12'),
(838, 'Games', 'Không quan trọng', 4000, 90, 'iphone15promax'),
(839, 'Lướt web', 'Không quan trọng', 4000, 90, 'oppoa57'),
(840, 'Lướt web', 'Không quan trọng', 4000, 120, 'realmec55'),
(841, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'xiaomi12'),
(842, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'samsunggalaxyzflip4'),
(843, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone15promax'),
(844, 'Games', 'Sắc nét', 5000, 120, 'vivoy36'),
(845, 'Games', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(846, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'oppoa57'),
(847, 'Games', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(848, 'Games', 'Không quan trọng', 4000, 90, 'opporeno8'),
(849, 'Games', 'Sắc nét', 5000, 120, 'xiaomiredminote12'),
(850, 'Games', 'Không quan trọng', 4000, 120, 'samsunggalaxyzflip4'),
(851, 'Games', 'Sắc nét', 5000, 60, 'a'),
(852, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(853, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'realmec55'),
(854, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'iphone11'),
(855, 'Games', 'Không quan trọng', 4000, 90, 'xiaomiredmi12'),
(856, 'Lướt web', 'Sắc nét', 5000, 144, 'oppoa38'),
(857, 'Games', 'Sắc nét', 4000, 60, 'samsunggalaxyzflip4'),
(858, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone14plus'),
(859, 'Games', 'Sắc nét', 4000, 90, 'oppoa38'),
(860, 'Games', 'Không quan trọng', 4000, 90, 'realmec55'),
(861, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'opporeno8'),
(862, 'Games', 'Không quan trọng', 5000, 60, 'oppoa38'),
(863, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'xiaomiredminote12'),
(864, 'Lướt web', 'Không quan trọng', 5000, 60, 'realmec55'),
(865, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'samsunggalaxyzflip4'),
(866, 'Games', 'Không quan trọng', 5000, 90, 'xiaomiredminote12'),
(867, 'Lướt web', 'Sắc nét', 4000, 144, 'oppoa57'),
(868, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'samsunggalaxya05s'),
(869, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone14plus'),
(870, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'dienthoaisamsunggala'),
(871, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'samsunggalaxyzflip4'),
(872, 'Games', 'Sắc nét', 5000, 60, 'oppoa57'),
(873, 'Lướt web', 'Sắc nét', 4000, 144, 'samsunggalaxys22ultr'),
(874, 'Games', 'Sắc nét', 4000, 144, 'iphone15promax'),
(875, 'Games', 'Không quan trọng', 4000, 90, 'samsunggalaxys22ultr'),
(876, 'Games', 'Sắc nét', 5000, 90, 'vivoy36'),
(877, 'Games', 'Không quan trọng', 5000, 144, 'vivov27e'),
(878, 'Lướt web', 'Sắc nét', 5000, 90, 'xiaomiredmi12'),
(879, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone11'),
(880, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'vivov27e'),
(881, 'Lướt web', 'Không quan trọng', 5000, 120, 'oppoa38'),
(882, 'Games', 'Không quan trọng', 4000, 144, 'vivov27e');
INSERT INTO `ai` (`id`, `HieuSuat`, `Camera`, `Pin`, `TanSo`, `idSanPham`) VALUES
(883, 'Games', 'Sắc nét', 5000, 120, 'xiaomiredminote12'),
(884, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'xiaomiredminote12'),
(885, 'Games', 'Sắc nét', 5000, 144, 'iphone12'),
(886, 'Lướt web', 'Sắc nét', 5000, 144, 'samsunggalaxys22ultr'),
(887, 'Games', 'Không quan trọng', 5000, 120, 'samsunggalaxys22ultr'),
(888, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'dienthoaisamsunggala'),
(889, 'Lướt web', 'Sắc nét', 5000, 120, 'oppoa38'),
(890, 'Games', 'Sắc nét', 5000, 144, 'oppoa57'),
(891, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'vivoy36'),
(892, 'Games', 'Sắc nét', 5000, 144, 'dienthoaisamsunggala'),
(893, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone15'),
(894, 'Games', 'Không quan trọng', 5000, 144, 'realme11'),
(895, 'Games', 'Không quan trọng', 4000, 144, 'vivoy22s'),
(896, 'Lướt web', 'Sắc nét', 4000, 60, 'iphone15plus'),
(897, 'Lướt web', 'Sắc nét', 5000, 144, 'samsunggalaxya05s'),
(898, 'Chụp ảnh', 'Không quan trọng', 4000, 144, 'oppoa57'),
(899, 'Chụp ảnh', 'Sắc nét', 4000, 90, 'samsunggalaxys22ultr'),
(900, 'Lướt web', 'Không quan trọng', 4000, 90, 'iphone15'),
(901, 'Games', 'Không quan trọng', 4000, 144, 'vivov27e'),
(902, 'Games', 'Sắc nét', 4000, 90, 'iphone11'),
(903, 'Games', 'Không quan trọng', 5000, 60, 'xiaomiredmi12'),
(904, 'Games', 'Sắc nét', 4000, 120, 'realme11'),
(905, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'vivov27e'),
(906, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'xiaomiredmi12'),
(907, 'Lướt web', 'Không quan trọng', 4000, 120, 'vivoy22s'),
(908, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'a'),
(909, 'Lướt web', 'Sắc nét', 5000, 60, 'realmec55'),
(910, 'Games', 'Sắc nét', 4000, 90, 'dienthoaisamsunggala'),
(911, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'dienthoaisamsunggala'),
(912, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'realme11'),
(913, 'Lướt web', 'Không quan trọng', 5000, 90, 'realmec55'),
(914, 'Chụp ảnh', 'Không quan trọng', 4000, 60, 'iphone14plus'),
(915, 'Games', 'Không quan trọng', 4000, 120, 'iphone15'),
(916, 'Games', 'Không quan trọng', 4000, 60, 'xiaomi13t'),
(917, 'Lướt web', 'Không quan trọng', 5000, 120, 'vivov29e'),
(918, 'Lướt web', 'Không quan trọng', 5000, 120, 'xiaomiredminote12'),
(919, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'oppoa38'),
(920, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15promax'),
(921, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'iphone14pro'),
(922, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'iphone15promax'),
(923, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'dienthoaisamsunggala'),
(924, 'Lướt web', 'Không quan trọng', 4000, 144, 'oppoa57'),
(925, 'Lướt web', 'Sắc nét', 4000, 120, 'dienthoaisamsunggala'),
(926, 'Lướt web', 'Không quan trọng', 5000, 144, 'xiaomiredmi12'),
(927, 'Games', 'Không quan trọng', 4000, 90, 'samsunggalaxys22ultr'),
(928, 'Lướt web', 'Sắc nét', 4000, 60, 'opporeno8'),
(929, 'Lướt web', 'Sắc nét', 5000, 120, 'vivov29e'),
(930, 'Games', 'Sắc nét', 4000, 60, 'vivov27e'),
(931, 'Lướt web', 'Không quan trọng', 4000, 120, 'samsunggalaxya05s'),
(932, 'Games', 'Sắc nét', 4000, 144, 'iphone14pro'),
(933, 'Lướt web', 'Không quan trọng', 4000, 90, 'oppoa38'),
(934, 'Games', 'Không quan trọng', 4000, 144, 'oppoa57'),
(935, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'samsunggalaxys22ultr'),
(936, 'Games', 'Không quan trọng', 4000, 120, 'vivov29e'),
(937, 'Lướt web', 'Sắc nét', 5000, 144, 'vivoy36'),
(938, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'samsunggalaxya05s'),
(939, 'Lướt web', 'Sắc nét', 4000, 60, 'xiaomi13t'),
(940, 'Games', 'Sắc nét', 4000, 90, 'iphone15promax'),
(941, 'Games', 'Sắc nét', 4000, 90, 'xiaomiredminote12'),
(942, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15'),
(943, 'Chụp ảnh', 'Sắc nét', 4000, 60, 'iphone14plus'),
(944, 'Games', 'Không quan trọng', 4000, 144, 'oppoa38'),
(945, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'iphone15'),
(946, 'Games', 'Sắc nét', 5000, 120, 'vivov29e'),
(947, 'Lướt web', 'Sắc nét', 5000, 120, 'dienthoaisamsunggala'),
(948, 'Lướt web', 'Sắc nét', 4000, 90, 'xiaomiredminote12'),
(949, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'opporeno8'),
(950, 'Games', 'Sắc nét', 4000, 90, 'iphone14pro'),
(951, 'Lướt web', 'Sắc nét', 5000, 60, 'a'),
(952, 'Lướt web', 'Sắc nét', 4000, 60, 'samsunggalaxya05s'),
(953, 'Lướt web', 'Sắc nét', 5000, 120, 'realme11'),
(954, 'Games', 'Không quan trọng', 4000, 90, 'iphone11'),
(955, 'Chụp ảnh', 'Sắc nét', 5000, 120, 'oppoa57'),
(956, 'Chụp ảnh', 'Không quan trọng', 5000, 144, 'xiaomiredminote12'),
(957, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'xiaomi13t'),
(958, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone14plus'),
(959, 'Games', 'Sắc nét', 5000, 120, 'opporeno8'),
(960, 'Chụp ảnh', 'Không quan trọng', 4000, 90, 'xiaomiredmi12'),
(961, 'Chụp ảnh', 'Không quan trọng', 5000, 90, 'vivov29e'),
(962, 'Games', 'Sắc nét', 4000, 120, 'iphone15'),
(963, 'Lướt web', 'Sắc nét', 4000, 144, 'vivoy22s'),
(964, 'Lướt web', 'Không quan trọng', 4000, 60, 'iphone15promax'),
(965, 'Games', 'Không quan trọng', 5000, 60, 'oppoa38'),
(966, 'Lướt web', 'Sắc nét', 5000, 60, 'iphone14pro'),
(967, 'Games', 'Sắc nét', 5000, 120, 'iphone14plus'),
(968, 'Lướt web', 'Không quan trọng', 5000, 144, 'xiaomiredmi12'),
(969, 'Chụp ảnh', 'Sắc nét', 4000, 144, 'xiaomiredminote12'),
(970, 'Games', 'Không quan trọng', 4000, 120, 'iphone15'),
(971, 'Lướt web', 'Sắc nét', 5000, 60, 'xiaomiredminote12'),
(972, 'Games', 'Không quan trọng', 4000, 90, 'a'),
(973, 'Chụp ảnh', 'Sắc nét', 4000, 120, 'samsunggalaxys22ultr'),
(974, 'Chụp ảnh', 'Sắc nét', 5000, 144, 'samsunggalaxyzflip4'),
(975, 'Games', 'Không quan trọng', 5000, 90, 'iphone15'),
(976, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'iphone11'),
(977, 'Lướt web', 'Sắc nét', 4000, 144, 'a'),
(978, 'Games', 'Sắc nét', 4000, 120, 'xiaomi12'),
(979, 'Lướt web', 'Sắc nét', 4000, 60, 'realmec55'),
(980, 'Games', 'Không quan trọng', 4000, 144, 'samsunggalaxya05s'),
(981, 'Lướt web', 'Sắc nét', 4000, 120, 'vivov29e'),
(982, 'Games', 'Không quan trọng', 5000, 90, 'vivoy36'),
(983, 'Games', 'Sắc nét', 5000, 144, 'xiaomi12'),
(984, 'Games', 'Không quan trọng', 5000, 120, 'realmec53'),
(985, 'Games', 'Không quan trọng', 5000, 60, 'samsunggalaxys22ultr'),
(986, 'Lướt web', 'Sắc nét', 5000, 120, 'vivov27e'),
(987, 'Chụp ảnh', 'Sắc nét', 5000, 90, 'iphone11'),
(988, 'Games', 'Sắc nét', 5000, 144, 'iphone11'),
(989, 'Games', 'Sắc nét', 4000, 60, 'samsunggalaxya05s'),
(990, 'Lướt web', 'Không quan trọng', 5000, 60, 'iphone11'),
(991, 'Lướt web', 'Không quan trọng', 5000, 120, 'iphone14pro'),
(992, 'Games', 'Sắc nét', 5000, 60, 'iphone12'),
(993, 'Chụp ảnh', 'Không quan trọng', 5000, 60, 'iphone14plus'),
(994, 'Games', 'Không quan trọng', 4000, 60, 'vivov29e'),
(995, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'iphone15pro'),
(996, 'Games', 'Sắc nét', 4000, 90, 'xiaomiredminote12'),
(997, 'Chụp ảnh', 'Không quan trọng', 5000, 120, 'oppoa57'),
(998, 'Lướt web', 'Sắc nét', 4000, 120, 'vivov29e'),
(999, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone14pro'),
(1000, 'Lướt web', 'Không quan trọng', 4000, 60, 'realmec55'),
(1001, 'Lướt web', 'Không quan trọng', 4000, 144, 'opporeno8'),
(1002, 'Lướt web', 'Không quan trọng', 5000, 144, 'iphone12'),
(1003, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'xiaomi12'),
(1004, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'samsunggalaxys22ultr'),
(1005, 'Lướt web', 'Sắc nét', 4000, 90, 'iphone15'),
(1006, 'Chụp ảnh', 'Không quan trọng', 4000, 120, 'oppoa57'),
(1007, 'Lướt web', 'Sắc nét', 4000, 144, 'iphone15plus'),
(1008, 'Lướt web', 'Sắc nét', 5000, 90, 'samsunggalaxya05s'),
(1009, 'Lướt web', 'Không quan trọng', 5000, 90, 'xiaomi12'),
(1010, 'Games', 'Sắc nét', 4000, 144, 'samsunggalaxya05s');

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

--
-- Đang đổ dữ liệu cho bảng `baohanh`
--

INSERT INTO `baohanh` (`id`, `idChiTietPhieuXuat`, `LyDo`, `NgayBaoHanh`, `NgayTraHang`, `idNhanVien`, `idKhachHang`, `ChiPhi`, `TrangThai`, `idPhieuXuat`) VALUES
(3, 7, 'abc', '2023-11-30 10:02:19', '2023-11-30 10:02:16', 16, 17, 0, b'0', 7),
(4, 20, 'abc', '2023-11-30 14:15:46', '2023-11-30 14:15:38', 16, 48, 0, b'1', 15);

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
(32, 8, 'xiaomiredminote12', 100, 0),
(33, 9, 'a', 100, 100);

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
(12, 11, 'iphone15', 1, 21990000),
(13, 8, 'iphone11', 1, 10990000),
(14, 8, 'iphone15plus', 1, 25790000),
(15, 12, 'iphone11', 12, 10990000),
(16, 12, 'iphone15', 1, 21990000),
(17, 12, 'iphone14pro', 1, 25190000),
(18, 13, 'iphone14pro', 1, 25190000),
(19, 14, 'iphone14pro', 1, 25190000),
(20, 15, 'a', 1, 120);

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
(10, 'admin', 'ThongKe'),
(11, 'admin', 'GoiYSanPham');

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
(8, '2023-11-29 09:39:43', 2500, 0, b'1', 'maihoang', 16),
(9, '2023-11-30 14:11:40', 100, 0, b'1', 'maihoang', 16);

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
(8, '2023-11-29 11:10:44', 2, 36780000, 2, b'0', 17, 16),
(10, '2023-11-29 04:41:54', 1, 25190000, 2, b'1', 48, 16),
(11, '2023-11-29 04:48:50', 1, 21990000, 2, b'0', 48, 48),
(12, '2023-11-30 02:45:53', 14, 179060000, 2, b'0', 48, 48),
(13, '2023-11-30 02:48:43', 1, 25190000, 1, b'0', 48, 48),
(14, '2023-11-30 02:55:26', 1, 25190000, 1, b'0', 48, 48),
(15, '2023-11-30 07:12:28', 1, 120, 2, b'1', 48, 16);

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
('GoiYSanPham', 'Gợi ý sản phẩm'),
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
('a', 'Sản phẩm test', 99, 120, 120, 'a', 6.7, 'a', 120, 'a', 'a', 'a', 'a', '8', '128', b'1', 5000, 'a', 'a', 5, b'1', '2023-11-30 14:09:29', b'1', 12, 0, 'iphone', 'maihoang', 'dienthoaisamsunggalaxyzfold55g.jpg'),
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
-- Chỉ mục cho bảng `ai`
--
ALTER TABLE `ai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idSanPham` (`idSanPham`);

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
-- AUTO_INCREMENT cho bảng `ai`
--
ALTER TABLE `ai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ai`
--
ALTER TABLE `ai`
  ADD CONSTRAINT `ai_ibfk_1` FOREIGN KEY (`idSanPham`) REFERENCES `sanpham` (`id`);

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
