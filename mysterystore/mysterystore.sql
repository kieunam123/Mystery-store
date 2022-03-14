-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 08, 2021 lúc 06:09 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mysterystore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `phone`, `password`, `email`) VALUES
(2, 'admin', 1, '781e5e245d69b566979b86e28d23f2c7', '1@2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(111) NOT NULL,
  `name` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `img` varchar(3000) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `name`, `img`) VALUES
(9, 'Nike', '15988060691528432666-brasol.vn-logo-nike-vector-logo-nike_(1).jpg'),
(10, 'Adidas', '1598806100unnamed.jpg'),
(11, 'Dior', '1598806230dior-logo-2.jpg'),
(12, 'converse', '15988064001280px-Converse_logo.svg.png'),
(13, 'alpha industries', '1598806700Alpha-Industries-Black-Friday-1.jpg'),
(15, 'Luis Vuitton', '1599897764unnamed.jpg'),
(16, 'No brand', '1599898098unnamed.png'),
(17, 'An Phước', '1622820522gcs_full_57c3b2b96e0b49256a5898ce-2016-08-29-035748.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `level` int(10) NOT NULL,
  `parent_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `level`, `parent_id`) VALUES
(1, 'Áo Thun', 0, NULL),
(2, 'Quần', 0, NULL),
(3, 'Nón', 0, NULL),
(4, 'Áo Khoác', 0, NULL),
(5, 'Flannel', 0, NULL),
(6, 'Túi', 0, NULL),
(7, 'Hàng Cao Cấp', 0, NULL),
(8, 'Hàng Mới Về', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cate_product`
--

CREATE TABLE `cate_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cate_product`
--

INSERT INTO `cate_product` (`id`, `product_id`, `cate_id`) VALUES
(4, 18, 3),
(5, 18, 0),
(6, 18, 7),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 3, 0),
(11, 7, 4),
(12, 3, 0),
(13, 6, 1),
(14, 6, 5),
(15, 6, 0),
(16, 7, 0),
(17, 7, 5),
(18, 7, 7),
(19, 9, 2),
(20, 9, 5),
(21, 9, 7),
(22, 10, 2),
(23, 10, 4),
(24, 10, 0),
(25, 11, 0),
(26, 11, 5),
(27, 11, 0),
(28, 19, 1),
(29, 19, 0),
(30, 19, 0),
(31, 20, 0),
(32, 20, 0),
(33, 20, 0),
(34, 21, 0),
(35, 21, 0),
(36, 21, 0),
(37, 22, 0),
(38, 22, 0),
(39, 22, 0),
(40, 23, 0),
(41, 23, 0),
(42, 23, 0),
(43, 24, 0),
(44, 24, 0),
(45, 24, 0),
(46, 25, 0),
(47, 25, 0),
(48, 25, 0),
(49, 26, 1),
(50, 26, 0),
(51, 26, 0),
(52, 27, 2),
(53, 27, 0),
(54, 27, 0),
(55, 28, 0),
(56, 28, 0),
(57, 28, 0),
(58, 29, 1),
(59, 29, 0),
(60, 29, 0),
(61, 30, 1),
(62, 30, 0),
(63, 30, 0),
(64, 31, 6),
(65, 31, 0),
(66, 31, 0),
(67, 32, 0),
(68, 32, 0),
(69, 32, 0),
(70, 33, 1),
(71, 33, 0),
(72, 33, 0),
(73, 34, 1),
(74, 34, 0),
(75, 34, 0),
(76, 35, 2),
(77, 35, 0),
(78, 35, 0),
(79, 36, 3),
(80, 36, 0),
(81, 36, 0),
(82, 37, 4),
(83, 37, 0),
(84, 37, 0),
(85, 38, 6),
(86, 38, 0),
(87, 38, 0),
(88, 39, 2),
(89, 40, 6),
(90, 41, 6),
(91, 42, 6),
(92, 43, 6),
(93, 44, 0),
(94, 45, 0),
(95, 46, 0),
(96, 47, 0),
(97, 48, 3),
(98, 49, 3),
(99, 50, 1),
(100, 51, 5),
(101, 52, 6),
(102, 53, 7),
(103, 54, 8),
(104, 55, 5),
(105, 56, 0),
(106, 57, 0),
(107, 58, 4),
(108, 59, 4),
(109, 60, 0),
(110, 61, 0),
(111, 62, 2),
(112, 63, 1),
(113, 64, 7),
(114, 65, 8),
(115, 66, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail`
--

CREATE TABLE `detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf32_unicode_ci NOT NULL,
  `title` varchar(300) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail`
--

INSERT INTO `detail` (`id`, `product_id`, `img`, `content`, `title`) VALUES
(1, 7, '15874518544838_unnamed1.png', '', ''),
(2, 7, '15874518544838_unnamed.png', '', ''),
(3, 7, '15874518544838_pastedimage0.png', 'Laptop HP Pavilion Gaming 15-dk0231TX (8DS89PA) được trang bị màn hình 15,6 inch, viền mỏng 4 cạnh cùng độ phân giải Full HD 1080 mang đến góc nhìn rộng và trải nghiệm hình ảnh sắc nét. \r\n\r\nHơn thế nữa, loa kép được tích hợp ngay cạnh trên bàn phím cùng công nghệ khuếch âm HP Audio Boost và âm thanh B&O PLAY mang đến trải nghiệm âm thanh sống động, game thủ thỏa sức chìm đắm trong những âm thanh sống động', 'Laptop HP Pavilion '),
(4, 2, '15874518544838_unnamed1.png', 'Laptop HP Pavilion Gaming 15-dk0231TX (8DS89PA) được trang bịmàn hình 15,6 inch, viền mỏng 4 cạnh cùng độ phân giải Full HD 1080 mang đến góc nhìn rộng và trải nghiệm y cạnh trên bàn phím cùng công nghệ khuếch âm HP Audio Boost và âm thanh B&O PLAY mang đến trải nghiệm âm thanh sống động, game thủ thỏa sức chìm đắm trong những âm thanh sống động', 'Laptop'),
(5, 2, '15874518544838_unnamed.png', 'Laptop HP Pavilion Gaming 15-dk0231TX (8DS89PA) được trang bị màn hình 15,6 inch, viền mỏng 4 cạnh cùng độ phân giải Full HD 1080 mang đến góc nhìn rộng và trải nghiệm hình ảnh sắc nét.   Hơn thế nữa, loa kép được tích hợp ngay cạnh trên bàn phím cùng công nghệ khuếch âm HP Audio Boost và âm thanh B&O PLAY mang đến trải nghiệm âm thanh sống động, game thủ thỏa sức chìm đắm trong những âm thanh sống động', ' Pavilion '),
(6, 2, '15874518544838_pastedimage0.png', 'Laptop HP Pavilion Gaming 15-dk0231TX (8DS89PA) được trang bị màn hình 15,6 inch, viền mỏng 4 cạnh cùng độ phân giải Full HD 1080 mang đến góc nhìn rộng và trải nghiệm hình ảnh sắc nét. \r\n\r\nHơn thế nữa, loa kép được tích hợp ngay cạnh trên bàn phím cùng công nghệ khuếch âm HP Audio Boost và âm thanh B&O PLAY mang đến trải nghiệm âm thanh sống động, game thủ thỏa sức chìm đắm trong những âm thanh sống động', 'Laptop HP Pavilion '),
(7, 24, '1598806861117949373_329672698440789_3796136413425301686_o.jpg', 'Alpha Industries (official)\r\nSố đo chi tiết: L\r\nTình trạng: 9/10\r\nGiá: 200k (Còn)', ''),
(8, 24, '1598806861117818614_329672771774115_2052311842426022770_o.jpg', '', ''),
(9, 24, '1598806861117951964_329672728440786_3946733496426562197_o.jpg', '', ''),
(10, 25, '1598807155109966587_304937234247669_2851437983945768000_o.jpg', '', ''),
(11, 25, '1598807155109135271_304937370914322_6462970246508897680_o.jpg', '', ''),
(12, 25, '1598807155109135271_304937370914322_6462970246508897680_o.jpg', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `img`
--

INSERT INTO `img` (`id`, `img`, `product_id`) VALUES
(3, '120_5124_66ivqp2kqx9tqw6w_setting_fff_1_90_end_500 - Copy.jpg', 2),
(4, '120_5124_ft1vxujv74rgmdho_setting_fff_1_90_end_500.jpg', 2),
(5, '120_5124_kg4f3lkoxwcogxv4_setting_fff_1_90_end_500.jpg', 2),
(6, '120_5124_kg4f3lkoxwcogxv4_setting_fff_1_90_end_500.jpg', 3),
(7, '2541_dell_precision_m6800_4.png', 3),
(8, '2541_dell_precision_m6800_5.png', 3),
(9, '4518_artboard_2.png', 4),
(10, '4518_artboard_3.png', 4),
(11, '4518_artboard_6.png', 4),
(12, 'download.png', 4),
(13, '2514_dsc00558_copy.jpg', 5),
(14, '2514_dsc00562_copy.jpg', 5),
(15, '2514_dsc00564_copy.jpg', 5),
(16, '120_5183_msi_gf63_thin_9sc_400vn_3.jpg', 6),
(17, '5183_msi_gf63_thin_9sc_400vn_4.jpg', 6),
(18, '120_5183_msi_gf63_thin_9sc_400vn_3.jpg', 7),
(19, '4838_pastedimage0.png', 7),
(20, '4838_unnamed.png', 7),
(21, '120_5124_66ivqp2kqx9tqw6w_setting_fff_1_90_end_500 - Copy.jpg', 8),
(22, '120_5124_ft1vxujv74rgmdho_setting_fff_1_90_end_500.jpg', 8),
(23, '120_5124_kg4f3lkoxwcogxv4_setting_fff_1_90_end_500.jpg', 8),
(24, '120_5124_kg4f3lkoxwcogxv4_setting_fff_1_90_end_500.jpg', 9),
(25, '2541_dell_precision_m6800_4.png', 9),
(26, '2541_dell_precision_m6800_5.png', 9),
(27, '4518_artboard_2.png', 10),
(28, '4518_artboard_3.png', 10),
(29, '4518_artboard_6.png', 10),
(30, 'download.png', 11),
(31, '2514_dsc00558_copy.jpg', 11),
(32, '2514_dsc00562_copy.jpg', 11),
(33, '2514_dsc00564_copy.jpg', 12),
(34, '120_5183_msi_gf63_thin_9sc_400vn_3.jpg', 12),
(35, '5183_msi_gf63_thin_9sc_400vn_4.jpg', 12),
(36, '120_5183_msi_gf63_thin_9sc_400vn_3.jpg', 13),
(37, '4838_pastedimage0.png', 13),
(38, '4838_unnamed.png', 13),
(39, '5153_acer_predator_helios_ph315_52_75r6_4.jpg', 14),
(40, 'acer.png', 14),
(41, '5153_acer_predator_helios_ph315_52_75r6_4.jpg', 15),
(42, 'acer.png', 15),
(43, '5153_acer_predator_helios_ph315_52_75r6_4.jpg', 16),
(44, 'acer.png', 16),
(45, 'acer.png', 17),
(46, 'acer.png', 18),
(47, '120_5124_66ivqp2kqx9tqw6w_setting_fff_1_90_end_500 - Copy.1587306861.jpg', 19),
(48, '118333332_336010474473678_2997143656903414542_o.jpg', 20),
(49, '118604452_336009951140397_794954288387159155_o.jpg', 21),
(50, '118130427_336008884473837_7045407907185933550_o.jpg', 22),
(51, '118198248_336009267807132_7802445544178128537_o.jpg', 23),
(52, '117949373_329672698440789_3796136413425301686_o.jpg', 24),
(53, '108815070_304937817580944_8209637621597266052_o.jpg', 25),
(54, '118130427_336008884473837_7045407907185933550_o.1598772791.jpg', 26),
(55, '107832978_304934600914599_1320885863770030953_o.jpg', 27),
(56, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.jpg', 28),
(57, '117949373_329672698440789_3796136413425301686_o.jpg', 29),
(58, '117817928_330169251724467_304530034217548249_n.jpg', 30),
(59, '105478031_288665145874878_7689676303930831850_o.jpg', 31),
(60, '106298921_293050695436323_4170077623865825919_n.jpg', 32),
(61, '106298921_293050695436323_4170077623865825919_n.jpg', 33),
(62, '107345014_293050588769667_2136329137197388957_n.jpg', 34),
(63, '108815070_304937817580944_8209637621597266052_o.1598807155.jpg', 35),
(64, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.1598807402.jpg', 36),
(65, '106242463_288797482528311_8741695176607953998_o.jpg', 37),
(66, '110881158_308617903879602_3789012646745223377_o.jpg', 38),
(67, '103770133_278327673575292_7383231813837660851_o.1598848372.jpg', 39),
(68, '113185037_308649103876482_5832365183255290213_o.jpg', 40),
(69, '110881158_308617903879602_3789012646745223377_o.jpg', 40),
(70, '111499240_308649100543149_186526778840682673_o.jpg', 40),
(71, '113185037_308649103876482_5832365183255290213_o.jpg', 41),
(72, '110881158_308617903879602_3789012646745223377_o.jpg', 41),
(73, '111499240_308649100543149_186526778840682673_o.jpg', 41),
(74, '113185037_308649103876482_5832365183255290213_o.jpg', 42),
(75, '110881158_308617903879602_3789012646745223377_o.jpg', 42),
(76, '111499240_308649100543149_186526778840682673_o.jpg', 42),
(77, '102563896_276152623792797_5346889453634366524_o.jpg', 43),
(78, '103501367_276152693792790_945369038217677828_o.jpg', 44),
(79, '109828351_308616577213068_1469974057360799331_o.jpg', 45),
(80, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.1598807402.1598807938.jpg', 46),
(81, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.1598807402.1598807938.jpg', 47),
(82, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.1598807402.1598807938.1598860135.jpg', 48),
(83, 'UTB8uv1InevJXKJkSajhq6A7aFXaR.jpg_350x350.1598807402.1598807938.1598860135.jpg', 49),
(84, '106298921_293050695436323_4170077623865825919_n.1598807650.jpg', 50),
(85, '107866433_295011758578055_459426384132730295_n (1).jpg', 51),
(86, '108033596_295011805244717_3586005293345510713_n.jpg', 51),
(87, '113645378_309056730506891_2692044103996295189_o.jpg', 52),
(88, '117282239_317276119684952_7336349541408854756_n.jpg', 53),
(89, '109783573_300913657987865_7500354616560816837_n.jpg', 54),
(90, '119107690_346614493413276_908285156046546085_n.jpg', 55),
(91, '119004444_346628753411850_4116044792259207958_o.jpg', 55),
(92, '119224887_346628800078512_713728226400431825_o.jpg', 55),
(93, '1_44376.jpg', 56),
(94, 'Is-it-Possible-to-Tell-a-Japanese-Fashion-Logo.jpg', 57),
(95, 'WideBlazer-14.jpg', 58),
(96, 'WideBlazer-12.jpg', 58),
(97, 'WideBlazer-13.jpg', 58),
(98, '182301111_773342916699869_7871240874648751732_n.jpg', 59),
(99, '161987796_3773998762687844_1766618583785886313_n (1).jpg', 59),
(100, '131624557_3526425180778538_7923109931358712670_n.jpg', 59),
(101, '184420266_229214878976718_5130014144392373723_n.jpg', 60),
(102, '184157465_228617672369772_7400205826954842077_n.jpg', 60),
(103, '184248142_228617462369793_6804770782443669660_n.jpg', 60),
(104, '009e32d1ac0a4a0d7f890c9ad3d4381c.jpg', 61),
(105, '009e32d1ac0a4a0d7f890c9ad3d4381c.jpg', 62),
(106, '497cf756f7f002ae5be1.jpg', 63),
(107, '505f930f93a966f73fb8.jpg', 63),
(108, 'f49740d44072b52cec63.jpg', 63),
(109, '3a26221f22b9d7e78ea8.jpg', 63),
(110, '114dc472c4d4318a68c5.jpg', 63),
(111, '993e904190e765b93cf6.jpg', 63),
(112, 'e7da81c9816f74312d7e.jpg', 63),
(113, '68d969cd696b9c35c57a.jpg', 63),
(114, '1a17915a4f83badde392.jpg', 64),
(115, '3689749aaa435f1d0652.jpg', 65),
(116, '96b627a4f97d0c23556c.jpg', 65),
(117, 'a8d357c6891f7c41250e.jpg', 65),
(118, '8a0697308bc02dd83921fe73f1331e1f.jpg', 66),
(119, 'f36de24210fa5ebb2b4cd8d49f07e5d0.jpg', 66),
(120, '1c93ee89999c4fcceb44e346f0cc2c13.jpg', 66),
(121, 'd87cfa8d5972f5ab034ccf1f25d0cde9.jpg', 66);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordered`
--

CREATE TABLE `ordered` (
  `id` int(11) NOT NULL,
  `time` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `notes` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `extra_address` varchar(300) COLLATE utf32_unicode_ci DEFAULT NULL,
  `ten` varchar(20) COLLATE utf32_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ordered`
--

INSERT INTO `ordered` (`id`, `time`, `status`, `user_id`, `notes`, `extra_address`, `ten`, `city`, `email`) VALUES
(11, '2020-05-01', 2, 12, '', '', '', '', ''),
(12, '2020-05-01', 2, 12, 'dahjldhaildhjiopạuwipo  ', '', '', '', ''),
(13, '2020-05-13', 2, 13, '', '', '', '', ''),
(14, '2020-05-13', 2, 13, '', '', '', '', ''),
(15, '0000-00-00', 2, 12, '', '', '', '', ''),
(16, '0000-00-00', 0, 12, 'dawdawda', '', '', '', ''),
(17, '0000-00-00', 2, 14, '1', '', '', '', ''),
(18, '0000-00-00', 0, 14, '', '', '', '', ''),
(19, '0000-00-00', 0, 19, '123', '', '', '', ''),
(20, '0000-00-00', 0, 1, '123', '', '', '', ''),
(21, '0000-00-00', 0, 14, '1234', '', '', '', ''),
(22, '0000-00-00', 0, 14, '567', '', '', '', ''),
(23, '0000-00-00', 0, 14, 'test', '', '', '', ''),
(24, '0000-00-00', 0, 14, '123324343', '', '', '', ''),
(25, '0000-00-00', 0, 13, '', '', '', '', ''),
(26, '0000-00-00', 0, 13, '123', '', '', '', ''),
(27, '0000-00-00', 0, 13, 'tphcm', '', '', '', ''),
(28, '0000-00-00', 0, 13, '123', 'Array', '', '', ''),
(29, '0000-00-00', 0, 13, 'adawd', '337', '', '', ''),
(30, '0000-00-00', 0, 13, '123', 'BH', '', '', ''),
(31, '0382155564', 0, 13, '2', 'AS, CC,CV', '', '', ''),
(32, '', 0, 0, '', NULL, '', '', ''),
(33, '0842548001', 0, 13, 'test', '337 pham van thuan', 'Kiều Nam', '', ''),
(34, '0382155564', 0, 13, '123', 'adadad', 'cam van ch', 'HCM', 'cam@gmail.com'),
(35, '0382155564', 0, 13, '', '', 'cam van ch', 'HCM', 'cam@gmail.com'),
(36, '0382155564', 0, 13, '', '', 'cam van ch', 'HCM', 'cam@gmail.com'),
(37, '0382155564', 2, 13, '', '', 'cam van chuc', 'HCM', 'cam@gmail.com'),
(38, '113', 0, 17, '', '337 pham van thuan', 'kieunam', 'dong nai', 'test@gmail.com'),
(39, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(40, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(41, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(42, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(43, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(44, '2', 0, 19, '', '', '2', '2', '2@gmail.com'),
(45, '2', 0, 19, '', '', '2', '2', '2@gmail.com'),
(46, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(47, '1', 0, 18, '', '', '1', '1', '1@gmail.com'),
(48, '0123456789', 0, 20, 'ab c', 'quan 1', 'le van a', 'hcm', 'levana@gmail.com'),
(49, '0123456789', 0, 20, '1', 'SO 3 DUONG ABC', 'le van a', 'HCM', 'levana@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `brand_id` int(11) NOT NULL,
  `keyword` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `short_desc` varchar(5000) COLLATE utf32_unicode_ci NOT NULL COMMENT 'vd : LÀM VIỆC HIỆU QUẢ, GIẢI TRÍ THẢ GA',
  `status` int(11) NOT NULL COMMENT 'mois hay cu',
  `model` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `chip` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `ram` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `card` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `drive` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `display` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `connect` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `vantay` int(11) DEFAULT NULL,
  `operation` varchar(200) COLLATE utf32_unicode_ci DEFAULT NULL,
  `pin` int(5) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `size` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `discount` int(5) DEFAULT 0,
  `selled` int(10) DEFAULT 0,
  `time_add` date DEFAULT '2020-09-12',
  `quantity_product` int(11) DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `brand_id`, `keyword`, `short_desc`, `status`, `model`, `chip`, `ram`, `card`, `drive`, `display`, `connect`, `vantay`, `operation`, `pin`, `weight`, `size`, `discount`, `selled`, `time_add`, `quantity_product`) VALUES
(55, 'THE FIRST WAVE', 150000, 16, 'flannel', '<br>THE FIRST WAVE</br>\r\n\r\n<br>Tình trạng: 9/10</br>\r\n\r\n<br>Size: XL</br>\r\n\r\n<br>Giá: 150.000 đ (Còn)</br>', 1, NULL, 'vải', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'XL', 0, 0, '2020-09-12', 1),
(58, 'áo blazer xám', 500000, 16, 'ao blazer', '🟤 New Arrival BST Blazer ft Bagyy 🟤\r\n🔛 Chúng tớ nhận cả thiết kế theo số đo nên các cậu yên tâm về size\r\n🔛 Mua rời quần và áo đều được nha các cậu\r\n🔛 Các cậu diện đi chơi , đi làm , sự kiện ... thì hết ý luôn \r\n🔛 Chất liệu vải kaki và vải thô cao cấp được chúng tớ lựa chọn rất kĩ , mặc cực kì thoải \r\nmái\r\n————————\r\n“ Tìm ở đâu vừa chất lượng mà lại hợp túi tiền?“\r\n🔺Tại đây chúng tôi có :\r\nBlazer button\r\nBlazer double breasted\r\n🔺Size : M L XL XXL ( Size M từ 45-50kg , Size L từ 50-60kg, size XL từ 60-80kg)\r\n🔺 chất lượng thì trên cả tuyệt vời.\r\n🔺 Ship Cod Toàn quốc.\r\n----------\r\n\"Ở đây chúng tôi có mọi thứ bạn cần \" \r\n(Every thing you need is right here)\r\n___________________________\r\n📷 Địa chỉ : Cà phê 1986 số 57/28 Lê Đức Thọ, p7, q Gò Vấp, HCM\r\n📷 Hotline : 0842548001', 1, NULL, 'vải', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M,L,XL', 20, 0, '2020-09-12', 10),
(59, 'áo blazer đen', 300000, 15, 'ao blazer', '🟤 New Arrival BST Blazer ft Bagyy 🟤\r\n🔛 Chúng tớ nhận cả thiết kế theo số đo nên các cậu yên tâm về size\r\n🔛 Mua rời quần và áo đều được nha các cậu\r\n🔛 Các cậu diện đi chơi , đi làm , sự kiện ... thì hết ý luôn \r\n🔛 Chất liệu vải kaki và vải thô cao cấp được chúng tớ lựa chọn rất kĩ , mặc cực kì thoải mái\r\n————————\r\n“ Tìm ở đâu vừa chất lượng mà lại hợp túi tiền?“\r\n🔺Tại đây chúng tôi có :\r\nBlazer button\r\nBlazer double breasted\r\n🔺Size : M L XL XXL ( Size M từ 45-50kg , Size L từ 50-60kg, size XL từ 60-80kg)\r\n🔺 chất lượng thì trên cả tuyệt vời.\r\n🔺 Ship Cod Toàn quốc.\r\n----------\r\n\"Ở đây chúng tôi có mọi thứ bạn cần \" \r\n(Every thing you need is right here)\r\n___________________________\r\n📷 Địa chỉ : Cà phê 1986 số 57/28 Lê Đức Thọ, p7, q Gò Vấp, HCM\r\n📷 Hotline : 0842548001', 1, NULL, 'vải', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M,L,XL', 10, 0, '2020-09-12', 10),
(60, 'Áo blazer trắng', 500000, 16, 'blazer', '🟤 New Arrival BST Blazer ft Bagyy 🟤\r\n🔛 Chúng tớ nhận cả thiết kế theo số đo nên các cậu yên tâm về size\r\n🔛 Mua rời quần và áo đều được nha các cậu\r\n🔛 Các cậu diện đi chơi , đi làm , sự kiện ... thì hết ý luôn \r\n🔛 Chất liệu vải kaki và vải thô cao cấp được chúng tớ lựa chọn rất kĩ , mặc cực kì thoải \r\nmái\r\n————————\r\n“ Tìm ở đâu vừa chất lượng mà lại hợp túi tiền?“\r\n🔺Tại đây chúng tôi có :\r\nBlazer button\r\nBlazer double breasted\r\n🔺Size : M L XL XXL ( Size M từ 45-50kg , Size L từ 50-60kg, size XL từ 60-80kg)\r\n🔺 chất lượng thì trên cả tuyệt vời.\r\n🔺 Ship Cod Toàn quốc.\r\n----------\r\n\"Ở đây chúng tôi có mọi thứ bạn cần \" \r\n(Every thing you need is right here)\r\n___________________________\r\n📷 Địa chỉ : Cà phê 1986 số 57/28 Lê Đức Thọ, p7, q Gò Vấp, HCM\r\n📷 Hotline : 0842548001', 1, NULL, 'vải', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M,L,XL', 10, 0, '2020-09-12', 10),
(62, 'Quần Nike co dãn loại 1', 100000, 9, 'quan nike, nike, quan the thao, short', 'Chất liệu: 100% polyester\r\nMade in China\r\nSự Mềm Mại Và Uyển Chuyển\r\n\r\nQuần short Nike Flex có chất liệu vải dệt và tăng cường khả năng thoáng khí ở những khu \r\nvực nhiều mồ hôi. Một lớp lót mềm mại cung cấp sự hỗ trợ an toàn khi bạn cần và giúp bạn \r\nluôn thông thoáng khi di chuyển. Sản phẩm này được làm với ít nhất 75% sợi polyester tái \r\nchế.\r\n\r\nVải dệt nhẹ tạo cảm giác mềm mại và mịn màng trên da của bạn.\r\nDây thắt lưng hẹp được cập nhật giúp hỗ trợ không bị phân tâm khi tập luyện.\r\nCông nghệ Dri-FIT giúp bạn luôn khô ráo và thoải mái.\r\n\r\n', 1, NULL, 'polyster, ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'M,L,XL,XXL', 0, 0, '2020-09-12', 1),
(63, 'Áo thun polo An Phước', 599000, 17, 'ao thun, An phuoc, polo', 'Thông tin sản phẩm : Áo thun ngắn tay kiểu dáng polo sang trọng. Hàng chính hãng của \r\nAn Phước mới 100% do được tặng nên shop pass lại 1/2 giá gốc.\r\nTình trạng : Mới nguyên seal 10/10\r\nMã sản phẩm :  20-04/13 TN-AP\r\nChất liệu : 100% Polyester\r\nSize : L\r\nY.O.P : 2020\r\nMĐ đường may : 4.5 mũi / 1cm\r\nTC số : 08/2002 Cty AP\r\nGiá gốc : 915.000 VND\r\nGiá sale : 599k\r\n\r\n----------\r\nĐịa chỉ : 𝗖𝗮̀ 𝗽𝗵𝗲̂ 𝟭𝟵𝟴𝟲 𝘀𝗼̂́ 𝟱𝟳/𝟮𝟴 𝗟𝗲̂ Đ𝘂̛́𝗰 𝗧𝗵𝗼̣, 𝗽𝟳, 𝗾 𝗚𝗼̀ 𝗩𝗮̂́𝗽, 𝗛𝗖𝗠\r\nHotline : 0899928865\r\n#𝐂𝐔𝐀𝐇𝐀𝐍𝐆𝐁𝐈𝐀𝐍 #𝐅𝐋𝐀𝐍𝐍𝐄𝐋𝐒', 1, NULL, '100% polyster', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'L', 0, 0, '2020-09-12', 5),
(64, 'Đầm dáng xòe hoa nổi cực đẹp 3D', 250000, 11, 'dam, vay', 'Chất vải chéo thái, co giãn nhẹ, rất mềm mại và mát. Đầm vừa sang và chỉn chu và tùy hoàn \r\ncảnh như đi tiệc nhẹ, đi làm đi chơi nàng có thể mặc được. \r\n\r\n---------------------------------------\r\nLưu ý: \r\n+ Bảng size chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể và chất liệu vải khác \r\nnhau sẽ có sự chênh lệch nhất định.\r\n+ Màu sắc vải/ sản phẩm có thể sẽ chênh lệch 2-5% so với thực tế, do ảnh hưởng về độ \r\nlệch màu của ánh sáng khi chụp ảnh, cũng như các màn hình điện thoại, laptop có độ phân \r\ngiải màu sắc khác nhau.\r\n\r\n---------------------------------------\r\n\r\n➖ 💎 QUY ĐỊNH ĐỔI HÀNG \r\n- Đổi size cùng mã sản phẩm hoặc sản phẩm đồng giá.\r\n - Sản phẩm đổi có giá thấp hơn, shop không hoàn lại tiền. \r\n- Sản phẩm đổi có giá trị lớn hơn, khách bù chênh lệch. \r\n🔰 Điều kiện được đổi hàng\r\n (*) - Còn nguyên tem giá & nhãn mác. \r\n- Còn nguyên hoá đơn mua hàng.\r\n - Chưa qua giặt tẩy hoặc sử dụng.\r\n - Chưa qua chỉnh sửa từ phía khách hàng.\r\n - Thông báo trong vòng 3 ngày.\r\n. 🔰 Trường hợp được đổi hàng: \r\n- Hàng bị lỗi do nhà sản xuất và thỏa điều kiện được đổi hàng (*).\r\n 🔰 Trường hợp KHÔNG được đổi hàng:\r\n - Đổi ý, không thích nữa, mặc không hợp… - Trả lại hàng. \r\n- Hư hỏng do phía khách hàng gây ra. \r\n- Các trường hợp KHÔNG thỏa điều kiện được đổi hàng\r\n• Sản phẩm mua trong chương trình khuyến mại giảm giá từ 50% trở lên\r\n• Sản phẩm phụ kiện: Áo lót, quần lót, áo nửa người, áo quây, quần tất, quần gen..\r\n• Sản phẩm đã bị thay đổi thiết kế so với thiết kế ban đầu.	\r\n\r\n----------\r\n\"Ở đây chúng tôi có mọi thứ bạn cần \" \r\n(Every thing you need is right here)\r\n___________________________\r\n📷 Địa chỉ : Cà phê 1986 số 57/28 Lê Đức Thọ, p7, q Gò Vấp, HCM\r\n📷 Hotline : 0842548001', 1, NULL, 'vải chéo thái', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S,M', 0, 0, '2020-09-12', 2),
(65, 'Đầm Dáng Xòe Cổ Sơ Mi', 250000, 11, 'đầm sơ mi, váy', 'Chất vải lụa hàn ,mặc rất mềm mại và mát mẻ. Đầm vừa sang và chỉn chu và tùy hoàn cảnh \r\nnhư đi tiệc nhẹ, đi làm đi chơi nàng có thể mặc được. \r\n\r\n---------------------------------------\r\nLưu ý: \r\n+ Bảng size chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể và chất liệu vải khác \r\nnhau sẽ có sự chênh lệch nhất định.\r\n+ Màu sắc vải/ sản phẩm có thể sẽ chênh lệch 2-5% so với thực tế, do ảnh hưởng về độ \r\nlệch màu của ánh sáng khi chụp ảnh, cũng như các màn hình điện thoại, laptop có độ phân \r\ngiải màu sắc khác nhau.\r\n\r\n---------------------------------------\r\n\r\n➖ 💎 QUY ĐỊNH ĐỔI HÀNG \r\n- Đổi size cùng mã sản phẩm hoặc sản phẩm đồng giá.\r\n - Sản phẩm đổi có giá thấp hơn, shop không hoàn lại tiền. \r\n- Sản phẩm đổi có giá trị lớn hơn, khách bù chênh lệch. \r\n🔰 Điều kiện được đổi hàng\r\n (*) - Còn nguyên tem giá & nhãn mác. \r\n- Còn nguyên hoá đơn mua hàng.\r\n - Chưa qua giặt tẩy hoặc sử dụng.\r\n - Chưa qua chỉnh sửa từ phía khách hàng.\r\n - Thông báo trong vòng 3 ngày.\r\n. 🔰 Trường hợp được đổi hàng: \r\n- Hàng bị lỗi do nhà sản xuất và thỏa điều kiện được đổi hàng (*).\r\n 🔰 Trường hợp KHÔNG được đổi hàng:\r\n - Đổi ý, không thích nữa, mặc không hợp… - Trả lại hàng. \r\n- Hư hỏng do phía khách hàng gây ra. \r\n- Các trường hợp KHÔNG thỏa điều kiện được đổi hàng\r\n• Sản phẩm mua trong chương trình khuyến mại giảm giá từ 50% trở lên\r\n• Sản phẩm phụ kiện: Áo lót, quần lót, áo nửa người, áo quây, quần tất, quần gen..\r\n• Sản phẩm đã bị thay đổi thiết kế so với thiết kế ban đầu.	\r\n\r\n----------\r\n\"Ở đây chúng tôi có mọi thứ bạn cần \" \r\n(Every thing you need is right here)\r\n___________________________\r\n📷 Địa chỉ : Cà phê 1986 số 57/28 Lê Đức Thọ, p7, q Gò Vấp, HCM\r\n📷 Hotline : 0842548001', 1, NULL, 'vải lụa hàn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S,M', 0, 0, '2020-09-12', 2),
(66, 'Nón Lá Quý Tộc', 150981000000, 16, 'nón lá, nón, mũ rơm, mũ', 'Thời gian giao hàng dự kiến cho sản phẩm này là từ 7-9 ngày\r\n \r\n Thông tin chi tiết: \r\n  Chất liệu: Lúa mạch\r\n  Màu sắc: Màu be, màu rơm tự nhiên\r\n  Kích thước: Chu vi mũ: 56-58cm / 22-22.83inch, vành mũ: 25cm / 9,84 inch.\r\n  Dành cho: Nữ\r\n  Mùa phù hợp: Mùa xuân, mùa hè\r\n  Các dịp phù hợp: Hàng ngày, ra ngoài, bãi biển, kỳ nghỉ hè, hồ bơi, chuyến đi, kỳ nghỉ, đi \r\nchơi, mua sắm, chụp ảnh, trình diễn thời trang, v.v.\r\n  Gói hàng bao gồm: 1 * Mũ rơm\r\n  \r\n  Lưu ý:\r\n  Vui lòng cho phép sai số 0.2cm do đo lường thủ công.\r\n  Do hiệu ứng ánh sáng màn hình, màu sắc thực tế của sản phẩm thật có thể có đôi chút \r\nchênh lệch.\r\n  Giữ khô, không rửa với nước, có thể sử dụng một miếng vải ẩm sạch để lau bề mặt và sau \r\nđó phơi khô.\r\n  Hy vọng bạn mua sắm vui vẻ!', 1, NULL, 'lá, rơm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Freesize', 0, 0, '2020-09-12', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_orders`
--

CREATE TABLE `products_orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL COMMENT 'quntity of product'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_orders`
--

INSERT INTO `products_orders` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(24, 3, 11, 10),
(25, 4, 11, 1),
(26, 8, 12, 1),
(27, 12, 13, 1),
(28, 7, 13, 1),
(29, 11, 14, 1),
(30, 19, 15, 1),
(31, 19, 16, 1),
(32, 21, 17, 1),
(33, 19, 18, 2),
(34, 19, 19, 2),
(35, 19, 20, 1),
(36, 19, 21, 1),
(37, 19, 22, 1),
(38, 19, 23, 1),
(39, 19, 24, 1),
(40, 50, 25, 1),
(41, 19, 25, 1),
(42, 19, 26, 1),
(43, 19, 27, 1),
(44, 20, 28, 1),
(45, 20, 29, 1),
(46, 34, 30, 1),
(47, 53, 31, 1),
(48, 34, 33, 1),
(49, 19, 34, 1),
(50, 20, 35, 1),
(51, 50, 36, 1),
(52, 50, 37, 1),
(53, 58, 38, 1),
(54, 58, 39, 3),
(55, 59, 40, 1),
(56, 58, 41, 1),
(57, 55, 42, 1),
(58, 62, 43, 1),
(59, 58, 44, 1),
(60, 60, 44, 1),
(61, 62, 44, 2),
(62, 60, 45, 1),
(63, 63, 46, 1),
(64, 58, 47, 1),
(65, 59, 48, 1),
(66, 63, 48, 1),
(67, 58, 49, 5),
(68, 63, 49, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `tittle` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `img` varchar(300) COLLATE utf32_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `tittle`, `img`, `product_id`) VALUES
(6, 'Mystery Store', '159876958715877204844838_pastedimage0.jpg', 1),
(8, 'Mystery Store', '1598773075118237930_163946378664589_7628247084041805241_o.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf32_unicode_ci NOT NULL,
  `address` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `city` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `dob` varchar(300) COLLATE utf32_unicode_ci DEFAULT '2020-04-25',
  `phone` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `full_name` varchar(300) COLLATE utf32_unicode_ci DEFAULT 'unknow',
  `email` varchar(200) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `address`, `city`, `dob`, `phone`, `full_name`, `email`) VALUES
(12, 'guests', 'd41d8cd98f00b204e9800998ecf8427e', 'khách', 'khách', 'khách', '032151', 'khách', 'khách'),
(13, 'cam', 'c4ca4238a0b923820dcc509a6f75849b', 'AS, CC,CV', 'HCM', '10/11/1997', '0382155564', 'cam van chuc', 'cam@gmail.com'),
(14, 'guest', '202cb962ac59075b964b07152d234b70', 'vietnam', 'vietnam', '2020-09-02', '1', 'khach hang', 'kieunam011@gmail.com'),
(15, 'KieuNam', 'c4ca4238a0b923820dcc509a6f75849b', 'Can Tho University', 'Can Tho', '2000-07-07', '0842548001', 'KieuNam', 'kieunam015@gmail.com'),
(16, 'phuc', '2d7acadf10224ffdabeab505970a8934', '', '', '', '', 'Pham Trong Phuc', 'overnice.phuc@gmail.com'),
(17, 'test', 'e10adc3949ba59abbe56e057f20f883e', '1', '', '', '', 'kieunam', 'test@gmail.com'),
(18, 'new', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', '2000-10-01', '1', '1', '1@gmail.com'),
(19, '2', 'c81e728d9d4c2f636f067f89cc14862c', '2', '2', '22222-02-03', '2', '2', '2@gmail.com'),
(20, 'levana', '202cb962ac59075b964b07152d234b70', 'quan 1', 'hcm', '1989-01-02', '0123456789', 'le van a', 'levana@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `cate_product`
--
ALTER TABLE `cate_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `detail`
--
ALTER TABLE `detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT cho bảng `ordered`
--
ALTER TABLE `ordered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
