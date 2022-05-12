-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 24, 2021 lúc 09:13 AM
-- Phiên bản máy phục vụ: 5.7.34
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `kietvt_lang_final`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_cart`
--

CREATE TABLE `vt_cart` (
  `id` int(11) NOT NULL,
  `menu` int(11) NOT NULL DEFAULT '0',
  `data_parent` int(11) NOT NULL DEFAULT '0',
  `cart` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `count` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `phone` int(11) NOT NULL DEFAULT '0',
  `email` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `price` text COLLATE utf8_unicode_ci,
  `district` text COLLATE utf8_unicode_ci,
  `province` text COLLATE utf8_unicode_ci,
  `user` int(11) NOT NULL DEFAULT '0',
  `session` text COLLATE utf8_unicode_ci,
  `sale_code` text COLLATE utf8_unicode_ci,
  `gmail` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_config`
--

CREATE TABLE `vt_config` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET latin1,
  `group` text CHARACTER SET latin1,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` text CHARACTER SET latin1,
  `file` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_config`
--

INSERT INTO `vt_config` (`id`, `title`, `des`, `name`, `group`, `value`, `type`, `file`) VALUES
(1, 'Hiển thị số điện thoại dưới chân trang', '', 'showPhoneFixed', '', '0', '', 'config'),
(2, 'Giới hạn sản phẩm mỗi trang', '', 'limit', '', '20', 'number', 'config'),
(3, 'Danh mục hình ảnh', '', 'showListImage', '', '', 'img', 'home'),
(4, 'Tự thiết kế template', '', 'customTemplate', 'all', '', '', 'idList'),
(5, 'Chỉ nhập nội dung', '', 'onlyContent', 'only', 'only', '', 'idList'),
(11, 'Có thể thêm danh mục', '', 'showList', '', '', '', 'idList'),
(12, 'Có nhiều cấp danh mục', '', 'multiMenu', '', '1', '', 'idList'),
(13, 'Được chỉnh sửa ảnh danh mục gốc', '', 'showImageMenu', 'all', '', '', 'idList'),
(14, 'Được chỉnh sửa ảnh tất cả danh mục con', '', 'showImage', '', '', '', 'idList'),
(15, 'Chi tiết bài viết có nhiều hình ảnh', '', 'slide', '', '', '', 'idList'),
(16, 'Có thể sắp xếp bài viết', '', 'orderProduct', '', '', '', 'idList'),
(17, 'Field', '', 'listF', '', '', 'add', 'idList'),
(18, 'Nút Check', '', 'listCheck', '', '', 'add', 'idList'),
(19, 'Chi tiết bài viết có thể chia tab', '', 'tab', '', '', '', 'idList'),
(20, 'Html Box Heading', '', 'boxHead', '', '&#60;div class=\"divider-new\"&#62;\r\n    &#60;h4 class=\"h2-responsive\"&#62;', 'codeEditor', 'config'),
(21, 'Html Content Heading', '<i class=\"fa fa-home\"></i> » breadcrumb » breadcrumb » breadcrumb » breadcrumb » breadcrumb » ...', 'contentHead', '', '    &#60;/h4&#62;\r\n&#60;/div&#62;\r\n&#60;section id=\"best-features\"&#62;\r\n &#60;div class=\"row\"&#62;', 'codeEditor', 'config'),
(22, 'Html Content Footer', 'Nội dung (Có thể là danh sách bài viết hoặc bài viết...)', 'contentFooter', '', '    &#60;/div&#62;\r\n&#60;/section&#62;', 'codeEditor', 'config'),
(23, 'Không có giao diện mobile', '', 'notMobile', '', '0', '', 'config'),
(24, 'Chống copy bài viết', '', 'blockCopy', '', '0', '', 'config'),
(25, 'Slide 2', '', 'slide2', '', '', '', 'idList'),
(26, 'Cho phép xắp xếp tab', '', 'sortTab', '', '', '', 'idList');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_contact`
--

CREATE TABLE `vt_contact` (
  `id` int(11) NOT NULL,
  `menu` int(11) NOT NULL DEFAULT '0',
  `time` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `province` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `district` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `vt_contact`
--

INSERT INTO `vt_contact` (`id`, `menu`, `time`, `name`, `phone`, `address`, `email`, `content`, `province`, `district`, `f1`, `f2`, `f3`, `lang`) VALUES
(9, 1006, '01/04/2021 15:46:48', 'test', 'asfaf', '', 'safsaf@gmail.com', 'af', '', '', '362', '0', '', 'vn'),
(8, 990, '01/04/2021 15:39:47', 'tu nguyen', '7867867868', '6456 8787 h jkhjk jn', 'aaa@gmail.com', 'adasd', '04', '043', '', '', '', ''),
(10, 990, NULL, 'áda', '000', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 990, NULL, 'assdsadasda', '11234567899', NULL, 'halo_sunguyen@yahoo.com', 'asdasdafwqrryiyl,hjm', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 990, NULL, 'Percival Schumm', '10751957795', NULL, 'Gerald.Sporer45@gmail.com', 'microchip', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 990, NULL, 'Nguyễn Trần Tiến Đức ', '0835665538', NULL, 'ductran0391@gmail.com', 'Ứng tuyển NVKD', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_counter`
--

CREATE TABLE `vt_counter` (
  `ip_address` varchar(15) CHARACTER SET latin1 NOT NULL,
  `last_visit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_counter`
--

INSERT INTO `vt_counter` (`ip_address`, `last_visit`) VALUES
('::1', '2016-09-09 04:29:29'),
('::1', '2016-09-09 08:41:01'),
('::1', '2016-09-10 04:18:36'),
('::1', '2016-09-10 04:41:25'),
('::1', '2016-09-12 03:46:29'),
('::1', '2016-09-12 04:16:30'),
('::1', '2016-09-15 03:19:19'),
('::1', '2016-09-16 07:07:38'),
('::1', '2016-09-16 07:09:59'),
('::1', '2016-09-16 07:16:08'),
('::1', '2016-09-16 07:29:44'),
('::1', '2016-09-16 07:30:44'),
('::1', '2016-09-16 07:35:00'),
('::1', '2016-09-16 07:36:26'),
('::1', '2016-09-16 07:38:17'),
('::1', '2016-09-16 07:45:45'),
('::1', '2016-09-16 07:47:49'),
('::1', '2016-09-16 07:48:54'),
('::1', '2016-09-16 07:56:40'),
('::1', '2016-09-16 07:59:51'),
('::1', '2016-09-17 01:57:13'),
('::1', '2016-09-17 01:59:55'),
('::1', '2016-09-17 02:00:56'),
('::1', '2016-09-17 02:04:49'),
('::1', '2016-09-17 02:06:04'),
('::1', '2016-09-17 02:07:52'),
('::1', '2016-09-17 02:17:45'),
('::1', '2016-09-17 02:21:02'),
('::1', '2016-09-17 02:22:37'),
('::1', '2016-09-17 02:24:05'),
('::1', '2016-09-17 02:25:26'),
('::1', '2016-09-17 02:27:53'),
('::1', '2016-09-17 02:29:31'),
('::1', '2016-09-17 03:14:58'),
('::1', '2016-09-17 03:16:10'),
('::1', '2016-09-17 03:17:38'),
('::1', '2016-09-17 03:19:36'),
('::1', '2016-09-17 03:20:52'),
('::1', '2016-09-17 03:21:55'),
('::1', '2016-09-17 03:23:05'),
('::1', '2016-09-17 03:24:16'),
('::1', '2016-09-17 03:25:41'),
('::1', '2016-09-17 03:28:08'),
('::1', '2016-09-17 03:29:18'),
('::1', '2016-09-17 03:30:47'),
('::1', '2016-09-17 03:33:27'),
('::1', '2016-09-17 03:35:01'),
('::1', '2016-09-17 03:39:46'),
('::1', '2016-09-17 03:42:06'),
('::1', '2016-09-17 03:45:59'),
('::1', '2016-09-17 03:48:10'),
('::1', '2016-09-17 03:50:27'),
('::1', '2016-09-17 03:53:46'),
('::1', '2016-09-17 03:56:52'),
('::1', '2016-09-19 03:30:59'),
('::1', '2016-09-19 06:01:34'),
('::1', '2016-09-19 06:02:48'),
('::1', '2016-09-19 09:33:12'),
('::1', '2016-09-20 03:51:23'),
('::1', '2016-09-20 08:53:53'),
('::1', '2016-09-20 08:55:24'),
('::1', '2016-09-20 12:32:55'),
('::1', '2016-09-20 12:59:27'),
('::1', '2016-09-20 13:41:07'),
('::1', '2016-09-20 13:54:03'),
('::1', '2016-09-20 14:28:55'),
('::1', '2016-09-20 14:38:01'),
('::1', '2016-09-20 15:09:17'),
('::1', '2016-09-20 15:27:25'),
('::1', '2016-09-20 16:14:52'),
('::1', '2016-09-20 16:21:13'),
('::1', '2016-09-20 16:23:39'),
('::1', '2016-09-20 16:25:14'),
('::1', '2016-09-20 16:27:33'),
('::1', '2016-09-20 16:29:52'),
('::1', '2016-09-20 16:32:16'),
('::1', '2016-09-21 03:07:25'),
('::1', '2016-09-21 04:36:14'),
('::1', '2016-09-21 04:38:06'),
('::1', '2016-09-21 05:35:07'),
('::1', '2016-09-21 06:09:17'),
('::1', '2016-09-21 06:13:06'),
('::1', '2016-09-21 08:25:50'),
('::1', '2016-09-21 08:29:24'),
('::1', '2016-09-21 08:33:46'),
('::1', '2016-09-21 08:35:09'),
('::1', '2016-09-23 04:08:06'),
('::1', '2016-09-23 07:40:38'),
('::1', '2016-09-23 09:02:20'),
('::1', '2016-09-27 04:33:04'),
('::1', '2016-09-28 09:16:10'),
('::1', '2016-09-29 04:26:37'),
('::1', '2016-09-29 05:09:26'),
('::1', '2016-09-29 05:11:13'),
('::1', '2016-09-29 05:13:10'),
('::1', '2016-09-29 05:19:11'),
('::1', '2016-09-29 05:21:05'),
('::1', '2016-09-29 05:22:26'),
('::1', '2016-09-29 05:29:29'),
('::1', '2016-09-29 05:36:17'),
('::1', '2016-09-29 05:37:21'),
('::1', '2016-09-29 05:38:30'),
('::1', '2016-09-29 05:39:50'),
('::1', '2016-09-29 06:03:17'),
('::1', '2016-09-29 06:04:24'),
('::1', '2016-09-29 06:44:18'),
('::1', '2016-09-30 04:37:25'),
('::1', '2016-09-30 04:38:43'),
('::1', '2016-09-30 04:40:31'),
('::1', '2016-09-30 04:41:43'),
('::1', '2016-09-30 04:44:07'),
('::1', '2016-09-30 09:12:09'),
('::1', '2016-09-30 09:15:54'),
('::1', '2016-09-30 09:18:49'),
('::1', '2016-10-04 03:09:14'),
('::1', '2016-10-04 05:07:45'),
('::1', '2016-10-04 05:08:51'),
('::1', '2016-10-04 07:43:49'),
('::1', '2016-10-04 07:46:00'),
('::1', '2016-10-04 09:15:51'),
('::1', '2016-10-04 09:22:04'),
('::1', '2016-10-04 09:26:19'),
('::1', '2016-10-04 09:28:35'),
('::1', '2016-10-04 09:29:46'),
('::1', '2016-10-04 10:11:54'),
('::1', '2016-10-04 10:14:29'),
('::1', '2016-10-04 10:17:26'),
('::1', '2016-10-04 10:21:03'),
('::1', '2016-10-04 10:23:28'),
('::1', '2016-10-04 10:33:11'),
('::1', '2016-10-04 10:49:50'),
('::1', '2016-10-05 02:20:49'),
('::1', '2016-10-05 02:23:33'),
('::1', '2016-10-05 02:24:55'),
('::1', '2016-10-05 02:26:12'),
('::1', '2016-10-05 02:30:39'),
('::1', '2016-10-05 02:33:43'),
('::1', '2016-10-05 02:36:48'),
('::1', '2016-10-05 02:39:06'),
('::1', '2016-10-05 02:40:24'),
('::1', '2016-10-05 02:46:41'),
('::1', '2016-10-05 02:47:59'),
('::1', '2016-10-05 02:49:14'),
('::1', '2016-10-05 02:51:36'),
('::1', '2016-10-05 03:11:15'),
('::1', '2016-10-05 03:12:15'),
('::1', '2016-10-05 03:14:03'),
('::1', '2016-10-05 03:26:45'),
('::1', '2016-10-05 03:28:30'),
('::1', '2016-10-05 03:35:36'),
('::1', '2016-10-05 03:40:46'),
('::1', '2016-10-05 03:42:04'),
('::1', '2016-10-05 03:44:56'),
('::1', '2016-10-05 05:34:44'),
('::1', '2016-10-05 05:36:18'),
('::1', '2016-10-05 08:20:28'),
('::1', '2016-10-05 08:22:08'),
('::1', '2016-10-11 10:24:37'),
('127.0.0.1', '2016-10-14 03:30:09'),
('::1', '2016-10-14 03:30:20'),
('::1', '2016-10-14 03:31:26'),
('::1', '2016-10-14 03:32:58'),
('::1', '2016-10-14 03:36:11'),
('::1', '2016-10-14 03:40:14'),
('::1', '2016-10-15 16:11:22'),
('::1', '2016-10-16 05:47:02'),
('::1', '2016-10-16 08:04:49'),
('127.0.0.1', '2016-10-16 09:42:23'),
('::1', '2016-10-16 09:42:38'),
('::1', '2016-10-17 03:15:23'),
('::1', '2016-10-17 03:31:39'),
('::1', '2016-10-17 10:20:51'),
('::1', '2016-10-19 02:00:35'),
('::1', '2016-10-19 02:18:55'),
('::1', '2016-10-19 02:58:02'),
('::1', '2016-10-19 02:59:14'),
('::1', '2016-10-19 03:02:16'),
('::1', '2016-10-19 03:16:05'),
('::1', '2016-10-19 03:20:37'),
('::1', '2016-10-19 03:21:41'),
('::1', '2016-10-19 03:26:11'),
('::1', '2016-10-19 03:27:43'),
('::1', '2016-10-19 03:30:42'),
('::1', '2016-10-19 03:35:16'),
('::1', '2016-10-19 03:46:11'),
('::1', '2016-10-19 05:00:45'),
('::1', '2016-10-19 08:53:32'),
('::1', '2016-10-19 08:58:53'),
('::1', '2016-10-19 09:13:28'),
('::1', '2016-10-19 09:15:27'),
('::1', '2016-10-19 09:16:40'),
('::1', '2016-10-19 09:17:45'),
('::1', '2016-10-19 09:21:49'),
('::1', '2016-10-19 09:26:14'),
('::1', '2016-10-19 09:32:18'),
('::1', '2016-10-20 05:02:40'),
('::1', '2016-10-20 05:09:17'),
('::1', '2016-10-20 05:13:48'),
('::1', '2016-10-20 06:13:23'),
('::1', '2016-10-20 06:15:13'),
('::1', '2016-10-20 10:10:57'),
('::1', '2016-10-20 10:14:09'),
('::1', '2016-10-20 10:15:54'),
('::1', '2016-10-20 10:18:16'),
('::1', '2016-10-20 10:22:59'),
('::1', '2016-10-20 10:24:29'),
('::1', '2016-10-20 10:25:40'),
('::1', '2016-10-20 10:27:17'),
('::1', '2016-10-21 09:30:59'),
('::1', '2016-10-21 09:32:10'),
('::1', '2016-10-26 06:58:23'),
('::1', '2016-10-26 07:55:21'),
('::1', '2016-10-26 09:37:22'),
('::1', '2016-10-26 12:18:06'),
('::1', '2016-10-26 12:19:43'),
('::1', '2016-10-26 12:27:15'),
('::1', '2016-10-26 12:30:50'),
('::1', '2016-10-26 12:33:18'),
('::1', '2016-10-26 12:38:45'),
('::1', '2016-10-26 12:40:15'),
('::1', '2016-10-26 13:16:03'),
('::1', '2016-10-26 16:54:12'),
('::1', '2016-10-27 18:03:03'),
('::1', '2016-10-28 06:26:22'),
('::1', '2016-10-28 11:56:44'),
('::1', '2016-11-02 09:52:48'),
('::1', '2016-11-03 02:58:28'),
('::1', '2016-11-03 03:15:40'),
('::1', '2016-11-03 03:16:46'),
('::1', '2016-11-03 03:18:35'),
('::1', '2016-11-03 03:35:32'),
('::1', '2016-11-03 04:56:05'),
('::1', '2016-11-08 03:11:23'),
('::1', '2016-11-08 03:12:53'),
('::1', '2017-04-17 06:36:05'),
('::1', '2017-04-17 07:12:03'),
('::1', '2017-04-17 08:25:54'),
('::1', '2017-04-17 08:31:04'),
('::1', '2017-04-17 08:33:49'),
('::1', '2017-04-17 08:34:56'),
('::1', '2017-04-17 08:36:29'),
('::1', '2017-04-17 09:00:03'),
('::1', '2017-04-17 09:04:16'),
('::1', '2017-04-17 09:05:20'),
('::1', '2017-04-17 09:07:18'),
('::1', '2017-04-17 09:23:14'),
('::1', '2017-04-17 09:33:34'),
('::1', '2017-04-17 09:34:36'),
('::1', '2017-04-18 02:56:41'),
('::1', '2017-04-18 02:58:47'),
('::1', '2017-04-18 03:00:21'),
('::1', '2017-04-18 03:01:29'),
('::1', '2017-04-18 03:02:50'),
('::1', '2017-04-18 03:04:03'),
('::1', '2017-04-18 03:08:47'),
('::1', '2017-04-18 03:09:59'),
('::1', '2017-04-18 03:11:02'),
('::1', '2017-04-18 03:12:22'),
('::1', '2017-04-18 03:15:07'),
('::1', '2017-04-18 03:16:45'),
('::1', '2017-04-18 03:18:56'),
('::1', '2017-04-18 03:19:57'),
('::1', '2017-04-18 03:20:59'),
('::1', '2017-04-18 03:22:11'),
('::1', '2017-04-18 03:23:32'),
('::1', '2017-04-18 03:30:00'),
('::1', '2017-04-18 03:37:04'),
('::1', '2017-04-18 03:38:56'),
('::1', '2017-04-18 03:40:26'),
('::1', '2017-04-18 03:41:34'),
('::1', '2017-04-18 03:43:21'),
('::1', '2017-04-18 03:44:26'),
('::1', '2017-04-18 03:45:42'),
('::1', '2017-04-18 03:47:09'),
('::1', '2017-04-18 03:48:28'),
('::1', '2017-04-18 03:56:06'),
('::1', '2017-04-18 03:57:13'),
('::1', '2017-04-18 03:58:23'),
('::1', '2017-04-18 03:59:26'),
('::1', '2017-04-18 04:01:20'),
('::1', '2017-04-18 04:03:20'),
('::1', '2017-04-18 04:04:56'),
('::1', '2017-04-18 04:06:05'),
('::1', '2017-04-18 07:36:01'),
('::1', '2017-04-18 07:56:16'),
('::1', '2017-04-18 08:00:07'),
('::1', '2017-04-18 08:01:34'),
('::1', '2017-04-18 08:15:32'),
('::1', '2017-04-18 08:16:36'),
('::1', '2017-04-18 08:17:39'),
('::1', '2017-04-18 08:19:17'),
('::1', '2017-04-18 08:20:33'),
('::1', '2017-04-18 08:21:39'),
('::1', '2017-04-18 08:22:48'),
('::1', '2017-04-18 08:24:12'),
('::1', '2017-04-18 08:41:24'),
('::1', '2017-04-18 08:42:38'),
('::1', '2017-04-18 08:43:59'),
('::1', '2017-04-18 08:45:15'),
('::1', '2017-04-18 08:49:23'),
('::1', '2017-04-18 08:50:24'),
('::1', '2017-04-18 08:51:34'),
('::1', '2017-04-18 08:53:28'),
('::1', '2017-04-18 08:55:49'),
('::1', '2017-04-18 08:57:22'),
('::1', '2017-04-18 08:58:41'),
('::1', '2017-04-18 08:59:42'),
('::1', '2017-04-18 09:02:04'),
('::1', '2017-04-18 09:03:28'),
('::1', '2017-04-18 09:05:00'),
('::1', '2017-04-18 09:06:01'),
('::1', '2017-04-18 09:07:43'),
('::1', '2017-04-18 09:09:10'),
('::1', '2017-04-18 09:14:37'),
('::1', '2017-04-18 09:15:56'),
('::1', '2017-04-18 09:18:40'),
('::1', '2017-04-18 09:19:40'),
('::1', '2017-04-18 09:22:30'),
('::1', '2017-04-18 09:25:30'),
('::1', '2017-04-18 09:28:41'),
('::1', '2017-04-18 09:29:43'),
('::1', '2017-04-18 09:31:15'),
('::1', '2017-04-18 09:32:18'),
('::1', '2017-04-18 09:34:06'),
('::1', '2017-04-18 09:35:06'),
('::1', '2017-04-18 09:37:17'),
('::1', '2017-04-18 09:39:11'),
('::1', '2017-04-18 10:32:12'),
('::1', '2017-04-19 02:57:48'),
('::1', '2017-04-19 02:59:08'),
('::1', '2017-04-19 03:18:52'),
('::1', '2017-04-19 03:21:35'),
('::1', '2017-04-19 03:24:08'),
('::1', '2017-04-19 03:25:10'),
('::1', '2017-04-19 03:27:17'),
('::1', '2017-04-19 03:29:18'),
('::1', '2017-04-19 03:30:40'),
('::1', '2017-04-19 03:32:05'),
('::1', '2017-04-19 03:33:36'),
('::1', '2017-04-19 03:45:29'),
('::1', '2017-04-19 03:46:41'),
('::1', '2017-04-19 03:58:15'),
('::1', '2017-04-19 03:59:50'),
('::1', '2017-04-19 04:01:04'),
('::1', '2017-04-19 04:02:32'),
('::1', '2017-04-19 04:03:56'),
('::1', '2017-04-19 04:05:39'),
('::1', '2017-04-19 04:06:42'),
('::1', '2017-04-19 04:14:37'),
('::1', '2017-04-19 04:16:11'),
('::1', '2017-04-19 04:18:11'),
('::1', '2017-04-19 04:19:13'),
('::1', '2017-04-19 04:20:27'),
('::1', '2017-04-19 04:29:18'),
('::1', '2017-04-19 04:30:18'),
('::1', '2017-04-19 04:37:15'),
('::1', '2017-04-19 04:39:18'),
('::1', '2017-04-19 04:40:52'),
('::1', '2017-04-19 04:43:02'),
('::1', '2017-04-19 04:44:41'),
('::1', '2017-04-19 04:59:07'),
('::1', '2017-04-19 05:04:19'),
('::1', '2017-04-19 05:06:08'),
('::1', '2017-04-19 05:09:50'),
('::1', '2017-04-19 05:13:30'),
('::1', '2017-04-19 05:19:53'),
('::1', '2017-04-19 07:34:13'),
('::1', '2017-04-19 08:42:14'),
('::1', '2017-04-19 08:43:23'),
('::1', '2017-04-19 08:48:05'),
('::1', '2017-04-19 09:08:30'),
('::1', '2017-04-19 09:12:42'),
('::1', '2017-04-19 09:14:44'),
('::1', '2017-04-19 09:22:07'),
('::1', '2017-04-19 09:27:45'),
('::1', '2017-04-19 09:29:40'),
('::1', '2017-04-19 09:33:46'),
('::1', '2017-04-19 09:35:08'),
('::1', '2017-04-19 09:37:43'),
('::1', '2017-04-19 09:39:04'),
('::1', '2017-04-19 09:40:39'),
('::1', '2017-04-19 09:42:56'),
('::1', '2017-04-19 09:44:32'),
('::1', '2017-04-19 09:45:45'),
('::1', '2017-04-19 09:47:01'),
('::1', '2017-04-19 09:49:15'),
('::1', '2017-04-19 09:51:47'),
('::1', '2017-04-19 09:54:48'),
('::1', '2017-04-19 09:59:42'),
('::1', '2017-04-19 10:01:18'),
('::1', '2017-04-19 10:02:32'),
('::1', '2017-04-19 10:03:32'),
('::1', '2017-04-19 10:04:46'),
('::1', '2017-04-19 10:08:16'),
('::1', '2017-04-19 10:09:49'),
('::1', '2017-04-19 10:13:55'),
('::1', '2017-04-19 10:15:14'),
('::1', '2017-04-19 10:16:36'),
('::1', '2017-04-19 10:17:38'),
('::1', '2017-04-19 10:24:25'),
('::1', '2017-04-19 10:25:25'),
('::1', '2017-04-19 10:28:14'),
('::1', '2017-04-19 10:30:08'),
('::1', '2017-04-19 10:55:51'),
('::1', '2017-04-19 10:58:11'),
('::1', '2017-04-19 10:59:12'),
('::1', '2017-04-19 11:01:13'),
('::1', '2017-04-19 11:02:31'),
('::1', '2017-04-20 02:45:22'),
('::1', '2017-04-20 02:48:00'),
('::1', '2017-04-20 02:49:35'),
('::1', '2017-04-20 02:51:53'),
('::1', '2017-04-20 03:00:22'),
('::1', '2017-04-20 03:08:30'),
('::1', '2017-04-20 03:09:31'),
('::1', '2017-04-20 03:13:50'),
('::1', '2017-04-20 03:15:28'),
('::1', '2017-04-20 03:16:33'),
('::1', '2017-04-20 03:20:27'),
('::1', '2017-04-20 03:50:46'),
('::1', '2017-04-20 03:53:09'),
('::1', '2017-04-20 03:55:36'),
('::1', '2017-04-20 03:58:06'),
('::1', '2017-04-20 03:59:10'),
('::1', '2017-04-20 04:14:13'),
('::1', '2017-04-20 04:15:36'),
('::1', '2017-04-20 04:16:44'),
('::1', '2017-04-20 04:18:20'),
('::1', '2017-04-20 04:22:25'),
('::1', '2017-04-20 04:24:54'),
('::1', '2017-04-20 04:36:06'),
('::1', '2017-04-20 04:52:37'),
('::1', '2017-04-20 04:53:48'),
('::1', '2017-04-20 04:59:29'),
('::1', '2017-04-20 07:27:28'),
('::1', '2017-04-20 09:30:14'),
('::1', '2017-04-20 09:31:21'),
('::1', '2017-04-20 09:32:50'),
('::1', '2017-04-20 09:35:31'),
('::1', '2017-04-20 09:36:48'),
('::1', '2017-04-20 09:46:24'),
('::1', '2017-04-20 10:01:19'),
('::1', '2017-04-20 10:02:25'),
('::1', '2017-04-20 10:05:55'),
('::1', '2017-04-21 02:44:44'),
('::1', '2017-04-21 02:53:46'),
('::1', '2017-04-21 02:54:58'),
('::1', '2017-04-21 02:56:46'),
('::1', '2017-04-21 02:58:19'),
('::1', '2017-04-21 02:59:51'),
('::1', '2017-04-21 03:01:43'),
('::1', '2017-04-21 03:13:37'),
('::1', '2017-04-21 03:21:14'),
('::1', '2017-04-21 03:22:34'),
('::1', '2017-04-21 03:30:12'),
('::1', '2017-04-21 03:55:39'),
('::1', '2017-04-21 04:18:04'),
('::1', '2017-04-21 04:32:34'),
('::1', '2017-04-21 04:34:01'),
('::1', '2017-04-21 04:39:18'),
('::1', '2017-04-21 04:59:46'),
('::1', '2017-04-21 05:01:18'),
('::1', '2017-04-21 05:02:23'),
('::1', '2017-04-21 05:04:08'),
('::1', '2017-04-21 05:06:03'),
('::1', '2017-04-21 05:07:15'),
('::1', '2017-04-21 05:15:43'),
('::1', '2017-04-21 05:22:24'),
('::1', '2017-04-21 05:24:53'),
('::1', '2017-04-21 05:34:02'),
('::1', '2017-04-21 05:36:59'),
('::1', '2017-04-21 05:38:13'),
('::1', '2017-04-21 05:41:07'),
('::1', '2017-04-21 05:42:21'),
('::1', '2017-04-21 05:45:39'),
('::1', '2017-04-21 05:47:20'),
('::1', '2017-04-21 05:48:43'),
('::1', '2017-04-21 05:51:47'),
('::1', '2017-04-21 06:36:38'),
('::1', '2017-04-22 02:13:26'),
('::1', '2017-04-22 02:15:30'),
('::1', '2017-04-22 02:19:45'),
('::1', '2017-04-22 02:25:02'),
('::1', '2017-04-22 02:27:58'),
('::1', '2017-04-22 02:29:39'),
('::1', '2017-04-22 02:31:34'),
('::1', '2017-04-22 02:33:42'),
('::1', '2017-04-22 02:34:51'),
('::1', '2017-04-22 02:38:40'),
('::1', '2017-04-22 02:59:58'),
('::1', '2017-04-22 03:01:01'),
('::1', '2017-04-22 03:06:35'),
('::1', '2017-04-22 03:08:17'),
('::1', '2017-04-22 03:12:49'),
('::1', '2017-04-22 03:16:37'),
('::1', '2017-04-22 03:17:44'),
('::1', '2017-04-22 03:19:24'),
('::1', '2017-04-22 03:21:13'),
('::1', '2017-04-22 03:22:47'),
('::1', '2017-04-22 03:33:18'),
('::1', '2017-04-22 03:57:06'),
('::1', '2017-04-22 03:58:26'),
('::1', '2020-05-20 03:13:12'),
('::1', '2020-05-20 03:14:36'),
('::1', '2020-05-20 03:16:38'),
('::1', '2020-05-20 03:23:01'),
('::1', '2020-05-20 03:25:43'),
('::1', '2020-05-20 03:27:37'),
('::1', '2020-05-20 03:35:32'),
('::1', '2020-05-20 03:36:54'),
('::1', '2020-05-20 03:39:46'),
('::1', '2020-05-20 03:41:07'),
('::1', '2020-05-20 03:42:10'),
('::1', '2020-05-20 03:43:40'),
('::1', '2020-05-20 03:45:33'),
('::1', '2020-05-20 03:48:59'),
('::1', '2020-05-20 03:51:12'),
('::1', '2020-05-20 03:57:07'),
('::1', '2020-05-20 04:03:15'),
('::1', '2020-05-20 04:04:30'),
('::1', '2020-05-20 04:05:36'),
('::1', '2020-05-20 04:07:16'),
('::1', '2020-05-20 04:10:42'),
('::1', '2020-05-20 04:11:59'),
('::1', '2020-05-20 04:13:24'),
('::1', '2020-05-20 04:14:27'),
('::1', '2020-05-20 04:16:17'),
('::1', '2020-05-20 04:18:08'),
('::1', '2020-05-20 04:19:22'),
('::1', '2020-05-20 04:20:30'),
('::1', '2020-05-20 04:22:26'),
('::1', '2020-05-20 04:26:25'),
('::1', '2020-05-20 04:27:41'),
('::1', '2020-05-20 04:28:41'),
('::1', '2020-05-20 04:29:46'),
('::1', '2020-05-20 04:30:50'),
('::1', '2020-05-20 04:32:54'),
('::1', '2020-05-20 04:35:18'),
('::1', '2020-05-20 04:36:54'),
('::1', '2020-05-20 04:38:15'),
('::1', '2020-05-20 04:39:35'),
('::1', '2020-05-20 04:40:38'),
('::1', '2020-05-20 04:41:44'),
('::1', '2020-05-20 04:44:02'),
('::1', '2020-05-20 04:46:07'),
('::1', '2020-05-20 04:47:12'),
('::1', '2020-05-20 04:51:28'),
('::1', '2020-05-20 04:52:38'),
('::1', '2020-05-20 04:53:38'),
('::1', '2020-05-20 04:55:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_data`
--

CREATE TABLE `vt_data` (
  `id` int(11) NOT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `time` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `menu` int(11) NOT NULL DEFAULT '0',
  `data_parent` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `menuPost` int(11) NOT NULL DEFAULT '0',
  `tag` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `link` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `file` text CHARACTER SET latin1,
  `phone` text CHARACTER SET latin1,
  `email` text CHARACTER SET latin1,
  `count` int(11) NOT NULL DEFAULT '0',
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `company` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `titlePost` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `f1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `filter` text CHARACTER SET latin1,
  `price` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `start` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `sale` int(11) NOT NULL DEFAULT '0',
  `district` text CHARACTER SET latin1,
  `province` text CHARACTER SET latin1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_data`
--

INSERT INTO `vt_data` (`id`, `hide`, `pos`, `time`, `menu`, `data_parent`, `view`, `type`, `title`, `menuPost`, `tag`, `des`, `keywords`, `img`, `content`, `link`, `file`, `phone`, `email`, `count`, `address`, `company`, `titlePost`, `name`, `vip`, `hot`, `f1`, `f2`, `f3`, `filter`, `price`, `start`, `sale`, `district`, `province`) VALUES
(315, 0, 0, '21/05/2021 16:55:02', 987, 0, 17, NULL, 'Giá trị cốt lõi', 0, NULL, NULL, NULL, 'core-value-icons-01_-21-05-2021-16-37-52.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'gia-tri-cot-loi', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(316, 0, 0, '21/05/2021 16:54:53', 987, 0, 16, NULL, 'Sứ mệnh', 0, NULL, NULL, NULL, 'vidon_com_ctc_t1502973379_vXd4_-21-05-2021-16-37-45.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'su-menh', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(317, 0, 0, '21/05/2021 16:54:37', 987, 0, 24, NULL, 'Tầm nhìn', 0, NULL, NULL, NULL, 'NicePng_mission-icon-png_4309184_-21-05-2021-16-53-27.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'tam-nhin', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(331, 0, 0, '21/05/2021 16:50:46', 986, 0, 422, NULL, 'Siêu Dự Án VINHOMES GRAND PARK Quận 9, TP. Thủ Đức', 0, NULL, NULL, NULL, 'da1-min_-20-05-2021-23-28-26.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'sieu-du-an-vinhomes-grand-park-quan-9', 0, 1, NULL, NULL, NULL, '335,334,332,328', NULL, NULL, 0, NULL, NULL),
(343, 0, 0, '21/05/2021 10:20:08', 1006, 0, 20, NULL, 'ABC', 0, NULL, NULL, NULL, 'cao-toc-13-1619542301-1536x925_-21-05-2021-09-57-24.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'abc', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(327, 0, 0, '21/05/2021 16:55:45', 1001, 0, 25, NULL, 'Gia đình chị Ngọc', 0, NULL, NULL, NULL, 'bb_-21-05-2021-16-24-50.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'du-an-venezia-beach-toa-lac-tai-xa-thang-hai-huyen-ham-tan-tinh-binh-thuan-day-la-vi-tri-nam-ngay-giao-lo-quoc-lo-55-va-duong-ven-bien-cung-voi-su-nang-cap-cua-hang-loat-tuyen-duong-huyet-mach-nhu-tuyen-cao-toc-dau-giay-phan-thiet-doan-qua-nha-trang-quoc-lo-1-doan-qua-binh-thuan-giup-ket-noi-noi-den-cac-tinh-ven-bien-va-tay-nguyen-tro-nen-nhanh-chong-cu-dan-do-thi-tu-day-co-the-di-chuyen-den-khu-du-lich-suoi-nuoc-nong-binh-chau-3km-tp-vung-tau-30km-san-bay-quoc-te-long-thanh-80km-trung-tam-tp-hcm-130km-', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(328, 0, 0, '19/05/2021 17:07:52', 1002, 0, 10, NULL, 'NHÀ PHỐ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'nha-pho', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(332, 0, 0, '19/05/2021 17:07:47', 1002, 0, 8, NULL, 'BIỆT THỰ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'biet-thu', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(334, 0, 0, '19/05/2021 17:07:34', 1002, 0, 4, NULL, 'CĂN HỘ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'can-ho', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(335, 0, 0, '19/05/2021 17:07:18', 1002, 0, 5, NULL, 'NGHỈ DƯỠNG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'nghi-duong', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(341, 0, 0, '21/05/2021 10:20:08', 1003, 0, 67, NULL, 'Best Western biến Venezia Beach trở thành “món hàng hiệu” xa xỉ bậc nhất', 0, NULL, NULL, NULL, '97ec756168ac9df2c4bd_-21-05-2021-10-10-42.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'best-western-bien-venezia-beach-tro-thanh-mon-hang-hieu-xa-xi-bac-nhat', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(340, 0, 1, '21/05/2021 16:50:06', 986, 0, 68, NULL, 'VINHOMES SYMPHONY', 0, NULL, NULL, NULL, 'da2-min_-20-05-2021-23-28-39.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'vinhomes-symphony', 0, 1, NULL, NULL, NULL, '334', NULL, NULL, 0, NULL, NULL),
(338, 0, 2, '21/05/2021 17:11:55', 1001, 0, 13, NULL, 'anh Quân', 0, NULL, NULL, NULL, 'aa_-21-05-2021-16-20-40.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(339, 0, 1, '21/05/2021 16:55:53', 1001, 0, 11, NULL, 'chị Hạ', 0, NULL, NULL, NULL, 'xx_-21-05-2021-16-26-37.png', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(342, 0, 0, '21/05/2021 10:13:40', 1004, 0, 49, NULL, 'Nhân viên kinh doanh', 0, NULL, NULL, NULL, 'in-anh-duong-tuyen-dung-nhan-vien-kinh-doanh-di-lam-ngay-thang-012020-image-12_-21-05-2021-10-12-41.jpg', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'dang-cap-nhat', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_data_lang`
--

CREATE TABLE `vt_data_lang` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL DEFAULT '0',
  `type` text COLLATE utf8_unicode_ci,
  `hide` tinyint(4) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `des` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `price` text COLLATE utf8_unicode_ci,
  `sale` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `f1` text COLLATE utf8_unicode_ci,
  `f2` text COLLATE utf8_unicode_ci,
  `f3` text COLLATE utf8_unicode_ci,
  `f4` text COLLATE utf8_unicode_ci,
  `f5` text COLLATE utf8_unicode_ci,
  `f6` text COLLATE utf8_unicode_ci,
  `f7` text COLLATE utf8_unicode_ci,
  `f8` text COLLATE utf8_unicode_ci,
  `f9` text COLLATE utf8_unicode_ci,
  `f10` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vt_data_lang`
--

INSERT INTO `vt_data_lang` (`id`, `data_id`, `type`, `hide`, `title`, `name`, `des`, `keywords`, `img`, `price`, `sale`, `file`, `address`, `content`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`, `f10`, `lang`) VALUES
(83, 317, NULL, 0, 'TẦM NHÌN', 'tam-nhin', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Trở th&agrave;nh một trong những Nh&agrave; tư vấn, ph&acirc;n phối Bất Động Sản chuy&ecirc;n nghiệp v&agrave; uy t&iacute;n nhất tại Việt Nam</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(84, 316, NULL, 0, 'SỨ MỆNH', 'su-menh', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">L&agrave; cầu nối tin cậy giữa Chủ đầu tư v&agrave; kh&aacute;ch h&agrave;ng, đem lại những sản phẩm bất động sản c&oacute; gi&aacute; trị lợi nhuận cao</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(85, 315, NULL, 0, 'Giá Trị Cốt Lõi', 'gia-tri-cot-loi', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Niềm tin của kh&aacute;ch h&agrave;ng l&agrave; t&agrave;i sản v&ocirc; gi&aacute;! Ch&uacute;ng t&ocirc;i lu&ocirc;n tận t&acirc;m với kh&aacute;ch h&agrave;ng, d&ugrave;ng trọn chữ T&iacute;n để tạo dựng niềm tin n&agrave;y!</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(90, 327, NULL, 0, 'Gia đình chị Ngọc', 'gia-dinh-chi-ngoc', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Thật sự bất ngờ với sự nhiệt t&igrave;nh v&agrave; kiến thức của bạn tư vấn. Chắc chắn t&ocirc;i sẽ c&ograve;n hợp t&aacute;c trong tương lai.</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(91, 328, NULL, 0, 'NHÀ PHỐ', 'nha-pho', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(92, 331, NULL, 0, 'Siêu Dự Án VINHOMES GRAND PARK Quận 9, TP. Thủ Đức', 'sieu-du-an-vinhomes-grand-park-quan-9-tp-thu-duc', 'Dự án Vinhomes Grand Park Quận 9 của chủ đầu tư VinGroup đã mở bán ra thị trường vào quý II.2019 với quy mô hiện đại, đẳng cấp cùng tiện ích dịch vụ hiện đại với mức giá hấp dẫn khi có đa dạng loại hình sản phẩm. Chỉ trong 17 ngày công bố thì phân khu The Rainbow Vinhome Quận 9 với hơn 10000 căn hộ chung cư đã được bán hết, tạo nên 1 kỳ tích bán hàng chưa từng có trong lịch sử ngành môi giới bất động sản Việt Nam.', 'VINHOMES GRAND PARK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(94, 332, NULL, 0, 'BIỆT THỰ', 'biet-thu', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(95, 335, NULL, 0, 'NGHỈ DƯỠNG', 'nghi-duong', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(96, 334, NULL, 0, 'CĂN HỘ', 'can-ho', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(99, 339, NULL, 0, 'chị Hạ', 'chi-ha', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px; text-align: justify;\">Thật sự bất ngờ với sự nhiệt t&igrave;nh v&agrave; kiến thức của bạn tư vấn. Chắc chắn t&ocirc;i sẽ c&ograve;n hợp t&aacute;c trong tương lai.</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(100, 338, NULL, 0, 'anh Quân', 'anh-quan', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px; text-align: justify;\">Thật sự bất ngờ với sự nhiệt t&igrave;nh v&agrave; kiến thức của bạn tư vấn. Chắc chắn t&ocirc;i sẽ c&ograve;n hợp t&aacute;c trong tương lai.</span></p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(101, 340, NULL, 0, 'VINHOMES SYMPHONY', 'vinhomes-symphony', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(102, 341, NULL, 0, 'Best Western biến Venezia Beach trở thành “món hàng hiệu” xa xỉ bậc nhất', 'best-western-bien-venezia-beach-tro-thanh-mon-hang-hieu-xa-xi-bac-nhat', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Hiện nay Best Western l&agrave; một trong những tập đo&agrave;n quản l&yacute; kh&aacute;ch sạn lớn nhất thế giới v&agrave; l&agrave; thương hiệu cao cấp quen thuộc trong hơn 100 quốc gia &amp; v&ugrave;ng l&atilde;nh thổ, với quy m&ocirc; hơn 4.100 kh&aacute;ch sạn,hơn 308.692 ph&ograve;ng, dẫn đầu về số lượng t&agrave;i sản. Best Western thuộc Top 10 c&ocirc;ng ty c&oacute; kinh nghiệm v&agrave; uy t&iacute;n nhất thế giới nhờ c&oacute; chuy&ecirc;n m&ocirc;n v&agrave; năng lực vận h&agrave;nh c&aacute;c kh&aacute;ch sạn, khu nghỉ dưỡng, căn hộ từ hạng ti&ecirc;u chuẩn đến hạng cao cấp.</p>\r\n<p><img src=\"https://bdskingland.net/upload/../upload/97ec756168ac9df2c4bd_-21-05-2021-10-11-17.jpg\" alt=\"\" width=\"100%\" /></p>\r\n<p>Năm 1946, Best Western (BW) được th&agrave;nh lập bởi M.K. Guertin, trụ sở ch&iacute;nh tại Phoenix &ndash; Arizona (Mỹ). Best Western c&oacute; 10 loại kh&aacute;ch sạn với c&aacute;c n&eacute;t độc đ&aacute;o kh&aacute;c nhau v&agrave; c&oacute; 3 cấp độ sản phẩm tương ứng với những thương hiệu kh&aacute;ch sạn như:&nbsp;</p>\r\n<p>Best Western (với tiện &iacute;ch, dịch vụ trung b&igrave;nh kh&aacute; &ndash; 3 sao)</p>\r\n<p>Best Western Plus (với đẳng cấp cao hơn &ndash; 4 sao)</p>\r\n<p>Best Western Premier (thương hiệu với tiện &iacute;ch, dịch vụ cao cấp &ndash; 5 sao)</p>\r\n<p>&nbsp;V&agrave; sắp tới đ&acirc;y, thương hiệu 5 sao Best Western Premier&nbsp; sẽ tiến h&agrave;nh quản l&yacute;, vận h&agrave;nh tổ hợp đ&ocirc; thị du lịch nghỉ dưỡng Venezia Beach Luxury Residences &amp; Resort&nbsp; Hồ Tr&agrave;m &ndash; B&igrave;nh Ch&acirc;u dưới thương hiệu BW Premier Collection by Best Western.</p>\r\n<p>Việc một thương hiệu quản l&yacute; kh&aacute;ch sạn h&agrave;ng đầu thế giới tham gia một dự &aacute;n nghỉ dưỡng tại B&igrave;nh Ch&acirc;u khẳng định tiềm năng thị trường n&agrave;y đang thu h&uacute;t hơn bao giờ hết. V&igrave; c&aacute;c thương hiệu 5 sao, 6 sao chỉ hợp t&aacute;c với dự &aacute;n c&oacute; vị tr&iacute; đẹp bậc nhất của mỗi khu vực, l&agrave; t&acirc;m điểm của một điểm nghỉ dưỡng hoặc l&agrave; trung t&acirc;m th&agrave;nh phố.</p>\r\n<p><img src=\"https://bdskingland.net/upload/../upload/176597244_121985306658440_657356777556780675_n-1536x864_-21-05-2021-10-12-49.jpg\" alt=\"\" width=\"100%\" /></p>\r\n<p>C&aacute;c kh&aacute;ch sạn m&agrave; Best Western quản l&yacute; đều c&oacute; doanh thu cao bởi nguồn kh&aacute;ch ổn định tr&ecirc;n khắp thế giới. V&agrave; chắc chắn với uy t&iacute;n v&agrave; kinh nghiệm của m&igrave;nh, Best Western sẽ gi&uacute;p Venezia Beach đạt hiệu quả kinh doanh cao nhất. C&oacute; thể n&oacute;i Venezia Beach đang sở hữu bảo chứng cho tiềm năng sinh lời vững chắc, v&agrave; l&agrave; t&agrave;i sản t&iacute;ch luỹ gi&aacute; trị của giới si&ecirc;u gi&agrave;u.</p>\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(103, 342, NULL, 0, 'Nhân viên kinh doanh', 'nhan-vien-kinh-doanh', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn'),
(104, 343, NULL, 0, 'Đang cập nhật', 'dang-cap-nhat', '', '', NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_district`
--

CREATE TABLE `vt_district` (
  `id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `location` varchar(30) CHARACTER SET utf8 NOT NULL,
  `province` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_district`
--

INSERT INTO `vt_district` (`id`, `name`, `type`, `location`, `province`) VALUES
('000', 'Quận Huyện', 'full', '', ''),
('001', 'Ba Đình', 'Quận', '21 02 08N, 105 49 38E', '01'),
('002', 'Hoàn Kiếm', 'Quận', '21 01 53N, 105 51 09E', '01'),
('003', 'Tây Hồ', 'Quận', '21 04 10N, 105 49 07E', '01'),
('004', 'Long Biên', 'Quận', '21 02 21N, 105 53 07E', '01'),
('005', 'Cầu Giấy', 'Quận', '21 01 52N, 105 47 20E', '01'),
('006', 'Đống Đa', 'Quận', '21 00 56N, 105 49 06E', '01'),
('007', 'Hai Bà Trưng', 'Quận', '21 00 27N, 105 51 35E', '01'),
('008', 'Hoàng Mai', 'Quận', '20 58 33N, 105 51 22E', '01'),
('009', 'Thanh Xuân', 'Quận', '20 59 44N, 105 48 56E', '01'),
('016', 'Sóc Sơn', 'Huyện', '21 16 55N, 105 49 46E', '01'),
('017', 'Đông Anh', 'Huyện', '21 08 16N, 105 49 38E', '01'),
('018', 'Gia Lâm', 'Huyện', '21 01 28N, 105 56 54E', '01'),
('019', 'Từ Liêm', 'Huyện', '21 02 39N, 105 45 32E', '01'),
('020', 'Thanh Trì', 'Huyện', '20 56 32N, 105 50 55E', '01'),
('024', 'Hà Giang', 'Thị Xã', '22 46 23N, 105 02 39E', '02'),
('026', 'Đồng Văn', 'Huyện', '23 14 34N, 105 15 48E', '02'),
('027', 'Mèo Vạc', 'Huyện', '23 09 10N, 105 26 38E', '02'),
('028', 'Yên Minh', 'Huyện', '23 04 20N, 105 10 13E', '02'),
('029', 'Quản Bạ', 'Huyện', '23 04 03N, 104 58 05E', '02'),
('030', 'Vị Xuyên', 'Huyện', '22 45 50N, 104 56 26E', '02'),
('031', 'Bắc Mê', 'Huyện', '22 45 48N, 105 16 26E', '02'),
('032', 'Hoàng Su Phì', 'Huyện', '22 41 37N, 104 40 06E', '02'),
('033', 'Xín Mần', 'Huyện', '22 38 05N, 104 28 35E', '02'),
('034', 'Bắc Quang', 'Huyện', '22 23 42N, 104 55 06E', '02'),
('035', 'Quang Bình', 'Huyện', '22 23 07N, 104 37 11E', '02'),
('040', 'Cao Bằng', 'Thị Xã', '22 39 20N, 106 15 20E', '04'),
('042', 'Bảo Lâm', 'Huyện', '22 52 37N, 105 27 28E', '04'),
('043', 'Bảo Lạc', 'Huyện', '22 52 31N, 105 42 41E', '04'),
('044', 'Thông Nông', 'Huyện', '22 49 09N, 105 57 05E', '04'),
('045', 'Hà Quảng', 'Huyện', '22 53 42N, 106 06 32E', '04'),
('046', 'Trà Lĩnh', 'Huyện', '22 48 14N, 106 19 47E', '04'),
('047', 'Trùng Khánh', 'Huyện', '22 49 31N, 106 33 58E', '04'),
('048', 'Hạ Lang', 'Huyện', '22 42 37N, 106 41 42E', '04'),
('049', 'Quảng Uyên', 'Huyện', '22 40 15N, 106 27 42E', '04'),
('050', 'Phục Hoà', 'Huyện', '22 33 52N, 106 30 02E', '04'),
('051', 'Hoà An', 'Huyện', '22 41 20N, 106 02 05E', '04'),
('052', 'Nguyên Bình', 'Huyện', '22 38 52N, 105 57 02E', '04'),
('053', 'Thạch An', 'Huyện', '22 28 51N, 106 19 51E', '04'),
('058', 'Bắc Kạn', 'Thị Xã', '22 08 00N, 105 51 10E', '06'),
('060', 'Pác Nặm', 'Huyện', '22 35 46N, 105 40 25E', '06'),
('061', 'Ba Bể', 'Huyện', '22 23 54N, 105 43 30E', '06'),
('062', 'Ngân Sơn', 'Huyện', '22 25 50N, 106 01 00E', '06'),
('063', 'Bạch Thông', 'Huyện', '22 12 04N, 105 51 01E', '06'),
('064', 'Chợ Đồn', 'Huyện', '22 11 18N, 105 34 43E', '06'),
('065', 'Chợ Mới', 'Huyện', '21 57 56N, 105 51 29E', '06'),
('066', 'Na Rì', 'Huyện', '22 09 48N, 106 05 09E', '06'),
('070', 'Tuyên Quang', 'Thị Xã', '21 49 40N, 105 13 12E', '08'),
('072', 'Nà Hang', 'Huyện', '22 28 34N, 105 21 03E', '08'),
('073', 'Chiêm Hóa', 'Huyện', '22 12 49N, 105 14 32E', '08'),
('074', 'Hàm Yên', 'Huyện', '22 05 46N, 105 00 13E', '08'),
('075', 'Yên Sơn', 'Huyện', '21 51 53N, 105 18 14E', '08'),
('076', 'Sơn Dương', 'Huyện', '21 40 22N, 105 22 57E', '08'),
('080', 'Lào Cai', 'Thành Phố', '22 25 07N, 103 58 43E', '10'),
('082', 'Bát Xát', 'Huyện', '22 35 50N, 103 44 49E', '10'),
('083', 'Mường Khương', 'Huyện', '22 41 05N, 104 08 26E', '10'),
('084', 'Si Ma Cai', 'Huyện', '22 39 46N, 104 16 05E', '10'),
('085', 'Bắc Hà', 'Huyện', '22 30 08N, 104 18 54E', '10'),
('086', 'Bảo Thắng', 'Huyện', '22 22 47N, 104 10 00E', '10'),
('087', 'Bảo Yên', 'Huyện', '22 17 38N, 104 25 02E', '10'),
('088', 'Sa Pa', 'Huyện', '22 18 54N, 103 54 18E', '10'),
('089', 'Văn Bàn', 'Huyện', '22 03 48N, 104 10 59E', '10'),
('094', 'Điện Biên Phủ', 'Thành Phố', '21 24 52N, 103 02 31E', '11'),
('095', 'Mường Lay', 'Thị Xã', '22 01 47N, 103 07 10E', '11'),
('096', 'Mường Nhé', 'Huyện', '22 06 11N, 102 30 54E', '11'),
('097', 'Mường Chà', 'Huyện', '21 50 31N, 103 03 15E', '11'),
('098', 'Tủa Chùa', 'Huyện', '21 58 19N, 103 23 01E', '11'),
('099', 'Tuần Giáo', 'Huyện', '21 38 03N, 103 21 06E', '11'),
('100', 'Điện Biên', 'Huyện', '21 15 19N, 103 03 19E', '11'),
('101', 'Điện Biên Đông', 'Huyện', '21 14 07N, 103 15 19E', '11'),
('102', 'Mường Ảng', 'Huyện', '', '11'),
('104', 'Lai Châu', 'Thị Xã', '22 23 15N, 103 24 22E', '12'),
('106', 'Tam Đường', 'Huyện', '22 20 16N, 103 32 53E', '12'),
('107', 'Mường Tè', 'Huyện', '22 24 16N, 102 43 11E', '12'),
('108', 'Sìn Hồ', 'Huyện', '22 17 21N, 103 18 12E', '12'),
('109', 'Phong Thổ', 'Huyện', '22 38 24N, 103 22 38E', '12'),
('110', 'Than Uyên', 'Huyện', '21 59 35N, 103 45 30E', '12'),
('111', 'Tân Uyên', 'Huyện', '', '12'),
('116', 'Sơn La', 'Thành Phố', '21 20 39N, 103 54 52E', '14'),
('118', 'Quỳnh Nhai', 'Huyện', '21 46 34N, 103 39 02E', '14'),
('119', 'Thuận Châu', 'Huyện', '21 24 54N, 103 39 46E', '14'),
('120', 'Mường La', 'Huyện', '21 31 38N, 104 02 48E', '14'),
('121', 'Bắc Yên', 'Huyện', '21 13 23N, 104 22 09E', '14'),
('122', 'Phù Yên', 'Huyện', '21 13 33N, 104 41 51E', '14'),
('123', 'Mộc Châu', 'Huyện', '20 49 21N, 104 43 10E', '14'),
('124', 'Yên Châu', 'Huyện', '20 59 33N, 104 19 51E', '14'),
('125', 'Mai Sơn', 'Huyện', '21 10 08N, 103 59 36E', '14'),
('126', 'Sông Mã', 'Huyện', '21 06 04N, 103 43 56E', '14'),
('127', 'Sốp Cộp', 'Huyện', '20 52 46N, 103 30 38E', '14'),
('132', 'Yên Bái', 'Thành Phố', '21 44 28N, 104 53 42E', '15'),
('133', 'Nghĩa Lộ', 'Thị Xã', '21 35 58N, 104 29 22E', '15'),
('135', 'Lục Yên', 'Huyện', '22 06 44N, 104 43 12E', '15'),
('136', 'Văn Yên', 'Huyện', '21 55 55N, 104 33 51E', '15'),
('137', 'Mù Cang Chải', 'Huyện', '21 48 22N, 104 09 01E', '15'),
('138', 'Trấn Yên', 'Huyện', '21 42 20N, 104 48 56E', '15'),
('139', 'Trạm Tấu', 'Huyện', '21 30 40N, 104 28 03E', '15'),
('140', 'Văn Chấn', 'Huyện', '21 34 15N, 104 35 19E', '15'),
('141', 'Yên Bình', 'Huyện', '21 52 24N, 104 55 16E', '15'),
('148', 'Hòa Bình', 'Thành Phố', '20 50 36N, 105 19 20E', '17'),
('150', 'Đà Bắc', 'Huyện', '20 55 58N, 105 04 52E', '17'),
('151', 'Kỳ Sơn', 'Huyện', '20 54 06N, 105 23 18E', '17'),
('152', 'Lương Sơn', 'Huyện', '20 53 16N, 105 30 55E', '17'),
('153', 'Kim Bôi', 'Huyện', '20 40 34N, 105 32 15E', '17'),
('154', 'Cao Phong', 'Huyện', '20 41 23N, 105 17 48E', '17'),
('155', 'Tân Lạc', 'Huyện', '20 36 44N, 105 15 03E', '17'),
('156', 'Mai Châu', 'Huyện', '20 40 56N, 104 59 46E', '17'),
('157', 'Lạc Sơn', 'Huyện', '20 29 59N, 105 24 57E', '17'),
('158', 'Yên Thủy', 'Huyện', '20 25 42N, 105 37 59E', '17'),
('159', 'Lạc Thủy', 'Huyện', '20 29 12N, 105 44 06E', '17'),
('164', 'Thái Nguyên', 'Thành Phố', '21 33 20N, 105 48 26E', '19'),
('165', 'Sông Công', 'Thị Xã', '21 29 14N, 105 48 47E', '19'),
('167', 'Định Hóa', 'Huyện', '21 53 50N, 105 38 01E', '19'),
('168', 'Phú Lương', 'Huyện', '21 45 57N, 105 43 22E', '19'),
('169', 'Đồng Hỷ', 'Huyện', '21 41 10N, 105 55 43E', '19'),
('170', 'Võ Nhai', 'Huyện', '21 47 14N, 106 02 29E', '19'),
('171', 'Đại Từ', 'Huyện', '21 36 17N, 105 37 28E', '19'),
('172', 'Phổ Yên', 'Huyện', '21 27 08N, 105 45 19E', '19'),
('173', 'Phú Bình', 'Huyện', '21 29 36N, 105 57 42E', '19'),
('178', 'Lạng Sơn', 'Thành Phố', '21 51 19N, 106 44 50E', '20'),
('180', 'Tràng Định', 'Huyện', '22 18 09N, 106 26 32E', '20'),
('181', 'Bình Gia', 'Huyện', '22 03 56N, 106 19 01E', '20'),
('182', 'Văn Lãng', 'Huyện', '22 01 59N, 106 34 17E', '20'),
('183', 'Cao Lộc', 'Huyện', '21 53 05N, 106 50 34E', '20'),
('184', 'Văn Quan', 'Huyện', '21 51 04N, 106 33 04E', '20'),
('185', 'Bắc Sơn', 'Huyện', '21 48 57N, 106 15 28E', '20'),
('186', 'Hữu Lũng', 'Huyện', '21 34 33N, 106 20 33E', '20'),
('187', 'Chi Lăng', 'Huyện', '21 40 05N, 106 37 24E', '20'),
('188', 'Lộc Bình', 'Huyện', '21 40 41N, 106 58 12E', '20'),
('189', 'Đình Lập', 'Huyện', '21 32 07N, 107 07 25E', '20'),
('193', 'Hạ Long', 'Thành Phố', '20 52 24N, 107 05 23E', '22'),
('194', 'Móng Cái', 'Thành Phố', '21 26 31N, 107 55 09E', '22'),
('195', 'Cẩm Phả', 'Thị Xã', '21 03 42N, 107 17 22E', '22'),
('196', 'Uông Bí', 'Thị Xã', '21 04 33N, 106 45 07E', '22'),
('198', 'Bình Liêu', 'Huyện', '21 33 07N, 107 26 24E', '22'),
('199', 'Tiên Yên', 'Huyện', '21 22 24N, 107 22 50E', '22'),
('200', 'Đầm Hà', 'Huyện', '21 21 23N, 107 34 32E', '22'),
('201', 'Hải Hà', 'Huyện', '21 25 50N, 107 41 26E', '22'),
('202', 'Ba Chẽ', 'Huyện', '21 15 40N, 107 09 52E', '22'),
('203', 'Vân Đồn', 'Huyện', '20 56 17N, 107 28 02E', '22'),
('204', 'Hoành Bồ', 'Huyện', '21 06 30N, 107 02 43E', '22'),
('205', 'Đông Triều', 'Huyện', '21 07 10N, 106 34 36E', '22'),
('206', 'Yên Hưng', 'Huyện', '20 55 40N, 106 51 05E', '22'),
('207', 'Cô Tô', 'Huyện', '21 05 01N, 107 49 10E', '22'),
('213', 'Bắc Giang', 'Thành Phố', '21 17 36N, 106 11 18E', '24'),
('215', 'Yên Thế', 'Huyện', '21 31 29N, 106 09 27E', '24'),
('216', 'Tân Yên', 'Huyện', '21 23 23N, 106 05 55E', '24'),
('217', 'Lạng Giang', 'Huyện', '21 21 58N, 106 15 21E', '24'),
('218', 'Lục Nam', 'Huyện', '21 18 16N, 106 29 24E', '24'),
('219', 'Lục Ngạn', 'Huyện', '21 26 15N, 106 39 09E', '24'),
('220', 'Sơn Động', 'Huyện', '21 19 42N, 106 51 09E', '24'),
('221', 'Yên Dũng', 'Huyện', '21 12 22N, 106 14 12E', '24'),
('222', 'Việt Yên', 'Huyện', '21 16 16N, 106 04 59E', '24'),
('223', 'Hiệp Hòa', 'Huyện', '21 15 51N, 105 57 30E', '24'),
('227', 'Việt Trì', 'Thành Phố', '21 19 01N, 105 23 35E', '25'),
('228', 'Phú Thọ', 'Thị Xã', '21 24 54N, 105 13 46E', '25'),
('230', 'Đoan Hùng', 'Huyện', '21 36 56N, 105 08 42E', '25'),
('231', 'Hạ Hoà', 'Huyện', '21 35 13N, 105 00 22E', '25'),
('232', 'Thanh Ba', 'Huyện', '21 27 04N, 105 09 10E', '25'),
('233', 'Phù Ninh', 'Huyện', '21 26 59N, 105 18 13E', '25'),
('234', 'Yên Lập', 'Huyện', '21 22 21N, 105 01 25E', '25'),
('235', 'Cẩm Khê', 'Huyện', '21 23 04N, 105 05 25E', '25'),
('236', 'Tam Nông', 'Huyện', '21 18 24N, 105 14 59E', '25'),
('237', 'Lâm Thao', 'Huyện', '21 19 37N, 105 18 09E', '25'),
('238', 'Thanh Sơn', 'Huyện', '21 08 32N, 105 04 40E', '25'),
('239', 'Thanh Thuỷ', 'Huyện', '21 07 26N, 105 17 18E', '25'),
('240', 'Tân Sơn', 'Huyện', '', '25'),
('243', 'Vĩnh Yên', 'Thành Phố', '21 18 26N, 105 35 33E', '26'),
('244', 'Phúc Yên', 'Thị Xã', '21 18 55N, 105 43 54E', '26'),
('246', 'Lập Thạch', 'Huyện', '21 24 45N, 105 25 39E', '26'),
('247', 'Tam Dương', 'Huyện', '21 21 40N, 105 33 36E', '26'),
('248', 'Tam Đảo', 'Huyện', '21 27 34N, 105 35 09E', '26'),
('249', 'Bình Xuyên', 'Huyện', '21 19 48N, 105 39 43E', '26'),
('250', 'Mê Linh', 'Huyện', '21 10 53N, 105 42 05E', '01'),
('251', 'Yên Lạc', 'Huyện', '21 13 17N, 105 34 44E', '26'),
('252', 'Vĩnh Tường', 'Huyện', '21 14 58N, 105 29 37E', '26'),
('253', 'Sông Lô', 'Huyện', '', '26'),
('256', 'Bắc Ninh', 'Thành Phố', '21 10 48N, 106 03 58E', '27'),
('258', 'Yên Phong', 'Huyện', '21 12 40N, 105 59 36E', '27'),
('259', 'Quế Võ', 'Huyện', '21 08 44N, 106 11 06E', '27'),
('260', 'Tiên Du', 'Huyện', '21 07 37N, 106 02 19E', '27'),
('261', 'Từ Sơn', 'Thị Xã', '21 07 12N, 105 57 26E', '27'),
('262', 'Thuận Thành', 'Huyện', '21 02 24N, 106 04 10E', '27'),
('263', 'Gia Bình', 'Huyện', '21 03 55N, 106 12 53E', '27'),
('264', 'Lương Tài', 'Huyện', '21 01 33N, 106 13 28E', '27'),
('268', 'Hà Đông', 'Quận', '20 57 25N, 105 45 21E', '01'),
('269', 'Sơn Tây', 'Thị Xã', '21 05 51N, 105 28 27E', '01'),
('271', 'Ba Vì', 'Huyện', '21 09 40N, 105 22 43E', '01'),
('272', 'Phúc Thọ', 'Huyện', '21 06 32N, 105 34 52E', '01'),
('273', 'Đan Phượng', 'Huyện', '21 07 13N, 105 40 49E', '01'),
('274', 'Hoài Đức', 'Huyện', '21 01 25N, 105 42 03E', '01'),
('275', 'Quốc Oai', 'Huyện', '20 58 45N, 105 36 43E', '01'),
('276', 'Thạch Thất', 'Huyện', '21 02 17N, 105 33 05E', '01'),
('277', 'Chương Mỹ', 'Huyện', '20 52 46N, 105 39 01E', '01'),
('278', 'Thanh Oai', 'Huyện', '20 51 44N, 105 46 18E', '01'),
('279', 'Thường Tín', 'Huyện', '20 49 59N, 105 22 19E', '01'),
('280', 'Phú Xuyên', 'Huyện', '20 43 37N, 105 53 43E', '01'),
('281', 'Ứng Hòa', 'Huyện', '20 42 41N, 105 47 58E', '01'),
('282', 'Mỹ Đức', 'Huyện', '20 41 53N, 105 43 31E', '01'),
('288', 'Hải Dương', 'Thành Phố', '20 56 14N, 106 18 21E', '30'),
('290', 'Chí Linh', 'Huyện', '21 07 47N, 106 23 46E', '30'),
('291', 'Nam Sách', 'Huyện', '21 00 15N, 106 20 26E', '30'),
('292', 'Kinh Môn', 'Huyện', '21 00 04N, 106 30 23E', '30'),
('293', 'Kim Thành', 'Huyện', '20 55 40N, 106 30 33E', '30'),
('294', 'Thanh Hà', 'Huyện', '20 53 19N, 106 25 43E', '30'),
('295', 'Cẩm Giàng', 'Huyện', '20 57 05N, 106 12 29E', '30'),
('296', 'Bình Giang', 'Huyện', '20 52 36N, 106 11 24E', '30'),
('297', 'Gia Lộc', 'Huyện', '20 51 01N, 106 17 34E', '30'),
('298', 'Tứ Kỳ', 'Huyện', '20 49 05N, 106 24 05E', '30'),
('299', 'Ninh Giang', 'Huyện', '20 45 13N, 106 20 09E', '30'),
('300', 'Thanh Miện', 'Huyện', '20 46 02N, 106 12 26E', '30'),
('303', 'Hồng Bàng', 'Quận', '20 52 37N, 106 38 32E', '31'),
('304', 'Ngô Quyền', 'Quận', '20 51 13N, 106 41 57E', '31'),
('305', 'Lê Chân', 'Quận', '20 50 12N, 106 40 30E', '31'),
('306', 'Hải An', 'Quận', '20 49 38N, 106 45 57E', '31'),
('307', 'Kiến An', 'Quận', '20 48 26N, 106 38 03E', '31'),
('308', 'Đồ Sơn', 'Quận', '20 42 41N, 106 44 54E', '31'),
('309', 'Kinh Dương', 'Quận', '', '31'),
('311', 'Thuỷ Nguyên', 'Huyện', '20 56 36N, 106 39 38E', '31'),
('312', 'An Dương', 'Huyện', '20 53 06N, 106 35 36E', '31'),
('313', 'An Lão', 'Huyện', '20 47 54N, 106 33 19E', '31'),
('314', 'Kiến Thụy', 'Huyện', '20 45 13N, 106 41 47E', '31'),
('315', 'Tiên Lãng', 'Huyện', '20 42 23N, 106 36 03E', '31'),
('316', 'Vĩnh Bảo', 'Huyện', '20 40 56N, 106 29 57E', '31'),
('317', 'Cát Hải', 'Huyện', '20 47 09N, 106 58 07E', '31'),
('318', 'Bạch Long Vĩ', 'Huyện', '20 08 41N, 107 42 51E', '31'),
('323', 'Hưng Yên', 'Thành Phố', '20 39 38N, 106 03 08E', '33'),
('325', 'Văn Lâm', 'Huyện', '20 58 31N, 106 02 51E', '33'),
('326', 'Văn Giang', 'Huyện', '20 55 51N, 105 57 14E', '33'),
('327', 'Yên Mỹ', 'Huyện', '20 53 45N, 106 01 21E', '33'),
('328', 'Mỹ Hào', 'Huyện', '20 55 35N, 106 05 34E', '33'),
('329', 'Ân Thi', 'Huyện', '20 48 49N, 106 05 30E', '33'),
('330', 'Khoái Châu', 'Huyện', '20 49 53N, 105 58 28E', '33'),
('331', 'Kim Động', 'Huyện', '20 44 47N, 106 01 47E', '33'),
('332', 'Tiên Lữ', 'Huyện', '20 40 05N, 106 07 59E', '33'),
('333', 'Phù Cừ', 'Huyện', '20 42 51N, 106 11 30E', '33'),
('336', 'Thái Bình', 'Thành Phố', '20 26 45N, 106 19 56E', '34'),
('338', 'Quỳnh Phụ', 'Huyện', '20 38 57N, 106 21 16E', '34'),
('339', 'Hưng Hà', 'Huyện', '20 35 38N, 106 12 42E', '34'),
('340', 'Đông Hưng', 'Huyện', '20 32 50N, 106 20 15E', '34'),
('341', 'Thái Thụy', 'Huyện', '20 32 33N, 106 32 32E', '34'),
('342', 'Tiền Hải', 'Huyện', '20 21 05N, 106 32 45E', '34'),
('343', 'Kiến Xương', 'Huyện', '20 23 52N, 106 25 22E', '34'),
('344', 'Vũ Thư', 'Huyện', '20 25 29N, 106 16 43E', '34'),
('347', 'Phủ Lý', 'Thành Phố', '20 32 19N, 105 54 55E', '35'),
('349', 'Duy Tiên', 'Huyện', '20 37 33N, 105 58 01E', '35'),
('350', 'Kim Bảng', 'Huyện', '20 34 19N, 105 50 41E', '35'),
('351', 'Thanh Liêm', 'Huyện', '20 27 31N, 105 55 09E', '35'),
('352', 'Bình Lục', 'Huyện', '20 29 23N, 106 02 52E', '35'),
('353', 'Lý Nhân', 'Huyện', '20 32 55N, 106 04 48E', '35'),
('356', 'Nam Định', 'Thành Phố', '20 25 07N, 106 09 54E', '36'),
('358', 'Mỹ Lộc', 'Huyện', '20 27 21N, 106 07 56E', '36'),
('359', 'Vụ Bản', 'Huyện', '20 22 57N, 106 05 35E', '36'),
('360', 'Ý Yên', 'Huyện', '20 19 48N, 106 01 55E', '36'),
('361', 'Nghĩa Hưng', 'Huyện', '20 05 37N, 106 08 59E', '36'),
('362', 'Nam Trực', 'Huyện', '20 20 08N, 106 12 54E', '36'),
('363', 'Trực Ninh', 'Huyện', '20 14 42N, 106 12 45E', '36'),
('364', 'Xuân Trường', 'Huyện', '20 17 53N, 106 21 43E', '36'),
('365', 'Giao Thủy', 'Huyện', '20 14 45N, 106 28 39E', '36'),
('366', 'Hải Hậu', 'Huyện', '20 06 26N, 106 16 29E', '36'),
('369', 'Ninh Bình', 'Thành Phố', '20 14 45N, 105 58 24E', '37'),
('370', 'Tam Điệp', 'Thị Xã', '20 09 42N, 103 52 43E', '37'),
('372', 'Nho Quan', 'Huyện', '20 18 46N, 105 42 48E', '37'),
('373', 'Gia Viễn', 'Huyện', '20 19 50N, 105 52 20E', '37'),
('374', 'Hoa Lư', 'Huyện', '20 15 04N, 105 55 52E', '37'),
('375', 'Yên Khánh', 'Huyện', '20 11 26N, 106 04 33E', '37'),
('376', 'Kim Sơn', 'Huyện', '20 02 07N, 106 05 27E', '37'),
('377', 'Yên Mô', 'Huyện', '20 07 45N, 105 59 45E', '37'),
('380', 'Thanh Hóa', 'Thành Phố', '19 48 26N, 105 47 37E', '38'),
('381', 'Bỉm Sơn', 'Thị Xã', '20 05 21N, 105 51 48E', '38'),
('382', 'Sầm Sơn', 'Thị Xã', '19 45 11N, 105 54 03E', '38'),
('384', 'Mường Lát', 'Huyện', '20 30 42N, 104 37 27E', '38'),
('385', 'Quan Hóa', 'Huyện', '20 29 15N, 104 56 35E', '38'),
('386', 'Bá Thước', 'Huyện', '20 22 48N, 105 14 50E', '38'),
('387', 'Quan Sơn', 'Huyện', '20 15 17N, 104 51 58E', '38'),
('388', 'Lang Chánh', 'Huyện', '20 08 58N, 105 07 40E', '38'),
('389', 'Ngọc Lặc', 'Huyện', '20 04 08N, 105 22 39E', '38'),
('390', 'Cẩm Thủy', 'Huyện', '20 12 20N, 105 27 22E', '38'),
('391', 'Thạch Thành', 'Huyện', '21 12 41N, 105 36 38E', '38'),
('392', 'Hà Trung', 'Huyện', '20 03 20N, 105 51 20E', '38'),
('393', 'Vĩnh Lộc', 'Huyện', '20 02 29N, 105 39 28E', '38'),
('394', 'Yên Định', 'Huyện', '20 00 31N, 105 37 44E', '38'),
('395', 'Thọ Xuân', 'Huyện', '19 55 39N, 105 29 14E', '38'),
('396', 'Thường Xuân', 'Huyện', '19 54 55N, 105 10 46E', '38'),
('397', 'Triệu Sơn', 'Huyện', '19 48 11N, 105 34 03E', '38'),
('398', 'Thiệu Hoá', 'Huyện', '19 53 56N, 105 40 57E', '38'),
('399', 'Hoằng Hóa', 'Huyện', '19 51 59N, 105 51 34E', '38'),
('400', 'Hậu Lộc', 'Huyện', '19 56 02N, 105 53 19E', '38'),
('401', 'Nga Sơn', 'Huyện', '20 00 16N, 105 59 26E', '38'),
('402', 'Như Xuân', 'Huyện', '19 5 55N, 105 20 22E', '38'),
('403', 'Như Thanh', 'Huyện', '19 35 19N, 105 33 09E', '38'),
('404', 'Nông Cống', 'Huyện', '19 36 58N, 105 40 54E', '38'),
('405', 'Đông Sơn', 'Huyện', '19 47 44N, 105 42 19E', '38'),
('406', 'Quảng Xương', 'Huyện', '19 40 53N, 105 48 01E', '38'),
('407', 'Tĩnh Gia', 'Huyện', '19 27 13N, 105 43 38E', '38'),
('412', 'Vinh', 'Thành Phố', '18 41 06N, 105 42 05E', '40'),
('413', 'Cửa Lò', 'Thị Xã', '18 47 26N, 105 43 31E', '40'),
('414', 'Thái Hoà', 'Thị Xã', '', '40'),
('415', 'Quế Phong', 'Huyện', '19 42 25N, 104 54 21E', '40'),
('416', 'Quỳ Châu', 'Huyện', '19 32 16N, 105 03 18E', '40'),
('417', 'Kỳ Sơn', 'Huyện', '19 24 36N, 104 09 45E', '40'),
('418', 'Tương Dương', 'Huyện', '19 19 15N, 104 35 41E', '40'),
('419', 'Nghĩa Đàn', 'Huyện', '19 21 19N, 105 26 33E', '40'),
('420', 'Quỳ Hợp', 'Huyện', '19 19 24N, 105 09 12E', '40'),
('421', 'Quỳnh Lưu', 'Huyện', '19 14 01N, 105 37 00E', '40'),
('422', 'Con Cuông', 'Huyện', '19 03 50N, 107 47 15E', '40'),
('423', 'Tân Kỳ', 'Huyện', '19 06 11N, 105 14 14E', '40'),
('424', 'Anh Sơn', 'Huyện', '18 58 04N, 105 04 30E', '40'),
('425', 'Diễn Châu', 'Huyện', '19 01 20N, 105 34 13E', '40'),
('426', 'Yên Thành', 'Huyện', '19 01 25N, 105 26 17E', '40'),
('427', 'Đô Lương', 'Huyện', '18 55 00N, 105 21 03E', '40'),
('428', 'Thanh Chương', 'Huyện', '18 44 11N, 105 12 59E', '40'),
('429', 'Nghi Lộc', 'Huyện', '18 47 41N, 105 31 30E', '40'),
('430', 'Nam Đàn', 'Huyện', '18 40 28N, 105 30 32E', '40'),
('431', 'Hưng Nguyên', 'Huyện', '18 41 13N, 105 37 41E', '40'),
('436', 'Hà Tĩnh', 'Thành Phố', '18 21 20N, 105 54 00E', '42'),
('437', 'Hồng Lĩnh', 'Thị Xã', '18 32 05N, 105 42 40E', '42'),
('439', 'Hương Sơn', 'Huyện', '18 26 47N, 105 19 36E', '42'),
('440', 'Đức Thọ', 'Huyện', '18 29 23N, 105 36 39E', '42'),
('441', 'Vũ Quang', 'Huyện', '18 19 30N, 105 26 38E', '42'),
('442', 'Nghi Xuân', 'Huyện', '18 38 46N, 105 46 17E', '42'),
('443', 'Can Lộc', 'Huyện', '18 26 39N, 105 46 13E', '42'),
('444', 'Hương Khê', 'Huyện', '18 11 36N, 105 41 24E', '42'),
('445', 'Thạch Hà', 'Huyện', '18 19 29N, 105 52 43E', '42'),
('446', 'Cẩm Xuyên', 'Huyện', '18 11 32N, 106 00 04E', '42'),
('447', 'Kỳ Anh', 'Huyện', '18 05 15N, 106 15 49E', '42'),
('448', 'Lộc Hà', 'Huyện', '', '42'),
('450', 'Đồng Hới', 'Thành Phố', '17 26 53N, 106 35 15E', '44'),
('452', 'Minh Hóa', 'Huyện', '17 44 03N, 105 51 45E', '44'),
('453', 'Tuyên Hóa', 'Huyện', '17 54 04N, 105 58 17E', '44'),
('454', 'Quảng Trạch', 'Huyện', '17 50 04N, 106 22 24E', '44'),
('455', 'Bố Trạch', 'Huyện', '17 29 13N, 106 06 54E', '44'),
('456', 'Quảng Ninh', 'Huyện', '17 15 15N, 106 32 31E', '44'),
('457', 'Lệ Thủy', 'Huyện', '17 07 35N, 106 41 47E', '44'),
('461', 'Đông Hà', 'Thành Phố', '16 48 12N, 107 05 12E', '45'),
('462', 'Quảng Trị', 'Thị Xã', '16 44 37N, 107 11 20E', '45'),
('464', 'Vĩnh Linh', 'Huyện', '17 01 35N, 106 53 49E', '45'),
('465', 'Hướng Hóa', 'Huyện', '16 42 19N, 106 40 14E', '45'),
('466', 'Gio Linh', 'Huyện', '16 54 49N, 106 56 16E', '45'),
('467', 'Đa Krông', 'Huyện', '16 33 58N, 106 55 49E', '45'),
('468', 'Cam Lộ', 'Huyện', '16 47 09N, 106 57 52E', '45'),
('469', 'Triệu Phong', 'Huyện', '16 46 32N, 107 09 12E', '45'),
('470', 'Hải Lăng', 'Huyện', '16 41 07N, 107 13 34E', '45'),
('471', 'Cồn Cỏ', 'Huyện', '19 09 39N, 107 19 58E', '45'),
('474', 'Huế', 'Thành Phố', '16 27 16N, 107 34 29E', '46'),
('476', 'Phong Điền', 'Huyện', '16 32 42N, 106 16 37E', '46'),
('477', 'Quảng Điền', 'Huyện', '16 35 21N, 107 29 31E', '46'),
('478', 'Phú Vang', 'Huyện', '16 27 20N, 107 42 28E', '46'),
('479', 'Hương Thủy', 'Huyện', '16 19 27N, 107 37 26E', '46'),
('480', 'Hương Trà', 'Huyện', '16 25 49N, 107 28 37E', '46'),
('481', 'A Lưới', 'Huyện', '16 13 59N, 107 16 12E', '46'),
('482', 'Phú Lộc', 'Huyện', '16 17 16N, 107 55 25E', '46'),
('483', 'Nam Đông', 'Huyện', '16 07 11N, 107 41 25E', '46'),
('490', 'Liên Chiểu', 'Quận', '16 07 26N, 108 07 04E', '48'),
('491', 'Thanh Khê', 'Quận', '16 03 28N, 108 11 00E', '48'),
('492', 'Hải Châu', 'Quận', '16 03 38N, 108 11 46E', '48'),
('493', 'Sơn Trà', 'Quận', '16 06 13N, 108 16 26E', '48'),
('494', 'Ngũ Hành Sơn', 'Quận', '16 00 30N, 108 15 09E', '48'),
('495', 'Cẩm Lệ', 'Quận', '', '48'),
('497', 'Hoà Vang', 'Huyện', '16 03 59N, 108 01 57E', '48'),
('498', 'Hoàng Sa', 'Huyện', '16 21 36N, 111 57 01E', '48'),
('502', 'Tam Kỳ', 'Thành Phố', '15 34 37N, 108 29 52E', '49'),
('503', 'Hội An', 'Thành Phố', '15 53 20N, 108 20 42E', '49'),
('504', 'Tây Giang', 'Huyện', '15 53 46N, 107 25 52E', '49'),
('505', 'Đông Giang', 'Huyện', '15 54 44N, 107 47 06E', '49'),
('506', 'Đại Lộc', 'Huyện', '15 50 10N, 107 58 27E', '49'),
('507', 'Điện Bàn', 'Huyện', '15 54 15N, 108 13 38E', '49'),
('508', 'Duy Xuyên', 'Huyện', '15 47 58N, 108 13 27E', '49'),
('509', 'Quế Sơn', 'Huyện', '15 41 03N, 108 05 34E', '49'),
('510', 'Nam Giang', 'Huyện', '15 36 37N, 107 33 52E', '49'),
('511', 'Phước Sơn', 'Huyện', '15 23 17N, 107 50 22E', '49'),
('512', 'Hiệp Đức', 'Huyện', '15 31 09N, 108 05 56E', '49'),
('513', 'Thăng Bình', 'Huyện', '15 42 29N, 108 22 04E', '49'),
('514', 'Tiên Phước', 'Huyện', '15 29 30N, 108 15 28E', '49'),
('515', 'Bắc Trà My', 'Huyện', '15 08 00N, 108 05 32E', '49'),
('516', 'Nam Trà My', 'Huyện', '15 16 40N, 108 12 15E', '49'),
('517', 'Núi Thành', 'Huyện', '15 26 53N, 108 34 49E', '49'),
('518', 'Phú Ninh', 'Huyện', '15 30 43N, 108 24 43E', '49'),
('519', 'Nông Sơn', 'Huyện', '', '49'),
('522', 'Quảng Ngãi', 'Thành Phố', '15 07 17N, 108 48 24E', '51'),
('524', 'Bình Sơn', 'Huyện', '15 18 45N, 108 45 35E', '51'),
('525', 'Trà Bồng', 'Huyện', '15 13 30N, 108 29 57E', '51'),
('526', 'Tây Trà', 'Huyện', '15 11 13N, 108 22 23E', '51'),
('527', 'Sơn Tịnh', 'Huyện', '15 11 49N, 108 45 03E', '51'),
('528', 'Tư Nghĩa', 'Huyện', '15 05 25N, 108 45 23E', '51'),
('529', 'Sơn Hà', 'Huyện', '14 58 35N, 108 29 09E', '51'),
('530', 'Sơn Tây', 'Huyện', '14 58 11N, 108 21 22E', '51'),
('531', 'Minh Long', 'Huyện', '14 56 49N, 108 40 19E', '51'),
('532', 'Nghĩa Hành', 'Huyện', '14 58 06N, 108 46 05E', '51'),
('533', 'Mộ Đức', 'Huyện', '11 59 13N, 108 52 21E', '51'),
('534', 'Đức Phổ', 'Huyện', '14 44 59N, 108 56 58E', '51'),
('535', 'Ba Tơ', 'Huyện', '14 42 52N, 108 43 44E', '51'),
('536', 'Lý Sơn', 'Huyện', '15 22 50N, 109 06 56E', '51'),
('540', 'Qui Nhơn', 'Thành Phố', '13 47 15N, 109 12 48E', '52'),
('542', 'An Lão', 'Huyện', '14 32 10N, 108 47 52E', '52'),
('543', 'Hoài Nhơn', 'Huyện', '14 30 56N, 109 01 56E', '52'),
('544', 'Hoài Ân', 'Huyện', '14 20 51N, 108 54 04E', '52'),
('545', 'Phù Mỹ', 'Huyện', '14 14 41N, 109 05 43E', '52'),
('546', 'Vĩnh Thạnh', 'Huyện', '14 14 26N, 108 44 08E', '52'),
('547', 'Tây Sơn', 'Huyện', '13 56 47N, 108 53 06E', '52'),
('548', 'Phù Cát', 'Huyện', '14 03 48N, 109 03 57E', '52'),
('549', 'An Nhơn', 'Huyện', '13 51 28N, 109 04 02E', '52'),
('550', 'Tuy Phước', 'Huyện', '13 46 30N, 109 05 38E', '52'),
('551', 'Vân Canh', 'Huyện', '13 40 35N, 108 57 52E', '52'),
('555', 'Tuy Hòa', 'Thành Phố', '13 05 42N, 109 15 50E', '54'),
('557', 'Sông Cầu', 'Thị Xã', '13 31 40N, 109 12 39E', '54'),
('558', 'Đồng Xuân', 'Huyện', '13 24 59N, 108 56 46E', '54'),
('559', 'Tuy An', 'Huyện', '13 15 19N, 109 12 21E', '54'),
('560', 'Sơn Hòa', 'Huyện', '13 12 16N, 108 57 17E', '54'),
('561', 'Sông Hinh', 'Huyện', '12 54 19N, 108 53 38E', '54'),
('562', 'Tây Hoà', 'Huyện', '', '54'),
('563', 'Phú Hoà', 'Huyện', '13 04 07N, 109 11 24E', '54'),
('564', 'Đông Hoà', 'Huyện', '', '54'),
('568', 'Nha Trang', 'Thành Phố', '12 15 40N, 109 10 40E', '56'),
('569', 'Cam Ranh', 'Thị Xã', '11 59 05N, 108 08 17E', '56'),
('570', 'Cam Lâm', 'Huyện', '', '56'),
('571', 'Vạn Ninh', 'Huyện', '12 43 10N, 109 11 18E', '56'),
('572', 'Ninh Hòa', 'Huyện', '12 32 54N, 109 06 11E', '56'),
('573', 'Khánh Vĩnh', 'Huyện', '12 17 50N, 108 51 56E', '56'),
('574', 'Diên Khánh', 'Huyện', '12 13 19N, 109 02 16E', '56'),
('575', 'Khánh Sơn', 'Huyện', '12 02 17N, 108 53 47E', '56'),
('576', 'Trường Sa', 'Huyện', '9 07 27N, 114 15 00E', '56'),
('582', 'Phan Rang-Tháp Chàm', 'Thành Phố', '11 36 11N, 108 58 34E', '58'),
('584', 'Bác Ái', 'Huyện', '11 54 45N, 108 51 29E', '58'),
('585', 'Ninh Sơn', 'Huyện', '11 42 36N, 108 44 55E', '58'),
('586', 'Ninh Hải', 'Huyện', '11 42 46N, 109 05 41E', '58'),
('587', 'Ninh Phước', 'Huyện', '11 28 56N, 108 50 34E', '58'),
('588', 'Thuận Bắc', 'Huyện', '', '58'),
('589', 'Thuận Nam', 'Huyện', '', '58'),
('593', 'Phan Thiết', 'Thành Phố', '10 54 16N, 108 03 44E', '60'),
('594', 'La Gi', 'Thị Xã', '', '60'),
('595', 'Tuy Phong', 'Huyện', '11 20 26N, 108 41 15E', '60'),
('596', 'Bắc Bình', 'Huyện', '11 15 52N, 108 21 33E', '60'),
('597', 'Hàm Thuận Bắc', 'Huyện', '11 09 18N, 108 03 07E', '60'),
('598', 'Hàm Thuận Nam', 'Huyện', '10 56 20N, 107 54 38E', '60'),
('599', 'Tánh Linh', 'Huyện', '11 08 26N, 107 41 22E', '60'),
('600', 'Đức Linh', 'Huyện', '11 11 43N, 107 31 34E', '60'),
('601', 'Hàm Tân', 'Huyện', '10 44 41N, 107 41 33E', '60'),
('602', 'Phú Quí', 'Huyện', '10 33 13N, 108 57 46E', '60'),
('608', 'Kon Tum', 'Thành Phố', '14 20 32N, 107 58 04E', '62'),
('610', 'Đắk Glei', 'Huyện', '15 08 13N, 107 44 03E', '62'),
('611', 'Ngọc Hồi', 'Huyện', '14 44 23N, 107 38 49E', '62'),
('612', 'Đắk Tô', 'Huyện', '14 46 49N, 107 55 36E', '62'),
('613', 'Kon Plông', 'Huyện', '14 48 13N, 108 20 05E', '62'),
('614', 'Kon Rẫy', 'Huyện', '14 32 56N, 108 13 09E', '62'),
('615', 'Đắk Hà', 'Huyện', '14 36 50N, 107 59 55E', '62'),
('616', 'Sa Thầy', 'Huyện', '14 16 02N, 107 36 30E', '62'),
('617', 'Tu Mơ Rông', 'Huyện', '', '62'),
('622', 'Pleiku', 'Thành Phố', '13 57 42N, 107 58 03E', '64'),
('623', 'An Khê', 'Thị Xã', '14 01 24N, 108 41 29E', '64'),
('624', 'Ayun Pa', 'Thị Xã', '', '64'),
('625', 'Kbang', 'Huyện', '14 18 08N, 108 29 17E', '64'),
('626', 'Đăk Đoa', 'Huyện', '14 07 02N, 108 09 36E', '64'),
('627', 'Chư Păh', 'Huyện', '14 13 30N, 107 56 33E', '64'),
('628', 'Ia Grai', 'Huyện', '13 59 25N, 107 43 16E', '64'),
('629', 'Mang Yang', 'Huyện', '13 57 26N, 108 18 37E', '64'),
('630', 'Kông Chro', 'Huyện', '13 45 47N, 108 36 04E', '64'),
('631', 'Đức Cơ', 'Huyện', '13 46 16N, 107 38 26E', '64'),
('632', 'Chư Prông', 'Huyện', '13 35 39N, 107 47 36E', '64'),
('633', 'Chư Sê', 'Huyện', '13 37 04N, 108 06 56E', '64'),
('634', 'Đăk Pơ', 'Huyện', '13 55 47N, 108 36 16E', '64'),
('635', 'Ia Pa', 'Huyện', '13 31 37N, 108 30 34E', '64'),
('637', 'Krông Pa', 'Huyện', '13 14 13N, 108 39 12E', '64'),
('638', 'Phú Thiện', 'Huyện', '', '64'),
('639', 'Chư Pưh', 'Huyện', '', '64'),
('643', 'Buôn Ma Thuột', 'Thành Phố', '12 39 43N, 108 10 40E', '66'),
('644', 'Buôn Hồ', 'Thị Xã', '', '66'),
('645', 'Ea H\'leo', 'Huyện', '13 13 52N, 108 12 30E', '66'),
('646', 'Ea Súp', 'Huyện', '13 10 59N, 107 46 49E', '66'),
('647', 'Buôn Đôn', 'Huyện', '12 52 45N, 107 45 20E', '66'),
('648', 'Cư M\'gar', 'Huyện', '12 53 47N, 108 04 16E', '66'),
('649', 'Krông Búk', 'Huyện', '12 56 27N, 108 13 54E', '66'),
('650', 'Krông Năng', 'Huyện', '12 59 41N, 108 23 42E', '66'),
('651', 'Ea Kar', 'Huyện', '12 48 17N, 108 32 42E', '66'),
('652', 'M\'đrắk', 'Huyện', '12 42 14N, 108 47 09E', '66'),
('653', 'Krông Bông', 'Huyện', '12 27 08N, 108 27 01E', '66'),
('654', 'Krông Pắc', 'Huyện', '12 41 20N, 108 18 42E', '66'),
('655', 'Krông A Na', 'Huyện', '12 31 51N, 108 05 03E', '66'),
('656', 'Lắk', 'Huyện', '12 19 20N, 108 12 17E', '66'),
('657', 'Cư Kuin', 'Huyện', '', '66'),
('660', 'Gia Nghĩa', 'Thị Xã', '', '67'),
('661', 'Đắk Glong', 'Huyện', '12 01 53N, 107 50 37E', '67'),
('662', 'Cư Jút', 'Huyện', '12 40 56N, 107 44 44E', '67'),
('663', 'Đắk Mil', 'Huyện', '12 31 08N, 107 42 24E', '67'),
('664', 'Krông Nô', 'Huyện', '12 22 16N, 107 53 49E', '67'),
('665', 'Đắk Song', 'Huyện', '12 14 04N, 107 36 30E', '67'),
('666', 'Đắk R\'lấp', 'Huyện', '12 02 30N, 107 25 59E', '67'),
('667', 'Tuy Đức', 'Huyện', '', '67'),
('672', 'Đà Lạt', 'Thành Phố', '11 54 33N, 108 27 08E', '68'),
('673', 'Bảo Lộc', 'Thị Xã', '11 32 48N, 107 47 37E', '68'),
('674', 'Đam Rông', 'Huyện', '12 02 35N, 108 10 26E', '68'),
('675', 'Lạc Dương', 'Huyện', '12 08 30N, 108 27 48E', '68'),
('676', 'Lâm Hà', 'Huyện', '11 55 26N, 108 11 31E', '68'),
('677', 'Đơn Dương', 'Huyện', '11 48 26N, 108 32 48E', '68'),
('678', 'Đức Trọng', 'Huyện', '11 41 50N, 108 18 58E', '68'),
('679', 'Di Linh', 'Huyện', '11 31 10N, 108 05 23E', '68'),
('680', 'Bảo Lâm', 'Huyện', '11 38 31N, 107 43 25E', '68'),
('681', 'Đạ Huoai', 'Huyện', '11 27 11N, 107 38 08E', '68'),
('682', 'Đạ Tẻh', 'Huyện', '11 33 46N, 107 32 00E', '68'),
('683', 'Cát Tiên', 'Huyện', '11 39 38N, 107 23 27E', '68'),
('688', 'Phước Long', 'Thị Xã', '', '70'),
('689', 'Đồng Xoài', 'Thị Xã', '11 31 01N, 106 50 21E', '70'),
('690', 'Bình Long', 'Thị Xã', '', '70'),
('691', 'Bù Gia Mập', 'Huyện', '11 56 57N, 106 59 21E', '70'),
('692', 'Lộc Ninh', 'Huyện', '11 49 28N, 106 35 11E', '70'),
('693', 'Bù Đốp', 'Huyện', '11 59 08N, 106 49 54E', '70'),
('694', 'Hớn Quản', 'Huyện', '11 37 37N, 106 36 02E', '70'),
('695', 'Đồng Phù', 'Huyện', '11 28 45N, 106 57 07E', '70'),
('696', 'Bù Đăng', 'Huyện', '11 46 09N, 107 14 14E', '70'),
('697', 'Chơn Thành', 'Huyện', '11 28 45N, 106 39 26E', '70'),
('703', 'Tây Ninh', 'Thị Xã', '11 21 59N, 106 07 47E', '72'),
('705', 'Tân Biên', 'Huyện', '11 35 14N, 105 57 53E', '72'),
('706', 'Tân Châu', 'Huyện', '11 34 49N, 106 17 48E', '72'),
('707', 'Dương Minh Châu', 'Huyện', '11 22 04N, 106 16 58E', '72'),
('708', 'Châu Thành', 'Huyện', '11 19 02N, 106 00 15E', '72'),
('709', 'Hòa Thành', 'Huyện', '11 15 31N, 106 08 44E', '72'),
('710', 'Gò Dầu', 'Huyện', '11 09 39N, 106 14 42E', '72'),
('711', 'Bến Cầu', 'Huyện', '11 07 50N, 106 08 25E', '72'),
('712', 'Trảng Bàng', 'Huyện', '11 06 18N, 106 23 12E', '72'),
('718', 'Thủ Dầu Một', 'Thị Xã', '11 00 01N, 106 38 56E', '74'),
('720', 'Dầu Tiếng', 'Huyện', '11 19 07N, 106 26 59E', '74'),
('721', 'Bến Cát', 'Huyện', '11 12 42N, 106 36 28E', '74'),
('722', 'Phú Giáo', 'Huyện', '11 20 21N, 106 47 48E', '74'),
('723', 'Tân Uyên', 'Huyện', '11 06 31N, 106 49 02E', '74'),
('724', 'Dĩ An', 'Huyện', '10 55 03N, 106 47 09E', '74'),
('725', 'Thuận An', 'Huyện', '10 55 58N, 106 41 59E', '74'),
('731', 'Biên Hòa', 'Thành Phố', '10 56 31N, 106 50 50E', '75'),
('732', 'Long Khánh', 'Thị Xã', '10 56 24N, 107 14 29E', '75'),
('734', 'Tân Phú', 'Huyện', '11 22 51N, 107 21 35E', '75'),
('735', 'Vĩnh Cửu', 'Huyện', '11 14 31N, 107 00 06E', '75'),
('736', 'Định Quán', 'Huyện', '11 12 41N, 107 17 03E', '75'),
('737', 'Trảng Bom', 'Huyện', '10 58 39N, 107 00 52E', '75'),
('738', 'Thống Nhất', 'Huyện', '10 58 29N, 107 09 26E', '75'),
('739', 'Cẩm Mỹ', 'Huyện', '10 47 05N, 107 14 36E', '75'),
('740', 'Long Thành', 'Huyện', '10 47 38N, 106 59 42E', '75'),
('741', 'Xuân Lộc', 'Huyện', '10 55 39N, 107 24 21E', '75'),
('742', 'Nhơn Trạch', 'Huyện', '10 39 18N, 106 53 18E', '75'),
('747', 'Vũng Tầu', 'Thành Phố', '10 24 08N, 107 07 05E', '77'),
('748', 'Bà Rịa', 'Thị Xã', '10 30 33N, 107 10 47E', '77'),
('750', 'Châu Đức', 'Huyện', '10 39 23N, 107 15 08E', '77'),
('751', 'Xuyên Mộc', 'Huyện', '10 37 46N, 107 29 39E', '77'),
('752', 'Long Điền', 'Huyện', '10 26 47N, 107 12 53E', '77'),
('753', 'Đất Đỏ', 'Huyện', '10 28 40N, 107 18 27E', '77'),
('754', 'Tân Thành', 'Huyện', '10 34 50N, 107 05 06E', '77'),
('755', 'Côn Đảo', 'Huyện', '8 42 25N, 106 36 05E', '77'),
('760', '1', 'Quận', '10 46 34N, 106 41 45E', '79'),
('761', '12', 'Quận', '10 51 43N, 106 39 32E', '79'),
('762', 'Thủ Đức', 'Quận', '10 51 20N, 106 45 05E', '79'),
('763', '9', 'Quận', '10 49 49N, 106 49 03E', '79'),
('764', 'Gò Vấp', 'Quận', '10 50 12N, 106 39 52E', '79'),
('765', 'Bình Thạnh', 'Quận', '10 48 46N, 106 42 57E', '79'),
('766', 'Tân Bình', 'Quận', '10 48 13N, 106 39 03E', '79'),
('767', 'Tân Phú', 'Quận', '10 47 32N, 106 37 31E', '79'),
('768', 'Phú Nhuận', 'Quận', '10 48 06N, 106 40 39E', '79'),
('769', '2', 'Quận', '10 46 51N, 106 45 25E', '79'),
('770', '3', 'Quận', '10 46 48N, 106 40 46E', '79'),
('771', '10', 'Quận', '10 46 25N, 106 40 02E', '79'),
('772', '11', 'Quận', '10 46 01N, 106 38 44E', '79'),
('773', '4', 'Quận', '10 45 42N, 106 42 09E', '79'),
('774', '5', 'Quận', '10 45 24N, 106 40 00E', '79'),
('775', '6', 'Quận', '10 44 46N, 106 38 10E', '79'),
('776', '8', 'Quận', '10 43 24N, 106 37 40E', '79'),
('777', 'Bình Tân', 'Quận', '10 46 16N, 106 35 26E', '79'),
('778', '7', 'Quận', '10 44 19N, 106 43 35E', '79'),
('783', 'Củ Chi', 'Huyện', '11 02 17N, 106 30 20E', '79'),
('784', 'Hóc Môn', 'Huyện', '10 52 42N, 106 35 33E', '79'),
('785', 'Bình Chánh', 'Huyện', '10 45 01N, 106 30 45E', '79'),
('786', 'Nhà Bè', 'Huyện', '10 39 06N, 106 43 35E', '79'),
('787', 'Cần Giờ', 'Huyện', '10 30 43N, 106 52 50E', '79'),
('794', 'Tân An', 'Thành Phố', '10 31 36N, 106 24 06E', '80'),
('796', 'Tân Hưng', 'Huyện', '10 49 05N, 105 39 26E', '80'),
('797', 'Vĩnh Hưng', 'Huyện', '10 52 54N, 105 45 58E', '80'),
('798', 'Mộc Hóa', 'Huyện', '10 47 09N, 105 57 56E', '80'),
('799', 'Tân Thạnh', 'Huyện', '10 37 44N, 105 57 07E', '80'),
('800', 'Thạnh Hóa', 'Huyện', '10 41 37N, 106 11 08E', '80'),
('801', 'Đức Huệ', 'Huyện', '10 51 57N, 106 15 48E', '80'),
('802', 'Đức Hòa', 'Huyện', '10 53 04N, 106 23 58E', '80'),
('803', 'Bến Lức', 'Huyện', '10 41 40N, 106 26 28E', '80'),
('804', 'Thủ Thừa', 'Huyện', '10 39 41N, 106 20 12E', '80'),
('805', 'Tân Trụ', 'Huyện', '10 31 47N, 106 30 06E', '80'),
('806', 'Cần Đước', 'Huyện', '10 32 21N, 106 36 33E', '80'),
('807', 'Cần Giuộc', 'Huyện', '10 34 43N, 106 38 35E', '80'),
('808', 'Châu Thành', 'Huyện', '10 27 52N, 106 30 00E', '80'),
('815', 'Mỹ Tho', 'Thành Phố', '10 22 14N, 106 21 52E', '82'),
('816', 'Gò Công', 'Thị Xã', '10 21 55N, 106 40 24E', '82'),
('818', 'Tân Phước', 'Huyện', '10 30 36N, 106 13 02E', '82'),
('819', 'Cái Bè', 'Huyện', '10 24 21N, 105 56 01E', '82'),
('820', 'Cai Lậy', 'Huyện', '10 24 20N, 106 06 05E', '82'),
('821', 'Châu Thành', 'Huyện', '20 25 21N, 106 16 57E', '82'),
('822', 'Chợ Gạo', 'Huyện', '10 23 45N, 106 26 53E', '82'),
('823', 'Gò Công Tây', 'Huyện', '10 19 55N, 106 35 02E', '82'),
('824', 'Gò Công Đông', 'Huyện', '10 20 42N, 106 42 54E', '82'),
('825', 'Tân Phú Đông', 'Huyện', '', '82'),
('829', 'Bến Tre', 'Thành Phố', '10 14 17N, 106 22 26E', '83'),
('831', 'Châu Thành', 'Huyện', '10 17 24N, 106 17 45E', '83'),
('832', 'Chợ Lách', 'Huyện', '10 13 26N, 106 09 08E', '83'),
('833', 'Mỏ Cày Nam', 'Huyện', '10 06 56N, 106 19 40E', '83'),
('834', 'Giồng Trôm', 'Huyện', '10 08 46N, 106 28 12E', '83'),
('835', 'Bình Đại', 'Huyện', '10 09 56N, 106 37 46E', '83'),
('836', 'Ba Tri', 'Huyện', '10 04 08N, 106 35 10E', '83'),
('837', 'Thạnh Phú', 'Huyện', '9 55 53N, 106 32 45E', '83'),
('838', 'Mỏ Cày Bắc', 'Huyện', '', '83'),
('842', 'Trà Vinh', 'Thị Xã', '9 57 09N, 106 20 39E', '84'),
('844', 'Càng Long', 'Huyện', '9 58 18N, 106 12 52E', '84'),
('845', 'Cầu Kè', 'Huyện', '9 51 23N, 106 03 33E', '84'),
('846', 'Tiểu Cần', 'Huyện', '9 48 37N, 106 12 06E', '84'),
('847', 'Châu Thành', 'Huyện', '9 52 57N, 106 24 12E', '84'),
('848', 'Cầu Ngang', 'Huyện', '9 47 14N, 106 29 19E', '84'),
('849', 'Trà Cú', 'Huyện', '9 42 06N, 106 16 24E', '84'),
('850', 'Duyên Hải', 'Huyện', '9 39 58N, 106 26 23E', '84'),
('855', 'Vĩnh Long', 'Thành Phố', '10 15 09N, 105 56 08E', '86'),
('857', 'Long Hồ', 'Huyện', '10 13 58N, 105 55 47E', '86'),
('858', 'Mang Thít', 'Huyện', '10 10 58N, 106 05 13E', '86'),
('859', 'Vũng Liêm', 'Huyện', '10 03 32N, 106 10 35E', '86'),
('860', 'Tam Bình', 'Huyện', '10 03 58N, 105 58 03E', '86'),
('861', 'Bình Minh', 'Huyện', '10 05 45N, 105 47 21E', '86'),
('862', 'Trà Ôn', 'Huyện', '9 59 20N, 105 57 56E', '86'),
('863', 'Bình Tân', 'Huyện', '', '86'),
('866', 'Cao Lãnh', 'Thành Phố', '10 27 38N, 105 37 21E', '87'),
('867', 'Sa Đéc', 'Thị Xã', '10 19 22N, 105 44 31E', '87'),
('868', 'Hồng Ngự', 'Thị Xã', '', '87'),
('869', 'Tân Hồng', 'Huyện', '10 52 48N, 105 29 21E', '87'),
('870', 'Hồng Ngự', 'Huyện', '10 48 13N, 105 19 00E', '87'),
('871', 'Tam Nông', 'Huyện', '10 44 06N, 105 30 58E', '87'),
('872', 'Tháp Mười', 'Huyện', '10 33 36N, 105 47 13E', '87'),
('873', 'Cao Lãnh', 'Huyện', '10 29 03N, 105 41 40E', '87'),
('874', 'Thanh Bình', 'Huyện', '10 36 38N, 105 28 51E', '87'),
('875', 'Lấp Vò', 'Huyện', '10 21 27N, 105 36 06E', '87'),
('876', 'Lai Vung', 'Huyện', '10 14 43N, 105 38 40E', '87'),
('877', 'Châu Thành', 'Huyện', '10 13 27N, 105 48 38E', '87'),
('883', 'Long Xuyên', 'Thành Phố', '10 22 22N, 105 25 33E', '89'),
('884', 'Châu Đốc', 'Thị Xã', '10 41 20N, 105 05 15E', '89'),
('886', 'An Phú', 'Huyện', '10 50 12N, 105 05 33E', '89'),
('887', 'Tân Châu', 'Thị Xã', '10 49 11N, 105 11 18E', '89'),
('888', 'Phú Tân', 'Huyện', '10 40 26N, 105 14 40E', '89'),
('889', 'Châu Phú', 'Huyện', '10 34 12N, 105 12 13E', '89'),
('890', 'Tịnh Biên', 'Huyện', '10 33 30N, 105 00 17E', '89'),
('891', 'Tri Tôn', 'Huyện', '10 24 41N, 104 56 58E', '89'),
('892', 'Châu Thành', 'Huyện', '10 25 39N, 105 15 31E', '89'),
('893', 'Chợ Mới', 'Huyện', '10 27 23N, 105 26 57E', '89'),
('894', 'Thoại Sơn', 'Huyện', '10 16 45N, 105 15 59E', '89'),
('899', 'Rạch Giá', 'Thành Phố', '10 01 35N, 105 06 20E', '91'),
('900', 'Hà Tiên', 'Thị Xã', '10 22 54N, 104 30 10E', '91'),
('902', 'Kiên Lương', 'Huyện', '10 20 21N, 104 39 46E', '91'),
('903', 'Hòn Đất', 'Huyện', '10 14 20N, 104 55 57E', '91'),
('904', 'Tân Hiệp', 'Huyện', '10 05 18N, 105 14 04E', '91'),
('905', 'Châu Thành', 'Huyện', '9 57 37N, 105 10 16E', '91'),
('906', 'Giồng Giềng', 'Huyện', '9 56 05N, 105 22 06E', '91'),
('907', 'Gò Quao', 'Huyện', '9 43 17N, 105 17 06E', '91'),
('908', 'An Biên', 'Huyện', '9 48 37N, 105 03 18E', '91'),
('909', 'An Minh', 'Huyện', '9 40 24N, 104 59 05E', '91'),
('910', 'Vĩnh Thuận', 'Huyện', '9 33 25N, 105 11 30E', '91'),
('911', 'Phú Quốc', 'Huyện', '10 13 44N, 103 57 25E', '91'),
('912', 'Kiên Hải', 'Huyện', '9 48 31N, 104 37 48E', '91'),
('913', 'U Minh Thượng', 'Huyện', '', '91'),
('914', 'Giang Thành', 'Huyện', '', '91'),
('916', 'Ninh Kiều', 'Quận', '10 01 58N, 105 45 34E', '92'),
('917', 'Ô Môn', 'Quận', '10 07 28N, 105 37 51E', '92'),
('918', 'Bình Thuỷ', 'Quận', '10 03 42N, 105 43 17E', '92'),
('919', 'Cái Răng', 'Quận', '9 59 57N, 105 46 56E', '92'),
('923', 'Thốt Nốt', 'Quận', '10 14 23N, 105 32 02E', '92'),
('924', 'Vĩnh Thạnh', 'Huyện', '10 11 35N, 105 22 45E', '92'),
('925', 'Cờ Đỏ', 'Huyện', '10 02 48N, 105 29 46E', '92'),
('926', 'Phong Điền', 'Huyện', '9 59 57N, 105 39 35E', '92'),
('927', 'Thới Lai', 'Huyện', '', '92'),
('930', 'Vị Thanh', 'Thị Xã', '9 45 15N, 105 24 50E', '93'),
('931', 'Ngã Bảy', 'Thị Xã', '', '93'),
('932', 'Châu Thành A', 'Huyện', '9 55 50N, 105 38 31E', '93'),
('933', 'Châu Thành', 'Huyện', '9 55 22N, 105 48 37E', '93'),
('934', 'Phụng Hiệp', 'Huyện', '9 47 20N, 105 43 29E', '93'),
('935', 'Vị Thuỷ', 'Huyện', '9 48 05N, 105 32 13E', '93'),
('936', 'Long Mỹ', 'Huyện', '9 40 47N, 105 30 53E', '93'),
('941', 'Sóc Trăng', 'Thành Phố', '9 36 39N, 105 59 00E', '94'),
('942', 'Châu Thành', 'Huyện', '', '94'),
('943', 'Kế Sách', 'Huyện', '9 49 30N, 105 57 25E', '94'),
('944', 'Mỹ Tú', 'Huyện', '9 38 21N, 105 49 52E', '94'),
('945', 'Cù Lao Dung', 'Huyện', '9 37 36N, 106 12 13E', '94'),
('946', 'Long Phú', 'Huyện', '9 34 38N, 106 06 07E', '94'),
('947', 'Mỹ Xuyên', 'Huyện', '9 28 16N, 105 55 51E', '94'),
('948', 'Ngã Năm', 'Huyện', '9 31 38N, 105 37 22E', '94'),
('949', 'Thạnh Trị', 'Huyện', '9 28 05N, 105 43 02E', '94'),
('950', 'Vĩnh Châu', 'Huyện', '9 20 50N, 105 59 58E', '94'),
('951', 'Trần Đề', 'Huyện', '', '94'),
('954', 'Bạc Liêu', 'Thị Xã', '9 16 05N, 105 45 08E', '95'),
('956', 'Hồng Dân', 'Huyện', '9 30 37N, 105 24 25E', '95'),
('957', 'Phước Long', 'Huyện', '9 23 13N, 105 24 41E', '95'),
('958', 'Vĩnh Lợi', 'Huyện', '9 16 51N, 105 40 54E', '95'),
('959', 'Giá Rai', 'Huyện', '9 15 51N, 105 23 18E', '95'),
('960', 'Đông Hải', 'Huyện', '9 08 11N, 105 24 42E', '95'),
('961', 'Hoà Bình', 'Huyện', '', '95'),
('964', 'Cà Mau', 'Thành Phố', '9 10 33N, 105 11 11E', '96'),
('966', 'U Minh', 'Huyện', '9 22 30N, 104 57 00E', '96'),
('967', 'Thới Bình', 'Huyện', '9 22 50N, 105 07 35E', '96'),
('968', 'Trần Văn Thời', 'Huyện', '9 07 36N, 104 57 27E', '96'),
('969', 'Cái Nước', 'Huyện', '9 00 31N, 105 03 23E', '96'),
('970', 'Đầm Dơi', 'Huyện', '8 57 48N, 105 13 56E', '96'),
('971', 'Năm Căn', 'Huyện', '8 46 59N, 104 58 20E', '96'),
('972', 'Phú Tân', 'Huyện', '8 52 47N, 104 53 35E', '96'),
('973', 'Ngọc Hiển', 'Huyện', '8 40 47N, 104 57 58E', '96');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_file`
--

CREATE TABLE `vt_file` (
  `headHtml` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `footerHtml` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `file` text CHARACTER SET latin1,
  `hide` int(11) NOT NULL DEFAULT '0',
  `type` text CHARACTER SET latin1,
  `customTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `customHtml` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `onlyContent` tinyint(1) NOT NULL DEFAULT '0',
  `showList` tinyint(1) NOT NULL DEFAULT '0',
  `multiMenu` tinyint(1) NOT NULL DEFAULT '0',
  `showImage` tinyint(1) NOT NULL DEFAULT '0',
  `showImageMenu` tinyint(1) NOT NULL DEFAULT '0',
  `slide` tinyint(1) NOT NULL DEFAULT '0',
  `slide2` text CHARACTER SET latin1,
  `orderProduct` tinyint(1) NOT NULL DEFAULT '0',
  `tab` tinyint(1) NOT NULL DEFAULT '0',
  `sortTab` tinyint(4) NOT NULL DEFAULT '0',
  `maxWidth` int(11) NOT NULL DEFAULT '0',
  `maxHeight` int(11) NOT NULL DEFAULT '0',
  `listHtml` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `boxHtml` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_file`
--

INSERT INTO `vt_file` (`headHtml`, `footerHtml`, `id`, `title`, `file`, `hide`, `type`, `customTemplate`, `customHtml`, `onlyContent`, `showList`, `multiMenu`, `showImage`, `showImageMenu`, `slide`, `slide2`, `orderProduct`, `tab`, `sortTab`, `maxWidth`, `maxHeight`, `listHtml`, `boxHtml`) VALUES
('', '', 1, 'Hiển thị sản phẩm', 'product', 0, '', 1, '&#60;?php include(\'views/include/product.php\') ?&#62;', 0, 0, 0, 0, 0, 0, '0', 1, 1, 1, 700, 466, '&#60;?php include(\'views/include/contentList.php\'); ?&#62;', '&#60;?php include(\'views/include/contentBox.php\'); ?&#62;'),
('&#60;div class=\"row\"&#62;', '    &#60;/ul&#62;\r\n&#60;/div&#62;', 2, 'Hiển thị tin tức', 'news', 0, '', 1, '&#60;?php include(\'views/include/news.php\') ?&#62;', 0, 1, 0, 0, 0, 0, '0', 1, 0, 0, 0, 0, '&#60;div class=\"col-xs-12 col-sm-4\"&#62;\r\n    &#60;div class=\"news-item\"&#62;\r\n        &#60;a class=\"news-thumbnail\" &#60;?=linkId($data,$name)?&#62; &#62;\r\n          &#60;img class=\"img-responsive\" &#60;?=srcImg($data)?&#62; &#62;\r\n        &#60;/a&#62;\r\n        &#60;h2 class=\"news-title\"&#62;&#60;a &#60;?=linkId($data,$name)?&#62;&#62;&#60;?=$data-&#62;title?&#62;&#60;/a&#62;&#60;/h2&#62;\r\n        &#60;div class=\"description\" style=\"text-align:justify;\"&#62;&#60;?=$data-&#62;des?&#62;&#60;/div&#62;\r\n        &#60;div class=\"clearfix\"&#62;&#60;/div&#62;\r\n    &#60;/div&#62;\r\n&#60;/div&#62;', '&#60;?=$page-&#62;content?&#62;'),
('', '', 3, 'Hiển thị nội dung', 'content', 0, '', 1, '&#60;?php include(\'views/include/about.php\') ?&#62;', 0, 0, 0, 0, 1, 0, '0', 0, 0, 0, 0, 0, '', ''),
('', '', 4, 'Liên hệ', 'contact', 0, 'custom', 1, '&#60;?php include(\'views/include/contact.php\'); ?&#62;', 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 5, 'Thư viện', 'picture', 0, '', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 6, 'Hiển thị video', 'video', 0, '', 0, '', 0, 0, 0, 0, 1, 0, '0', 0, 0, 0, 0, 0, '0', '0'),
('', '', 7, 'Giỏ hàng', 'shop', 0, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 8, 'Site Map', 'sitemap', 0, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 9, 'Thành viên', 'user', 0, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 10, 'Đăng ký', 'register', 1, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 11, 'Đăng nhập', 'login', 1, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 12, 'Thiết kế', 'design', 0, '', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 13, 'Ký gửi', 'post', 0, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 15, 'Download', 'download', 0, '', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 200, 200, '&#60;div class=\"col-xs-12 col-sm-4\"&#62;\r\n    &#60;div class=\"news-item\"&#62;\r\n        &#60;a class=\"news-thumbnail\" href=\"upload/&#60;?=$data-&#62;file?&#62;\" target=\"_blank\" &#62;\r\n         &#60;img class=\"img-responsive\" &#60;?=srcImg($data)?&#62; &#62;\r\n        &#60;/a&#62;\r\n        &#60;h2 class=\"news-title\"&#62;&#60;a href=\"upload/&#60;?=$data-&#62;file?&#62;\" target=\"_blank\"&#62;&#60;?=$data-&#62;title?&#62;&#60;/a&#62;&#60;/h2&#62;\r\n        &#60;div class=\"description\" style=\"text-align:justify;\"&#62;&#60;?=$data-&#62;des?&#62;&#60;/div&#62;\r\n        &#60;div class=\"clearfix\"&#62;&#60;/div&#62;\r\n    &#60;/div&#62;\r\n&#60;/div&#62;', ''),
('', '', 16, 'Hiển thị hỗ trợ', 'support', 0, '', 0, '', 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '&#60;?php include(\'views/include/contentList.php\'); ?&#62;', ''),
('', '', 17, 'Hiển thị địa điểm', 'map', 0, '', 0, '', 0, 1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
('', '', 18, 'Ngôn ngữ', 'lang', 0, 'custom', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 19, 'Trang chủ', 'home', 1, 'custom', 1, '&#60;?php include(\'views/include/home.php\') ?&#62;', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 21, 'Tìm kiếm', 'search', 1, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '0', '0'),
('', '', 22, 'Không tìm thấy trang', '404', 1, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
('', '', 23, 'Quản trị', 'mod', 0, 'block', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 200, 200, '', ''),
('', '', 24, 'Bộ lộc', 'filter', 0, '', 0, '&#225;dsad', 0, 0, 0, 0, 0, 0, '0', 1, 0, 0, 0, 0, '', ''),
('', '', 25, 'Hiển thị ngôn ngữ', 'lang', 0, '', 0, '', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, '', ''),
('', '', 30, 'Hiển thị dich vu', 'dichvu', 0, '', 1, '&#60;?php include(\'views/include/dichvu.php\') ?&#62;', 0, 1, 0, 0, 0, 0, '0', 1, 0, 0, 700, 466, '', ''),
('', '', 31, 'Hiển thị thanh toán', 'thanhtoan', 0, '', 1, '&#60;?php include(\'views/include/thanhtoan.php\') ?&#62;', 1, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '', ''),
('', '', 32, 'Hiển thị phí ship', 'ship', 0, '', 1, '', 1, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '', ''),
('', '', 33, 'Hiển thị voucher', 'voucher', 0, '', 0, '', 0, 0, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, '', ''),
('', '', 34, 'Hiển thị đất nền', 'datnen', 0, '', 1, '&#60;?php include(\'views/include/product.php\') ?&#62;', 0, 0, 0, 0, 0, 0, '0', 1, 0, 0, 700, 466, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_file_data`
--

CREATE TABLE `vt_file_data` (
  `id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET latin1,
  `col` text CHARACTER SET latin1,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `group` text CHARACTER SET latin1,
  `pos` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_file_data`
--

INSERT INTO `vt_file_data` (`id`, `parent`, `title`, `name`, `col`, `type`, `group`, `pos`, `width`, `height`, `hide`) VALUES
(20, 33, 'Mã', 'ma', 'f1', 'text', 'listF', 0, 0, 0, 0),
(21, 33, '% giảm', '-giam', 'f2', 'text', 'listF', 0, 0, 0, 0),
(22, 33, 'Số lượng', 'so-luong', 'f3', 'text', 'listF', 0, 0, 0, 0),
(25, 1, 'Nổi bật', 'noi-bat', 'hot', '', 'listCheck', 0, 0, 0, 0),
(28, 34, 'Nổi bật', 'noi-bat', 'hot', '', 'listCheck', 0, 0, 0, 0),
(33, 2, 'Nổi bật', 'noi-bat', 'hot', '', 'listCheck', 0, 0, 0, 0),
(34, 3, 'Slide', 'slide', '', 'listImg', '', 0, 0, 0, 0),
(40, 30, 'Thời gian', 'thoi-gian', 'f1', 'text', 'listF', 0, 0, 0, 0),
(41, 3, 'Đối tác', 'doitac', NULL, 'listImg', NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_file_data_lang`
--

CREATE TABLE `vt_file_data_lang` (
  `id` int(11) NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `file_data_id` int(11) NOT NULL DEFAULT '0',
  `img` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `type` text COLLATE utf8_unicode_ci,
  `des` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vt_file_data_lang`
--

INSERT INTO `vt_file_data_lang` (`id`, `hide`, `pos`, `file_data_id`, `img`, `title`, `name`, `link`, `type`, `des`, `lang`) VALUES
(46, 0, 0, 70, '186513780_2914781138787750_4722888751783037309_n_-19-05-2021-20-39-08.jpg', NULL, NULL, '', 'slide', NULL, 'vn'),
(47, 0, 0, 70, '186481267_2917960795136451_306180227364092953_n_-19-05-2021-20-40-11.jpg', NULL, NULL, '', 'slide', NULL, 'vn'),
(48, 0, 0, 70, '186489818_2914807565451774_959261857333729298_n_-19-05-2021-20-40-54.jpg', NULL, NULL, '', 'slide', NULL, 'vn'),
(49, 0, 0, 70, '46458607_2213909105541627_7770769446867566592_n_-19-05-2021-20-42-38.jpg', NULL, NULL, '', 'slide', NULL, 'vn'),
(54, 0, 0, 3, 'phoi-canh-vinhomes-symphony-min_-20-05-2021-23-10-46.jpg', 'VINHOMES SYMPHONY', 'vinhomes-symphony', 'http://bdskingland.net/vinhomes-symphony', 'slide', 'Vinhomes Riverside thuộc phía Đông Hà Nội', ''),
(55, 0, 0, 3, '0dpa8_logo-300x200_-19-05-2021-15-13-44-min_-20-05-2021-23-22-08.png', 'Đối tác số 1 ', 'doi-tac-so-1-', '', 'doitac', 'Đối tác đồng hành chính', ''),
(56, 0, 0, 3, 'web_-Logo-Manhattan_-19-05-2021-15-15-08-min_-20-05-2021-23-22-42.png', 'Đối tác số 1 ', 'doi-tac-so-1-', '', 'doitac', 'Đối tác đồng hành chính', ''),
(57, 0, 0, 3, 'logo-novaland_-19-05-2021-15-16-16-min_-20-05-2021-23-22-46.png', 'Đối tác số 1 ', 'doi-tac-so-1-', '', 'doitac', 'Đối tác đồng hành chính', ''),
(58, 0, 0, 3, 'Nam-Long-logo-366_-19-05-2021-15-18-37-min_-20-05-2021-23-22-50.png', 'Đối tác số 1 ', 'doi-tac-so-1-', '', 'doitac', 'Đối tác đồng hành chính', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_menu`
--

CREATE TABLE `vt_menu` (
  `id` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ico` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `file` text CHARACTER SET latin1,
  `href` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f10` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f9` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f8` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f7` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f6` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f5` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `f1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `time` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_menu`
--

INSERT INTO `vt_menu` (`id`, `menu_parent`, `hide`, `pos`, `title`, `des`, `ico`, `keywords`, `img`, `file`, `href`, `name`, `content`, `f10`, `f9`, `f8`, `f7`, `f6`, `f5`, `f4`, `f3`, `f2`, `f1`, `time`) VALUES
(0, -1, 1, -3, 'Cấu hình', '', '', '', '', 'config', '', 'cau-hinh', '', '', '', '', '', '', '', '', '', '', '', ''),
(1, 0, 1, 3, 'Thông tin', '', '', '', '', 'info', '', 'thong-tin', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 0, 1, -1, 'Tìm kiếm', '', '', '', '', 'search', '', 'tim-kiem', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 0, 0, 4, 'Trang chủ', '', 'fa fa-home', '', '', 'home', '.', 'trang-chu', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><iframe src=\"//www.youtube.com/embed/LHeANvuYJDM\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><iframe src=\"//www.youtube.com/embed/LUfuQe-RJiE\" width=\"80%\" height=\"500\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n</body>\r\n</html>', '', '', '', '', '', '', '111', '29', '123123', '12', ''),
(4, -1, 1, -4, 'Không tìm thấy trang', '', '', '', '', '404', '', '404', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, -1, 1, -2, 'Cài đặt Menu', '', '', '', '', 'configMenu', '', 'cai-dat-menu', '', '', '', '', '', '', '', '', '', '', '', ''),
(949, 0, 1, 2, 'Thành viên', '', '', '', '', 'mod', '', 'thanh-vien', '', '', '', '', '', '', '', '', '', '', '', '07/09/2019 09:59:41'),
(983, 0, 1, 3, 'Ngôn ngữ', '', '', '', '', 'lang', '', 'ngon-ngu', '', '', '', '', '', '', '', '', '', '', '', '16/04/2020 15:14:57'),
(984, 983, 0, 0, 'Tiếng Việt', '', '', '', 'vn_-16-04-2020-15-16-00.png', '', '', 'vn', '', '', '', '', '', '', '', '', '', '', '', '16/04/2020 15:15:35'),
(985, 983, 1, -5, 'English', '', '', '', 'en_-16-04-2020-15-16-25.png', '', '', 'en', '', '', '', '', '', '', '', '', '', '', '', '16/04/2020 15:16:02'),
(986, 0, 0, 6, 'Dự án', '', '', '', '', 'product', '', 'du-an', '', '', '', '', '', '', '', '', '', '', '', '16/04/2020 15:27:51'),
(987, 0, 0, 5, 'Giới thiệu', '', '', '', '', 'content', '', 'gioi-thieu', '', '', '', '', '', '', '', '', '', '', '', '05/05/2020 16:24:19'),
(988, 0, 0, 7, 'Tuyển dụng', '', '', '', '', 'dichvu', '', 'tuyen-dung', '', '', '', '', '', '', '', '', '', '', '', '05/05/2020 16:25:01'),
(989, 0, 0, 8, 'Tin tức', '', '', '', '', 'news', '', 'tin-tuc', '', '', '', '', '', '', '', '', '', '', '', '05/05/2020 16:25:16'),
(990, 0, 0, 10, 'Liên hệ', '', '', '', '', 'contact', '', 'lien-he', '', '', '', '', '', '', '', '', '', '', '', '05/05/2020 16:25:16'),
(1001, 0, 1, 9, 'Feedback', NULL, '', NULL, NULL, 'datnen', NULL, 'feedback', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19/05/2021 11:07:10'),
(1002, 0, 1, 0, 'Bộ lộc dự án', NULL, '', NULL, NULL, 'filter', NULL, 'bo-loc-du-an', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19/05/2021 15:31:29'),
(1003, 989, 0, 0, 'Thị trường', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20/05/2021 14:17:17'),
(1004, 988, 0, 0, 'Kinh doanh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20/05/2021 14:17:28'),
(1005, 988, 0, 0, 'Marketing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20/05/2021 15:22:22'),
(1006, 989, 0, 0, 'Bất động sản', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21/05/2021 09:55:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_menu_lang`
--

CREATE TABLE `vt_menu_lang` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `des` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `f1` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vt_menu_lang`
--

INSERT INTO `vt_menu_lang` (`id`, `menu_id`, `title`, `name`, `des`, `keywords`, `img`, `background`, `content`, `f1`, `lang`) VALUES
(34, 3, 'Home', '', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'en'),
(35, 3, 'Trang chủ', 'trang-chu', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(36, 1, 'Thông tin', '', '', '', '', NULL, '', NULL, 'vn'),
(37, 1, 'Information', '', '', '', '', NULL, '', NULL, 'en'),
(48, 2, 'Tìm kiếm', '', '', '', '', NULL, '', NULL, 'vn'),
(49, 2, 'Search', '', '', '', '', NULL, '', NULL, 'en'),
(59, 980, 'Diện Tích', '', '', '', '', NULL, '', NULL, 'vn'),
(60, 980, 'Acreage', '', '', '', '', NULL, '', NULL, 'en'),
(61, 981, 'Số Phòng Ngủ', '', '', '', '', NULL, '', NULL, 'vn'),
(62, 981, 'Number of Bedrooms', '', '', '', '', NULL, '', NULL, 'en'),
(63, 982, 'tin thi truong', '', '', '', '', NULL, '', NULL, 'vn'),
(64, 982, ' market news', '', '', '', '', NULL, '', NULL, 'en'),
(65, 986, 'Product', '', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'en'),
(66, 986, 'Dự án', 'du-an', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(70, 987, 'Giới thiệu', 'gioi-thieu', '', '', 'mahattangiao lo vang0805_-19-05-2021-12-34-59.jpg', 'Cong vien Cau vong va S6 S7_-18-05-2021-16-31-39.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000; font-size: 24px; font-family: verdana, geneva, sans-serif;\">C&Ocirc;NG TY TNHH ĐẦU TƯ BẤT ĐỘNG SẢN KING LAND</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Trụ sở: Lux6-SH06 Vinhomes Golden River, 2 T&ocirc;n Đức Thắng, P. Bến Ngh&eacute;, Q.1, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Chi nh&aacute;nh: 161 Xa Lộ H&agrave; Nội, P. Thảo Điền, Q.2, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Th&agrave;nh lập năm 2018, đại l&yacute; F1 Vinhomes.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Đối t&aacute;c của c&aacute;c tập đo&agrave;n: VinGroup, Novaland, Hưng Vượng Developer, Masterise, Him Lam, Nam Long Group.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Dự &aacute;n nổi bật:&nbsp;<span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">THE MANHATTAN -&nbsp;</span><span style=\"font-size: 18px;\">THE ORIGAMI -&nbsp;</span><span style=\"font-size: 18px;\">VINHOMES GRAND PARK.</span></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\"><img src=\"https://bdskingland.net/upload/../upload/183890899_2912042142394983_1149030085726297389_n-min_-21-05-2021-10-04-39.jpg\" alt=\"\" width=\"100%\" /></span></span></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"https://bdskingland.net/upload/../upload/183080781_2912042102394987_6594177229972772431_n-min_-21-05-2021-10-05-02.jpg\" alt=\"\" width=\"100%\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"https://bdskingland.net/upload/../upload/183524603_2912042119061652_3289246309409685388_n-min_-21-05-2021-10-05-16.jpg\" alt=\"\" width=\"100%\" /></p>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; font-weight: bold;\">C&ocirc;ng ty TNHH Đầu Tư Bất Động Sản King Land</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Trụ sở: Lux6-SH06 Vinhomes Golden River, 2 T&ocirc;n Đức Thắng, P. Bến Ngh&eacute;, Q.1, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Chi nh&aacute;nh: 161 Xa Lộ H&agrave; Nội, P. Thảo Điền, Q.2, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Th&agrave;nh lập năm 2018, đại l&yacute; F1 Vinhomes.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Đối t&aacute;c của c&aacute;c tập đo&agrave;n:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">- VinGroup, Novaland, Hưng Vượng Developer, Masterise, Him Lam, Nam Long Group.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Dự &aacute;n nổi bật:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">- THE MANHATTAN - THE ORIGAMI - VINHOMES GRAND PARK.</span></p>\r\n</body>\r\n</html>', 'vn'),
(71, 988, 'Tuyển dụng', 'tuyen-dung', '', '', 'dong-tay-investment-doi-ngu-1_-17-05-2021-13-43-59.jpg', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(73, 989, 'Tin tức', 'tin-tuc', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(74, 990, 'Liên hệ', 'lien-he', '', '', '', NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"color: #ffffff; font-size: 24px; font-family: verdana, geneva, sans-serif;\">C&Ocirc;NG TY TNHH ĐẦU TƯ BẤT ĐỘNG SẢN KING LAND</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; color: #ffffff;\">Trụ sở: Lux6-SH06 Vinhomes Golden River, 2 T&ocirc;n Đức Thắng, P. Bến Ngh&eacute;, Q.1, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; color: #ffffff;\">Chi nh&aacute;nh: 161 Xa Lộ H&agrave; Nội, P. Thảo Điền, Q.2, TP. HCM.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #ffffff;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Th&agrave;nh lập năm 2018. </span><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Đối t&aacute;c của c&aacute;c tập đo&agrave;n: VinGroup, Novaland, Hưng Vượng Developer, Masterise, Him Lam, Nam Long Group.</span></span></p>\r\n</body>\r\n</html>', NULL, 'vn'),
(80, 1001, 'Feedback', 'feedback', '', '', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(81, 1002, 'Đang cập nhật', 'dang-cap-nhat', '', '', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', NULL, 'vn'),
(82, 1003, 'Thị trường', 'thi-truong', '', '', NULL, NULL, NULL, NULL, 'vn'),
(83, 1004, 'Kinh doanh', 'kinh-doanh', '', '', NULL, NULL, NULL, NULL, 'vn'),
(84, 1005, 'Marketing', 'marketing', '', '', NULL, NULL, NULL, NULL, 'vn'),
(85, 1006, 'Bất động sản', 'bat-dong-san', '', '', NULL, NULL, NULL, NULL, 'vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_page`
--

CREATE TABLE `vt_page` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` text CHARACTER SET latin1,
  `type` text CHARACTER SET latin1,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_page`
--

INSERT INTO `vt_page` (`id`, `title`, `name`, `type`, `content`) VALUES
(3, 'Mô tả', 'des', 'text', 'Với đội ngũ nhân sự giàu kinh nghiệm, chúng tôi tự tin khẳng định mình có thể cung cấp dịch vụ tốt nhất và uy tín nhất.'),
(4, 'Logo', 'logo', 'img', 'logo-28-06-2017-11-53-02.png'),
(6, 'Địa chỉ', 'address', 'text', '153/3A Nơ Trang Long, phường 12, Bình Thạnh, Hồ Chí Minh 700000'),
(7, 'Số điện thoại', 'phone', 'text', 'Vui lòng nhập SĐT'),
(9, 'Email', 'gmail', 'text', 'viettechcorp@yopmail.com'),
(16, 'Link Google Map', 'map', 'text', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.001442963126!2d106.7025501138812!3d10.811200692297929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752895fdd380f1%3A0x7acc20e62c45831c!2zNjggQ2h1IFbEg24gQW4sIHBoxrDhu51uZyAyNiwgQsOsbmggVGjhuqFuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1476957603382'),
(29, 'Facebook', 'facebook', 'text', 'https://www.facebook.com/viettechcorp/'),
(31, 'Skype', 'skype', 'text', ''),
(35, 'Slogan', 'slogan', 'text', 'Viettech Solutions'),
(36, 'Youtube', 'youtube', 'text', ''),
(37, 'Keywords', 'keywords', 'text', 'Viettech'),
(38, 'Tên website', 'title', 'text', 'Viettech Solutions'),
(39, 'google-site-verification', 'googleVerification', 'text', ''),
(42, 'Icon', 'icon', 'img', 'favicon_-07-09-2019-10-12-05.png'),
(50, 'Liên kết', 'lienket', 'content', ''),
(53, 'zalo', 'zalo', 'text', ''),
(56, 'Messenger', 'messenger', 'text', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_page_lang`
--

CREATE TABLE `vt_page_lang` (
  `id` int(11) NOT NULL,
  `page_parent` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vt_page_lang`
--

INSERT INTO `vt_page_lang` (`id`, `page_parent`, `content`, `lang`) VALUES
(1, 'icon', 'icon_-23-05-2021-16-50-49.png', 'vn'),
(2, 'title', 'Công ty TNHH Đầu tư Bất động sản King Land', 'vn'),
(3, 'title', 'Viettech Solutions', 'en'),
(7, 'keywords', '', 'vn'),
(8, 'youtube', 'https://www.youtube.com/embed/TSBGPAf3FtI?enablejsapi=1', 'vn'),
(9, 'slogan', '', 'vn'),
(10, 'skype', '', 'vn'),
(11, 'facebook', 'https://www.facebook.com/kinglandvn.net/', 'vn'),
(12, 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.001442963126!2d106.7025501138812!3d10.811200692297929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752895fdd380f1%3A0x7acc20e62c45831c!2zNjggQ2h1IFbEg24gQW4sIHBoxrDhu51uZyAyNiwgQsOsbmggVGjhuqFuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1476957603382', 'vn'),
(14, 'gmail', 'kiet.it.96@gmail.com', 'vn'),
(15, 'phone', '090909090', 'vn'),
(16, 'address', 'Lux6-SH06 Vinhomes Golden River, số 2 Tôn Đức Thắng, P.Bến Nghé, Quận 1, TP.HCM', 'vn'),
(17, 'des', 'Với đội ngũ nhân sự giàu kinh nghiệm, chúng tôi tự tin khẳng định mình có thể cung cấp dịch vụ tốt nhất và uy tín nhất.', 'vn'),
(18, 'googleVerification', '', 'en'),
(19, 'keywords', 'Viettech Solutions', 'en'),
(20, 'youtube', '', 'en'),
(21, 'slogan', 'Viettech Solutions', 'en'),
(22, 'skype', '', 'en'),
(23, 'facebook', 'https://www.facebook.com/viettechcorp/', 'en'),
(24, 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.001442963126!2d106.7025501138812!3d10.811200692297929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752895fdd380f1%3A0x7acc20e62c45831c!2zNjggQ2h1IFbEg24gQW4sIHBoxrDhu51uZyAyNiwgQsOsbmggVGjhuqFuaCwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1476957603382', 'en'),
(26, 'gmail', 'kiet.it.96@gmail.com', 'en'),
(27, 'phone', '090909090', 'en'),
(28, 'address', '153/3A Nơ Trang Long, phường 12, Bình Thạnh, Hồ Chí Minh 700000', 'en'),
(29, 'des', 'Với đội ngũ nhân sự giàu kinh nghiệm, chúng tôi tự tin khẳng định mình có thể cung cấp dịch vụ tốt nhất và uy tín nhất.', 'en'),
(30, 'googleVerification', '', 'vn'),
(37, 'logo', 'logo_-23-05-2021-16-51-01.png', 'vn'),
(38, 'logo', 'kienlua2_-16-04-2020-15-27-14.png', 'en'),
(39, 'icon', 'icon_-16-04-2020-15-27-14.png', 'en'),
(46, 'lienket', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-weight: bold; font-size: 16px;\">C&ocirc;ng ty TNHH Đầu tư Bất động sản King Land</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Trụ sở: Lux6-SH06 Vinhomes Golden River, số 2 T&ocirc;n Đức Thắng, P.Bến Ngh&eacute;, Quận 1, TP.HCM</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Chi nh&aacute;nh: 161 Xa Lộ H&agrave; Nội, P. Thảo Điền, Quận 2, TP.HCM&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Email: companykingland@gmail.com</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Kinh Doanh: 0938.96.98.99</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">Tuyển dụng: 090.355.8882</span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n</body>\r\n</html>', 'vn'),
(49, 'quydat', '600', 'vn'),
(52, 'zalo', '', 'vn'),
(53, 'messenger', 'https://www.facebook.com/kinglandvn.net/', 'vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_province`
--

CREATE TABLE `vt_province` (
  `id` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `ship` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_province`
--

INSERT INTO `vt_province` (`id`, `name`, `type`, `ship`) VALUES
('00', 'Toàn quốc', 'full', ''),
('01', 'Hà Nội', 'Thành Phố', ''),
('02', 'Hà Giang', 'Tỉnh', ''),
('04', 'Cao Bằng', 'Tỉnh', ''),
('06', 'Bắc Kạn', 'Tỉnh', ''),
('08', 'Tuyên Quang', 'Tỉnh', ''),
('10', 'Lào Cai', 'Tỉnh', ''),
('11', 'Điện Biên', 'Tỉnh', ''),
('12', 'Lai Châu', 'Tỉnh', ''),
('14', 'Sơn La', 'Tỉnh', ''),
('15', 'Yên Bái', 'Tỉnh', ''),
('17', 'Hòa Bình', 'Tỉnh', ''),
('19', 'Thái Nguyên', 'Tỉnh', ''),
('20', 'Lạng Sơn', 'Tỉnh', ''),
('22', 'Quảng Ninh', 'Tỉnh', ''),
('24', 'Bắc Giang', 'Tỉnh', ''),
('25', 'Phú Thọ', 'Tỉnh', ''),
('26', 'Vĩnh Phúc', 'Tỉnh', ''),
('27', 'Bắc Ninh', 'Tỉnh', ''),
('30', 'Hải Dương', 'Tỉnh', ''),
('31', 'Hải Phòng', 'Thành Phố', ''),
('33', 'Hưng Yên', 'Tỉnh', ''),
('34', 'Thái Bình', 'Tỉnh', ''),
('35', 'Hà Nam', 'Tỉnh', ''),
('36', 'Nam Định', 'Tỉnh', ''),
('37', 'Ninh Bình', 'Tỉnh', ''),
('38', 'Thanh Hóa', 'Tỉnh', ''),
('40', 'Nghệ An', 'Tỉnh', ''),
('42', 'Hà Tĩnh', 'Tỉnh', ''),
('44', 'Quảng Bình', 'Tỉnh', ''),
('45', 'Quảng Trị', 'Tỉnh', ''),
('46', 'Thừa Thiên Huế', 'Tỉnh', ''),
('48', 'Đà Nẵng', 'Thành Phố', ''),
('49', 'Quảng Nam', 'Tỉnh', ''),
('51', 'Quảng Ngãi', 'Tỉnh', ''),
('52', 'Bình Định', 'Tỉnh', ''),
('54', 'Phú Yên', 'Tỉnh', ''),
('56', 'Khánh Hòa', 'Tỉnh', ''),
('58', 'Ninh Thuận', 'Tỉnh', ''),
('60', 'Bình Thuận', 'Tỉnh', ''),
('62', 'Kon Tum', 'Tỉnh', ''),
('64', 'Gia Lai', 'Tỉnh', ''),
('66', 'Đắk Lắk', 'Tỉnh', ''),
('67', 'Đắk Nông', 'Tỉnh', ''),
('68', 'Lâm Đồng', 'Tỉnh', ''),
('70', 'Bình Phước', 'Tỉnh', ''),
('72', 'Tây Ninh', 'Tỉnh', ''),
('74', 'Bình Dương', 'Tỉnh', ''),
('75', 'Đồng Nai', 'Tỉnh', ''),
('77', 'Bà Rịa - Vũng Tàu', 'Tỉnh', ''),
('79', 'Hồ Chí Minh', 'Thành Phố', ''),
('80', 'Long An', 'Tỉnh', ''),
('82', 'Tiền Giang', 'Tỉnh', ''),
('83', 'Bến Tre', 'Tỉnh', ''),
('84', 'Trà Vinh', 'Tỉnh', ''),
('86', 'Vĩnh Long', 'Tỉnh', ''),
('87', 'Đồng Tháp', 'Tỉnh', ''),
('89', 'An Giang', 'Tỉnh', ''),
('91', 'Kiên Giang', 'Tỉnh', ''),
('92', 'Cần Thơ', 'Thành Phố', ''),
('93', 'Hậu Giang', 'Tỉnh', ''),
('94', 'Sóc Trăng', 'Tỉnh', ''),
('95', 'Bạc Liêu', 'Tỉnh', ''),
('96', 'Cà Mau', 'Tỉnh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_slug`
--

CREATE TABLE `vt_slug` (
  `id` int(11) NOT NULL,
  `slugName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tableName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idTable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_slug`
--

INSERT INTO `vt_slug` (`id`, `slugName`, `tableName`, `idTable`) VALUES
(1, 'trang-chu', 'menu', 3),
(12, 'cai-dat-menu', 'menu', 5),
(13, 'khong-tim-thay-trang', 'menu', 4),
(14, 'tim-kiem', 'menu', 2),
(15, 'thong-tin', 'menu', 1),
(16, 'cau-hinh', 'menu', 0),
(141, 'dang-cap-nhat', 'menu', 949),
(341, 'Dang-cap-nhat-1587024897', 'menu', 983),
(343, 'Dang-cap-nhat-1587024935', 'menu', 984),
(345, 'Dang-cap-nhat-1587024962', 'menu', 985),
(347, 'du-an', 'menu', 986),
(349, 'dang-cap-nhat-1587025863', 'data', 303),
(351, 'gioi-thieu', 'menu', 987),
(353, 'tuyen-dung', 'menu', 988),
(355, 'tin-tuc', 'menu', 989),
(357, 'lien-he', 'menu', 990),
(359, 'Dang-cap-nhat-1588670755', 'menu', 991),
(362, 'thanh-toan', 'menu', 992),
(364, 'phi-ship', 'menu', 993),
(366, 'voucher', 'menu', 994),
(368, 'dat-nen', 'menu', 995),
(380, 'dang-cap-nhat-1589943390', 'data', 309),
(382, 'dang-cap-nhat-1592288876', 'data', 312),
(385, 'dang-cap-nhat-1592288876-1592288876', 'data', 311),
(388, 'dang-cap-nhat-1592288876-1592288877', 'data', 310),
(390, 'dang-cap-nhat-1615277668', 'data', 313),
(391, 'kham-pha-khong-gian-song-doc-dao-tai-thanh-pho-ben-song-waterpoint', 'data', 308),
(393, 'dang-cap-nhat-1620786099', 'menu', 996),
(395, 'dang-cap-nhat-1620786124', 'menu', 75),
(397, 'dang-cap-nhat-1620794202', 'data', 314),
(399, 'dang-cap-nhat-1620970455', 'data', 315),
(401, 'dang-cap-nhat-1620970456', 'data', 316),
(403, 'dang-cap-nhat-1620970457', 'data', 317),
(405, 'dang-cap-nhat-1620986885', 'menu', 997),
(407, 'dang-cap-nhat-1620986898', 'data', 318),
(409, 'dang-cap-nhat-1620986899', 'data', 319),
(411, 'dang-cap-nhat-1620986900', 'data', 320),
(413, 'dang-cap-nhat-1620986901', 'data', 321),
(415, 'dang-cap-nhat-1620987496', 'menu', 998),
(418, 'dang-cap-nhat-1620987496-1620987496', 'menu', 999),
(420, 'dang-cap-nhat-1620987497', 'menu', 1000),
(425, 'dang-cap-nhat-1620987511-1620987511', 'menu', 78),
(429, 'dang-cap-nhat-1620987511-1620987511-1620987511', 'menu', 79),
(431, 'dang-cap-nhat-1621225889', 'data', 322),
(433, 'dang-cap-nhat-1621227295', 'data', 323),
(435, 'nha-pho', 'menu', 77),
(437, 'dang-cap-nhat-1621241726', 'data', 324),
(439, 'dang-cap-nhat-1621241727', 'data', 325),
(441, 'dang-cap-nhat-1621397230', 'menu', 1001),
(443, 'dang-cap-nhat-1621397256', 'data', 326),
(445, 'dang-cap-nhat-1621397257', 'data', 327),
(447, 'dang-cap-nhat-1621413089', 'menu', 1002),
(449, 'dang-cap-nhat-1621413148', 'data', 328),
(451, 'dang-cap-nhat-1621413458', 'data', 329),
(453, 'dang-cap-nhat-1621413459', 'data', 330),
(456, 'vinhomes-grand-park', 'data', 331),
(458, 'dang-cap-nhat-1621414168', 'data', 332),
(460, 'dang-cap-nhat-1621415878', 'data', 333),
(462, 'dang-cap-nhat-1621415895', 'data', 334),
(464, 'dang-cap-nhat-1621415924', 'data', 335),
(466, 'vinhomes-ocean-park', 'data', 336),
(468, 'cao-toc-phan-thiet', 'data', 337),
(470, 'dang-cap-nhat-1621430993', 'data', 338),
(472, 'dang-cap-nhat-1621430995', 'data', 339),
(474, 'vinhomes-symphony', 'data', 340),
(476, 'dang-cap-nhat-1621495037', 'menu', 1003),
(478, 'dang-cap-nhat-1621495048', 'menu', 1004),
(480, 'best-western-bien-venezia-beach-tro-thanh-mon-hang-hieu-xa-xi-bac-nhat', 'data', 341),
(482, 'tuyen-dung-nhan-vien-kinh-doanh', 'data', 342),
(484, 'dang-cap-nhat-1621498942', 'menu', 1005),
(486, 'bat-dong-san', 'menu', 1006),
(488, 'dang-cap-nhat-1621565752', 'data', 343);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_tabs`
--

CREATE TABLE `vt_tabs` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL DEFAULT '0',
  `pos` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `lang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vt_tabs`
--

INSERT INTO `vt_tabs` (`id`, `data_id`, `pos`, `title`, `content`, `name`, `lang`) VALUES
(1, 81, 0, 'Đang cập nhật', '', '', 'vn'),
(2, 80, 1, 'hello1', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'hello1', 'vn'),
(3, 80, 0, 'hello2', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'hello2', 'vn'),
(4, 92, 0, 'Tổng quan', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Dự &aacute;n Vinhomes Grand Park Quận 9 của chủ đầu tư VinGroup đ&atilde; mở b&aacute;n ra thị trường v&agrave;o qu&yacute; II.2019 với quy m&ocirc; hiện đại, đẳng cấp c&ugrave;ng tiện &iacute;ch dịch vụ hiện đại với mức gi&aacute; hấp dẫn khi c&oacute; đa dạng loại h&igrave;nh sản phẩm. Chỉ trong 17 ng&agrave;y c&ocirc;ng bố th&igrave; ph&acirc;n khu The Rainbow Vinhome Quận 9 với hơn 10000 căn hộ chung cư đ&atilde; được b&aacute;n hết, tạo n&ecirc;n 1 kỳ t&iacute;ch b&aacute;n h&agrave;ng chưa từng c&oacute; trong lịch sử ng&agrave;nh m&ocirc;i giới bất động sản Việt Nam.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">V&agrave; v&agrave;o cuối th&aacute;ng 7/2020 chủ đầu tư Vingroup ch&iacute;nh thức c&ocirc;ng bố giai đoạn 2 ph&acirc;n khu cao tầng l&agrave; khu căn hộ chung cư The Origami &ndash; Vinhome Grand Park Quận với quy m&ocirc; gần 10000 căn.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\"><img src=\"https://www.vinhomeland.com.vn/wp-content/uploads/2020/04/mo-ban-s6-s10-the-origami-vinhomes-quan-9.jpg\" alt=\"Th&aacute;ng 10 năm 2020 mở b&aacute;n căn hộ Vườn Nhật đẹp nhất ph&acirc;n khu The Origami  Vinhomes Grand Park quận 9\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Dự &aacute;n khu đ&ocirc; thị Vinhome Grand Park địa chỉ ở vị tr&iacute; Đường Nguyễn Xiển &amp; Phước Thiện Quận 9 được mệnh danh l&agrave; KĐT th&agrave;nh phố c&ocirc;ng vi&ecirc;n th&ocirc;ng minh, đẳng cấp số 1 Việt Nam cung cấp cả 3 d&ograve;ng sản phẩm l&agrave; Vinhomes Sapphire; Vinhomes Ruby; Vinhomes Diamond nhằm đ&aacute;p ứng đa dạng mọi nhu cầu của kh&aacute;ch h&agrave;ng về một nơi an cư l&yacute; tưởng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Tổng diện t&iacute;ch quy m&ocirc; của dự &aacute;n Vin quận 9 rộng tới 271,8ha được triển khai vị tr&iacute; đắc địa của quận 9, nơi đ&acirc;y c&oacute; hệ thống hạ tầng giao th&ocirc;ng huyết mạch, gi&uacute;p kết nối với c&aacute;c khu vực l&acirc;n cận, trung t&acirc;m th&agrave;nh phố nhanh ch&oacute;ng. Đồng thời được hưởng lợi từ hệ thống m&ocirc;i trường sống xanh trong l&agrave;nh nhờ nằm cạnh l&agrave; S&ocirc;ng Tắc v&agrave; S&ocirc;ng Đồng Nai.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Chủ đầu tư Vingroup x&acirc;y dựng với tổng thể quy m&ocirc; của dự &aacute;n bao gồm c&oacute; 71 t&ograve;a th&aacute;p cao tầng, cung cấp 44.000 căn hộ chung cư cao cấp với mức gi&aacute; b&aacute;n hợp l&yacute;, đ&aacute;p ứng nhu cầu của mọi kh&aacute;ch h&agrave;ng cũng như biến ước mơ sở hữu nơi an cư tại S&agrave;i G&ograve;n. Đồng thời, khu đ&ocirc; thị n&agrave;y đ&atilde; kiến tạo n&ecirc;n một th&agrave;nh phố văn minh, hiện đại v&agrave; đẳng cấp theo chuẩn Singapore trong tương lai.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\"><img src=\"https://www.vinhomeland.com.vn/wp-content/uploads/2020/04/vinhomes-grand-park-thanh-pho-kim-cuong-quan-9.jpg\" alt=\"Vinhomes Grand Park l&agrave; 1 th&agrave;nh phố th&ocirc;ng minh trong l&ograve;ng th&agrave;nh phố hội tụ hệ thống tiện &iacute;ch dịch vụ cao cấp m&agrave; chưa c&oacute; 1 khu đ&ocirc; thị n&agrave;o c&oacute; được\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Th&ocirc;ng tin về đại đ&ocirc; thị n&agrave;y hiện hấp dẫn nhất đối với kh&aacute;ch h&agrave;ng mua để ở v&agrave; đầu tư sinh lời tại S&agrave;i G&ograve;n &ndash; Quận 9.&nbsp; Theo đ&oacute;, kh&aacute;ch h&agrave;ng chỉ cần số vốn từ 300 triệu đồng l&agrave; đ&atilde; c&oacute; thể sở hữu ngay một nơi an cư trọn vẹn tại S&agrave;i G&ograve;n hoa lệ chưa bao giờ dễ d&agrave;ng tới thế.</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">T&ecirc;n thương mại: Vinhomes Grand Park</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">T&ecirc;n cũ: Vincity Quận 9</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Vị tr&iacute;: Nguyễn Xiển &ndash; Phường Long Thạnh Mỹ &ndash; Quận 9 &ndash; TP Hồ Ch&iacute; Minh</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Chủ đầu tư: Vinhomes trực thuộc Tập đo&agrave;n Vingroup</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Tổng thầu x&acirc;y dựng: Contecons</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Đơn vị thiết kế: Artelia Group</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Diện t&iacute;ch: 271 ha</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Mật độ x&acirc;y dựng: 20 &ndash; 25%</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Loại h&igrave;nh sản phẩm: căn hộ chung cư; nh&agrave; phố; shophouse; biệt thự; dinh thự</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Quy m&ocirc;: 71 t&ograve;a th&aacute;p cao 25 &ndash; 35 tầng</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Số lượng sản phẩm: 44000 căn hộ</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Diện t&iacute;ch căn hộ: 33- 100m2</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">T&iacute;nh ph&aacute;p l&yacute;: Sổ hồng; l&acirc;u d&agrave;i-người Việt Nam v&agrave; 50 năm-người nước ngo&agrave;i</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Khởi c&ocirc;ng: 2017</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">B&agrave;n giao: 2020</span></span></li>\r\n</ul>\r\n</body>\r\n</html>', 'tong-quan', 'vn'),
(6, 92, 0, 'Vị trí', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Dự &aacute;n Vincity Grand Park c&oacute; vị tr&iacute; tọa lạc ngay tại mặt tiền đường Nguyễn Xiển, nơi giao nhau với Phước Thiện &ndash; Phường Long Thạnh Mỹ &ndash; Quận 9 &ndash; TP Hồ Ch&iacute; Minh. Đ&acirc;y l&agrave; vị tr&iacute; được đ&aacute;nh gi&aacute; l&agrave; đắc địa thuộc h&agrave;ng bậc nhất tại quận 9 n&oacute;i ri&ecirc;ng v&agrave; khu Đ&ocirc;ng S&agrave;i G&ograve;n n&oacute;i chung</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Với lợi thế nằm gần tuyến Metro số 1 Bến Th&agrave;nh &ndash; Suối Ti&ecirc;n v&agrave; c&aacute;c tuyến đường huyết mạch của khu vực đ&atilde; mang lại khả năng li&ecirc;n kết v&ugrave;ng, kết nối khu vực nhanh ch&oacute;ng, dễ d&agrave;ng tới khu vực trung t&acirc;m; l&acirc;n cận đặc biệt l&agrave; s&acirc;n bay T&acirc;n sơn Nhất; s&acirc;n bay Long Th&agrave;nh. Trong thời gian tới, khi tuyến đường v&agrave;nh đai 3 đi qua sẽ khiến cho dự &aacute;n Vinhome Grand Park Quận 9 mang dấu ấn xanh, độc đ&aacute;o tr&ecirc;n bản đồ của th&agrave;nh phố hồ Ch&iacute; Minh.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Khu vực tọa lạc của dự &aacute;n căn hộ Vin Quận 9 nằm ngay tại vị tr&iacute; chiến lược đ&atilde; được chủ đầu tư Vingroup lựa chọn để ph&aacute;t triển th&agrave;nh th&agrave;nh phố vệ tinh xung quanh trung t&acirc;m TP Hồ Ch&iacute; Minh.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Đặc biệt, dự &aacute;n Vinhome quận 9 c&ograve;n nằm ngay tại nơi c&oacute; địa thế vượng phong thủy khi c&oacute; 3 mặt gi&aacute;p s&ocirc;ng, nằm ven S&ocirc;ng Đồng Nai; S&ocirc;ng Tắc đảm bảo kh&ocirc;ng kh&iacute; trong l&agrave;nh, tươi m&aacute;t cho mọi cư d&acirc;n.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Từ dự &aacute;n Vincity Quận 9, cư d&acirc;n sẽ kết nối nhanh ch&oacute;ng tới KCN cao của th&agrave;nh phố Hồ Ch&iacute; Minh, KCN cao 1,2; nằm gần l&agrave;ng đại học; Bến Xe Miền Đ&ocirc;ng mới,&hellip;Lợi thế n&agrave;y gi&uacute;p gia tăng gi&aacute; trị tiềm năng cũng như t&iacute;nh thanh khoản của dự &aacute;n.</span></p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 66px;\" border=\"0\">\r\n<tbody>\r\n<tr style=\"height: 15px;\">\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/unnamed_-21-05-2021-00-07-44.png\" alt=\"\" width=\"44\" height=\"50\" /></span></td>\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/unnamed_-21-05-2021-00-10-09.png\" alt=\"\" width=\"44\" height=\"50\" /></span></td>\r\n</tr>\r\n<tr style=\"height: 15px;\">\r\n<td style=\"width: 463.333px; height: 21px; text-align: justify;\">\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">10 ph&uacute;t để di chuyển tới Khu du lịch Suối Ti&ecirc;n</span></p>\r\n</td>\r\n<td style=\"width: 463.333px; height: 21px; text-align: justify;\">\r\n<p style=\"text-align: center;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Chỉ 5 ph&uacute;t để tới khu c&ocirc;ng nghệ cao quận 9</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"height: 15px;\">\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/unnamed_-21-05-2021-00-07-44.png\" alt=\"\" width=\"44\" height=\"50\" /></span></td>\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/unnamed_-21-05-2021-00-07-44.png\" alt=\"\" width=\"44\" height=\"50\" /></span></td>\r\n</tr>\r\n<tr style=\"height: 15px;\">\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">15 ph&uacute;t để cư d&acirc;n tới với S&acirc;n Golf Rạch Chiếc</span></td>\r\n<td style=\"width: 463.333px; height: 15px; text-align: center;\"><span style=\"font-size: 16px; font-family: verdana, geneva, sans-serif;\">Di chuyển 15km để tới chợ Bến Th&agrave;nh Quận 1</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><img src=\"http://bdskingland.net/upload/../upload/vinhomes-grand-park-vi-tri-dia-chi-o-quan-9-scaled_-20-05-2021-14-19-29.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n</body>\r\n</html>', 'vi-tri', 'vn'),
(7, 101, 0, 'Giới Thiệu', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style=\"color: #f1c40f;\">Vinhomes Symphony</span> l&agrave; dự &aacute;n được triển khai x&acirc;y dựng thuộc ph&acirc;n kh&uacute;c căn hộ cao cấp nằm tại KĐT Vinhomes Riverside thuộc ph&iacute;a Đ&ocirc;ng H&agrave; Nội của CĐT Vinhomes &ndash; Vingroup.</p>\r\n<p>Điểm đặc biệt của dự &aacute;n đ&oacute; ch&iacute;nh l&agrave; c&oacute; quy hoạch hạ tầng ho&agrave;n hảo, thiết kế với diện t&iacute;ch kh&ocirc;ng gian sống xanh rộng r&atilde;i. Ch&iacute;nh bởi thế m&agrave; trong tương lai th&igrave; dự &aacute;n n&agrave;y sẽ l&agrave; một KĐT đẳng cấp, l&agrave; nơi an cư l&yacute; tưởng trọn vẹn của mọi cư d&acirc;n.</p>\r\n<p>Xem them: Grand Marina Bason trong khu đ&ocirc; thị Vinhomes Golden River Quận 1 mở b&aacute;n&nbsp;</p>\r\n<p>C&aacute;c sản phẩm của dự &aacute;n lấy cảm hứng từ bản nhạc giao hưởng cảm x&uacute;c gi&uacute;p n&acirc;ng cao chất lượng cuộc sống của mọi cư d&acirc;n. Trở th&agrave;nh cư d&acirc;n của dự &aacute;n Vinhomes Symphony sẽ c&oacute; một kh&ocirc;ng gian sống l&yacute; tưởng, l&agrave; nơi mọi người trở về nh&agrave; thư gi&atilde;n, t&aacute;i tạo năng lượng sau một ng&agrave;y l&agrave;m việc mệt mỏi.</p>\r\n<p>Vị tr&iacute; tọa lạc của dự &aacute;n được đ&aacute;nh gi&aacute; cao bởi hệ thống hạ tầng ph&aacute;t triển nhanh ch&oacute;ng, dễ d&agrave;ng kết nối cũng như di chuyển tới hệ thống tiện &iacute;ch dịch vụ hiện hữu.</p>\r\n<p><img src=\"http://bdskingland.net/upload/../upload/vinhomes-symphony-sai-dong_-20-05-2021-09-41-49.jpg\" alt=\"\" width=\"700\" height=\"500\" /></p>\r\n<p>Dự &aacute;n: Vinhomes Symphony</p>\r\n<p>Chủ đầu tư: Tập đo&agrave;n Vingroup</p>\r\n<p>Vị tr&iacute;: phường Ph&uacute;c Lợi &ndash; quận Long Bi&ecirc;n &ndash; TP H&agrave; Nội</p>\r\n<p>Diện t&iacute;ch tổng thể: 4,3542ha</p>\r\n<p>Mật độ x&acirc;y dựng: 34.5%</p>\r\n<p>Loại h&igrave;nh sản phẩm: căn hộ điển h&igrave;nh; căn hộ shophouse; văn ph&ograve;ng cho thu&ecirc;</p>\r\n<p>Quy m&ocirc;: 7 block căn hộ cao 9 &ndash; 15 tầng</p>\r\n<p>Số lượng sản phẩm: 1500 căn hộ 1-3PN</p>\r\n<p>Thiết kế căn hộ: 37 m2 &ndash; 119.5 m2</p>\r\n<p>T&iacute;nh ph&aacute;p l&yacute;: sổ hữu vĩnh viễn, sổ đỏ từng sản phẩm</p>\r\n<p>Khởi c&ocirc;ng: Năm 2019</p>\r\n<p>B&agrave;n giao: Năm 2020</p>\r\n</body>\r\n</html>', 'gioi-thieu', 'vn'),
(8, 101, 0, 'Vị Trí Dự Án', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div style=\"box-sizing: border-box; font-family: GilroyLight; font-size: 15px; background-color: #ffffff;\">\r\n<h2 style=\"box-sizing: border-box; color: #c99232; width: 1170px; margin-top: 20px; margin-bottom: 0px; text-rendering: optimizespeed; font-size: 25px; line-height: 30px; font-family: inherit; text-align: center; text-transform: uppercase;\">VỊ TR&Iacute; DỰ &Aacute;N CĂN HỘ VINHOMES SYMPHONY LONG BI&Ecirc;N</h2>\r\n<p style=\"box-sizing: border-box; text-align: justify; margin: 0px 0px 10px !important 0px;\">&nbsp;Vinhomes Symphony được triển khai x&acirc;y dựng tại vị tr&iacute; đắt gi&aacute;, đắc địa khi thuộc KĐT Vinhomes Riverside của CĐT Vingroup được mệnh danh l&agrave; xứ sở thanh b&igrave;nh, nơi đ&aacute;ng sống nhất Việt Nam.</p>\r\n<p style=\"box-sizing: border-box; text-align: justify; margin: 0px 0px 10px !important 0px;\">Vị tr&iacute; dự &aacute;n nằm ngay tại giao điểm của hay tuyến đường Chu Huy M&acirc;n v&agrave; Hội X&aacute; &ndash; hai tuyến đường huyết mạch của quận quận Long Bi&ecirc;n &ndash; H&agrave; Nội. Khả năng li&ecirc;n kết v&ugrave;ng của dự &aacute;n được đ&aacute;nh gi&aacute; cao nhờ h&agrave;ng loạt c&aacute;c tuyến đường quan trọng của khu vực như: Chu Huy M&acirc;n; Đo&agrave;n Khu&ecirc;; Nguyễn Văn Linh; Ng&ocirc; Gia Tự&hellip; Tất cả sẽ gi&uacute;p cho mọi cư d&acirc;n di chuyển nhanh ch&oacute;ng tới quận trung t&acirc;m v&agrave; thậm ch&iacute; l&agrave; tới c&aacute;c tỉnh th&agrave;nh l&acirc;n cận như: Bắc Ninh &ndash; Bắc Giang- Hưng Y&ecirc;n- Hải Dương- Hải Ph&ograve;ng;&hellip;</p>\r\n<p style=\"box-sizing: border-box; text-align: justify; margin: 0px 0px 10px !important 0px;\">&nbsp;Dự &aacute;n gi&uacute;p cho cư d&acirc;n được hưởng lợi từ chuỗi c&aacute;c tiện &iacute;ch dịch vụ của KĐT sinh th&aacute;i Vinhomes Riverside đ&aacute;p ứng mọi nhu cầu của cư d&acirc;n. Từ đ&oacute; khiến dự &aacute;n trở th&agrave;nh sản phẩm l&yacute; tưởng để an cư, đầu tư sinh lời cho to&agrave;n bộ mọi kh&aacute;ch h&agrave;ng, nh&agrave; đầu tư.</p>\r\n</div>\r\n</body>\r\n</html>', 'vi-tri-du-an', 'vn'),
(9, 92, 0, 'Tiện ích', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu đ&ocirc; thị của chủ đầu tư Vingroup triển khai tại quận 9 cung cấp hệ thống tiện &iacute;ch dịch vụ đồng bộ, đẳng cấp đ&aacute;p ứng nhu cầu của mọi cư d&acirc;n khi dự &aacute;n được h&igrave;nh th&agrave;nh với m&ocirc; h&igrave;nh Singapore thu nhỏ, kh&eacute;p k&iacute;n c&ugrave;ng với c&aacute;c hệ thống tiện &iacute;ch đẳng cấp. Hệ thống dịch vụ tiện nghi ho&agrave;n hảo tại Vinhomes Quận 9 hiếm c&oacute; dự &aacute;n n&agrave;o c&ugrave;ng ph&acirc;n kh&uacute;c v&agrave; c&ugrave;ng khu vực c&oacute; được với c&aacute;c hạng mục như sau:</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Trung t&acirc;m thương mại Vincom nơi bố tr&iacute; khu mua sắm hiện đại, rạp chiếu phim rộng r&atilde;i</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Si&ecirc;u thị mua sắm Vinmart</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu vui chơi giải tr&iacute; d&agrave;nh cho trẻ em</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu thể dục thể thao, spa; gym hiện đại</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Trường học c&aacute;c cấp ti&ecirc;u chuẩn quốc tế Vinschool</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Tiện &iacute;ch thể thao; tennis; b&oacute;ng đ&aacute;; bể bơi cả trong v&agrave; ngo&agrave;i trời</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Hệ thống c&ocirc;ng vi&ecirc;n sống xanh rộng lớn; tiểu cảnh; s&ocirc;ng hồ&nbsp;&nbsp;</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Vườn nướng BBQ ngo&agrave;i trời</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu nh&agrave; h&agrave;ng; qu&aacute;n cafe; cửa h&agrave;ng ẩm thực</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu nh&agrave; sinh hoạt cộng đồng; quảng trường&hellip;</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Hệ thống an ninh 24/24</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">T&ograve;a nh&agrave; văn ph&ograve;ng hỗn hợp c&oacute; chiều cao 45 tầng&hellip;</span></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; height: 393px;\">\r\n<tbody>\r\n<tr style=\"height: 299px;\">\r\n<td dir=\"ltr\" style=\"width: 33.3333%; height: 156px;\"><img src=\"http://bdskingland.net/upload/../upload/1_-20-05-2021-15-32-36.jpg\" alt=\"\" width=\"100%\" /></td>\r\n<td style=\"width: 33.3333%; height: 156px;\"><img src=\"http://bdskingland.net/upload/../upload/2_-20-05-2021-15-32-52.jpg\" alt=\"\" width=\"100%\" /></td>\r\n<td style=\"width: 33.3333%; height: 156px;\"><img src=\"http://bdskingland.net/upload/../upload/3_-20-05-2021-15-33-03.jpg\" alt=\"\" width=\"100%\" /></td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">C&Ocirc;NG VI&Ecirc;N FOREST</span></td>\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">BỆNH VIỆN VINMEC</span></td>\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">TTTM VINCOM</span></td>\r\n</tr>\r\n<tr style=\"height: 299px;\">\r\n<td style=\"width: 33.3333%; height: 205px;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/4_-20-05-2021-15-33-59.jpg\" alt=\"\" width=\"100%\" /></span></td>\r\n<td style=\"width: 33.3333%; height: 205px;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/5_-20-05-2021-15-34-11.jpg\" alt=\"\" width=\"100%\" /></span></td>\r\n<td style=\"width: 33.3333%; height: 205px;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\"><img src=\"http://bdskingland.net/upload/../upload/6_-20-05-2021-15-34-25.jpg\" alt=\"\" width=\"100%\" /></span></td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">SI&Ecirc;U THỊ VINMART</span></td>\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">KHU VUI CHƠI TRẺ EM</span></td>\r\n<td style=\"width: 33.3333%; height: 16px; text-align: center;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 16px;\">HỒ BƠI</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</body>\r\n</html>', 'tien-ich', 'vn'),
(10, 92, 0, 'Mặt bằng', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mặt bằng triển khai x&acirc;y dựng dự &aacute;n khu đ&ocirc; thị Vinhomes tại Quận 9 với tổng diện t&iacute;ch rộng tới hơn 271 ha được chia th&agrave;nh hai ph&acirc;n khu ch&iacute;nh bao gồm:</span></p>\r\n<ol>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu thấp tầng: cung cấp nh&agrave; phố; biệt thự</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Khu cao tầng: c&aacute;c t&ograve;a th&aacute;p căn hộ chung cư được chia th&agrave;nh 4 ph&acirc;n khu với t&ecirc;n gọi: The Rainbow, The Origami; The Middle; The Ocean.</span></li>\r\n</ol>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Dự &aacute;n c&oacute; tổng 71 t&ograve;a th&aacute;p căn hộ c&oacute; chiều cao từ 25 &ndash; 35 tầng v&agrave; cung cấp cho thị trường 44.000 căn hộ với diện t&iacute;ch căn hộ đa dạng từ 33- 100m2. C&aacute;c căn hộ n&agrave;y được chia th&agrave;nh 3 loại d&ograve;ng sản phẩm bao gồm: Vin Homes Sapphire; Vin Homes Ruby; Vin Homes Diamond.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">C&aacute;c t&ograve;a căn hộ của dự &aacute;n được thiết kế với 3 mặt bằng tầng căn hộ vỡi h&igrave;nh chữ U, Z v&agrave; T trong đ&oacute;:</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mặt bằng tầng căn hộ dạng chữ U: c&oacute; chiều cao 35 &ndash; 36 tầng với mật độ x&acirc;y dựng chỉ 30 căn/ tầng.</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mặt bằng tầng căn hộ dạng chữ Z: thiết kế với chiều cao tầng từ 25 &ndash; 26 tầng c&oacute; tổng số lượng căn hộ tr&ecirc;n s&agrave;n l&agrave; 19 căn/tầng.</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mặt bằng tầng căn hộ dạng chữ T: c&oacute; chiều cao tầng từ 34 -36 tầng, mật độ x&acirc;y dựng chỉ 21 căn hộ/s&agrave;n.</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ph&acirc;n khu thấp tầng The Manhattan gồm 4 loại h&igrave;nh:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">BOUTIQUE SHOPHOUSE</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Diện t&iacute;ch đất : 84 &ndash; 230m2</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Kết cấu x&acirc;y dựng : 5 tầng + 1tum</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">BOUTIQUE VILLA (SHOP VILLA)</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Diện t&iacute;ch đất : 170 &ndash; 680m2</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Kết cấu x&acirc;y dựng : 3 tầng + 1tum</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">RIVERSIDE VILLA SONG LẬP</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Diện t&iacute;ch đất : 340 &ndash; 560m2</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Kết cấu x&acirc;y dựng : 3 tầng + 1tum</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">RIVERSIDE VILLA ĐƠN LẬP</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Diện t&iacute;ch đất : 310 &ndash; 800m2</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Kết cấu x&acirc;y dựng : 3 tầng + 1tum</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Cả 2 loại h&igrave;nh sản phẩm l&agrave; biệt thự song lập v&agrave; biệt thự đơn lập đều sở hữu ban c&ocirc;ng, 3 mặt gi&aacute;p s&ocirc;ng (s&ocirc;ng Tắc v&agrave; s&ocirc;ng Đồng Nai ), mang đến sự th&ocirc;ng tho&aacute;ng, dễ d&agrave;ng đ&oacute;n &aacute;nh s&aacute;ng, gi&oacute; tự nhi&ecirc;n cho gia chủ.</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng hấp dẫn</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Tặng ngay voucher 200 triệu</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Techcombank hỗ trợ vay l&ecirc;n đến 70%</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Hỗ trợ 0% l&atilde;i suất trong 18 th&aacute;ng.</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ph&acirc;n khu The Manhattan bắt đầu b&agrave;n giao từ th&aacute;ng 3/2020</span></li>\r\n</ul>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/t1_-20-05-2021-15-39-55.jpg\" alt=\"Mặt bằng tổng thể\" width=\"100%\" />\r\n<figcaption><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mặt bằng tổng thể</span></figcaption>\r\n</figure>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/t2_-20-05-2021-15-40-11.jpg\" alt=\"Mặt bằng tiện &iacute;ch\" width=\"100%\" />\r\n<figcaption><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Mặt bằng tiện &iacute;ch</span></figcaption>\r\n</figure>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/t3_-20-05-2021-15-40-27.jpg\" alt=\"Ph&acirc;n khu Origami\" width=\"100%\" />\r\n<figcaption><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ph&acirc;n khu Origami</span></figcaption>\r\n</figure>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/t4_-20-05-2021-15-40-48.jpg\" alt=\"Ph&acirc;n khu Rainbow\" width=\"100%\" />\r\n<figcaption><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Ph&acirc;n khu Rainbow</span></figcaption>\r\n</figure>\r\n</body>\r\n</html>', 'mat-bang', 'vn'),
(11, 92, 0, 'Mặt bằng căn hộ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Dự &aacute;n khu đ&ocirc; thị cung cấp cho kh&aacute;ch h&agrave;ng đa dạng c&aacute;c loại h&igrave;nh sản phẩm như: căn hộ chung cư; biệt thự; nh&agrave; phố; nh&agrave; phố thương mại được bố tr&iacute; thuộc 4 ph&acirc;n khu bao gồm:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">&ndash; Khu Rainbow: c&oacute; quy m&ocirc; 17 t&ograve;a th&aacute;p căn hộ được bố tr&iacute; nằm gi&aacute;p tuyến đường Nguyễn Xiển được CĐT mở b&aacute;n đầu ti&ecirc;n.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">&ndash; The Origami: bao gồm c&oacute; 21 t&ograve;a th&aacute;p nằm gi&aacute;p với đường V&agrave;nh Đai 3</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">&ndash; The Middle: c&oacute; 19 to&agrave; th&aacute;p gi&aacute;p V&agrave;nh Đai 3 c&ugrave;ng khu nh&agrave; ở thấp tầng</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">&ndash; The Ocean: c&oacute; vị tr&iacute; nằm gi&aacute;p với đường Phước Thiện, c&ocirc;ng vi&ecirc;n trung t&acirc;m</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn c&aacute;c căn hộ với diện t&iacute;ch từ 33 &ndash; 100 m2 được quy hoạch th&agrave;nh c&oacute; 1 &ndash; 3 ph&ograve;ng ngủ tiện nghi.</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; font-weight: bold;\">&ndash; Căn hộ Studio: 28 &ndash; 39m2</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; font-weight: bold;\">&ndash; Căn hộ 1 PN: 33 &ndash; 52 m2</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; font-weight: bold;\">&ndash; Căn hộ 2 PN: 59 &ndash; 75 m2</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif; font-weight: bold;\">&ndash; Căn hộ 3 PN: 81 &ndash; 100 m2</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">T&ugrave;y theo nhu cầu sử dụng cũng như khả năng t&agrave;i ch&iacute;nh m&agrave; kh&aacute;ch h&agrave;ng, nh&agrave; đầu tư c&oacute; thể lựa chọn, sở hữu căn hộ để an cư, đầu tư sinh lời cho tương lai.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><img src=\"http://bdskingland.net/upload/../upload/s1_-20-05-2021-15-43-40.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><img src=\"http://bdskingland.net/upload/../upload/s2_-20-05-2021-15-43-58.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><img src=\"http://bdskingland.net/upload/../upload/s3_-20-05-2021-15-44-10.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\"><img src=\"http://bdskingland.net/upload/../upload/s4_-20-05-2021-15-44-43.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n</body>\r\n</html>', 'mat-bang-can-ho', 'vn'),
(12, 92, 0, 'Nội thất', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Căn hộ Vinhome tại quận 9 b&agrave;n giao cho kh&aacute;ch h&agrave;ng ho&agrave;n thiện với thiết kế hiện đại, tỉ mỉ trong từng chi tiết, được sắp xếp hợp l&yacute;, tối ưu diện t&iacute;ch cũng như c&ocirc;ng năng sử dụng. Từ đ&oacute; gi&uacute;p cho căn hộ tho&aacute;ng m&aacute;t, đ&oacute;n nắng gi&oacute; v&agrave; gần gũi tự nhi&ecirc;n.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">C&aacute;c sản phẩm của dự &aacute;n được h&igrave;nh th&agrave;nh lấy cảm hứng từ phong c&aacute;ch Singapore ch&iacute;nh l&agrave; cảm hứng của sự hiện đại; văn minh với m&agrave;u xanh hiện hữu tr&agrave;n đầy sức sống. Ch&iacute;nh v&igrave; thế m&agrave; khu căn hộ Vinhomes Quận 9 đ&atilde; được CĐT Vin Group d&agrave;nh phần lớn diện t&iacute;ch cho cảnh quan sống xanh trong l&agrave;nh với sự xuất hiện của m&ocirc;i trường sống th&ocirc;ng tho&aacute;ng, đa dạng tiện &iacute;ch dịch vụ đa năng.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Chủ đầu tư Vingroup của dự &aacute;n Vincity Quận 9 đ&atilde; hợp t&aacute;c c&ugrave;ng với đối t&aacute;c thiết kế, kiến tr&uacute;c h&agrave;ng đầu thế giới trau chuốt tỉ mỉ từng sản phẩm v&agrave; sắp xếp vị tr&iacute; nội thất căn hộ hợp l&yacute;, sử dụng tối đa kh&ocirc;ng gian căn hộ tho&aacute;ng đ&atilde;ng, ban c&ocirc;ng hướng view s&ocirc;ng.</span></p>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/phong-khach-vinhomes-grand-park-350x250_-20-05-2021-23-54-50.jpg\" alt=\"Ph&ograve;ng kh&aacute;ch\" width=\"100%\" height=\"\" />\r\n<figcaption><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Ph&ograve;ng kh&aacute;ch</span></figcaption>\r\n</figure>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/2-min_-20-05-2021-23-56-08.jpg\" alt=\"Ph&ograve;ng bếp\" width=\"100%\" />\r\n<figcaption><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Ph&ograve;ng bếp</span></figcaption>\r\n</figure>\r\n<figure class=\"image\" style=\"text-align: center;\"><img src=\"http://bdskingland.net/upload/../upload/3-min_-20-05-2021-23-56-43.jpg\" alt=\"Ph&ograve;ng ăn\" width=\"100%\" />\r\n<figcaption><span style=\"font-size: 18px; font-family: verdana, geneva, sans-serif;\">Ph&ograve;ng ăn</span></figcaption>\r\n</figure>\r\n</body>\r\n</html>', 'noi-that', 'vn'),
(13, 92, 0, 'Bảng giá', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Dự &aacute;n Vinhomes Grand Park Quận 9 được chủ đầu tư Vingroup bung h&agrave;ng ra thị trường với mức gi&aacute; b&aacute;n được đ&aacute;nh gi&aacute; l&agrave; hợp l&yacute; với nhu cầu, khả năng t&agrave;i ch&iacute;nh của mọi kh&aacute;ch h&agrave;ng tất cả mọi ph&acirc;n kh&uacute;c v&agrave; loại h&igrave;nh sản phẩm (Căn hộ chung cư, Nh&agrave; Phố, Shophouse&nbsp; ch&acirc;n đế, Biệt thự đơn lập, Biệt thự song lập, Dinh thự đẳng cấp 6 sao&hellip;)</span></p>\r\n<h1 style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 20px;\">Ch&iacute;nh s&aacute;ch &amp; gi&aacute; b&aacute;n Căn hộ chung cư.</span></h1>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Mức gi&aacute; b&aacute;n căn hộ Vinhome Grand Park của từng loại h&igrave;nh căn hộ sản phẩm của dự &aacute;n được chia theo từng ph&acirc;n kh&uacute;c trong khoảng từ 38 &ndash; 50 triệu đồng/m2 (t&ugrave;y từng t&ograve;a; tầng v&agrave; tầm view nh&igrave;n sẽ c&oacute; mức gi&aacute; b&aacute;n kh&aacute;c nhau).</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Vinhomes Grand Park Quận 9 đ&atilde; hỗ trợ kh&aacute;ch h&agrave;ng bằng c&aacute;ch hợp t&aacute;c c&ugrave;ng với ng&acirc;n h&agrave;ng Techcombank, đưa ra c&aacute;c giải ph&aacute;p t&agrave;i ch&iacute;nh, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng v&agrave; ưu đ&atilde;i hấp dẫn hỗ trợ cho mọi kh&aacute;ch h&agrave;ng, nh&agrave; đầu tư. Theo đ&oacute;;</span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Kh&aacute;ch h&agrave;ng chỉ cần thanh to&aacute;n linh hoạt 15% gi&aacute; trị căn hộ để nhận nh&agrave;</span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ng&acirc;n h&agrave;ng hỗ trợ vay vốn l&ecirc;n tới 80% GTCH trong 35 năm, được &acirc;n hạn nợ gốc, hỗ trợ l&atilde;i suất 0% trong v&ograve;ng 24 th&aacute;ng.</span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\"><img src=\"http://bdskingland.net/upload/../upload/bg_-20-05-2021-15-46-43.jpg\" alt=\"\" width=\"100%\" /></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Đầu th&aacute;ng 10/2020 ch&iacute;nh thức nhận giữ chỗ ưu&nbsp; ti&ecirc;n 2 ph&acirc;n khu đẹp nhất đ&oacute; l&agrave; S6 &amp; S10 (Ph&acirc;n Khu Căn Hộ View trực diện vườn nhật &ndash; Hồ C&aacute; Coi) v&agrave; đến cuối th&aacute;ng 10 đầu th&aacute;ng 11/2020 mở b&aacute;n ch&iacute;nh thức &ldquo;S6 &ndash; S10 đẹp nhất ph&acirc;n khu THE ORIGAMI Vinhomes&rdquo;</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Kh&aacute;ch h&agrave;ng chỉ cần thanh to&aacute;n chỉ 15% gi&aacute; trị căn hộ cho đến khi nhận nh&agrave; kh&ocirc;ng phải thanh to&aacute;n bất cứ khoản n&agrave;o th&ecirc;m.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Ng&acirc;n h&agrave;ng sẽ hỗ trợ cho vay tối đa 80% gi&aacute; trị căn hộ chung cư. &Acirc;n hạn gốc v&agrave; l&atilde;i 0% l&ecirc;n đến 24 th&aacute;ng kh&aacute;ch h&agrave;ng kh&ocirc;ng phải trả bất kỳ 1 khoản n&agrave;o th&ecirc;m.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Thời gian hỗ trợ cho vay l&ecirc;n đến 35 năm.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Chiết khấu ngay 9% khi kh&aacute;ch h&agrave;ng chọn phương thức thanh to&aacute;n nhanh.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Mua căn hộ chung cư dưới 1,7 tỷ đồng được Vinhomes tặng Voucher mua xe Vinfast 70 triệu &aacute;p dụng d&ograve;ng xe Vinfast Fadil.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Mua căn hộ chung cư từ 1,7 tỷ &ndash; 2,5 tỷ đồng được Vinhomes tặng Voucher mua xe trị gi&aacute; 150 triệu &aacute;p dụng d&ograve;ng xe Vinfast Lux A.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">&ndash; Mua căn hộ chung cư tr&ecirc;n 2,5 tỷ đồng được Vinhomes tặng Voucher mua xe trị&nbsp; gi&aacute; 200 triệu &aacute;p dụng d&ograve;ng xe Vinfast Lux SA.</span></span></p>\r\n<h1 style=\"text-align: justify;\"><span style=\"font-size: 20px;\"><span style=\"font-family: verdana, geneva, sans-serif;\">Ch&iacute;nh s&aacute;ch &amp; gi&aacute; b&aacute;n Nh&agrave; Phố &amp; Shophouse &amp; Biệt Thự.</span></span></h1>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Tặng ngay voucher mua xe Vinfast 200 triệu</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Ng&acirc;n h&agrave;ng Techcombank hỗ trợ cho vay l&ecirc;n đến 70% gi&aacute; trị hợp đồng.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Hỗ trợ 0% l&atilde;i suất l&ecirc;n đến 18 th&aacute;ng.</span></span></li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><span style=\"color: #e03e2d;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Cập nhật tiến độ x&acirc;y dựng v&agrave; lịch sự kiện triển khai mở b&aacute;n Vinhomes Grand Park (Căn hộ chung cư &amp; Nh&agrave; Phố &ndash; Shophouse &ndash; Biệt Thự) ch&iacute;nh thức từ Vingroup t&iacute;nh đến th&aacute;ng 12/2020.</span></span></span></p>\r\n<ul>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Th&aacute;ng 07-08/2019 đ&atilde; b&aacute;n hết ph&acirc;n khu căn hộ The Rainbow.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Th&aacute;ng 09-10/2019 đ&atilde; b&aacute;n hết Shophouse ch&acirc;n đế căn hộ (Tới th&aacute;ng 5/2020 c&ograve;n 1 v&agrave;i căn).</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Th&aacute;ng 01/2020 ch&iacute;nh thức khai trương c&ocirc;ng vi&ecirc;n &aacute;nh s&aacute;ng Grand Forest Vinhomes Grand Park quy m&ocirc; 36ha lớn nhất Đ&ocirc;ng Nam &Aacute;.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Từ th&aacute;ng 01/2020 trở đi ch&iacute;nh thức nhận đặt chỗ ưu ti&ecirc;n cho Ph&acirc;n Khu Thấp Tầng Nh&agrave; Phố &amp; Biệt Thự The Manhattan v&agrave; Ph&acirc;n khu căn hộ giai đoạn 2 The Origami.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Ng&agrave;y 22/05/2020 ch&iacute;nh thức c&ocirc;ng bố giới thiệu ph&acirc;n khu Nh&agrave; Phố Shophouse The Manhattan tại c&ocirc;ng vi&ecirc;n Vinhomes Grand Park.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Cuối th&aacute;ng 05 đầu th&aacute;ng 06/2020 ch&iacute;nh thức mở b&aacute;n giai đoạn đầu ti&ecirc;n ph&acirc;n khu Nh&agrave; Phố &amp; Biệt Thự &amp; Shophouse The Manhattan.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Ng&agrave;y 6/6/2020 ch&iacute;nh thức c&ocirc;ng bố Giai Đoạn 2 khu Nh&agrave; Phố &amp; Biệt Thự &amp; Shophouse The Manhattan Vinhome Grand Park.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Đầu th&aacute;ng 7/2020 c&ocirc;ng bố mở b&aacute;n ph&acirc;n khu The Manhattan Glory (Nh&agrave; Phố &amp; Biệt Thự Ven S&ocirc;ng).</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Ng&agrave;y 28/07 ch&iacute;nh thức ra qu&acirc;n c&ocirc;ng bố ch&iacute;nh thức mở b&aacute;n ph&acirc;n khu căn hộ The Origami Vinhomes Grand Park tại c&ocirc;ng vi&ecirc;n Vinhomes Quận 9.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Dự kiến mở b&aacute;n giai đoạn 2 v&agrave;o cuối th&aacute;ng 7 đầu th&aacute;ng 8/2020.</span></span></li>\r\n<li style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif;\"><span style=\"font-size: 18px;\">Th&aacute;ng 11 &ndash; 12/2020 mở b&aacute;n ph&acirc;n khu đẹp nhất The Origami l&agrave; S6 &amp; S10 (căn hộ vườn nhật &ndash; Hồ C&aacute; Coi).</span></span></li>\r\n</ul>\r\n</body>\r\n</html>', 'bang-gia', 'vn');
INSERT INTO `vt_tabs` (`id`, `data_id`, `pos`, `title`, `content`, `name`, `lang`) VALUES
(15, 92, 0, 'Các câu hỏi thường gặp', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">Bảng gi&aacute; b&aacute;n căn hộ chung cư Vinhomes Grand Park Quận 9 Studio - 1 - 2 - 3 Ph&ograve;ng Ngủ l&agrave; bao nhi&ecirc;u?</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Gi&aacute; b&aacute;n c&aacute;c loại diện t&iacute;ch căn hộ chung cư Vinhomes Grand Park ở Quận 9 v&ocirc; c&ugrave;ng ưu đ&atilde;i từ 1.4 - 4.6 tỷ đồng. Kh&aacute;ch h&agrave;ng chỉ cần thanh to&aacute;n 15% đ&atilde; k&yacute; ngay HĐMB. Tặng voucher mua xe Vinfast l&ecirc;n đến 200 triệu.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Ch&iacute;nh s&aacute;ch t&agrave;i ch&iacute;nh hỗ trợ vay mua nh&agrave; linh hoạt. Thủ tục vay vốn nhanh gọn, ng&acirc;n h&agrave;ng thẩm định hồ sơ chỉ trong v&ograve;ng 1h.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Cho vay 80% gi&aacute; trị căn hộ, thời hạn l&ecirc;n tới 35 năm.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Hỗ trợ l&atilde;i suất 0% v&agrave; &acirc;n hạn nợ gốc l&ecirc;n đến 24 th&aacute;ng.</span></p>\r\n<hr />\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">C&aacute;c loại diện t&iacute;ch chi tiết cụ thể tại dự &aacute;n căn hộ Vinhome Grand Park Quận 9?</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn studio : 27 - 39m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 1PN : 36 - 41m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 1PN+ : 46 - 52m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 2PN : 58 - 69m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 2PN+ : 69 - 70,4m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 3PN : 81 - 103m2.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">❖ Căn 3PN+ : 103 - 108m2.</span></p>\r\n<hr />\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">Tổng thể quy m&ocirc; của đại đ&ocirc; thị Vinhomes Grand Park Quận 9 cụ thể như thế n&agrave;o?</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">- Tổng diện t&iacute;ch ~272ha</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">- Mật độ x&acirc;y dựng chỉ ~22%</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">- Đại c&ocirc;ng vi&ecirc;n trung t&acirc;m Grand Forest 36ha lớn nhất đ&ocirc;ng nam &aacute;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">- C&ocirc;ng vi&ecirc;n chủ đề, s&acirc;n TDTT ngo&agrave;i trời, vườn BBQ, ... trong từng ph&acirc;n khu</span></p>\r\n<hr />\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px; font-weight: bold;\">T&ocirc;i c&oacute; thể đăng k&yacute; tham quan nh&agrave; mẫu v&agrave; xem nh&agrave; thực tế được kh&ocirc;ng?</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: verdana, geneva, sans-serif; font-size: 18px;\">Được! Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ Ph&ograve;ng Kinh Doanh để được hỗ trợ.</span></p>\r\n</body>\r\n</html>', 'cac-cau-hoi-thuong-gap', 'vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vt_user`
--

CREATE TABLE `vt_user` (
  `id` int(11) NOT NULL,
  `user` text CHARACTER SET latin1,
  `password` text CHARACTER SET latin1,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` text CHARACTER SET latin1,
  `email` text CHARACTER SET latin1,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `time` text CHARACTER SET latin1,
  `code` text CHARACTER SET latin1,
  `confirm` tinyint(1) NOT NULL DEFAULT '0',
  `isAdmin` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `hide` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vt_user`
--

INSERT INTO `vt_user` (`id`, `user`, `password`, `title`, `phone`, `email`, `address`, `time`, `code`, `confirm`, `isAdmin`, `type`, `img`, `hide`) VALUES
(6, '', 'e698f2679be5ba5c9c0b0031cb5b057c', 'Quản trị', '090222', 'admin@kienlua.vn', 'asd', '19/04/2017 15:51:45', '0158d404cacddbdd3bd436473bfc09a8', 1, 1, '949,3', '', 0),
(7, '', 'd43a41bd906e9fa99c13781d670aded8', 'Quý', '', 'yungbloodx02@gmail.com', '', '07/09/2019 21:16:40', '79581c38fafec47653460d039a04aa5b', 0, 1, '', '', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `vt_cart`
--
ALTER TABLE `vt_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_config`
--
ALTER TABLE `vt_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_contact`
--
ALTER TABLE `vt_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_counter`
--
ALTER TABLE `vt_counter`
  ADD KEY `ip_address` (`ip_address`);

--
-- Chỉ mục cho bảng `vt_data`
--
ALTER TABLE `vt_data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_data_lang`
--
ALTER TABLE `vt_data_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_district`
--
ALTER TABLE `vt_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceid` (`province`);

--
-- Chỉ mục cho bảng `vt_file`
--
ALTER TABLE `vt_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_file_data`
--
ALTER TABLE `vt_file_data`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_file_data_lang`
--
ALTER TABLE `vt_file_data_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_menu`
--
ALTER TABLE `vt_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Chỉ mục cho bảng `vt_menu_lang`
--
ALTER TABLE `vt_menu_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_page`
--
ALTER TABLE `vt_page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_page_lang`
--
ALTER TABLE `vt_page_lang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_province`
--
ALTER TABLE `vt_province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_slug`
--
ALTER TABLE `vt_slug`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slugname` (`slugName`(255));

--
-- Chỉ mục cho bảng `vt_tabs`
--
ALTER TABLE `vt_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vt_user`
--
ALTER TABLE `vt_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `vt_cart`
--
ALTER TABLE `vt_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `vt_config`
--
ALTER TABLE `vt_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `vt_contact`
--
ALTER TABLE `vt_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `vt_data`
--
ALTER TABLE `vt_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT cho bảng `vt_data_lang`
--
ALTER TABLE `vt_data_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `vt_file`
--
ALTER TABLE `vt_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `vt_file_data`
--
ALTER TABLE `vt_file_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `vt_file_data_lang`
--
ALTER TABLE `vt_file_data_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `vt_menu`
--
ALTER TABLE `vt_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT cho bảng `vt_menu_lang`
--
ALTER TABLE `vt_menu_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT cho bảng `vt_page`
--
ALTER TABLE `vt_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `vt_page_lang`
--
ALTER TABLE `vt_page_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `vt_slug`
--
ALTER TABLE `vt_slug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT cho bảng `vt_tabs`
--
ALTER TABLE `vt_tabs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `vt_user`
--
ALTER TABLE `vt_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
