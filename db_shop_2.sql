-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2023 at 11:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `album_image`
--

CREATE TABLE `album_image` (
  `id` int(11) NOT NULL,
  `ten_anh` varchar(50) NOT NULL,
  `san_pham_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album_image`
--

INSERT INTO `album_image` (`id`, `ten_anh`, `san_pham_id`) VALUES
(4, '[\"two.png\",\"three.png\"]', 34),
(5, '[\"gallery3.jpg\",\"gallery2.jpg\",\"gallery1.jpg\"]', 35),
(6, '[\"gallery3.jpg\",\"gallery2.jpg\",\"gallery1.jpg\"]', 36);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `san_pham_id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `reply_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`, `san_pham_id`, `khachhang_id`, `status`, `reply_id`, `created_at`, `updated_at`) VALUES
(247, 'Comment bình luận mới', 36, 9, 1, 0, '2023-05-11 00:33:19', '2023-08-07 22:54:19'),
(302, '5 công thức nhẹ mát giúp nàng công sở mặc đẹp', 36, 9, 1, 0, '2023-05-15 01:41:27', '2023-08-07 22:54:22'),
(330, 'ok', 36, 9, 1, 302, NULL, '2023-08-07 22:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `danh_gia_sp`
--

CREATE TABLE `danh_gia_sp` (
  `san_pham_id` int(11) NOT NULL,
  `khach_hang_id` int(11) NOT NULL,
  `rating_star` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danh_gia_sp`
--

INSERT INTO `danh_gia_sp` (`san_pham_id`, `khach_hang_id`, `rating_star`) VALUES
(34, 9, 3.5),
(34, 10, 1.6),
(36, 10, 1.4),
(53, 10, 4.6);

-- --------------------------------------------------------

--
-- Table structure for table `dat_hang`
--

CREATE TABLE `dat_hang` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tong_so_sp` int(100) NOT NULL,
  `thanh_tien` double NOT NULL,
  `khach_hang_id` int(11) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dat_hang`
--

INSERT INTO `dat_hang` (`id`, `name`, `email`, `phone`, `address`, `tong_so_sp`, `thanh_tien`, `khach_hang_id`, `token`, `status`, `created_at`, `updated_at`) VALUES
(37, 'admin', 'info.haianhh@gmail.com', '123456', 'Nguyễn Chí Thanh', 13, 13000, 9, '5JO85HWGKSQICJCIUWH4', 1, '2023-03-31 12:27:32', '2023-03-31 12:28:07'),
(38, 'Nguyễn Chí Thanh', 'info.haianhh@gmail.com', '9876543', 'Trần Nhân Tông', 2, 3290000, 10, 'SJJIBYB1TRFVEJCSEG4O', 1, '2023-03-31 12:32:15', '2023-03-31 12:32:56'),
(39, 'Nguyễn Chí Thanh', 'hoangkhanhvan2@gmail.com', '123456', 'Nguyễn Chí Thanh', 2, 3290000, 10, 'DYDOLERYATP8KLZDJ6LU', 1, '2023-04-01 14:28:25', '2023-04-01 14:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Khách hàng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'admin', '2022-11-22 05:33:47', '2022-11-22 05:33:47'),
(10, 'edit', '2022-11-22 05:33:58', '2022-11-22 05:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(9, 'admin', '$2y$10$m3otT3vTxAK/AmKH0b9TPe4i6DNKVY2uTqkXERT6/1PmrB6XOqNbm', NULL, NULL),
(10, 'Nguyễn Chí Thanh', '$2y$10$y.dVXQPiGJrWMD.OUlH9WuFkimJT2QeNjBrUpHBEDhvWa5WT0vogW', NULL, NULL),
(11, 'Hoàng Hoa Thám', '$2y$10$ThPE06l9lBkfdfaCRJHwfu4Cou32kII9XN2BlZqPDIbCqkfoct2N6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_chitiet`
--

CREATE TABLE `order_chitiet` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `dat_hang_id` int(11) NOT NULL,
  `san_pham_id` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_chitiet`
--

INSERT INTO `order_chitiet` (`id`, `name`, `dat_hang_id`, `san_pham_id`, `don_gia`, `quantity`, `created_at`, `updated_at`) VALUES
(74, 'Sofa da Cascadia', 37, 34, 1000, 6, '2023-03-31 12:27:33', '2023-03-31 12:27:33'),
(75, 'Sofa da Italia Impressive', 37, 35, 1000, 7, '2023-03-31 12:27:33', '2023-03-31 12:27:33'),
(76, 'Sofa vải Alassa', 38, 36, 3220000, 1, '2023-03-31 12:32:15', '2023-03-31 12:32:15'),
(77, 'Sofa vải Jessica góc', 38, 37, 70000, 1, '2023-03-31 12:32:15', '2023-03-31 12:32:15'),
(78, 'Sofa vải Alassa', 39, 36, 3220000, 1, '2023-04-01 14:28:25', '2023-04-01 14:28:25'),
(79, 'Sofa vải Jessica góc', 39, 37, 70000, 1, '2023-04-01 14:28:26', '2023-04-01 14:28:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` text NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `route`, `created_at`, `updated_at`) VALUES
(1, 'admin', '[\"admin.userList\",\"admin.userAdd\",\"admin.userStore\",\"admin.userEdit\",\"admin.userUpdate\",\"admin.userDelete\",\"admin.delete\",\"admin.thanhvienList\",\"admin.thanhvienAdd\",\"admin.thanhvienPost\",\"admin.thanhvienEdit\",\"admin.thanhvien_update\",\"admin.thanhvien_delete\",\"admin.listKhachhang\",\"admin.khachhangQuyen\",\"admin.updateQuyen\",\"admin.listRole\",\"admin.addRole\",\"admin.themRole\",\"admin.editRole\",\"admin.upRole\",\"admin.menuList\",\"admin.menuAdd\",\"admin.menu_store\",\"admin.menuEdit\",\"admin.menuUpdate\",\"admin.menuDelete\",\"admin.sanphamList\",\"admin.sanphamAdd\",\"admin.sanphamStore\",\"admin.sanphamEdit\",\"admin.sanphamUpload\",\"admin.sanphamDelete\",\"admin.sanphamFile\"]', '2023-08-09', '2023-08-09'),
(2, 'Biên tập viên', '[\"admin.menuList\",\"admin.menuAdd\",\"admin.menu_store\",\"admin.menuEdit\",\"admin.menuUpdate\",\"admin.menuDelete\",\"admin.sanphamList\",\"admin.sanphamAdd\",\"admin.sanphamStore\",\"admin.sanphamEdit\",\"admin.sanphamUpload\",\"admin.sanphamDelete\",\"admin.sanphamFile\"]', '2023-08-09', '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `role_khachhang`
--

CREATE TABLE `role_khachhang` (
  `id` int(11) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_khachhang`
--

INSERT INTO `role_khachhang` (`id`, `khachhang_id`, `roles_id`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '2023-08-09', '2023-08-09'),
(2, 10, 2, '2023-08-09', '2023-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) NOT NULL,
  `hinh_minh_hoa` varchar(50) NOT NULL,
  `album_anh` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `gia` float NOT NULL,
  `gia_khuyen_mai` float NOT NULL,
  `mo_ta_ngan_gon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta_chi_tiet` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `the_loai_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `name`, `code`, `hinh_minh_hoa`, `album_anh`, `status`, `gia`, `gia_khuyen_mai`, `mo_ta_ngan_gon`, `mo_ta_chi_tiet`, `the_loai_id`, `created_at`, `updated_at`) VALUES
(34, 'Sofa da Cascadia', 'Sofa-da-Cascadia', 'gallery2.jpg', '[\"three.png\",\"one.png\",\"iframe2.png\"]', 0, 1200, 1000, 'Sofa da Cascadia, mẫu sofa sang trọng chuẩn phong cách châu Âu.', '<p>Sofa da Cascadia, mẫu sofa sang trọng chuẩn&nbsp;phong c&aacute;ch ch&acirc;u &Acirc;u.Sofa da Cascadia, mẫu sofa sang trọng chuẩn&nbsp;phong c&aacute;ch ch&acirc;u &Acirc;u.</p>', 48, NULL, NULL),
(35, 'Sofa da Italia Impressive', 'Sofa-da-Italia-Impressive', 'gallery3.jpg', '[\"gallery3.jpg\",\"gallery2.jpg\",\"gallery1.jpg\"]', 1, 1200, 1000, 'Mã sản phẩm : 72608052\r\nKích thước : 300x148x88\r\nXuất xứ : Italia\r\nChất liệu : Da thật top grain 100%, khung gỗ\r\nBảo hành : Bảo hành 10 năm cho khung, 2 năm cho phần da. Bảo dưỡng miễn phí 6 tháng/lần\r\nTình trạng : Còn hàng', '<ul>\r\n	<li>M&atilde; sản phẩm :&nbsp;72608052</li>\r\n	<li>K&iacute;ch thước :&nbsp;300x148x88</li>\r\n	<li>Xuất xứ :&nbsp;Italia</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 48, NULL, NULL),
(36, 'Sofa vải Alassa', 'Sofa-vai-Alassa', 'gallery1.jpg', '[\"gallery3.jpg\",\"gallery2.jpg\",\"gallery1.jpg\"]', 1, 34620000, 3220000, 'Kích thước(cm) 280x166x91 \r\nChất liệu Khung gỗ, nhồi đệm kết hợp lò xo, bọc vải, chân kim loại \r\nBảo hành Bảo hành 10 năm cho khung, 1 năm cho các phần còn lại \r\nTháo vỏ Không', '<p>K&iacute;ch thước(cm) 280x166x91&nbsp;<br />\r\nChất liệu Khung gỗ, nhồi đệm kết hợp l&ograve; xo, bọc vải, ch&acirc;n kim loại&nbsp;<br />\r\nBảo h&agrave;nh Bảo h&agrave;nh 10 năm cho khung, 1 năm cho c&aacute;c phần c&ograve;n lại&nbsp;<br />\r\nTh&aacute;o vỏ Kh&ocirc;ng</p>', 47, NULL, NULL),
(37, 'Sofa vải Jessica góc', 'Sofa-vai-Jessica-goc', 'girl3.jpg', '[\"girl3.jpg\",\"girl2.jpg\",\"gallery4.jpg\",\"gallery3.jpg\"]', 0, 100000, 70000, 'Kích thước(cm) 259x148x70\r\nChất liệu Khung gỗ, nhồi đệm kết hợp lò xo, bọc vải, chân kim loại\r\nBảo hành Bảo hành 10 năm cho khung, 1 năm cho các phần còn lại\r\nTháo vỏ Có', '<p><em>Dường như việc chọn mua một bộ&nbsp;Sofa đẹp&nbsp;kh&ocirc;ng phải l&agrave; một c&ocirc;ng việc dễ d&agrave;ng khi phong c&aacute;ch, kiểu d&aacute;ng, m&agrave;u sắc, gi&aacute; cả v&agrave; chất lượng của&nbsp;Sofa rất phong ph&uacute; v&agrave; đa dạng.&nbsp;Chắc chắn sẽ c&oacute; rất nhiều băn khoăn, nhiều c&acirc;u hỏi được đặt ra như: t&igrave;m mua Sofa vải ở đ&acirc;u? Sofa vải thế n&agrave;o l&agrave; chất lượng tốt?&hellip;&nbsp;Hẳn kh&ocirc;ng &iacute;t&nbsp;kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một địa chỉ đ&aacute;ng tin cậy để chọn cho m&igrave;nh một bộ Sofa ưng &yacute;. V&agrave; sau đ&acirc;y Nh&agrave; đẹp sẽ chia sẻ với c&aacute;c bạn một số kinh nghiệm khi bạn cần cho m&igrave;nh một bộ Sofa đ&uacute;ng như mong muốn.</em></p>\r\n\r\n<p>D&ograve;ng sản phẩm Sofa bọc vải của Nội Thất Nh&agrave; Đẹp được đặt sản xuất theo y&ecirc;u cầu, ti&ecirc;u chuẩn ri&ecirc;ng của Nh&agrave; Đẹp, nhằm c&oacute; được những sản phẩm chất lượng cao, đ&aacute;p ứng được nhu cầu v&agrave; thị hiếu của kh&aacute;ch h&agrave;ng. Khi kh&aacute;ch h&agrave;ng đến với Nội thất Nh&agrave; Đẹp, kh&aacute;ch h&agrave;ng ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m để lựa chọn những bộ Sofa vải của Nh&agrave; Đẹp v&igrave; những l&yacute; do sau:</p>\r\n\r\n<p>Khung của Sofa được l&agrave;m bằng gỗ thịt chắc chắn, tuổi của gỗ l&agrave; tr&ecirc;n 10 năm. Ho&agrave;n to&agrave;n kh&ocirc;ng sử dụng gỗ tạp, gỗ non như những sản phẩm gia c&ocirc;ng, h&agrave;ng chợ, h&agrave;ng sản xuất nhỏ lẻ đơn chiếc tại c&aacute;c c&ocirc;ng ty hoặc xưởng gỗ nhỏ.</p>\r\n\r\n<p>Phần vải bọc Sofa được thiết kế để kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng th&aacute;o ra để giặt vệ sinh. Hiện nay tr&ecirc;n thị trường kh&ocirc;ng c&oacute; nhiều c&ocirc;ng ty l&agrave;m được theo y&ecirc;u cầu như vậy. Trong qu&aacute; tr&igrave;nh sử dụng, nếu kh&aacute;ch qu&aacute; bận rộn v&agrave; kh&ocirc;ng c&oacute; thời gian để vệ sinh bộ Sofa của m&igrave;nh, Qu&yacute; kh&aacute;ch ho&agrave;n to&agrave;n c&oacute; thể li&ecirc;n hệ với Nh&agrave; Đẹp để được hỗ trợ với mức ph&iacute; rất thấp.</p>\r\n\r\n<p>Kiểu d&aacute;ng, m&agrave;u sắc của sản phẩm rất sắc n&eacute;t, nổi bật, đơn giản nhưng tinh tế. Ho&agrave;n to&agrave;n kh&aacute;c biệt với những mẫu Sofa sản xuất gia c&ocirc;ng, kiểu d&aacute;ng cục mịch, đơn giản đến mức th&ocirc; sơ.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 47, NULL, NULL),
(45, 'Giường ngủ 1.8x2mt', 'Giuong-ngu-1.8x2mt', 'girl2.jpg', '[\"girl3.jpg\"]', 0, 1200, 1000, 'Mã SP: 83223010\r\n10.070.000 đ\r\nKích thước(cm) 213x186x87 Chất liệu Gỗ công nghiệp, phủ melamin Bảo hành Bảo hành 2 năm', '<p><em>Xu hướng nội thất hiện đại ng&agrave;y c&agrave;ng ch&uacute; &yacute; hơn đến nhu cầu của c&aacute; nh&acirc;n. Ch&iacute;nh v&igrave; thế, những kh&ocirc;ng gian mang đậm c&aacute;c t&iacute;nh chất ri&ecirc;ng tư như ph&ograve;ng ngủ ng&agrave;y c&agrave;ng được ch&uacute; &yacute;. Một trong c&aacute;c cấu th&agrave;nh quan trọng bậc nhất của nội thất ph&ograve;ng ngủ ch&iacute;nh l&agrave; những chiếc giường ngủ</em></p>\r\n\r\n<p>D&ugrave; muốn hay kh&ocirc;ng muốn, bạn vẫn phải thừa nhận rằng phần lớn thời gian của bản th&acirc;n khi ở nh&agrave; l&agrave; ở trong ph&ograve;ng ngủ, &iacute;t nhất cũng l&agrave; thời gian ban đ&ecirc;m khi ngủ. Vậy n&ecirc;n c&oacute; cho m&igrave;nh một kh&ocirc;ng gian để nghỉ ngơi thư gi&atilde;n ho&agrave;n hảo tại ph&ograve;ng ngủ sau một ng&agrave;y d&agrave;i lao động, học tập cần rất nhiều sự đầu tư trong việc t&igrave;m v&agrave; chọn sản phẩm ph&ugrave; hợp với bản th&acirc;n. Đặc biệt l&agrave; với giường ngủ. C&oacute; thể coi giường ngủ ch&iacute;nh l&agrave; tr&aacute;i tim của nội thất ph&ograve;ng ngủ khi n&oacute; kh&ocirc;ng chỉ vật dụng chiếm nhiều diện t&iacute;ch nhất trong ph&ograve;ng ngủ m&agrave; c&ograve;n l&agrave; thứ bạn sử dụng thường xuy&ecirc;n bậc nhất. V&agrave; nếu bạn đang c&ograve;n c&acirc;n nhắc, đắn đo kh&ocirc;ng biết n&ecirc;n chọn giường ngủ như n&agrave;o th&igrave; h&atilde;y tới với Nh&agrave; Đẹp. Nh&agrave; Đẹp sẽ gi&uacute;p bạn chọn lựa sản phẩm giường ngủ ưng &yacute; bởi giường ngủ tại Nh&agrave; Đẹp:</p>', 37, NULL, NULL),
(52, 'Tủ áo cửa lùa Adora', 'Tu-ao-cua-lua-Adora', 'gallery1.jpg', '[\"one.png\",\"iframe2.png\",\"iframe1.png\"]', 0, 1200, 1000, 'ã SP: 71304003\r\n19.280.000 đ\r\nKích thước(cm) 160x100x76 - 240x100x76 Chất liệu Khung kim loại, kết hợp gỗ. Mặt kính cường lực Bảo hành Bảo hành 1 năm', '<h2>M&atilde; SP: 71304003</h2>\r\n\r\n<p>19.280.000 đ</p>\r\n\r\n<ul>\r\n	<li>K&iacute;ch thước(cm)&nbsp;160x100x76 - 240x100x76</li>\r\n	<li>&nbsp;</li>\r\n	<li>Chất liệu&nbsp;Khung kim loại, kết hợp gỗ. Mặt k&iacute;nh cường lực</li>\r\n	<li>&nbsp;</li>\r\n	<li>Bảo h&agrave;nh&nbsp;Bảo h&agrave;nh 1 năm</li>\r\n	<li>\r\n	<h2>&atilde; SP: 71304003</h2>\r\n	19.280.000 đ</li>\r\n	<li>K&iacute;ch thước(cm)&nbsp;160x100x76 - 240x100x76</li>\r\n	<li>&nbsp;</li>\r\n	<li>Chất liệu&nbsp;Khung kim loại, kết hợp gỗ. Mặt k&iacute;nh cường lực</li>\r\n	<li>&nbsp;</li>\r\n	<li>Bảo h&agrave;nh&nbsp;Bảo h&agrave;nh 1 năm</li>\r\n</ul>', 28, NULL, NULL),
(53, 'Sofa hàn', 'Sofa-han', 'girl2.jpg', '[\"girl3.jpg\",\"girl2.jpg\",\"gallery4.jpg\"]', 1, 1234, 1000, 'abc', '<p>bdfe</p>', 47, NULL, NULL),
(54, 'Sofa Tây Ban Nha', 'Sofa-Tay-Ban-Nha', 'girl3.jpg', '[\"one.png\",\"iframe2.png\",\"iframe1.png\"]', 1, 2345, 2000, 'Tây Ban Nha', '<p>T&acirc;y Ban Nha&nbsp;</p>', 47, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(50) NOT NULL,
  `id_cha` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `name`, `code`, `id_cha`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Phòng khách', 'phong-khach', 0, '2022-11-21 09:22:56', '2022-11-21 09:22:56', 1),
(28, 'Phòng ăn', 'Phong-an', 0, NULL, NULL, 1),
(29, 'Phòng ngủ', 'phong-ngu', 0, NULL, NULL, 1),
(37, 'Phòng ngủ người lớn', 'phong-ngu-nguoi-lon', 29, NULL, NULL, 1),
(47, 'Sofa vải', 'Sofa-vai', 1, NULL, NULL, 1),
(48, 'Sofa da', 'Sofa-da', 1, NULL, NULL, 1),
(49, 'Sofa gường', 'Sofa-guong', 1, NULL, NULL, 1),
(50, 'Bàn ăn thông minh mở rộng', 'Ban-an-thong-minh-mo-rong', 28, NULL, NULL, 1),
(51, 'Ghế ăn', 'Ghe-an', 28, NULL, NULL, 1),
(52, 'Trang trí và đa dung', 'Trang-tri-va-da-dung', 0, NULL, NULL, 1),
(53, 'Tượng trang trí', 'Tuong-trang-tri', 52, NULL, NULL, 1),
(54, 'Tranh khung ảnh', 'Tranh-khung-anh', 52, NULL, NULL, 1),
(55, 'blog', 'blog', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `group_id`, `created_at`, `updated_at`, `status`) VALUES
(19, 'Phạm Văn Mách', 'mach@gmail.com', 3, '2022-11-22 05:30:45', '2022-11-22 05:30:45', 0),
(38, 'Tuấn  Trần', 'tran@gmail.com', 3, NULL, NULL, 1),
(39, 'Phạm Công', 'cong@gmail.com', 3, NULL, NULL, 1),
(40, 'admin', 'admin@gmail.com', 9, NULL, NULL, 1),
(41, 'edit', 'edit@gmail.com', 10, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album_image`
--
ALTER TABLE `album_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `san_pham_id` (`san_pham_id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Indexes for table `danh_gia_sp`
--
ALTER TABLE `danh_gia_sp`
  ADD PRIMARY KEY (`san_pham_id`,`khach_hang_id`),
  ADD KEY `san_pham_id` (`san_pham_id`),
  ADD KEY `khach_hang_id` (`khach_hang_id`);

--
-- Indexes for table `dat_hang`
--
ALTER TABLE `dat_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dat_hang_khachhang` (`khach_hang_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_chitiet`
--
ALTER TABLE `order_chitiet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dat_hang_id` (`dat_hang_id`),
  ADD KEY `san_pham_id` (`san_pham_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_khachhang`
--
ALTER TABLE `role_khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachhang_id` (`khachhang_id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `the_loai_id` (`the_loai_id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album_image`
--
ALTER TABLE `album_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `dat_hang`
--
ALTER TABLE `dat_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_chitiet`
--
ALTER TABLE `order_chitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_khachhang`
--
ALTER TABLE `role_khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_image`
--
ALTER TABLE `album_image`
  ADD CONSTRAINT `FK_album_image_San_pham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_comment_khachhang` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `FK_comment_sanPham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_pham` (`id`);

--
-- Constraints for table `danh_gia_sp`
--
ALTER TABLE `danh_gia_sp`
  ADD CONSTRAINT `FK_rating_khachhang` FOREIGN KEY (`khach_hang_id`) REFERENCES `khachhang` (`id`),
  ADD CONSTRAINT `FK_rating_sanpham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_pham` (`id`);

--
-- Constraints for table `dat_hang`
--
ALTER TABLE `dat_hang`
  ADD CONSTRAINT `dat_hang_khachhang` FOREIGN KEY (`khach_hang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_chitiet`
--
ALTER TABLE `order_chitiet`
  ADD CONSTRAINT `order_chi_tiet_san_pham` FOREIGN KEY (`san_pham_id`) REFERENCES `san_pham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_khachhang`
--
ALTER TABLE `role_khachhang`
  ADD CONSTRAINT `FK_roleKhachhang_khachhang` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_roleKhachhang_roles` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FK_sanpham_theloai` FOREIGN KEY (`the_loai_id`) REFERENCES `theloai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_users_groups` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
