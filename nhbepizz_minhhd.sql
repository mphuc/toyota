-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 21, 2017 lúc 09:15 AM
-- Phiên bản máy phục vụ: 5.6.38
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhbepizz_minhhd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'wyVqeo8HEnQj92a2O8NZOBz9Ak978x4KIOS879ZMYo5M6TFygklXohruQxFR1a9w', '', '', 'XBInTrsolCdMuHmGri2t6bc3aWE8mZ7wfMzphw4erx3jbTBwv4AbGsEZbT5CPwyIetZEnP7ro5LUB1SzqoBhIXjTVnpduhg2Wo11mF3RebWccxcQeu4BDY6kHURRIoH9G6LBcSsOMUZ7wGeDKOq10xMNvZvdYJkdslYiL3YiwkU08wYOtFTFfjUPR1HCgB5UModcx17QPNHFC0KwJTzqCtTnqqV9hQJjjEauQMYVkOxs9Rzrc5OocPMZ72cSZ2OL', 1, '2017-02-10 09:58:17', '2017-02-10 09:58:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 4, 2),
(2, 4, 3),
(3, 4, 1),
(4, 4, 4),
(5, 4, 5),
(6, 4, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9),
(10, 4, 10),
(11, 4, 11),
(12, 4, 12),
(13, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 2, 'Đường vào máy tính'),
(4, 2, 'A/D'),
(5, 2, 'Analog đầu vào'),
(6, 2, 'Analog đầu ra'),
(7, 2, 'Số preamp'),
(8, 2, 'Điện Phantom'),
(9, 2, '	USB'),
(10, 2, 'Nguồn điện'),
(13, 2, 'Phần mềm'),
(3, 2, 'Kết nối thiết bị'),
(2, 2, 'Đường In/Out'),
(11, 2, 'HĐH Windows'),
(12, 2, 'HĐH Mac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(4, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(4, 2, 'Thông số kỹ thuật'),
(7, 2, 'Phần mềm hỗ trợ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(79, 2, 7, 'iPhone 6'),
(87, 2, 6, 'HP Banner'),
(93, 2, 8, 'Canon'),
(92, 2, 8, 'Burger King'),
(91, 2, 8, 'Coca Cola'),
(90, 2, 8, 'Disney'),
(89, 2, 8, 'Dell'),
(80, 2, 7, 'MacBookAir'),
(88, 2, 8, 'Harley Davidson'),
(94, 2, 8, 'NFL'),
(95, 2, 8, 'RedBull'),
(96, 2, 8, 'Sony'),
(97, 2, 8, 'Starbucks'),
(98, 2, 8, 'Nintendo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(102, '', 0, 0, 1, 0, 1, '2017-02-12 10:38:21', '2017-02-12 15:10:01'),
(91, '', 0, 0, 1, 0, 1, '2015-04-27 03:36:46', '2015-04-27 03:36:46'),
(103, '', 102, 0, 1, 0, 1, '2017-03-01 23:53:49', '2017-03-01 23:53:49'),
(104, '', 103, 0, 1, 0, 1, '2017-03-01 23:54:04', '2017-03-01 23:54:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(102, 2, 'Hyundai', 'HYUNDAI - Hyundai 3s Hà Đông - Bảng Giá Xe Hyundai Tại Hà Nội', 'HYUNDAI - Hyundai 3s Hà Đông - Bảng Giá Xe Hyundai Tại Hà Nội', 'HYUNDAI - Hyundai 3s Hà Đông - Bảng Giá Xe Hyundai Tại Hà Nội', 'Hyundai'),
(103, 2, 'Hyundai 02', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'hyundai 1', '', ''),
(104, 2, '1312312', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '5345', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(91, 91, 0),
(102, 102, 0),
(103, 102, 0),
(103, 103, 1),
(104, 102, 0),
(104, 103, 1),
(104, 104, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(102, 0, 0),
(103, 0, 0),
(104, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(102, 0),
(103, 0),
(104, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18'),
(7, '12341234', '341234123', 'F', '600000.0000', 1, 1, '0.0000', '2017-05-17', '2017-06-17', 1, '1', 1, '2017-05-17 08:09:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon_category`
--

INSERT INTO `oc_coupon_category` (`coupon_id`, `category_id`) VALUES
(7, 102),
(7, 104);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon_product`
--

INSERT INTO `oc_coupon_product` (`coupon_product_id`, `coupon_id`, `product_id`) VALUES
(1, 7, 331),
(2, 7, 329),
(3, 7, 320),
(4, 7, 321),
(5, 7, 324);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.79909998, 1, '2017-02-10 04:25:14'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2017-02-10 04:25:14'),
(3, 'Euro', 'EUR', '', '€', '2', 0.93730003, 1, '2017-02-10 04:25:14'),
(4, 'VNĐ', 'VND', '', ' VNĐ', '', 1.00000000, 1, '2017-02-16 01:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '127.0.0.1', 1, '2017-02-10 04:03:58', '2017-02-10 04:03:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(390, 'total', 'credit'),
(438, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'module', 'latest'),
(436, 'module', 'journal2'),
(437, 'shipping', 'free'),
(439, 'module', 'store'),
(440, 'feed', 'google_sitemap'),
(441, 'feed', 'google_base');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(6, 2, 'Chính sách giao / nhận hàng', '&lt;h2&gt;1. Giao nhận tại trụ sở:&lt;/h2&gt;&lt;p&gt;- Quý khách hàng nhận hàng trực tiếp tại bộ phận giao nhận hàng tại văn phòng, cửa hàng của chúng tôi.&lt;/p&gt;&lt;p&gt;- Quý khách kiểm tra kỹ sản phẩm, đối chiếu sản phẩm với phiếu xuất, phiếu bảo hành (nếu có) trước khi ký nhận.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;2. Giao nhận tại nhà (COD):&lt;/h2&gt;&lt;p&gt;- Bộ phận giao nhận sẽ liên lạc với Quý khách hàng để sắp xếp thời gian, địa điểm cụ thể để giao hàng cho Quý khách.&lt;/p&gt;&lt;p&gt;- Quý khách vui lòng trực tiếp kiểm tra kỹ hàng hoá ngay khi nhận hàng từ người chuyển phát hàng hoá, nếu có vấn đề liên quan tới vấn đề chủng loại, chất lượng, số lượng hàng hoá không đúng như trong đơn đặt hàng, niêm phong đã bị thay đổi, Quý khách cần lập biên bản ngay khi nhận hàng với nhân viên giao nhận và thông báo ngay cho Hyper Shop để cùng phối hợp xử lý. Nếu không có bất cứ vấn đề gì, Quý khách vui lòng ký nhận vào biên bản giao hàng.&lt;/p&gt;&lt;p&gt;- Quý khách thanh toán cho nhân viên giao nhận toàn bộ hoặc một phần (nếu đã đặt cọc) giá trị hàng hóa đã mua.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h2&gt;3. Giao nhận bằng chuyển phát:&lt;/h2&gt;&lt;p&gt;- Đối với các Quý khách hàng ở ngoại thành thành phố Hà Nội hoặc ở tỉnh xa chúng tôi sẽ ủy quyền dịch vụ vận chuyển cho các đơn vị uy tín như DHL, UPS, EMS, Bưu điện, Viettel, Tín thành, EcoTrans....&lt;/p&gt;&lt;p&gt;- Khi giao hàng chúng tôi cũng fax/email lại biên bản giao hàng ghi rõ hàng hoá, số lượng, qui cách chủng loại xác nhận với người mua, tên, số điện thoại đơn vị giao nhận hàng để người mua hàng tiện liên hệ nhận hàng trong trường hợp hàng đến chậm.&amp;nbsp;&lt;/p&gt;&lt;p&gt;- Đối với hàng có trị giá lớn chúng tôi tiến hành đóng dấu, niêm phong để Quý khách tiện kiểm tra khi nhận hàng, dễ dàng cho Quý khách hàng có thể kiểm tra và chứng minh rằng hàng không bị thay đổi nội dung khi vận chuyển, đồng thời thông báo cho người mua thời gian dự kiến hàng sẽ tới tay người nhận hàng, như vậy người mua hàng sẽ yên tâm rằng hàng hoá sắp được giao và chuẩn bị, thu xếp nhận hàng sớm hoặc thông báo cho người nhận hàng thời gian giao hàng và chủng loại hàng hóa (đối với hàng hóa biếu, tặng,….).&lt;/p&gt;&lt;p&gt;- Quý khách vui lòng trực tiếp kiểm tra kỹ hàng hoá ngay khi nhận hàng từ người chuyển phát hàng hoá, nếu có vấn đề liên quan tới vấn đề chủng loại, chất lượng, số lượng hàng hoá không đúng như trong đơn đặt hàng, niêm phong đã bị thay đổi, Quý khách cần lập biên bản ngay khi nhận hàng với đơn vị hoặc người chuyển phát và thông báo ngay cho chúng tôi để cùng phối hợp đơn vị chuyển phát hàng hóa xử lý.&lt;/p&gt;&lt;p&gt;- Trong mọi trường hợp như vậy, Quý khách không phải chịu bất kì trách nhiệm nào liên quan tới việc hàng hoá bị thay đổi, thất lạc, không đảm bảo về chất lượng và đủ số lượng trong quá trình vận chuyển hàng hoá tới địa điểm nhận hàng của Quý khách.&lt;/p&gt;&lt;p&gt;- Khi đặt hàng, Quý khách vui lòng điền đầy đủ và chính xác các thông tin cần thiết theo yêu cầu để tạo điều kiện thuận lợi cho chúng tôi trong việc cung cấp hàng hóa và nhận thanh toán nhanh chóng. Chúng tôi có quyền kiểm tra các thông tin này và có quyền từ chối đăng kí tài khoản không xác định rõ danh tính cũng như hủy bỏ các đơn đặt hàng không rõ ràng, chúng tôi cũng không chịu trách nhiệm đối với những trường hợp giao hàng chậm trễ hay thất lạc vì các thông tin do Quý khách cung cấp không chính xác.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;h3&gt;Mọi chi tiết xin liên hệ&lt;/h3&gt;&lt;p&gt;Công ty Hyper&lt;/p&gt;&lt;p&gt;Bộ phận giao / nhận hàng&lt;/p&gt;&lt;p&gt;Địa chỉ: 149 Thuỵ Khuê, Tây Hồ, Hà Nội&lt;/p&gt;&lt;p&gt;Hotline: 0466.543.888 - 094554.77.33&lt;/p&gt;&lt;p&gt;Website: www.hypershop.vn&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Chính sách giao / nhận hàng', '', ''),
(7, 2, 'Cơ hội nghề nghiệp', '&lt;p&gt;Hiện tại chưa có vị trí nào được tuyển dụng ...&amp;nbsp;&lt;/p&gt;', 'Cơ hội nghề nghiệp', '', ''),
(5, 2, 'Chính sách bảo hành', '&lt;p&gt;Đang bổ sung ...&lt;/p&gt;\r\n', 'Chính sách bảo hành', '', ''),
(9, 2, 'Chính sách bảo mật thông tin', '&lt;p&gt;Chúng tôi đang bổ sung ...&lt;/p&gt;', 'Chính sách bảo mật thông tin', '', ''),
(4, 2, 'Giới thiệu công ty Hyper', '&lt;p&gt;Khởi đầu là 1 cửa hàng nhỏ chuyên bán nhạc, đĩa CD Nonstop, loa máy tính trên phố Yên Phụ và Cửa Bắc từ năm 2008. Đến năm 2012 Hyper chuyển trụ sở về Thuỵ Khuê và phát triển thành hệ thống thương hiệu gồm : Hyper Shop, Hyper Dj&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Thương hiệu Hyper Shop chuyên về lĩnh vực cung cấp thiết bị dj, âm thanh và dịch vụ sự kiện âm nhạc. Phát triển song song với Hyper Shop, Hyper Dj là trung tâm đào tạo DJ &amp;amp; Producer chuyên nghiệp, với sự tham gia của các giảng viên lâu năm trong nghề, học viên được học tập trên các thiết bị cao cấp và công nghệ mới nhất từ các hãng lớn.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Hyper Shop đã đáp ứng và làm hài lòng khách hàng trong nước cũng như quốc tế. Đội ngũ nhân sự trẻ tuổi được đào tạo bài bản, chuyên môn cao, luôn luôn sẵn sàng phục vụ tận tình và lịch sự. Chúng tôi sẵn sàng cung cấp các dịch vụ tư vấn giúp khách hàng lựa chọn các sản phẩm có tính năng kỹ thuật phù hợp dành cho mọi nhu cầu từ thấp đến cao.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Sứ mệnh của chúng tôi : sẽ đưa những sản phẩm ưu việt và công nghệ mới nhất về Việt Nam.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Giới thiệu', 'Hyper là gì?', ''),
(8, 2, 'Hướng dẫn mua hàng online', '&lt;p style=&quot;line-height: 1.8;&quot;&gt;Quý khách tạo 1 tài khoản khách hàng trên trang web tại đây ; Hyper không thu phí cho việc đăng ký thành viên này.&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 1.8;&quot;&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Làm theo hướng dẫn điền vào thông tin cá nhân của khách hàng. Hyper cam kết đảm bảo tính bảo mật thông tin cá nhân mà khách hàng đã cung cấp.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Hoàn tất điền thông tin, quý khách tích vào ô &quot;Tôi đã đọc và đồng ý với Hình thức thanh toán và Chính sách bảo hành&quot;. Rồi click vào ô đăng ký.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Quý khách đăng nhập tài khoản của mình và thực hiện giao dịch mua hàng online.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Chọn mua sản phẩm vào giỏ hàng, gửi đơn hàng.&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Hyper sẽ liên lạc ngay với quý khách khi nhận được đơn hàng và thực hiện giao dịch.&amp;nbsp;&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;h2 style=&quot;line-height: 1.8;&quot;&gt;&lt;span style=&quot;line-height: 19.2px; color: inherit; font-family: inherit;&quot;&gt;Mọi chi tiết xin liên hệ:&lt;/span&gt;&lt;/h2&gt;&lt;div style=&quot;line-height: 1.8;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;line-height: 19.2px;&quot;&gt;Công ty Hyper&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;line-height: 19.2px;&quot;&gt;Địa chỉ: 149 Thuỵ Khuê, Tây Hồ, Hà Nội&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;line-height: 19.2px;&quot;&gt;Hotline: 0466.543.888 - 0888.66.9933 - 094334.77.33&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;line-height: 19.2px;&quot;&gt;Website: www.hypershop.vn&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;', 'Mua hàng online', '', ''),
(3, 2, 'Phương thức thanh toán', '&lt;p&gt;Quý khách hàng sử dụng các hình thức đặt hàng trực tuyến trên web, qua email, qua điện thoại và hỗ trợ bằng nick chat có thể lựa chọn 1 trong các hình thức thanh toán sau:&lt;/p&gt;&lt;h3&gt;1. Giao hàng – Trả tiền mặt:&lt;/h3&gt;&lt;p&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Sau khi thực hiện các bước đặt hàng, và được nhân viên của Hyper giao hàng và kiểm tra toàn bộ giấy tờ đi kèm và sản phẩm, vui lòng thanh toán bằng tiền mặt cho nhân viên giao / nhận của Hyper.&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;/p&gt;&lt;h3&gt;2. Thanh toán chuyển khoản:&lt;/h3&gt;&lt;p&gt;&lt;/p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Áp dụng đối với những đơn hàng ngoại tỉnh, hoặc nội tỉnh nếu khách hàng có nhu cầu sử dụng phương thức thanh toán này.&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Sau khi thực hiện các bước đặt hàng, nhân viên hỗ trợ trực tuyến sẽ gọi điện và xác nhận về kho hàng để thông báo tới khách hàng về thông tin tài khoản chuyển khoản phù hợp. Quý khách vui lòng chuyển khoản theo thông tin tài khoản dưới đây:&lt;/span&gt;&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;line-height: 1.42857;&quot;&gt;Chủ tài Khoản: Đỗ Minh Tiến&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Số Tài Khoản: 0011001002310&amp;nbsp;&lt;/p&gt;&lt;p&gt;Ngân hàng TMCP Công thương Việt Nam - Chi Nhánh Hà Nội&lt;/p&gt;&lt;p&gt;Lưu ý: Sau khi chuyển khoản vui lòng thông báo với nhân viên Online để xác nhận về khoản tiền.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n', 'Phương thức thanh toán', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(3, 0, 0),
(5, 0, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_category`
--

CREATE TABLE `oc_journal2_blog_category` (
  `category_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_category`
--

INSERT INTO `oc_journal2_blog_category` (`category_id`, `parent_id`, `image`, `status`, `sort_order`) VALUES
(1, 0, '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_category_description`
--

CREATE TABLE `oc_journal2_blog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_category_description`
--

INSERT INTO `oc_journal2_blog_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `keyword`) VALUES
(1, 2, 'News', '', '', '', '', 'news');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_category_to_layout`
--

CREATE TABLE `oc_journal2_blog_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_category_to_store`
--

CREATE TABLE `oc_journal2_blog_category_to_store` (
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_category_to_store`
--

INSERT INTO `oc_journal2_blog_category_to_store` (`category_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_comments`
--

CREATE TABLE `oc_journal2_blog_comments` (
  `comment_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `comment` text,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post`
--

CREATE TABLE `oc_journal2_blog_post` (
  `post_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `comments` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_post`
--

INSERT INTO `oc_journal2_blog_post` (`post_id`, `author_id`, `image`, `comments`, `status`, `sort_order`, `date_created`, `date_updated`, `views`) VALUES
(36, 1, '', 2, 1, 0, '2017-02-12 15:31:43', NULL, 48),
(34, 1, 'system/Call-Center.jpg', 2, 1, 0, '2017-02-12 14:38:57', '2017-02-12 14:46:06', 78),
(35, 1, '32963_Hyundai_Logo.jpg', 2, 1, 0, '2017-02-12 14:39:26', '2017-02-12 14:46:35', 88),
(33, 1, 'mua-xe-tra-gop-11111111111.jpg', 2, 1, 0, '2017-02-12 14:35:16', '2017-02-12 14:36:09', 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post_description`
--

CREATE TABLE `oc_journal2_blog_post_description` (
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  `tags` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_post_description`
--

INSERT INTO `oc_journal2_blog_post_description` (`post_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `keyword`, `tags`) VALUES
(34, 2, 'Liên hệ', '<p>Th&ocirc;ng tin li&ecirc;n hệ</p>', '', '', '', 'lien-he', ''),
(35, 2, 'Giới thiệu', '<p>Giới thiệu</p>', '', '', '', 'gioi-thieu', ''),
(36, 2, 'Bản đồ', '', '', '', '', 'ban-do', ''),
(33, 2, 'Mua xe trả góp', '<p>Hyundai H&agrave; Đ&ocirc;ng lu&ocirc;n sẵn s&agrave;ng hỗ trợ vay vốn v&agrave; tư vấn cho những kh&aacute;ch h&agrave;ng mua xe c&oacute; nhu cầu trả g&oacute;p. Th&ocirc;ng qua hệ thống ng&acirc;n h&agrave;ng v&agrave; c&ocirc;ng ty t&agrave;i ch&iacute;nh, qu&yacute; kh&aacute;ch sẽ được hỗ trợ vay với l&atilde;i suất ưu đ&atilde;i, thủ tục đơn giản v&agrave; nhanh ch&oacute;ng.</p>\n\n<p>I.THỦ TỤC HỒ SƠ VAY BAO GỒM:<br />\n1. Đối với kh&aacute;ch h&agrave;ng l&agrave; c&aacute; nh&acirc;n:<br />\n+ Sao y hộ khẩu<br />\n+ Sao y CMND.<br />\n+ Giấy chứng nhận độc th&acirc;n hoặc giấy kết h&ocirc;n.<br />\n+ Chứng minh thu nhập bằng: hợp đồng lao động, bảng lương, sổ tiết kiệm, t&agrave;i khoản c&aacute; nh&acirc;n.<br />\nC&aacute; nh&acirc;n sở hữu t&agrave;i sản c&oacute; gi&aacute; trị: nh&agrave; cửa, đất đai, c&aacute;c loại &ocirc; t&ocirc; , m&aacute;y m&oacute;c, d&acirc;y chuyền nh&agrave; m&aacute;y, nh&agrave; xưởng,..<br />\n+ Hợp đồng cho thu&ecirc; xe, thu&ecirc; nh&agrave;, cho thu&ecirc; xưởng, giấy g&oacute;p vốn, cổ phần, cổ phiếu, tr&aacute;i phiếu.<br />\nNếu c&aacute; nh&acirc;n c&oacute; c&ocirc;ng ty ri&ecirc;ng m&agrave; thu nhập chủ yếu từ c&ocirc;ng ty th&igrave; th&ecirc;m: b&aacute;o c&aacute;o thuế, b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh, bảng lương, bảng chia lợi nhuận từ c&ocirc;ng ty. Giấy ph&eacute;p đăng k&yacute; kinh doanh.</p>\n\n<p>+ Ho&aacute; đơn chi ph&iacute; c&aacute; nh&acirc;n c&aacute;c th&aacute;ng gần nhất: điện thoại, chi ph&iacute; giao dịch l&agrave;m ăn.<br />\n+ Đơn xin vay vốn Ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i ( theo mẫu của Ng&acirc;n h&agrave;ng ).<br />\nTrong trường hợp c&aacute; nh&acirc;n mua kh&ocirc;ng đủ điều kiện, c&oacute; thể nhờ người th&acirc;n c&oacute; khả năng thu nhập tốt l&agrave;m giấy bảo l&atilde;nh cho Ng&acirc;n h&agrave;ng thẩm định.<br />\n2.Đối với kh&aacute;ch h&agrave;ng l&agrave; doanh nghiệp:<br />\n+ Giấy ph&eacute;p kinh doanh.<br />\n+ Giấy bổ nhiệm Gi&aacute;m đốc, bổ nhiệm kế to&aacute;n trưởng&hellip;<br />\n+ Giấy đăng k&yacute; sử dụng mẫu dấu (bản copy).<br />\n+ M&atilde; số thuế.<br />\n+ B&aacute;o c&aacute;o thuế 01 năm gần nhất.<br />\n+ B&aacute;o c&aacute;o ho&aacute; đơn VAT 01 năm gần nhất.<br />\n+ B&aacute;o c&aacute;o t&agrave;i ch&iacute;nh 01 năm gần nhất.<br />\n+ Điều lệ c&ocirc;ng ty.<br />\n+ Bi&ecirc;n bản họp của hội đồng quản trị.<br />\n+ Hợp đồng kinh tế đầu ra, đầu v&agrave;o.<br />\n+ Giấy sở hữu cơ sở vật chất: nh&agrave; m&aacute;y, d&acirc;y chuyền, m&aacute;y m&oacute;c, thiết bị, nh&agrave; xưởng, &ocirc;t&ocirc; kh&aacute;c<br />\n+ Đơn xin vay vốn ng&acirc;n h&agrave;ng v&agrave; phương &aacute;n trả l&atilde;i ( theo mẫu của Ng&acirc;n h&agrave;ng ).<br />\nĐể biết th&ecirc;m th&ocirc;ng tin v&agrave; được tư vấn, giải đ&aacute;p mọi thắc mắc của Qu&yacute; kh&aacute;ch h&agrave;ng về gi&aacute; cả, chất lượng sản phẩm, chương tr&igrave;nh khuyến m&atilde;i,<br />\nII. QUY TR&Igrave;NH KHI MUA XE TRẢ G&Oacute;P TẠI HYUNDAI H&Agrave; Đ&Ocirc;NG<br />\n&ndash; Đầu ti&ecirc;n Kh&aacute;ch h&agrave;ng tiến h&agrave;nh k&yacute; hợp đồng v&agrave; nộp tiền cọc để thực hiện hợp đồng.<br />\n&ndash; Sau đ&oacute; kh&aacute;ch h&agrave;ng chuẩn bị đầy đủ hồ sơ theo hướng dẫn của nh&acirc;n vi&ecirc;n t&iacute;n dụng<br />\n&ndash; Sau khi c&oacute; giấy bảo l&atilde;nh thanh to&aacute;n (giấy đồng &yacute; cho vay của ng&acirc;n h&agrave;ng) v&agrave; hồ sơ xe.<br />\n&ndash; Kh&aacute;ch h&agrave;ng tiến h&agrave;nh nộp tiền đối ứng xe v&agrave; tiến h&agrave;nh l&agrave;m thủ tục đăng k&yacute; xe.<br />\n&ndash; Khi c&oacute; biển số xe v&agrave; c&oacute; giấy hẹn, kh&aacute;ch h&agrave;ng l&ecirc;n ng&acirc;n h&agrave;ng k&yacute; hợp đồng t&iacute;n dụng.<br />\n&ndash; Ng&acirc;n h&agrave;ng sẽ giải ng&acirc;n số tiền kh&aacute;ch h&agrave;ng vay v&agrave;o t&agrave;i khoản ng&acirc;n h&agrave;ng của HYUNDAI H&Agrave; Đ&Ocirc;NG được ghi tr&ecirc;n hợp đồng.<br />\n&ndash; &nbsp;HYUNDAI H&Agrave; Đ&Ocirc;NG nhận được tiền sẽ tiến h&agrave;nh b&agrave;n giao xe ngay cho kh&aacute;ch h&agrave;ng.</p>\n\n<p>III. C&Aacute;C NG&Acirc;N H&Agrave;NG CHO KH&Aacute;CH H&Agrave;NG MUA XE TẠI HYUNDAI H&Agrave; Đ&Ocirc;NG.</p>\n\n<p>Những ng&acirc;n h&agrave;ng hiện tại ch&uacute;ng t&ocirc;i c&oacute; li&ecirc;n kết : TECHCOMBANK, SHINHANBANK, TIENPHONGBANK, VPBANK, MBBANK&hellip;..</p>\n\n<p>&ndash; Thời gian thẩm định hồ sơ sau khi nhận đầy đủ 24giờ. (T&ugrave;y theo năng lực t&agrave;i ch&iacute;nh của kh&aacute;ch h&agrave;ng).</p>\n\n<p>Hạn mức vay: 70% gi&aacute; trị xe (bao gồm VAT với KH c&aacute; nh&acirc;n, kh&ocirc;ng bao gồm VAT với KH DN)<br />\nThời hạn vay: 5 năm<br />\nL&atilde;i suất: CỐ ĐỊNH trong suốt thời hạn vay.<br />\nPh&iacute; trả trước hạn: kh&ocirc;ng c&oacute;.<br />\nPh&iacute; quản l&yacute; t&agrave;i sản v&agrave; c&aacute;c chi ph&iacute; kh&aacute;c: kh&ocirc;ng c&oacute;.</p>\n\n<p>Kh&aacute;ch h&agrave;ng sẽ lu&ocirc;n y&ecirc;n t&acirc;m v&igrave; kh&ocirc;ng c&oacute; sự thay đổi của l&atilde;i suất, v&agrave; kh&ocirc;ng c&oacute; c&aacute;c chi ph&iacute; kh&aacute;c ph&aacute;t sinh.</p>\n\n<p>Để biết th&ecirc;m th&ocirc;ng tin chi tiết Qu&yacute; kh&aacute;ch xin vui l&ograve;ng li&ecirc;n hệ Hotline Hyundai L&ecirc; Văn Lương : 0976059735</p>', '', '', '', 'mua-xe-tra-gop', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post_to_category`
--

CREATE TABLE `oc_journal2_blog_post_to_category` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post_to_layout`
--

CREATE TABLE `oc_journal2_blog_post_to_layout` (
  `post_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post_to_product`
--

CREATE TABLE `oc_journal2_blog_post_to_product` (
  `post_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_blog_post_to_store`
--

CREATE TABLE `oc_journal2_blog_post_to_store` (
  `post_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_blog_post_to_store`
--

INSERT INTO `oc_journal2_blog_post_to_store` (`post_id`, `store_id`) VALUES
(36, 0),
(35, 0),
(34, 0),
(33, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_config`
--

CREATE TABLE `oc_journal2_config` (
  `key` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_config`
--

INSERT INTO `oc_journal2_config` (`key`, `store_id`, `value`, `serialized`) VALUES
('active_skin', 0, '102', 0),
('blog_settings', 0, '{\"status\":\"1\",\"feed\":\"1\",\"posts_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"related_products\":\"1\",\"related_products_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"posts_display\":\"grid\",\"posts_sort\":\"newest\",\"author_name\":\"username\",\"posts_limit\":\"15\",\"title\":{\"value\":{\"2\":\"Tin t\\u1ee9c Huyndai3s H\\u00e0 \\u0110\\u00f4ng\"}},\"keyword\":{\"value\":{\"2\":\"tin-tuc\"}},\"meta_title\":{\"value\":{\"2\":\"Tin t\\u1ee9c Huyndai3s H\\u00e0 \\u0110\\u00f4ng\"}},\"meta_keywords\":{\"value\":{\"2\":\"Tin t\\u1ee9c Huyndai3s H\\u00e0 \\u0110\\u00f4ng\"}},\"meta_description\":{\"value\":{\"2\":\"Tin t\\u1ee9c Huyndai3s H\\u00e0 \\u0110\\u00f4ng\"}},\"posts_image_width\":\"300\",\"posts_image_height\":\"200\",\"posts_image_type\":\"crop\"}', 1),
('copyright', 0, '{\"value\":{\"2\":\"\\u00a9 2010-2017 Hyundai Ph\\u1ea1m V\\u0103n \\u0110\\u1ed3ng\"}}', 1),
('footer_menu', 0, '{\"rows\":[{\"type\":\"contacts\",\"text\":[],\"columns\":[],\"contacts\":[],\"social_icons\":[],\"status\":1,\"sort_order\":\"\",\"bottom_spacing\":\"\",\"padding_top\":\"\",\"padding_right\":\"\",\"padding_bottom\":\"\",\"padding_left\":\"\",\"items_per_row\":{\"hide_columns\":true,\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"is_open\":true,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"item_name\":\"Th\\u00f4ng tin li\\u00ean h\\u1ec7 v\\u00e0 c\\u00f4ng ty\"}],\"close_others\":true}', 1),
('mega_menu', 0, '{\"items\":[{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"top\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\",\"top\":{\"id\":\"20\",\"name\":\"Dj Equipment\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"blog_post\",\"menu_item\":{\"id\":\"35\",\"name\":\"Gi\\u1edbi thi\\u1ec7u\"}},\"target\":\"1\",\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"urlgioithieu\"}},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"Gi\\u1edbi thi\\u1ec7u\"}},\"sort_order\":\"2\",\"item_name\":\"Gi\\u1edbi thi\\u1ec7u\"},{\"type\":\"products\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\",\"top\":{\"id\":\"57\",\"name\":\"Studio Gear\"}},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[],\"category\":{\"id\":\"102\",\"name\":\"Hyundai\"}},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"target\":0,\"items\":[]},\"mixed_columns\":[{\"is_open\":true,\"type\":\"products\",\"categories\":{\"type\":\"custom\",\"show\":\"both\",\"image_position\":\"top\",\"links_type\":\"categories\",\"items\":[],\"top\":{\"id\":\"57\",\"name\":\"Studio Gear\"}},\"products\":{\"source\":\"custom\",\"module_type\":\"featured\",\"items\":[{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"320\",\"name\":\"Hyundai Creta\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"321\",\"name\":\"Hyundai Elantra\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"324\",\"name\":\"Hyundai Grand I10 Hatchback\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"323\",\"name\":\"Hyundai Grand i10 Sedan\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"322\",\"name\":\"Hyundai I20 Active\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"318\",\"name\":\"Hyundai SantaFe\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"326\",\"name\":\"Hyundai Starex\"}},{\"menu_type\":\"opencart\",\"menu_item\":[],\"data\":{\"id\":\"325\",\"name\":\"Hyundai Tucson\"}}]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":null},\"items\":[]},\"link\":{\"menu_type\":\"custom\",\"menu_item\":null},\"html_text\":[],\"cms_blocks\":[],\"width\":\"100\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"crop\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"status\":\"1\",\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m\"}}}],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"hide_text\":\"0\",\"is_open\":true,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"product\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m\"}},\"sort_order\":\"3\",\"item_name\":\"To\\u00e0n b\\u1ed9 s\\u1ea3n ph\\u1ea9m\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"\\/tin-tuc\"}},\"target\":\"1\",\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"17px\",\"left\":\"-2\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe045;\",\"class\":\"plus-sign\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"Tin t\\u1ee9c\"}},\"item_name\":\"Tin t\\u1ee9c\",\"sort_order\":\"4\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"\\/\"}},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"17px\",\"left\":\"-2\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe045;\",\"class\":\"plus-sign\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"Trang ch\\u1ee7\"}},\"item_name\":\"Trang ch\\u1ee7\",\"sort_order\":\"1\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"blog_post\",\"menu_item\":{\"id\":\"33\",\"name\":\"Mua xe tr\\u1ea3 g\\u00f3p\"}},\"target\":\"1\",\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"17px\",\"left\":\"-2\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe045;\",\"class\":\"plus-sign\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"Mua xe tr\\u1ea3 g\\u00f3p\"}},\"item_name\":\"Tr\\u1ea3 g\\u00f3p\",\"sort_order\":\"5\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"blog_post\",\"menu_item\":{\"id\":\"34\",\"name\":\"Li\\u00ean h\\u1ec7\"}},\"target\":0,\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"---\"}},\"hide_text\":\"0\",\"is_open\":false,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":\"5\",\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"Li\\u00ean h\\u1ec7\"}},\"item_name\":\"Li\\u00ean h\\u1ec7\",\"sort_order\":\"6\"},{\"type\":\"custom\",\"categories\":{\"type\":\"existing\",\"show\":\"both\",\"image_position\":\"right\",\"links_type\":\"categories\",\"items\":[],\"render_as\":\"megamenu\"},\"products\":{\"source\":\"category\",\"module_type\":\"featured\",\"items\":[]},\"manufacturers\":{\"type\":\"all\",\"show\":\"image\",\"items\":[]},\"custom\":{\"top\":{\"menu_type\":\"blog_post\",\"menu_item\":{\"id\":\"36\",\"name\":\"B\\u1ea3n \\u0111\\u1ed3\"}},\"target\":\"1\",\"items\":[]},\"mixed_columns\":[],\"icon\":{\"options\":{\"font_size\":\"---\"}},\"hide_text\":\"0\",\"is_open\":true,\"status\":1,\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"hide_columns\":true,\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"}}},\"items_limit\":5,\"html_blocks\":[],\"html_menu_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"title\":[],\"float\":\"left\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"name\":{\"value\":{\"2\":\"B\\u1ea3n \\u0111\\u1ed3\"}},\"item_name\":\"B\\u1ea3n \\u0111\\u1ed3\"}],\"close_others\":false,\"options\":{\"display\":\"floated\",\"table_layout\":\"auto\",\"is_open\":false}}', 1),
('payments', 0, '{\"payments\":[{\"image\":\"catalog\\/journal2\\/cards\\/visa.png\",\"name\":{\"value\":{\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true},{\"image\":\"catalog\\/journal2\\/cards\\/mc.png\",\"name\":{\"value\":{\"2\":\"\"}},\"link\":{\"value\":\"\"},\"new_window\":\"0\",\"sort_order\":\"\",\"is_open\":true}],\"close_others\":false}', 1),
('primary_menu', 0, '{\"items\":[{\"icon\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe679;\",\"class\":\"phone2\"}},\"mobile_view\":\"both\",\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"tel:0976059735\"}},\"name_overwrite\":\"0\",\"target\":\"0\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"is_open\":false,\"name\":{\"value\":{\"2\":\"0976.059.735\"}},\"sort_order\":\"1\"},{\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xf1b9;\",\"class\":\"automobile\"}},\"mobile_view\":\"both\",\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"tel:0976059735\"}},\"name_overwrite\":\"0\",\"target\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"is_open\":true,\"name\":{\"value\":{\"2\":\"138 Ph\\u1ea1m V\\u0103n \\u0110\\u1ed3ng, ph\\u01b0\\u1eddng Xu\\u00e2n \\u0110\\u1ec9nh, T\\u1eeb Li\\u00eam, H\\u00e0 N\\u1ed9i\"}},\"sort_order\":\"2\",\"item_name\":\"Li\\u00ean h\\u1ec7\"}],\"close_others\":true}', 1),
('secondary_menu', 0, '{\"items\":[{\"icon\":{\"options\":{\"font_size\":\"---\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe084;\",\"class\":\"phone-sign\"}},\"mobile_view\":\"both\",\"menu\":{\"menu_type\":\"custom\",\"menu_item\":{\"url\":\"https:\\/\\/www.facebook.com\\/duy.minh.5851127\"}},\"name_overwrite\":\"0\",\"target\":\"1\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"is_open\":true,\"name\":{\"value\":{\"2\":\"Li\\u00ean h\\u1ec7 mua h\\u00e0ng\"}},\"item_name\":\"Li\\u00ean h\\u1ec7 mua h\\u00e0ng\",\"icon_position\":\"left\",\"sort_order\":\"1\"}],\"close_others\":false}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_modules`
--

CREATE TABLE `oc_journal2_modules` (
  `module_id` int(11) NOT NULL,
  `module_type` varchar(64) NOT NULL,
  `module_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_modules`
--

INSERT INTO `oc_journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(4, 'journal2_static_banners', '{\"module_name\":\"Category Banner\",\"module_title\":{\"value\":{\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"bgcolor\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0.4)\"}},\"icon\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe648;\",\"class\":\"link\"}},\"fullwidth\":\"0\",\"margin_top\":\"25\",\"margin_bottom\":\"0\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"carousel\":\"0\",\"arrows\":\"1\",\"bullets\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":false,\"top_bottom_is_open\":false,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}}}'),
(3, 'journal2_simple_slider', '{\"module_name\":\"Slider HomePage\",\"height\":\"400\",\"transition\":\"slide\",\"transition_speed\":1000,\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_delay\":3000,\"touch_drag\":\"1\",\"preload_images\":\"1\",\"arrows\":\"0\",\"bullets\":\"1\",\"show_on_hover\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"navigation_is_open\":true,\"top_bottom_is_open\":true}'),
(5, 'journal2_slider', '{\"module_name\":\"Home - Main Slider\",\"width\":\"\",\"height\":\"360\",\"hidecaptionsonmobile\":\"0\",\"timer\":\"none\",\"js_options\":{\"delay\":\"3500\",\"onHoverStop\":\"on\",\"thumbWidth\":100,\"thumbHeight\":75,\"thumbAmount\":4,\"hideThumbs\":1,\"navigationType\":\"bullet\",\"navigationArrows\":\"solo\",\"navigationStyle\":\"round\",\"navigationHAlign\":\"center\",\"navigationVAlign\":\"bottom\",\"navigationHOffset\":\"\",\"navigationVOffset\":\"20\"},\"preload_images\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage\":{\"value\":{\"image\":\"catalog\\/Slide-Show\\/background.png\"}},\"bgcolor\":{\"value\":{\"color\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"slides\":[{\"is_open\":true,\"slide_name\":\"\",\"image\":{\"2\":\"system\\/1483696589_sl4.png\"},\"thumb\":{\"2\":\"\"},\"transition\":\"fade\",\"slotamount\":\"\",\"masterspeed\":800,\"delay\":\"\",\"captions\":[],\"status\":1,\"sort_order\":\"\",\"link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"link_new_window\":\"0\",\"easing\":\"easeInOutQuart\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"spinner\":\"0\",\"general_is_open\":false,\"navigation_is_open\":false,\"top_bottom_is_open\":false}'),
(7, 'journal2_custom_sections', '{\"module_name\":\"Home - List SP\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"top_bottom_placement\":0,\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"25\",\"margin_bottom\":\"25\",\"show_title\":\"1\",\"brand_name\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"M\\u1edbi nh\\u1ea5t\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":{\"data\":{\"id\":\"20\",\"name\":\"Dj Equipment\"}},\"items_limit\":5,\"module_type\":\"latest\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"Khuy\\u1ebfn m\\u1ea1i\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"specials\",\"todays_specials_only\":\"1\",\"countdown_visibility\":\"1\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"\\u0110\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi quan t\\u00e2m\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"most-viewed\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(8, 'journal2_custom_sections', '{\"module_name\":\"SP \\u0110\\u1ec1 c\\u1eed\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"top_bottom_placement\":0,\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"C\\u00f3 th\\u1ec3 b\\u1ea1n c\\u1ea7n?\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"1\",\"products\":[],\"category\":{\"data\":{\"id\":\"20\",\"name\":\"Dj Equipment\"}},\"items_limit\":\"5\",\"module_type\":\"people-also-bought\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m v\\u1eeba xem\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"recently-viewed\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(9, 'journal2_side_category', '{\"module_name\":\"CATEGORIES\",\"type\":\"accordion\",\"title\":{\"value\":{\"2\":\"CATEGORIES\"}},\"show_categories\":1,\"sections\":[],\"general_is_open\":true}'),
(11, 'journal2_photo_gallery', '{\"module_name\":\"PHOTO GALLERY\",\"gallery_name\":{\"value\":{\"2\":\"PHOTO GALLERY\"}},\"thumbs_limit\":\"\",\"thumbs_width\":\"\",\"thumbs_height\":\"\",\"thumbs_type\":\"crop\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"8\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"7\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"6\",\"range\":\"1,10\",\"step\":\"1\"}}},\"carousel\":0,\"carousel_arrows\":\"none\",\"carousel_buttons\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"0\",\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"images\":[{\"is_open\":true,\"name\":{\"value\":{\"2\":\"Image 1\"}},\"image\":\"hyundai-xxl.png\"},{\"is_open\":true,\"name\":{\"value\":{\"2\":\"Image 2\"}},\"image\":\"32963_Hyundai_Logo.jpg\"},{\"is_open\":true,\"name\":{\"value\":{\"2\":\"\"}},\"image\":\"system\\/a1.png\"},{\"is_open\":true,\"name\":{\"value\":{\"2\":\"\"}},\"image\":\"system\\/Hyundai_Motor_Company.png\"}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}}}'),
(10, 'journal2_side_products', '{\"module_name\":\"Side Product\",\"section_title\":{\"value\":{\"2\":\"Side Product\"}},\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"latest\",\"filter_category\":\"0\"}'),
(12, 'journal2_cms_blocks', '{\"module_name\":\"Hyundai 4S\",\"module_title\":{\"value\":{\"2\":\"Hyundai 4S\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"fixed\",\"bgcolor\":{\"value\":{\"color\":\"rgb(153, 153, 153)\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"bg\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"border\":{\"value\":{\"border_rounded\":\"px\"}},\"padding\":{\"value\":\"\"},\"sections\":[{\"bg_color\":{\"value\":{\"color\":\"rgb(250, 250, 250)\"}},\"is_open\":true,\"section_title\":[],\"text\":{\"2\":\"<p><strong><span style=\\\"font-size:12px;\\\">NH&Acirc;N VI&Ecirc;N<\\/span><\\/strong><\\/p>\\n\\n<p style=\\\"line-height: 20.8px;\\\"><span style=\\\"font-size:12px;\\\">Kinh nghi\\u1ec7m, nhi\\u1ec7t t&igrave;nh, chuy&ecirc;n m&ocirc;n cao<\\/span><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"block_icon_offset\":\"\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe6b0;\",\"class\":\"group\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_radius_unit\":\"%\"}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"icon_width\":\"45\",\"icon_height\":\"45\",\"status\":\"1\",\"sort_order\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}},{\"bg_color\":{\"value\":{\"color\":\"rgb(250, 250, 250)\"}},\"is_open\":true,\"section_title\":[],\"text\":{\"2\":\"<p><span style=\\\"font-size:12px;\\\"><strong>D\\u1ecaCH V\\u1ee4<\\/strong><\\/span><\\/p>\\n\\n<p><span style=\\\"font-size:12px;\\\"><span style=\\\"line-height: 20.8px;\\\">Ch\\u1ea5t l\\u01b0\\u1ee3ng, lu&ocirc;n l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng<\\/span><\\/span><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"block_icon_offset\":\"\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe628;\",\"class\":\"cog2\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_radius_unit\":\"%\"}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"icon_width\":\"45\",\"icon_height\":\"45\",\"status\":\"1\",\"sort_order\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}},{\"bg_color\":{\"value\":{\"color\":\"rgb(250, 250, 250)\"}},\"is_open\":true,\"section_title\":[],\"text\":{\"2\":\"<p><span style=\\\"font-size:12px;\\\"><strong>GI&Aacute;<\\/strong><\\/span><\\/p>\\n\\n<p style=\\\"line-height: 20.8px;\\\"><span style=\\\"font-size: 12px;\\\">Lu&ocirc;n lu&ocirc;n t\\u1ed1t, c\\u1ea1nh tranh nh\\u1ea5t th\\u1ecb tr\\u01b0\\u1eddng<\\/span><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"1\",\"icon_position\":\"left\",\"block_icon_offset\":\"\",\"icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe64e;\",\"class\":\"dollar\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"icon_width\":\"45\",\"icon_height\":\"45\",\"status\":\"1\",\"sort_order\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"bottom_margin\":{\"value\":\"\"},\"cms_block_line_height\":{\"value\":\"\"},\"cms_heading_padding\":{\"value\":\"\"},\"cms_block_p_padding\":{\"value\":\"\"},\"cms_heading_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"cms_font_color\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}}}'),
(13, 'journal2_side_products', '{\"module_name\":\"ON SALE\",\"section_title\":{\"value\":{\"2\":\"ON SALE\"}},\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"specials\",\"filter_category\":\"0\"}'),
(14, 'journal2_text_rotator', '{\"module_name\":\"TEXT ROTATOR\",\"module_title\":{\"value\":{\"2\":\"\"}},\"transition_delay\":\"4000\",\"pause_on_hover\":\"1\",\"text_align\":\"center\",\"image_align\":\"center\",\"author_align\":\"center\",\"text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"author_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"text_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}},\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"bullets\":\"0\",\"bullets_position\":\"center\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"sections\":[{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"2\":\"Use this for any announcements or promo messages, or just remove it.\"}},\"author\":\"\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"2\":\"\"},\"status\":\"1\",\"sort_order\":\"\"},{\"is_open\":true,\"name\":\"\",\"text\":{\"value\":{\"2\":\"Use this for any announcements or promo messages, or just remove it.\"}},\"author\":\"\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"image\":{\"2\":\"\"},\"status\":\"1\",\"sort_order\":\"\"}],\"random_sections\":\"0\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(15, 'journal2_carousel', '{\"module_name\":\"S\\u1ea3n ph\\u1ea9m m\\u1edbi\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"1\",\"arrows\":\"side\",\"bullets\":\"1\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"To\\u00e0n b\\u1ed9 s\\u1ea3n ph\\u1ea9m\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"1\",\"products\":[],\"category\":{\"data\":{\"id\":\"20\",\"name\":\"Dj Equipment\"}},\"items_limit\":\"8\",\"module_type\":\"latest\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":{\"url\":\"\"}},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"Xem t\\u1ea5t c\\u1ea3\"}},\"section_type\":\"link\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"category\",\"url\":\"\",\"menu_item\":{\"id\":\"102\",\"name\":\"Hyundai\"}},\"new_window\":\"1\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}}}'),
(23, 'journal2_carousel', '{\"module_name\":\"S\\u1ea3n Ph\\u1ea9m B\\u00e1n Ch\\u1ea1y\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"arrows\":\"side\",\"bullets\":\"1\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n Ph\\u1ea9m B\\u00e1n Ch\\u1ea1y\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"8\",\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"1\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"Xem t\\u1ea5t ca\"}},\"section_type\":\"link\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"8\",\"module_type\":\"featured\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"category\",\"url\":\"\",\"menu_item\":{\"id\":\"102\",\"name\":\"Hyundai\"}},\"new_window\":\"1\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}}}'),
(20, 'journal2_newsletter', '{\"module_name\":\"Newsletter-footer\",\"module_title\":{\"value\":{\"2\":\"\"}},\"module_text\":{\"value\":{\"2\":\"Ch\\u00fang t\\u00f4i s\\u1ebd g\\u1eedi th\\u00f4ng b\\u00e1o s\\u1ea3n ph\\u1ea9m m\\u1edbi, h\\u00e0ng khuy\\u1ebfn m\\u1ea1i cho b\\u1ea1n !\"}},\"module_text_font\":{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"italic\",\"font_style\":\"italic\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(186, 186, 186)\"}}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"\"}}}},\"module_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"module_padding\":\"\",\"text_position\":\"top\",\"input_height\":\"39\",\"input_placeholder\":{\"value\":{\"2\":\"tenban@mail.com\"}},\"input_bg_color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}},\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"input_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"3\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"border_radius_unit\":\"px\"}},\"button_text\":{\"value\":{\"2\":\"G\\u1eedi\"}},\"button_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":null,\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}}},\"button_background\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}},\"button_icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe694;\",\"class\":\"location-arrow\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgba(0, 0, 0, 0)\"}},\"border_radius_unit\":\"px\"}},\"button_offset_top\":\"-3\",\"button_offset_left\":\"3\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(18, 'journal2_super_filter', '{\"module_name\":\"Super Filter\",\"reset\":1,\"product_count\":1,\"price\":1,\"price_slider\":1,\"tags\":1,\"availability\":1,\"tax_class_id\":\"-1\",\"manufacturer\":\"both\",\"manufacturer_type\":\"single\",\"category\":\"list\",\"category_type\":\"single\",\"options\":{\"2\":\"image\"},\"options_type\":[],\"attributes\":[],\"attributes_type\":[],\"sort_orders\":{\"p\":\"0\",\"c\":\"1\",\"m\":\"2\",\"o_2\":\"3\"},\"general_is_open\":false,\"options_is_open\":false,\"is_open\":{\"3\":[],\"6\":[]}}'),
(19, 'journal2_newsletter', '{\"module_name\":\"Newsletter\",\"module_title\":{\"value\":{\"2\":\"\"}},\"module_text\":{\"value\":[]},\"module_text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_border\":{\"value\":{\"border_rounded\":\"px\"}},\"module_padding\":\"\",\"text_position\":\"left\",\"input_height\":\"\",\"input_placeholder\":{\"value\":{\"2\":\"\"}},\"input_bg_color\":[],\"input_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"input_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_text\":{\"value\":{\"2\":\"\"}},\"button_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_background\":[],\"button_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_border\":{\"value\":{\"border_rounded\":\"px\"}},\"button_offset_top\":\"\",\"button_offset_left\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true}'),
(45, 'journal2_carousel', '{\"module_name\":\"S\\u1ea3n Ph\\u1ea9m B\\u00e1n Ch\\u1ea1y\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"0\",\"arrows\":\"side\",\"bullets\":\"0\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"spacing\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\"}},\"image_bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n Ph\\u1ea9m B\\u00e1n Ch\\u1ea1y\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"8\",\"module_type\":\"most-viewed\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"close_others\":false}'),
(25, 'journal2_side_products', '{\"module_name\":\"M\\u1edbi nh\\u1ea5t\",\"section_title\":{\"value\":{\"2\":\"M\\u1edbi nh\\u1ea5t\"}},\"section_type\":\"module\",\"products\":[],\"category\":\"\",\"items_limit\":5,\"module_type\":\"latest\",\"filter_category\":\"0\"}'),
(26, 'journal2_advanced_grid', '{\"module_name\":\"Advanced Banner Mid\",\"height\":\"200\",\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"module_padding\":\"0\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"grid_dimensions\":\"1\",\"module_spacing\":\"20\",\"columns\":[{\"is_open\":true,\"width\":\"50\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"27\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}]},{\"is_open\":true,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"28\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}]},{\"is_open\":true,\"width\":\"25\",\"status\":1,\"sort_order\":\"\",\"modules\":[{\"is_open\":true,\"height\":\"100\",\"module_id\":\"29\",\"status\":1,\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}]}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(31, 'journal2_blog_categories', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Huyndai3s H\\u00e0 \\u0110\\u00f4ng\",\"title\":{\"value\":{\"2\":\"Huyndai3s H\\u00e0 \\u0110\\u00f4ng\"}}}'),
(32, 'journal2_blog_side_posts', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"B\\u00e0i m\\u1edbi nh\\u1ea5t\",\"module_type\":\"newest\",\"posts\":[],\"limit\":\"6\",\"title\":{\"value\":{\"2\":\"B\\u00e0i vi\\u1ebft m\\u1edbi\"}}}'),
(33, 'journal2_blog_comments', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"Nh\\u1eadn x\\u00e9t m\\u1edbi nh\\u1ea5t\",\"limit\":\"5\",\"title\":{\"value\":{\"2\":\"Nh\\u1eadn x\\u00e9t m\\u1edbi nh\\u1ea5t\"}}}'),
(35, 'journal2_blog_search', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"T\\u00ecm b\\u00e0i vi\\u1ebft\",\"title\":{\"value\":{\"2\":\"T\\u00ecm ki\\u1ebfm\"}},\"placeholder\":{\"value\":{\"2\":\"t\\u00ecm b\\u00e0i vi\\u1ebft...\"}}}'),
(36, 'journal2_blog_tags', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"T\\u1eeb kho\\u00e1\",\"limit\":\"25\",\"title\":{\"value\":{\"2\":\"T\\u1eeb kho\\u00e1\"}}}');
INSERT INTO `oc_journal2_modules` (`module_id`, `module_type`, `module_data`) VALUES
(46, 'journal2_popup', '{\"module_name\":\"Ph\\u00ed v\\u1eadn chuy\\u1ec3n\",\"close_button\":\"1\",\"padding\":\"10\",\"title\":{\"value\":{\"2\":\"Ph\\u00ed v\\u1eadn chuy\\u1ec3n\"}},\"title_align\":\"center\",\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"title_bg_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}},\"title_height\":40,\"newsletter\":\"0\",\"newsletter_bg_color\":\"\",\"newsletter_height\":80,\"newsletter_id\":\"\",\"footer_height\":60,\"footer_bg_color\":{\"value\":{\"color\":\"rgb(204, 204, 204)\"}},\"type\":\"text\",\"text\":[null,null,\"<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-family: &quot;Open Sans&quot;; font-size: 22px; color: rgb(53, 53, 53); line-height: normal;\\\"><strong><span style=\\\"font-size:14px;\\\">1. Mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n:<\\/span><\\/strong><\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">- Kh&aacute;ch h&agrave;ng \\u1edf H&agrave; N\\u1ed9i: \\u0111\\u01a1n h&agrave;ng tr&ecirc;n 1.000.000\\u0111 v&agrave; \\u0111\\u1ecba ch\\u1ec9 nh\\u1eadn h&agrave;ng n\\u1eb1m trong b&aacute;n k&iacute;nh 10km t&iacute;nh t\\u1eeb Hyper theo \\u0111\\u1ecba ch\\u1ec9 \\u1edf 149 Thu\\u1ef5 Khu&ecirc;, T&acirc;y H\\u1ed3, H&agrave; N\\u1ed9i<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">- Kh&aacute;ch h&agrave;ng \\u1edf xa: ch&uacute;ng t&ocirc;i s\\u1ebd mi\\u1ec5n ph&iacute; v\\u1eadn chuy\\u1ec3n \\u0111\\u1ebfn c&aacute;c b\\u1ebfn xe \\u0111\\u1ec3 giao \\/ nh\\u1eadn qua b&ecirc;n th\\u1ee9 3<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">&nbsp;<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-family: &quot;Open Sans&quot;; font-size: 22px; color: rgb(53, 53, 53); line-height: normal;\\\"><strong><span style=\\\"font-size:14px;\\\">2. V\\u1eadn chuy\\u1ec3n m\\u1ea5t ph&iacute;:<\\/span><\\/strong><\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">- Qu&yacute; kh&aacute;ch ch\\u1ecbu ph&iacute; v\\u1eadn chuy\\u1ec3n qua c&aacute;c \\u0111\\u01a1n v\\u1ecb th\\u1ee9 3 l&agrave; c&ocirc;ng ty chuy\\u1ec3n ph&aacute;t: Kerry T&iacute;n Th&agrave;nh, Ecotrans, Viettel Post ... C\\u01b0\\u1edbc v\\u1eadn chuy\\u1ec3n \\u0111\\u01b0\\u1ee3c t&iacute;nh tr\\u1ea3 sau khi qu&yacute; kh&aacute;ch nh\\u1eadn \\u0111\\u01b0\\u1ee3c h&agrave;ng.<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">&nbsp;<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">L\\u01b0u &yacute;: Qu&yacute; kh&aacute;ch vui l&ograve;ng tr\\u1ef1c ti\\u1ebfp ki\\u1ec3m tra k\\u1ef9 h&agrave;ng ho&aacute; ngay khi nh\\u1eadn h&agrave;ng t\\u1eeb ng\\u01b0\\u1eddi chuy\\u1ec3n ph&aacute;t h&agrave;ng ho&aacute;, n\\u1ebfu c&oacute; v\\u1ea5n \\u0111\\u1ec1 li&ecirc;n quan t\\u1edbi v\\u1ea5n \\u0111\\u1ec1 ch\\u1ee7ng lo\\u1ea1i, ch\\u1ea5t l\\u01b0\\u1ee3ng, s\\u1ed1 l\\u01b0\\u1ee3ng h&agrave;ng ho&aacute; kh&ocirc;ng \\u0111&uacute;ng nh\\u01b0 trong \\u0111\\u01a1n \\u0111\\u1eb7t h&agrave;ng, ni&ecirc;m phong \\u0111&atilde; b\\u1ecb thay \\u0111\\u1ed5i, Qu&yacute; kh&aacute;ch c\\u1ea7n l\\u1eadp bi&ecirc;n b\\u1ea3n ngay khi nh\\u1eadn h&agrave;ng v\\u1edbi nh&acirc;n vi&ecirc;n giao nh\\u1eadn v&agrave; th&ocirc;ng b&aacute;o ngay cho Hyper \\u0111\\u1ec3 c&ugrave;ng ph\\u1ed1i h\\u1ee3p x\\u1eed l&yacute;. N\\u1ebfu kh&ocirc;ng c&oacute; b\\u1ea5t c\\u1ee9 v\\u1ea5n \\u0111\\u1ec1 g&igrave;, Qu&yacute; kh&aacute;ch vui l&ograve;ng k&yacute; nh\\u1eadn v&agrave;o bi&ecirc;n b\\u1ea3n giao h&agrave;ng.<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">&nbsp;<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">&nbsp;<\\/p>\\n\\n<h3 style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-family: &quot;Open Sans&quot;; font-size: 18px; color: rgb(51, 55, 69); line-height: normal;\\\">M\\u1ecdi chi ti\\u1ebft xin li&ecirc;n h\\u1ec7<\\/h3>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">C&ocirc;ng ty Hyper<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">B\\u1ed9 ph\\u1eadn giao \\/ nh\\u1eadn h&agrave;ng<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">\\u0110\\u1ecba ch\\u1ec9: 149 Thu\\u1ef5 Khu&ecirc;, T&acirc;y H\\u1ed3, H&agrave; N\\u1ed9i<\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">Hotline: 094554.77.33 -<span style=\\\"color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">&nbsp;0466.543.888<\\/span><\\/p>\\n\\n<p style=\\\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 55, 69); font-family: &quot;Open Sans&quot;; line-height: normal;\\\">Website: www.hypershop.vn<\\/p>\\n\"],\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"1\",\"status\":\"1\",\"width\":\"600\",\"height\":\"400\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"2\":\"\\u00e2gagag\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"2\":\"353453535353\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_submit_text\":{\"value\":{\"2\":\"\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"0\",\"do_not_show_again_text\":{\"value\":{\"2\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"do_not_show_again_cookie\":\"i2u1ayqwtkofvdbzkt9\",\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"content_is_open\":true,\"top_bottom_is_open\":true,\"button_1_icon_position\":\"right\"}'),
(38, 'journal2_carousel', '{\"module_name\":\"SP t\\u01b0\\u01a1ng t\\u1ef1 - mua c\\u00f9ng\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"module_padding\":\"0\",\"arrows\":\"side\",\"bullets\":1,\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"1\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m t\\u01b0\\u01a1ng t\\u1ef1\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"0\",\"sort_order\":\"2\",\"products\":[],\"category\":\"\",\"items_limit\":\"20\",\"module_type\":\"related\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"},{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c mua c\\u00f9ng\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"1\",\"products\":[],\"category\":\"\",\"items_limit\":\"20\",\"module_type\":\"people-also-bought\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(37, 'journal2_cms_blocks', '{\"module_name\":\"HOTLINE - Contact now\",\"module_title\":{\"value\":{\"2\":\"\"}},\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"module_padding\":\"1\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"fullwidth\":\"1\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"bg\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}},\"border\":{\"value\":{\"border_rounded\":\"px\"}},\"padding\":{\"value\":\"\"},\"sections\":[{\"bg_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}},\"is_open\":true,\"section_title\":[],\"text\":{\"2\":\"<p style=\\\"box-sizing: border-box; margin: 0px 0px 5px 5px; padding: 0px; border: 0px; font-weight: bold; font-stretch: inherit; font-size: 12px; line-height: 18px; font-family: OpenSans, Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); widows: 1;\\\"><span style=\\\"font-size:18px;\\\">B\\u1ea1n c\\u1ea7n t\\u01b0 v\\u1ea5n?<\\/span><\\/p>\\n\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 5px 5px; padding: 0px; border: 0px; font-weight: bold; font-stretch: inherit; font-size: 12px; line-height: 18px; font-family: OpenSans, Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); widows: 1;\\\"><span style=\\\"font-size:18px;\\\"><span style=\\\"color:#748ec8;\\\">H&atilde;y li&ecirc;n h\\u1ec7 ch&uacute;ng t&ocirc;i!<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"box-sizing: border-box; margin: 0px 0px 5px 5px; padding: 0px; border: 0px; font-weight: bold; font-stretch: inherit; font-size: 12px; line-height: 18px; font-family: OpenSans, Arial, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); widows: 1;\\\"><span style=\\\"font-size:18px;\\\"><span style=\\\"color: rgb(0, 0, 0); font-family: OpenSans, Arial, sans-serif; font-weight: bold; line-height: 18px; widows: 1;\\\"><img alt=\\\"\\\" height=\\\"20\\\" src=\\\"http:\\/\\/hypershop.vn\\/image\\/catalog\\/Icon\\/icon_hotline.png\\\" style=\\\"float: left;\\\" width=\\\"20\\\" \\/>&nbsp;0976.059.735 -&nbsp;<\\/span><a href=\\\"#\\\" style=\\\"font-family: OpenSans, Arial, sans-serif; font-size: 12px; font-weight: bold; line-height: 18px; widows: 1;\\\">Live Chat<\\/a><\\/span><\\/p>\\n\"},\"text_align\":\"left\",\"icon_status\":\"0\",\"icon_position\":\"top\",\"block_icon_offset\":\"\",\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_color\":\"\",\"icon_width\":\"\",\"icon_height\":\"\",\"status\":\"1\",\"sort_order\":\"\",\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}}],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"shadow\":{\"value\":{\"inner_shadow\":\"0\"}},\"bottom_margin\":{\"value\":\"\"},\"cms_heading_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"cms_font_color\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"\",\"font_size_mobile\":\"---\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"\",\"font_style\":\"\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"\"}},\"cms_block_line_height\":{\"value\":\"\"},\"cms_heading_padding\":{\"value\":\"\"},\"cms_block_p_padding\":{\"value\":\"\"},\"top_bottom_is_open\":true,\"module_shadow\":{\"value\":{\"inner_shadow\":\"0\"}}}'),
(52, 'journal2_popup', '{\"module_name\":\"Li\\u00ean h\\u1ec7 \\/ B\\u00e1o gi\\u00e1\",\"close_button\":\"1\",\"padding\":\"\",\"title\":{\"value\":{\"2\":\"Y\\u00eau c\\u1ea7u b\\u00e1o gi\\u00e1\"}},\"title_align\":\"center\",\"title_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"title_bg_color\":{\"value\":{\"color\":\"rgb(238, 238, 238)\"}},\"title_height\":40,\"newsletter\":\"1\",\"newsletter_bg_color\":\"\",\"newsletter_height\":80,\"newsletter_id\":\"19\",\"footer_height\":\"60\",\"footer_bg_color\":{\"value\":{\"color\":\"rgb(238, 238, 238)\"}},\"type\":\"contact\",\"text\":[],\"text_font\":[],\"text_height\":\"\",\"image\":\"no_image.jpg\",\"content_overflow\":\"1\",\"status\":\"1\",\"width\":600,\"height\":300,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\"}},\"button_1\":\"0\",\"button_1_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_1_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_1_new_window\":\"0\",\"button_1_text\":{\"value\":{\"2\":\"\"}},\"button_1_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_1_bgcolor\":\"\",\"button_1_hover_bgcolor\":\"\",\"button_2\":\"0\",\"button_2_link\":{\"menu_type\":\"custom\",\"menu_item\":[]},\"button_2_icon\":{\"options\":{\"font_size\":\"16px\"}},\"button_2_new_window\":\"0\",\"button_2_text\":{\"value\":{\"2\":\"\"}},\"button_2_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_2_bgcolor\":\"\",\"button_2_hover_bgcolor\":\"\",\"button_submit_icon\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe694;\",\"class\":\"location-arrow\"}},\"button_submit_text\":{\"value\":{\"2\":\"G\\u1eedi \\u0111i\"}},\"button_submit_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"button_submit_bgcolor\":\"\",\"button_submit_hover_bgcolor\":\"\",\"button_submit_position\":\"center\",\"do_not_show_again\":\"1\",\"do_not_show_again_text\":{\"value\":{\"2\":\"\"}},\"do_not_show_again_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"do_not_show_again_cookie\":\"kk7qfd58crxh6xnwxw29\",\"sort_order\":\"\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"header_is_open\":true,\"newsletter_is_open\":true,\"footer_is_open\":true,\"content_is_open\":true,\"top_bottom_is_open\":true,\"button_submit_icon_position\":\"right\"}'),
(40, 'journal2_side_blocks', '{\"module_name\":\"New Module\",\"module_type\":\"button\",\"icon\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe017;\",\"class\":\"off\"}},\"icon_bg_color\":\"rgb(241, 196, 15)\",\"icon_border\":{\"value\":{\"border_rounded\":\"px\"}},\"icon_bg_hover_color\":\"\",\"content_bg_color\":\"rgb(66, 139, 202)\",\"alignment\":\"right\",\"position\":\"fixed\",\"icon_width\":\"\",\"icon_height\":\"\",\"offset_top\":\"\",\"offset_side\":\"\",\"content_width\":\"\",\"content_padding\":\"\",\"content\":{\"2\":\"<p><span style=\\\"line-height: 1.6;\\\">H\\u01b0\\u1edbng d\\u1eabn s\\u1eed d\\u1ee5ng<\\/span><\\/p>\\n\"},\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}'),
(41, 'journal2_blog_side_posts', '{\"general_is_open\":true,\"close_others\":false,\"module_name\":\"B\\u00e0i li\\u00ean quan\",\"module_type\":\"related\",\"posts\":[],\"limit\":5,\"title\":{\"value\":{\"2\":\"B\\u00e0i li\\u00ean quan\"}}}'),
(42, 'journal2_carousel', '{\"module_name\":\"SP v\\u1eeba xem\",\"module_type\":\"product\",\"items_per_row\":{\"range\":\"1,10\",\"step\":\"1\",\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"}}},\"module_background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"\"}}}},\"module_padding\":\"0\",\"arrows\":\"side\",\"bullets\":\"0\",\"top_bottom_placement\":0,\"background\":{\"value\":{\"bgimage_attach\":\"scroll\",\"bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}},\"fullwidth\":\"0\",\"margin_top\":\"\",\"margin_bottom\":\"\",\"show_title\":\"1\",\"brand_name\":\"1\",\"autoplay\":\"0\",\"pause_on_hover\":\"1\",\"transition_speed\":\"400\",\"transition_delay\":\"3000\",\"touch_drag\":\"1\",\"image_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"image_bgcolor\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"image_width\":\"\",\"image_height\":\"\",\"image_type\":\"fit\",\"product_sections\":[{\"is_open\":true,\"section_title\":{\"value\":{\"2\":\"S\\u1ea3n ph\\u1ea9m v\\u1eeba xem\"}},\"section_type\":\"module\",\"status\":\"1\",\"default_section\":\"1\",\"sort_order\":\"\",\"products\":[],\"category\":\"\",\"items_limit\":\"20\",\"module_type\":\"recently-viewed\",\"todays_specials_only\":\"0\",\"countdown_visibility\":\"0\",\"filter_category\":\"0\",\"link\":{\"menu_type\":\"custom\",\"url\":\"\",\"menu_item\":[]},\"new_window\":\"0\"}],\"category_sections\":[],\"manufacturer_sections\":[],\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"top_bottom_is_open\":true}'),
(43, 'journal2_side_products', '{\"module_name\":\"Testing\",\"section_title\":{\"value\":{\"2\":\"B\\u1ea1n c\\u1ea7n kh\\u00f4ng?\"}},\"section_type\":\"random\",\"products\":[],\"category\":\"\",\"items_limit\":\"10\",\"module_type\":\"people-also-bought\",\"filter_category\":\"0\",\"random_from\":\"category\",\"random_from_category\":{\"id\":\"20\",\"name\":\"Dj Equipment\"}}'),
(44, 'journal2_header_notice', '{\"module_name\":\"New Module\",\"height\":\"\",\"padding_t\":{\"value\":\"\"},\"padding_l\":{\"value\":\"\"},\"padding_b\":{\"value\":\"\"},\"padding_r\":{\"value\":\"\"},\"text\":{\"value\":{\"2\":\"hihi\"}},\"text_align\":\"center\",\"text_font\":{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}},\"text_link_color\":[],\"text_link_hover_color\":[],\"button_color\":[],\"button_hover_color\":[],\"button_bg_color\":[],\"button_hover_bg_color\":[],\"icon\":{\"options\":{\"font_size\":\"16px\"}},\"float_icon\":\"1\",\"fullwidth\":\"1\",\"icon_position\":\"left\",\"close_button_type\":\"icon\",\"close_button_text\":{\"value\":{\"2\":\"\"}},\"do_not_show_again\":\"1\",\"do_not_show_again_cookie\":\"wo6ej3wzlp59q24holxr\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\",\"general_is_open\":true,\"content_is_open\":true}'),
(47, 'journal2_product_tabs', '{\"module_name\":\"G\\u1ecdi mua h\\u00e0ng\",\"name\":{\"value\":{\"2\":\"\"}},\"icon_status\":\"1\",\"icon\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-1\",\"left\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe6a3;\",\"class\":\"phone\"}},\"icon_border\":{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}},\"icon_bg_color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}},\"icon_width\":\"24\",\"icon_height\":\"24\",\"content_type\":\"custom\",\"out_of_stock_only\":\"0\",\"content\":{\"2\":\"<p><strong>T\\u01b0 v\\u1ea5n: Mr Minh : 0976.059.735<\\/strong><\\/p>\\n\"},\"popup\":\"\",\"global\":\"1\",\"products\":[],\"categories\":[],\"manufacturers\":[],\"store_id\":-1,\"status\":1,\"sort_order\":\"4\",\"position\":\"desc\",\"option_position\":\"bottom\",\"enable_on_phone\":\"1\",\"enable_on_tablet\":\"1\",\"enable_on_desktop\":\"1\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_settings`
--

CREATE TABLE `oc_journal2_settings` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_settings`
--

INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(5, 'breadcrumb_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'ajax_loader', 'general', '{\"value\":{\"image\":\"data\\/journal2\\/loader.gif\"}}', 1),
(5, 'scroll_top_icon_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'breadcrumb_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'general_button_bg_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'main_title_bg', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'secondary_title_bg', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'general_button_font_hover', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'general_button_bg', 'general', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(5, 'general_links_hover', 'general', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(5, 'body_bg_color', 'general', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(5, 'content_bg_color', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'general_links_color', 'general', '{\"value\":{\"color\":\"rgb(69, 115, 143)\"}}', 1),
(5, 'content_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\"}}', 1),
(5, 'extended_layout_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"\"}}}}', 1),
(5, 'site_width', 'general', '{\"value\":\"1220\",\"range\":\"1024,1920\",\"step\":\"2\"}', 1),
(5, 'scroll_top', 'general', '1', 0),
(5, 'scroll_top_icon', 'general', '{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(63, 87, 101)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}', 1),
(5, 'body_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/pattern\\/pat2.jpg\"}}}}', 1),
(5, 'general_button_width', 'general', '{\"value\":{\"text\":\"14\"}}', 1),
(5, 'general_button_height', 'general', '{\"value\":{\"text\":\"32\"}}', 1),
(5, 'breadcrumb_align', 'general', 'left', 0),
(5, 'breadcrumb_font', 'general', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(5, 'general_button_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(5, 'general_button_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}', 1),
(5, 'secondary_title_padding_lr', 'general', '{\"value\":{\"text\":\"\"}}', 1),
(5, 'secondary_title_padding_tb', 'general', '{\"value\":{\"text\":\"8\"}}', 1),
(5, 'secondary_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(5, 'main_title_line_height', 'general', '{\"value\":{\"text\":\"40\"}}', 1),
(5, 'secondary_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}}', 1),
(5, 'main_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(5, 'main_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"letter_spacing\":\"\"}}', 1),
(5, 'secondary_title_align', 'general', 'left', 0),
(5, 'main_title_align', 'general', 'left', 0),
(5, 'extended_layout', 'general', '1', 0),
(5, 'extended_layout_top_spacing', 'general', 'on', 0),
(5, 'extended_layout_side_spacing', 'general', 'on', 0),
(5, 'container_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'responsive_design', 'general', '1', 0),
(5, 'body_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'refine_image_width', 'category', '{\"value\":{\"text\":\"250\"}}', 1),
(102, 'category_page_title_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(5, 'breadcrumb_full_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(5, 'breadcrumb_status', 'general', 'block', 0),
(5, 'old_browser_message', 'general', '{\"value\":[]}', 1),
(5, 'old_browser_font', 'general', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(5, 'breadcrumb_padding', 'general', '{\"value\":{\"text\":\"0\"}}', 1),
(101, 'old_browser_message', 'general', '{\"value\":[]}', 1),
(5, 'general_button_border_hover', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(5, 'main_title_padding_left', 'general', '{\"value\":{\"text\":\"15\"}}', 1),
(5, 'extended_layout_bg_color', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(5, 'breadcrumb_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(101, 'main_title_padding_right', 'general', '{\"value\":{\"text\":\"\"}}', 1),
(101, 'extended_layout_bg_color', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(101, 'breadcrumb_status', 'general', 'block', 0),
(101, 'scroll_to_top', 'general', '1', 0),
(101, 'general_button_bg_hover', 'general', '{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}', 1),
(101, 'breadcrumb_hover', 'general', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(101, 'breadcrumb_bg_color', 'general', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(101, 'ajax_loader', 'general', '{\"value\":{\"image\":\"data\\/journal2\\/loader.gif\"}}', 1),
(101, 'scroll_top_icon_hover', 'general', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(101, 'general_button_border_hover', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(101, 'breadcrumb_border', 'general', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(101, 'main_title_padding_left', 'general', '{\"value\":{\"text\":\"10\"}}', 1),
(101, 'body_bg_color', 'general', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(101, 'content_bg_color', 'general', '{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}', 1),
(101, 'general_links_color', 'general', '{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}', 1),
(101, 'general_links_hover', 'general', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(101, 'main_title_bg', 'general', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(101, 'secondary_title_bg', 'general', '{\"value\":{\"color\":\"rgb(95, 104, 116)\"}}', 1),
(101, 'general_button_font_hover', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(101, 'general_button_bg', 'general', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(101, 'body_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"data\\/journal2\\/pattern\\/dots.png\"}}}}', 1),
(101, 'content_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\"}}', 1),
(101, 'extended_layout_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\"}}', 1),
(101, 'site_width', 'general', '{\"value\":\"1024\",\"range\":\"1024,1920\",\"step\":\"2\"}', 1),
(101, 'breadcrumb_font', 'general', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(101, 'scroll_top', 'general', '1', 0),
(101, 'scroll_top_icon', 'general', '{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(63, 87, 101)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}', 1),
(101, 'general_button_width', 'general', '{\"value\":{\"text\":\"10\"}}', 1),
(101, 'general_button_height', 'general', '{\"value\":{\"text\":\"33\"}}', 1),
(101, 'breadcrumb_align', 'general', 'left', 0),
(101, 'general_button_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(101, 'general_button_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(101, 'secondary_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(101, 'secondary_title_padding_tb', 'general', '{\"value\":{\"text\":\"8\"}}', 1),
(101, 'general_button_active_shadow', 'general', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(101, 'secondary_title_padding_lr', 'general', '{\"value\":{\"text\":\"10\"}}', 1),
(101, 'main_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(101, 'main_title_line_height', 'general', '{\"value\":{\"text\":\"40\"}}', 1),
(101, 'secondary_title_font', 'general', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(101, 'main_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(250, 250, 250)\"}},\"letter_spacing\":\"\"}}', 1),
(101, 'main_title_align', 'general', 'left', 0),
(101, 'secondary_title_align', 'general', 'left', 0),
(101, 'responsive_design', 'general', '1', 0),
(101, 'extended_layout', 'general', '0', 0),
(101, 'extended_layout_top_spacing', 'general', 'on', 0),
(101, 'extended_layout_side_spacing', 'general', 'on', 0),
(101, 'container_border', 'general', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(101, 'body_font', 'general', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'category_page_title_font', 'category', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"22px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"uppercase\"}}', 1),
(102, 'post_page_stats_margin_right', 'blogpostpage', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'one_page_title_padding_right', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'blog_form_comment_awaiting_approval', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'contacts_icon_container_size', 'footer', '{\"value\":\"\"}', 1),
(102, 'scroll_top_tablet', 'general', '0', 0),
(102, 'scroll_top_phone', 'general', '0', 0),
(102, 'rtl_columns', 'general', '1', 0),
(102, 'container_shadow', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'breadcrumb_active_hover', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'button_shadow_active', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'old_browser_message', 'general', '{\"value\":[]}', 1),
(102, 'old_browser_font', 'general', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'breadcrumb_active_font', 'general', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'button_shadow_hover', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'button_shadow', 'general', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'general_button_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'general_button_bg_image_hover', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'content_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'breadcrumb_padding', 'general', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'breadcrumb_full_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'breadcrumb_status', 'general', 'block', 0),
(102, 'body_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'extended_layout_bg_image_home', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'breadcrumb_bg_color', 'general', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'ajax_loader', 'general', '{\"value\":{\"image\":\"catalog\\/Icon\\/loader.gif\"}}', 1),
(102, 'scroll_top_icon_hover', 'general', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'general_button_border_hover', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'main_title_padding_left', 'general', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'extended_layout_bg_color', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'breadcrumb_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(102, 'main_title_bg', 'general', '{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}', 1),
(102, 'secondary_title_bg', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'general_button_font_hover', 'general', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'general_button_bg', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'general_button_bg_hover', 'general', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'breadcrumb_hover', 'general', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'content_bg_color', 'general', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'general_links_color', 'general', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'general_links_hover', 'general', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'site_width', 'general', '{\"value\":\"1220\",\"range\":\"1024,1920\",\"step\":\"2\"}', 1),
(102, 'body_bg_color', 'general', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(102, 'info_page_title_bg', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'footer_html_p_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'filter_tags_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Tags\",\"2\":\"T\\u1eeb kh\\u00f3a\"}}', 1),
(102, 'autosuggest_price_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'autosuggest_image_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'autosuggest_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'cart_icon_hover', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'menu_sticky_border', 'header', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'header_cart_checkout_button_bg_color_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'header_cart_checkout_button_bg_color_image_hover', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'catalog_header_cart2', 'catalog', 'hidden', 0),
(102, 'header_cart_checkout_button_bg_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'autosuggest_no_results_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'center_top_menu_border', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'curr_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'header_box_shadow_type', 'header', 'none', 0),
(102, 'retina_logo', 'header', '{\"value\":{\"image\":\"32963_Hyundai_Logo.jpg\"}}', 1),
(102, 'autosuggest_view_more_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'search_autosuggest_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_box_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'top_bar_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_bg_pages', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'logo_bg_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'center_logo_bg_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'header_bg_sticky', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'sticky_header_box_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_bg_default', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'cart_content_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'cart_header_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'cart_button_bg_color_image', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'cart_button_bg_color_image_hover', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'menu_bg_image_sticky', 'header', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'cart_button_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'header_cart_button_shadow', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_cart_button_shadow_hover', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_cart_checkout_button_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'search_shadow_custom', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'header_cart_button_shadow_active', 'header', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'cart_button_bg_hover_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cart_button_bg_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'header_height', 'header', 'normal', 0),
(102, 'drop_lang_divider_type', 'header', 'solid', 0),
(102, 'lang_shadow', 'header', '0 2px 2px rgba(0, 0, 0, 0.15)', 0),
(102, 'autosuggest_product_image', 'header', 'block', 0),
(102, 'top_bar_divider_type', 'header', 'solid', 0),
(102, 'autosuggest_view_more_text', 'header', '{\"value\":{\"1\":\"View More\",\"2\":\"Xem t\\u1ea5t c\\u1ea3\"}}', 1),
(102, 'autosuggest_limit', 'header', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'sticky_header_style', 'header', 'defaul', 0),
(102, 'search_autocomplete_include_description', 'header', '1', 0),
(102, 'autosuggest_product_image_type', 'header', 'fit', 0),
(102, 'autosuggest_price_status', 'header', 'block', 0),
(102, 'cart_heading_bg_center', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cart_heading_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cart_heading_bg_mobile', 'header', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'search_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'search_bg_mobile', 'header', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'search_bg_center', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cart_button_color', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_divider_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'post_page_stats_margin_left', 'blogpostpage', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_page_title_padding_right', 'blogpostpage', '{\"value\":{\"text\":\"50\"}}', 1),
(102, 'post_page_title_padding_left', 'blogpostpage', '{\"value\":{\"text\":\"50\"}}', 1),
(102, 'secondary_menu_text_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'dropdown_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[]}}', 1),
(102, 'view_more_font_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'main_menu_mobile_border_color', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'mixed_cms_block_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'mobile_menu_cart_display', 'headermenus', 'off', 0),
(102, 'menu_product_grid_details_bg_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_product_grid_button_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'mixed_cms_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(102, 'mixed_cms_margin_bottom', 'headermenus', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'mixed_cms_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'mixed_cms_title_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"letter_spacing\":\"1\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(102, 'mixed_cms_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(102, 'menu_product_grid_item_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'menu_product_grid_price_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(102, 'menu_categories_item_margin', 'headermenus', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'menu_html_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'menu_html_title_padding_left', 'headermenus', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'menu_html_title_padding_top', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'menu_categories_link_padding', 'headermenus', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'menu_product_grid_name_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'dropdown_shadow', 'headermenus', 'none', 0),
(102, 'mega_menu_shadow', 'headermenus', '0 2px 8px -2px rgba(0, 0, 0, 0.4)', 0),
(102, 'view_more_text', 'headermenus', '{\"value\":[null,\"View More\",\"\"]}', 1),
(102, 'view_more_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'mega_menu_padding', 'headermenus', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'menu_categories_title_padding_bottom', 'headermenus', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'main_menu_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":{\"text\":\"\"}},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":{\"text\":\"\"}},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}}}', 1),
(102, 'menu_categories_title_padding_left', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'menu_product_grid_button_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'menu_categories_link_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(149, 165, 166)\"}}', 1),
(102, 'menu_categories_title_padding_top', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'main_menu_mobile_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'menu_categories_title_padding_right', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'menu_product_grid_price_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'dropdown_divider', 'headermenus', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'dropdown_icon_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'secondary_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(102, 'dropdown_bg_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'dropdown_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'dropdown_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'menu_brands_title_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_brands_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_brands_title_font_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_html_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'menu_html_title_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'menu_categories_title_border_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_categories_title_bg_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_categories_title_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'menu_categories_title_font_hover', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'dropdown_divider_type', 'headermenus', 'solid', 0),
(102, 'menu_categories_title_align', 'headermenus', 'left', 0),
(102, 'menu_brands_title_align', 'headermenus', 'left', 0),
(102, 'menu_html_title_align', 'headermenus', 'left', 0),
(102, 'menu_categories_padding', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'menu_brands_padding', 'headermenus', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'menu_line_height', 'headermenus', '{\"value\":{\"text\":\"38\"}}', 1),
(102, 'menu_categories_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'menu_categories_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"dotted\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}}}', 1),
(102, 'menu_font_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'menu_bg_hover', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'menu_divider', 'headermenus', '{\"value\":{\"color\":\"rgb(227, 174, 0)\"}}', 1),
(102, 'mega_menu_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'secondary_menu_link_hover_color', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'top_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'top_menu_border_color', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'top_menu_link_hover_color', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'main_menu_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'main_menu_bg_full_color', 'headermenus', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'mobile_plus_bg', 'headermenus', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'mobile_plus_color', 'headermenus', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'top_menu_link_hover_bg_color', 'headermenus', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'dropdown_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"10px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe620;\",\"class\":\"play4\"}}}', 1),
(102, 'menu_categories_link_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"18px\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe094;\",\"class\":\"circle-arrow-right2\"}}}', 1),
(102, 'mobile_text_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'mobile_menu_text', 'headermenus', '{\"value\":{\"1\":\"MENU\",\"2\":\"Danh m\\u1ee5c\"}}', 1),
(102, 'mobile_menu_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"22px\",\"top\":\"-1\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe618;\",\"class\":\"reorder\"}}}', 1),
(102, 'dropdown_link_icon', 'headermenus', '{\"value\":{\"options\":{\"font_size\":\"10px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe045;\",\"class\":\"plus-sign\"}}}', 1),
(102, 'mega_menu_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":{\"text\":\"1\"}},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":{\"text\":\"1\"}},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}}}', 1),
(102, 'menu_html_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'menu_html_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(102, 'menu_brands_title_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'menu_brands_image_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'menu_brands_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(102, 'slider_timer_color', 'moduleslider', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'post_page_title_line_height', 'blogpostpage', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'post_title_overflow', 'blogpostpage', 'off', 0),
(102, 'footer_html_heading_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'footer_html_heading_padding', 'footer', '{\"value\":\"\"}', 1),
(102, 'footer_html_p_padding', 'footer', '{\"value\":\"\"}', 1),
(102, 'footer_post_price_date', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'contacts_icon_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'footer_post_padding', 'footer', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'copyright_link_hover', 'footer', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'contacts_icon_hover', 'footer', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'footer_post_name_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'footer_blog_image_border', 'footer', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'footer_product_image_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'footer_post_divider_type', 'footer', 'solid', 0),
(102, 'footer_post_image_width', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'footer_post_image_height', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'footer_post_divider', 'footer', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'footer_product_image_height', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'footer_product_padding', 'footer', '{\"value\":{\"text\":\"4\"}}', 1),
(102, 'footer_product_price_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'footer_product_old_price_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}}}', 1),
(102, 'footer_product_name_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'html_line_height', 'footer', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'footer_product_divider', 'footer', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'footer_product_name_font_hover', 'footer', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'footer_product_image_width', 'footer', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'contacts_text_font_hover', 'footer', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'contacts_text_font', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(102, 'footer_bg_image', 'footer', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center\",\"bgimage\":{\"value\":{\"image\":\"\"}}}}', 1),
(102, 'footer_product_divider_type', 'footer', 'solid', 0),
(102, 'copyright_font_settings', 'footer', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'footer_product_name_overflow', 'footer', 'nowrap', 0),
(102, 'footer_tooltip_bg_color', 'footer', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'bottom_bar_bg', 'footer', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'footer_tooltip_font', 'footer', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'contacts_icon_bg_hover', 'footer', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'contacts_bar_bg', 'footer', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'contacts_icon_bg', 'footer', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'bottom_bar_shadow', 'footer', 'none', 0),
(102, 'boxed_bottom', 'footer', 'fullwidth-bar', 0),
(102, 'bottom_bar_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'contacts_display', 'footer', 'on', 0);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(102, 'contacts_bar_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"60\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'footer_titles_divider', 'footer', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'footer_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'footer_bg_color', 'footer', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'footer_links_hover', 'footer', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'html_font_color', 'footer', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'footer_tooltip_border', 'footer', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'footer_titles', 'footer', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"1\"}}', 1),
(102, 'contacts_bar_shadow', 'footer', 'none', 0),
(102, 'footer_links', 'footer', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(186, 186, 186)\"}}}}', 1),
(102, 'newsletter_subscribed_message', 'modulenewsletter', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'newsletter_confirm_unsubscribe_message', 'modulenewsletter', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'newsletter_unsubscribed_message', 'modulenewsletter', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'newsletter_invalid_email_message', 'modulenewsletter', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'quickview_title_align', 'quickview', 'left', 0),
(102, 'out_of_stock_disable_button', 'productlabels', '1', 0),
(102, 'out_of_stock_disable_button_opacity', 'productlabels', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'carousel_icon_bg', 'modulecarousel', '{\"value\":{\"color\":\"rgba(0, 0, 0, 0)\"}}', 1),
(102, 'carousel_side_icon_bg_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0.8)\"}}', 1),
(102, 'carousel_icon_bg_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgba(0, 0, 0, 0)\"}}', 1),
(102, 'carousel_side_icon_height', 'modulecarousel', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'carousel_side_icon_width', 'modulecarousel', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'carousel_side_icon_bg', 'modulecarousel', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0.5)\"}}', 1),
(102, 'carousel_product_grid_hover_border', 'modulecarousel', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'carousel_product_grid_item_bg', 'modulecarousel', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'carousel_brand_shadow_mask', 'modulecarousel', 'on', 0),
(102, 'carousel_product_shadow_mask', 'modulecarousel', 'on', 0),
(102, 'carousel_brand_product_grid_item_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'carousel_brand_product_grid_shadow', 'modulecarousel', 'hover', 0),
(102, 'carousel_product_grid_item_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'carousel_brand_product_grid_soft_shadow', 'modulecarousel', 'none', 0),
(102, 'carousel_product_grid_shadow', 'modulecarousel', 'never', 0),
(102, 'carousel_product_grid_soft_shadow', 'modulecarousel', 'none', 0),
(102, 'carousel_side_icon_brands_offset_top', 'modulecarousel', '{\"value\":{\"text\":\"-25\"}}', 1),
(102, 'carousel_side_icon_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}', 1),
(102, 'carousel_side_icon_offset_left', 'modulecarousel', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'carousel_side_icon_offset_right', 'modulecarousel', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'carousel_side_icon_offset_top', 'modulecarousel', '{\"value\":{\"text\":\"-60\"}}', 1),
(102, 'carousel_icon_offset_right', 'modulecarousel', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'carousel_icon_offset_top', 'modulecarousel', '{\"value\":{\"text\":\"-58\"}}', 1),
(102, 'carousel_side_left_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"30px\",\"color\":{\"value\":{\"color\":\"rgba(119, 119, 119, 0.6)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60f;\",\"class\":\"chevron-left\"}}}', 1),
(102, 'carousel_icon_offset_left', 'modulecarousel', '{\"value\":{\"text\":\"25\"}}', 1),
(102, 'carousel_side_icon_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_radius_unit\":\"px\",\"border_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}}}', 1),
(102, 'carousel_icon_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'carousel_side_right_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"30px\",\"color\":{\"value\":{\"color\":\"rgba(119, 119, 119, 0.6)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}', 1),
(102, 'carousel_bullet_color', 'modulecarousel', '{\"value\":{\"color\":\"rgb(30, 50, 100)\"}}', 1),
(102, 'carousel_icon_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'carousel_bullet_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'carousel_title_bg', 'modulecarousel', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'carousel_title_divider', 'modulecarousel', '{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}', 1),
(102, 'carousel_bullet_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"5\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'carousel_bullet_scale', 'modulecarousel', '{\"value\":{\"text\":\"1\"}}', 1),
(102, 'carousel_bullet_width', 'modulecarousel', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'carousel_bullet_height', 'modulecarousel', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'carousel_bullet_margin', 'modulecarousel', '{\"value\":{\"text\":\"8\"}}', 1),
(102, 'carousel_title_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'carousel_right_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60e;\",\"class\":\"chevron-right\"}}}', 1),
(102, 'post_grid_button_bg_image_hover', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'post_grid_shadow_custom', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rm_list_button_shadow', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rm_list_button_shadow_hover', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rm_list_button_shadow_active', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'post_grid_button_bg_image', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'rm_button_shadow', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rm_button_shadow_hover', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rm_button_shadow_active', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'post_grid_button_border_hover', 'blog', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_grid_button_bg_hover', 'blog', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_grid_button_font_hover', 'blog', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'post_list_details_padding_top', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_list_details_padding_right', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_list_details_padding_bottom', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_list_details_padding_left', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_grid_icon_hover', 'blog', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_grid_button_bg', 'blog', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'post_grid_title_font_hover', 'blog', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'feed_text', 'blog', '{\"value\":[]}', 1),
(102, 'post_grid_align', 'blog', 'right', 0),
(102, 'feed_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_list_title_divider_type', 'blog', 'solid', 0),
(102, 'post_list_image_width', 'blog', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'post_grid_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(102, 'post_grid_padding', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'post_grid_details_padding_top', 'blog', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'post_grid_details_padding_right', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'post_grid_image_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'post_grid_title_overflow', 'blog', 'normal', 0),
(102, 'post_grid_title_font', 'blog', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}}}}', 1),
(102, 'post_grid_author_date_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_grid_desc_font', 'blog', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'post_grid_details_padding_left', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'post_grid_button_padding_bottom', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_button_padding_left', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_details_padding_bottom', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'post_grid_button_padding_top', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_button_padding_right', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_button_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_radius_unit\":\"px\",\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'post_list_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_grid_button_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":null,\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'post_grid_button_icon_position', 'blog', 'left', 0),
(102, 'post_list_padding', 'blog', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'post_grid_author_date_padding', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_author_date_border', 'blog', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'blog_form_comment_submitted', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'blog_form_submit', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"G\\u1eedi \\u0111i\"}}', 1),
(102, 'blog_form_comment', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Nh\\u1eadn x\\u00e9t\"}}', 1),
(102, 'blog_form_website', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'blog_form_name', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"T\\u00ean b\\u1ea1n\"}}', 1),
(102, 'blog_form_email', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'blog_leave_comment_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\\u0110\\u0103ng nh\\u1eadn x\\u00e9t\"}}', 1),
(102, 'blog_leave_reply_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Tr\\u1ea3 l\\u1eddi\"}}', 1),
(102, 'blog_reply_button', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Tr\\u1ea3 l\\u1eddi\"}}', 1),
(102, 'blog_posted_by_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"\\u0110\\u0103ng b\\u1edfi\"}}', 1),
(102, 'blog_comment_text', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Nh\\u1eadn x\\u00e9t\"}}', 1),
(102, 'blog_button_read_more', 'bloglanguage', '{\"value\":{\"1\":\"\",\"2\":\"Xem th\\u00eam\"}}', 1),
(102, 'refine_carousel_autoplay', 'category', '0', 0),
(102, 'category_page_title_bg', 'category', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'refine_image_height', 'category', '{\"value\":{\"text\":\"250\"}}', 1),
(102, 'product_compare_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'category_description_line_height', 'category', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'pagination_bar_bg', 'category', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'pagination_soft_shadow', 'category', 'none', 0),
(102, 'pagination_text_font', 'category', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'pagination_link_font_new', 'category', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[]}}', 1),
(102, 'refine_image_padding', 'category', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'main_category_image_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'refine_bar_bg', 'category', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(102, 'pagination_link_hover_bg_color', 'category', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'refine_link_divider_color', 'category', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(102, 'pagination_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'pagination_link_bg', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'pagination_link_font', 'category', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'category_view_icon_hover', 'category', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'product_filter_bg', 'category', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_compare_hover_color', 'category', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'pagination_bar_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'refine_image_font_hover', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'refine_image_bg', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'refine_image_bg_hover', 'category', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'refine_category_images_per_row', 'category', '{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"5\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}', 1),
(102, 'product_filter_font', 'category', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}}}', 1),
(102, 'pagination_link_hover_color', 'category', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'category_grid_view_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe689;\",\"class\":\"grid\"}}}', 1),
(102, 'category_list_view_icon', 'category', '{\"value\":{\"options\":{\"font_size\":\"32px\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe68c;\",\"class\":\"list3\"}}}', 1),
(102, 'category_page_products_per_row', 'category', '{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"mobile1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet1\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop1\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"4\",\"range\":\"1,10\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,10\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,10\"}', 1),
(102, 'product_filter_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'refine_image_border_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'refine_image_border', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_compare_link_status', 'category', 'on', 0),
(102, 'post_list_shadow', 'blog', 'hover', 0),
(102, 'scroll_top', 'general', '1', 0),
(102, 'scroll_top_icon', 'general', '{\"value\":{\"options\":{\"font_size\":\"45px\",\"color\":{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe021;\",\"class\":\"upload\"}}}', 1),
(102, 'body_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(102, 'filter_availability_text', 'modulesuperfilter', '{\"value\":{\"2\":\"Kho h\\u00e0ng\"}}', 1),
(102, 'slider_bullet_height', 'moduleslider', '{\"value\":{\"text\":\"8\"}}', 1),
(102, 'slider_bullet_scale', 'moduleslider', '{\"value\":{\"text\":\"1\"}}', 1),
(102, 'category_description_font', 'category', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[]}}', 1),
(102, 'slider_icon_hover', 'moduleslider', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'product_grid_wishlist_icon_bg_image_Compare', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'product_grid_quickview_status', 'productgrid', 'hover', 0),
(102, 'product_grid_quickview_button_icon_display', 'productgrid', 'icon', 0),
(102, 'product_grid_quickview_button_icon_position', 'productgrid', 'left', 0),
(102, 'product_grid_quickview_offset_x', 'productgrid', '{\"value\":{\"text\":\"-60\"}}', 1),
(102, 'product_grid_quickview_offset_y', 'productgrid', '{\"value\":{\"text\":\"60\"}}', 1),
(102, 'product_grid_quickview_button_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgba(228, 228, 228, 0)\"}}}}', 1),
(102, 'product_grid_quickview_button_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'product_grid_shadow_custom', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'rating_stars_color', 'productgrid', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'wish_button_icon_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'product_grid_button_border_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}', 1),
(102, 'product_grid_button_bg_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}', 1),
(102, 'product_grid_description', 'productgrid', 'none', 0),
(102, 'product_grid_button_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'product_grid_button_font_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_grid_quickview_button_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'pg_quick_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_details_padding', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_quickview_button_font_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'wc_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_quickview_align', 'productgrid', 'center', 0),
(102, 'product_grid_wishlist_icon_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'product_grid_quickview_button_bg_hover', 'productgrid', '{\"value\":{\"color\":\"rgba(228, 228, 228, 0)\"}}', 1),
(102, 'product_grid_button_bg_image', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'pg_quick_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'pg_quick_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_button_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'pg_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'pg_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'pg_button_shadow_active', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_wishlist_icon_border_compare', 'productgrid', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_grid_wishlist_icon_bg_image_hover_compare', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'wc_button_shadow', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_wishlist_icon_bg_image_hover', 'productgrid', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'product_grid_quickview_button_border_hover', 'productgrid', '{\"value\":{\"color\":\"rgba(228, 228, 228, 0)\"}}', 1),
(102, 'product_grid_button_bottom_margin', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_details_bg_hover', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_grid_quickview_button_bg', 'productgrid', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0.8)\"}}', 1),
(102, 'product_grid_hover_border', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'rating_offset_x', 'productgrid', '{\"value\":{\"text\":\"-47\"}}', 1),
(102, 'rating_offset_y', 'productgrid', '{\"value\":{\"text\":\"-35\"}}', 1),
(102, 'product_grid_soft_shadow', 'productgrid', 'none', 0),
(102, 'product_grid_quickview_button_height_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_button_tooltip_bg_color', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_grid_button_tooltip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_grid_quickview_button_width_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_button_width_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_button_height_px', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_wishlist_icon_display', 'productgrid', 'both', 0),
(102, 'product_grid_wishlist_icon_position', 'productgrid', 'image', 0),
(102, 'product_grid_wishlist_icon_on_hover', 'productgrid', 'on', 0),
(102, 'product_grid_wishlist_icon_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_grid_wishlist_icon_bg_width', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'product_grid_wishlist_icon_bg_height', 'productgrid', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'product_grid_wishlist_icon_tip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_grid_button_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"\",\"left\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe17e;\",\"class\":\"cart3\"}}}', 1),
(102, 'product_grid_quickview_button_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(69, 69, 92)\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe036;\",\"class\":\"share\"}}}', 1),
(102, 'product_grid_wishlist_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"12px\",\"color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe65c;\",\"class\":\"star2\"}}}', 1),
(102, 'product_grid_quickview_button_tooltip_bg_color', 'productgrid', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'product_grid_quickview_button_tooltip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_grid_wishlist_icon_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'product_grid_wishlist_icon_bg_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_grid_wishlist_icon_tip_font', 'productgrid', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_grid_wishlist_icon_tip_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_grid_details_tip_color', 'productgrid', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_grid_price_background', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_grid_image_overlay', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_grid_details_bg', 'productgrid', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_grid_name_font_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'product_grid_quickview_button_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(102, 'product_grid_wishlist_font', 'productgrid', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}}}', 1),
(102, 'product_grid_wishlist_font_hover', 'productgrid', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'product_grid_button_font', 'productgrid', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"letter_spacing\":\"-0\",\"color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}},\"font_subset\":[]}}', 1),
(102, 'product_grid_old_price_font', 'productgrid', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(164, 23, 51)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_grid_price_font', 'productgrid', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_grid_name_font', 'productgrid', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_grid_quickview_button_width', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_quickview_button_height', 'productgrid', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_grid_quickview_button_tooltip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_list_name_font_hover', 'productlist', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'product_list_compare_icon_hover', 'productlist', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'cart_button_color_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_list_wishlist_icon_hover', 'productlist', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'product_list_quickview_button_border_hover', 'productlist', '{\"value\":{\"color\":\"rgba(153, 153, 153, 0)\"}}', 1),
(102, 'product_list_quickview_button_bg_hover', 'productlist', '{\"value\":{\"color\":\"rgba(0, 0, 0, 0)\"}}', 1),
(102, 'product_list_name_underline', 'productlist', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_list_quickview_button_bg', 'productlist', '{\"value\":{\"color\":\"rgba(153, 153, 153, 0)\"}}', 1),
(102, 'product_list_button_bg_hover', 'productlist', '{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}', 1),
(102, 'product_list_button_font_hover', 'productlist', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_list_button_border_hover', 'productlist', '{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}', 1),
(102, 'product_list_quickview_button_font_hover', 'productlist', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_list_button_bg', 'productlist', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'product_list_button_tooltip_font', 'productlist', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_list_button_tooltip_bg_color', 'productlist', '{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}', 1),
(102, 'product_list_button_height_px', 'productlist', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_list_button_width_px', 'productlist', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_list_quickview_button_width_px', 'productlist', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_list_quickview_button_height_px', 'productlist', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'product_list_quickview_button_tooltip_font', 'productlist', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_list_quickview_button_tooltip_bg_color', 'productlist', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'product_list_quickview_button_width', 'productlist', '{\"value\":\"\"}', 1),
(102, 'product_list_quickview_button_height', 'productlist', '{\"value\":\"\"}', 1),
(102, 'product_list_quickview_button_tooltip_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_list_quickview_offset_y', 'productlist', '{\"value\":{\"text\":\"66\"}}', 1),
(102, 'product_list_quickview_button_font', 'productlist', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(102, 'product_list_item_bg', 'productlist', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_list_wishlist_font_hover', 'productlist', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'product_list_wishlist_icon', 'productlist', '{\"value\":{\"options\":{\"font_size\":\"12px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe65c;\",\"class\":\"star2\"}}}', 1),
(102, 'product_list_compare_icon', 'productlist', '{\"value\":{\"options\":{\"font_size\":\"12px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"-2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(102, 'product_list_quickview_button_icon', 'productlist', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(69, 69, 92)\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe036;\",\"class\":\"share\"}}}', 1),
(102, 'product_list_wishlist_font', 'productlist', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}}}', 1),
(102, 'product_list_button_icon', 'productlist', '{\"value\":{\"options\":{\"font_size\":\"20px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe17e;\",\"class\":\"cart3\"}}}', 1),
(102, 'product_list_quickview_button_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgba(153, 153, 153, 0)\"}}}}', 1),
(102, 'product_list_quickview_offset_x', 'productlist', '{\"value\":{\"text\":\"-100\"}}', 1),
(102, 'product_list_quickview_button_icon_position', 'productlist', 'left', 0),
(102, 'product_list_quickview_status', 'productlist', 'hover', 0),
(102, 'product_list_quickview_button_active_shadow', 'productlist', 'none', 0),
(102, 'product_list_quickview_button_icon_display', 'productlist', 'icon', 0),
(102, 'product_list_button_width', 'productlist', '{\"value\":\"\"}', 1),
(102, 'product_list_button_height', 'productlist', '{\"value\":\"\"}', 1),
(102, 'product_list_button_tooltip_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_list_button_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"0\"}},\"border_right\":{\"value\":{\"text\":\"0\"}},\"border_bottom\":{\"value\":{\"text\":\"2\"}},\"border_left\":{\"value\":{\"text\":\"0\"}},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}}}', 1),
(102, 'product_list_button_icon_display', 'productlist', 'both', 0),
(102, 'product_list_button_icon_position', 'productlist', 'left', 0),
(102, 'product_list_button_font', 'productlist', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}}}', 1),
(102, 'product_list_description_font', 'productlist', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_list_button_active_shadow', 'productlist', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(102, 'menu_categories_image_border', 'headermenus', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'post_page_title_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_page_button_border_hover', 'productpage', '{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}', 1),
(102, 'product_page_title_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"30px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}}}', 1),
(102, 'out_of_stock_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_page_review_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_qty_input_color', 'productpage', '{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}', 1),
(102, 'product_page_discount_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_qty_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}}}', 1),
(102, 'upload_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_page_spec_title_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(102, 'product_page_tabs_content_option_padding_top', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'product_page_tabs_content_option_padding_bottom', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'product_page_tabs_content_option_padding_right', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'product_page_tabs_content_option_padding_left', 'productpage', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'product_page_auto_update_price', 'productpage', '1', 0),
(102, 'product_page_cloud_zoom_inner', 'productpage', '1', 0),
(102, 'manufacturer_image', 'productpage', '1', 0),
(102, 'manufacturer_image_additional_text', 'productpage', 'none', 0),
(102, 'product_page_spec_align', 'productpage', 'left', 0),
(102, 'manufacturer_image_custom_text', 'productpage', '{\"value\":[]}', 1),
(102, 'product_page_options_brand_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_page_options_sold', 'productpage', '0', 0),
(102, 'product_page_title_status', 'productpage', '1', 0),
(102, 'product_page_options_sold_text', 'productpage', '{\"value\":[]}', 1),
(102, 'product_page_push_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_page_title_align', 'productpage', 'left', 0),
(102, 'product_page_options_push_image', 'productpage', '1', 0);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(102, 'product_page_options_push_checkbox', 'productpage', '1', 0),
(102, 'product_page_options_push_radio', 'productpage', '1', 0),
(102, 'product_page_title_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_page_title_overflow', 'productpage', 'off', 0),
(102, 'product_page_tabs_position', 'productpage', 'off', 0),
(102, 'product_page_tax_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_review_font_heading', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(76, 179, 86)\"}}}}', 1),
(102, 'product_page_review_font_author', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_review_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_page_title_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_options_brand_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_price_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_gallery_carousel_icon_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'product_page_tabs_line_height', 'productpage', '{\"value\":{\"text\":\"17\"}}', 1),
(102, 'share_buttons_style', 'productpage', ' ', 0),
(102, 'product_page_tabs_shadow', 'productpage', 'none', 0),
(102, 'product_page_option_label', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(66, 139, 202)\"}}}}', 1),
(102, 'product_page_gallery_carousel_icon_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_button_line_height', 'productpage', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_page_gallery_carousel_icon_width', 'productpage', '{\"value\":{\"text\":\"25\"}}', 1),
(102, 'product_page_gallery_carousel_icon_height', 'productpage', '{\"value\":{\"text\":\"25\"}}', 1),
(102, 'product_page_gallery_carousel_icon_bg', 'productpage', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'share_buttons_bg', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_page_option_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_page_option_label_hover', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_page_gallery_carousel_icon_offset', 'productpage', '{\"value\":{\"text\":\"-8\"}}', 1),
(102, 'product_page_options_push_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'product_page_options_padding_right', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'product_page_options_padding_top', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'product_page_options_padding_bottom', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'product_page_options_padding_left', 'productpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'product_page_gallery_carousel_icon_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'share_buttons_disable_on_mobile', 'productpage', '1', 0),
(102, 'product_page_gallery_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"300\"}}', 1),
(102, 'related_products_carousel_transition_speed', 'productpage', '{\"value\":{\"text\":\"400\"}}', 1),
(102, 'related_products_carousel_transition_delay', 'productpage', '{\"value\":{\"text\":\"3000\"}}', 1),
(102, 'product_page_gallery_carousel_transition_delay', 'productpage', '{\"value\":{\"text\":\"3000\"}}', 1),
(102, 'tags_hover_bg', 'productpage', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'split_ratio', 'productpage', 'split-50-50', 0),
(102, 'tags_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'tags_hover_font', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'tags_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(30, 50, 100)\"}}}}', 1),
(102, 'tags_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'tags_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'tags_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_tabs_content_image_bg', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_tabs_content_option_bg', 'productpage', '{\"value\":{\"color\":\"rgba(244, 244, 244, 0)\"}}', 1),
(102, 'product_page_gallery_carousel_autoplay', 'productpage', '1', 0),
(102, 'tags_align', 'productpage', 'left', 0),
(102, 'related_products_carousel_touch_drag', 'productpage', '1', 0),
(102, 'related_products_carousel_pause_on_hover', 'productpage', '1', 0),
(102, 'product_page_gallery_carousel_pause_on_hover', 'productpage', '1', 0),
(102, 'product_page_gallery_carousel_touch_drag', 'productpage', '1', 0),
(102, 'product_page_tabs_content_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'related_products_carousel_autoplay', 'productpage', '1', 0),
(102, 'related_products_items_per_row', 'productpage', '{\"value\":{\"mobile\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"mobile1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet1\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"},\"tablet2\":{\"value\":\"1\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop1\":{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"},\"desktop2\":{\"value\":\"2\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop\":{\"value\":\"6\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop1\":{\"value\":\"5\",\"range\":\"1,8\",\"step\":\"1\"},\"large_desktop2\":{\"value\":\"3\",\"range\":\"1,8\",\"step\":\"1\"}},\"step\":\"1\",\"range\":\"1,8\"}', 1),
(102, 'product_page_wishlist_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'share_buttons', 'productpage', '[{\"id\":\"st_li_fblike\"},{\"id\":\"st_li_whatsapp\"}]', 1),
(102, 'product_page_tabs_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_page_tabs_bg', 'productpage', '{\"value\":{\"color\":\"rgb(150, 150, 175)\"}}', 1),
(102, 'product_page_tabs_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'product_page_qty_color', 'productpage', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'product_page_qty_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(120, 107, 93)\"}}', 1),
(102, 'product_page_qty_bg_color', 'productpage', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'product_page_qty_bg_hover_color', 'productpage', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'product_page_button_font_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_button_bg', 'productpage', '{\"value\":{\"color\":\"rgb(253, 193, 0)\"}}', 1),
(102, 'product_page_button_bg_hover', 'productpage', '{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}', 1),
(102, 'product_page_wishlist_font_hover', 'productpage', '{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}', 1),
(102, 'product_page_options_push_select_bg_active', 'productpage', '{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}', 1),
(102, 'product_page_options_push_select_font_active', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_page_options_divider', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_page_options_push_select_bg', 'productpage', '{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}', 1),
(102, 'product_page_options_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'product_page_options_old_price_bg', 'productpage', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'product_page_options_item_bg', 'productpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_page_tabs_content_option_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_option_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_options_links_hover', 'productpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'product_page_compare_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"14px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(102, 'product_page_wishlist_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"14px\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe65c;\",\"class\":\"star2\"}}}', 1),
(102, 'product_page_button_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"25px\",\"color\":{\"value\":{\"color\":\"\"}},\"top\":\"5\",\"left\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe17e;\",\"class\":\"cart3\"}}}', 1),
(102, 'product_page_gallery_carousel_icon_right', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-3\",\"left\":\"1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1),
(102, 'product_page_gallery_carousel_icon_left', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-3\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62b;\",\"class\":\"angle-left\"}}}', 1),
(102, 'product_page_gallery_text_icon', 'productpage', '{\"value\":{\"options\":{\"font_size\":\"16px\",\"color\":{\"value\":{\"color\":\"\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe015;\",\"class\":\"zoom-in2\"}}}', 1),
(102, 'related_products_carousel_bullets', 'productpage', '1', 0),
(102, 'related_products_carousel_arrows', 'productpage', 'top', 0),
(102, 'related_products_status', 'productpage', '0', 0),
(102, 'related_products_carousel', 'productpage', '1', 0),
(102, 'product_page_tabs_content_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_h_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_option_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_page_tabs_content_image_title_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_tabs_content_image_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_padding', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'product_page_tabs_content_ul_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_tabs_content_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(102, 'product_page_options_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}},\"font_subset\":[]}}', 1),
(102, 'product_page_options_links', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'product_page_options_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_page_options_item_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_options_margin', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'product_page_options_views', 'productpage', '1', 0),
(102, 'product_page_options_views_text', 'productpage', '{\"value\":{\"1\":\"Views\",\"2\":\"Quan t\\u00e2m\",\"text\":\"Views\"}}', 1),
(102, 'product_page_options_instock_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(86, 164, 34)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_page_options_outstock_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_page_options_price_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"30px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}}}', 1),
(102, 'product_page_options_old_price_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_page_options_old_price_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"30\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_options_push_select', 'productpage', '1', 0),
(102, 'product_page_options_push_shadow', 'productpage', 'inset 0 0 8px rgba(0, 0, 0, 0.7)', 0),
(102, 'product_page_options_title', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_page_options_push_select_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'product_page_qty_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(229, 189, 2)\"}}}}', 1),
(102, 'product_page_button_icon_position', 'productpage', 'left', 0),
(102, 'product_page_button_active_shadow', 'productpage', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(102, 'product_page_button_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}},\"letter_spacing\":\"\"}}', 1),
(102, 'product_page_button_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"0\"}},\"border_right\":{\"value\":{\"text\":\"0\"}},\"border_bottom\":{\"value\":{\"text\":\"2\"}},\"border_left\":{\"value\":{\"text\":\"0\"}},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}}}', 1),
(102, 'countdown_product_page_title', 'countdown', '{\"value\":{\"1\":\"This offers ends in:\"}}', 1),
(102, 'countdown_product_page_padding_top', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'countdown_product_page_padding_right', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'countdown_product_page_padding_bottom', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'countdown_product_page_padding_left', 'countdown', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'countdown_product_page_title_bg', 'countdown', '{\"value\":{\"color\":\"rgb(30, 50, 100)\"}}', 1),
(102, 'countdown_product_page_title_font', 'countdown', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Ubuntu\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'countdown_product_page_title_align', 'countdown', 'left', 0),
(102, 'countdown_product_page_border', 'countdown', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'hide_category_image', 'category', '0', 0),
(102, 'countdown_min', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Ph\\u00fat\"}}', 1),
(102, 'pp_countdown_text_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'countdown_hours', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Gi\\u1edd\"}}', 1),
(102, 'countdown_days', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Ng\\u00e0y\"}}', 1),
(102, 'countdown_sec', 'countdown', '{\"value\":{\"1\":\"\",\"2\":\"Gi\\u00e2y\"}}', 1),
(102, 'show_countdown', 'countdown', 'always', 0),
(102, 'countdown_divider_type', 'countdown', 'solid', 0),
(102, 'countdown_numbers_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'pp_countdown_divider_type', 'countdown', 'solid', 0),
(102, 'show_countdown_product_page', 'countdown', 'on', 0),
(102, 'countdown_text_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'pp_countdown_numbers_font', 'countdown', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'quickview_description_padding_bottom', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'text_rotator_bullet_border_hover', 'moduletextrotator', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'quickview_description_padding_top', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'label_latest_status', 'productlabels', 'always', 0),
(102, 'flyout_link_bg', 'moduleflyout', '{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}', 1),
(102, 'quickview_cloud_zoom', 'quickview', '1', 0),
(102, 'quickview_description_padding_right', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'quickview_description_padding_left', 'quickview', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'quickview_more_details_tip_bg', 'quickview', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'quickview_more_details_tip_font', 'quickview', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'quickview_title_bg', 'quickview', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'quickview_bg_color', 'quickview', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'quickview_more_details_text', 'quickview', '{\"value\":{\"1\":\"More Details\",\"2\":\"Xem chi ti\\u1ebft\"}}', 1),
(102, 'quickview_button_text', 'quickview', '{\"value\":{\"1\":\"QuickView\",\"2\":\"Xem Nhanh\"}}', 1),
(102, 'quickview_more_details_icon', 'quickview', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(69, 69, 92)\"}},\"left\":\"-5\",\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe07c;\",\"class\":\"signin\"}}}', 1),
(102, 'menu_categories_bg', 'headermenus', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'one_page_confirm_button_bg', 'journalcheckout', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'one_page_coupon_voucher_button_bg', 'journalcheckout', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'flyout_title_bg', 'moduleflyout', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(102, 'one_page_coupon_voucher_button_font_hover', 'journalcheckout', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'one_page_lang_reward_button', 'journalcheckout', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'one_page_lang_loading_text', 'journalcheckout', '{\"value\":{\"2\":\"\\u0111ang x\\u1eed l\\u00fd\"}}', 1),
(102, 'one_page_coupon_voucher_button_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}}}', 1),
(102, 'one_page_lang_reward_placeholder', 'journalcheckout', '{\"value\":[]}', 1),
(102, 'one_page_coupon_voucher_button_bg_hover', 'journalcheckout', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'one_page_coupon_voucher_button_active_shadow', 'journalcheckout', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(102, 'one_page_coupon_voucher_button_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'one_page_default_auth', 'journalcheckout', 'guest', 0),
(102, 'one_page_hide_shipping_option_label', 'journalcheckout', 'block', 0),
(102, 'one_page_lang_payment_details', 'journalcheckout', '{\"value\":[null,null,\"Chi ti\\u1ebft thanh to\\u00e1n\"]}', 1),
(102, 'one_page_show_company', 'journalcheckout', 'block', 0),
(102, 'one_page_show_address_2', 'journalcheckout', 'block', 0),
(102, 'one_page_coupon_status', 'journalcheckout', 'on', 0),
(102, 'one_page_voucher_status', 'journalcheckout', 'off', 0),
(102, 'one_page_show_fax', 'journalcheckout', 'block', 0),
(102, 'one_page_lang_shop_cart', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"B\\u1ea1n mu\\u1ed1n mua s\\u1ea3n ph\\u1ea9m n\\u00e0y?\"}}', 1),
(102, 'one_page_lang_coupon_voucher', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"B\\u1ea1n c\\u00f3 mu\\u1ed1n s\\u1eed d\\u1ee5ng m\\u00e3 Gi\\u1ea3m gi\\u00e1 (Coupon)?\"}}', 1),
(102, 'one_page_lang_confirm_order', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"X\\u00e1c nh\\u1eadn \\u0111\\u01a1n h\\u00e0ng\"}}', 1),
(102, 'one_page_lang_payment_method', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"H\\u00ecnh th\\u1ee9c thanh to\\u00e1n\"}}', 1),
(102, 'one_page_confirm_button_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'one_page_confirm_button_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"0\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'one_page_lang_bill_address', 'journalcheckout', '{\"value\":[]}', 1),
(102, 'one_page_section_padding_l', 'journalcheckout', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'one_page_confirm_button_height', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'one_page_dividers_color', 'journalcheckout', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(102, 'one_page_confirm_button_width', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'one_page_confirm_button_align', 'journalcheckout', 'center', 0),
(102, 'one_page_lang_comments', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'one_page_lang_ship_address', 'journalcheckout', '{\"value\":{\"1\":\"\"}}', 1),
(102, 'one_page_confirm_button_active_shadow', 'journalcheckout', 'inset 0 1px 10px rgba(0, 0, 0, 0.8)', 0),
(102, 'one_page_lang_your_pass', 'journalcheckout', '{\"value\":{\"1\":\"\"}}', 1),
(102, 'one_page_lang_your_address', 'journalcheckout', '{\"value\":{\"1\":\"\"}}', 1),
(102, 'one_page_lang_ship_method', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"V\\u1eadn chuy\\u1ec3n\"}}', 1),
(102, 'one_page_lang_returning', 'journalcheckout', '{\"value\":{\"1\":\"\"}}', 1),
(102, 'one_page_lang_pers_details', 'journalcheckout', '{\"value\":{\"1\":\"\"}}', 1),
(102, 'one_page_text_product_image_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'one_page_lang_register_selector', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u0110\\u0103ng k\\u00fd \\/ \\u0110\\u0103ng nh\\u1eadp t\\u00e0i kho\\u1ea3n\"}}', 1),
(102, 'one_page_table_height', 'journalcheckout', '{\"value\":{\"text\":\"378\"}}', 1),
(102, 'one_page_table_header_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'one_page_table_footer_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'one_page_table_product_name_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'one_page_lang_coupon_button', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u00c1p d\\u1ee5ng\"}}', 1),
(102, 'one_page_lang_voucher_placeholder', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Nh\\u1eadp voucher qu\\u00e0 t\\u1eb7ng\"}}', 1),
(102, 'one_page_table_style', 'journalcheckout', 'solid', 0),
(102, 'one_page_lang_coupon_placeholder', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"Nh\\u1eadp coupon gi\\u1ea3m gi\\u00e1\"}}', 1),
(102, 'one_page_lang_voucher_button', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u00c1p d\\u1ee5ng\"}}', 1),
(102, 'one_page_section_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'one_page_text_input_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'one_page_section_padding', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'one_page_section_border_settings', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'one_page_title_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'one_page_dividers_style', 'journalcheckout', 'solid', 0),
(102, 'one_page_title_padding_left', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'boxed_bottom_spacing', 'header', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'boxed_top_spacing', 'header', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'cart_header_shadow', 'header', 'none', 0),
(102, 'search_placeholder_text', 'header', '{\"value\":{\"1\":\"Search for products...\",\"2\":\"T\\u00ecm s\\u1ea3n ph\\u1ea9m, th\\u01b0\\u01a1ng hi\\u1ec7u mong mu\\u1ed1n ...\"}}', 1),
(102, 'lang_divider', 'header', '{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}', 1),
(102, 'curr_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'lang_drop_bg_hover', 'header', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'lang_drop_color_hover', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'cart_content_divider_color', 'header', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'cart_total_bg', 'header', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'search_placeholder_color', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'autosuggest_divider_type', 'header', 'solid', 0),
(102, 'search_bg', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(102, 'search_icon_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'search_button_bg', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'search_button_bg_hover', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'search_divider', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'autosuggest_divider', 'header', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(102, 'autosuggest_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'autosuggest_hover', 'header', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'lang_drop_color', 'header', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'lang_drop_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'cart_icon_divider', 'header', '{\"value\":{\"color\":\"rgba(244, 244, 244, 0)\"}}', 1),
(102, 'cart_content_bg', 'header', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'cart_content_delete_icon_color', 'header', '{\"value\":{\"color\":\"rgb(34, 34, 34)\"}}', 1),
(102, 'cart_content_delete_icon_hover', 'header', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'cart_heading_icon', 'header', '{\"value\":{\"options\":{\"font_size\":\"25px\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}},\"top\":\"-1\",\"left\":\"-4\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe17e;\",\"class\":\"cart3\"}}}', 1),
(102, 'search_icon', 'header', '{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(253, 193, 0)\"}},\"top\":\"-1\",\"left\":\"2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe697;\",\"class\":\"search\"}}}', 1),
(102, 'menu_divider_type', 'headermenus', 'solid', 0),
(102, 'main_menu_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(42, 41, 55)\"}},\"letter_spacing\":\"0\"}}', 1),
(102, 'menu_html_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\"}}', 1),
(102, 'menu_categories_title_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"letter_spacing\":\"\"}}', 1),
(102, 'menu_categories_link_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'menu_brands_title_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'info_page_title_font', 'pages', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"28px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"800\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'info_page_p_font', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'shopping_image_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'login_screen_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'info_page_h3_font', 'pages', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'info_page_h1_font', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":null,\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'info_page_h2_font', 'pages', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"22px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}}}}', 1),
(102, 'maintenance_bg', 'pages', '{\"value\":{\"bgimage_attach\":\"scroll\"}}', 1),
(102, 'checkout_confirm_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'button_continue_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'button_checkout_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'info_page_title_border', 'pages', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'site_map_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'site_map_top', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'site_map_sub', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'checkout_heading_font', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'checkout_confirm_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'checkout_confirm_divider_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'checkout_bg', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'checkout_padding', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'site_map_bg', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'site_map_padding', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'login_screen_text_font_color', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'checkout_confirm_color', 'pages', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(102, 'checkout_heading_divider_color', 'pages', '{\"value\":{\"color\":\"rgb(80, 80, 80)\"}}', 1),
(102, 'checkout_heading_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(68, 67, 73)\"}}', 1),
(102, 'shopping_option_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'shopping_option_bg_hover', 'pages', '{\"value\":{\"color\":\"rgb(255, 210, 0)\"}}', 1),
(102, 'shopping_option_bg', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'shopping_option_hover_color', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'shopping_action_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'shopping_action_color', 'pages', '{\"value\":{\"color\":\"rgb(51, 55, 69)\"}}', 1),
(102, 'shopping_action_header_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'login_screen_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'shopping_action_margin', 'pages', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'checkout_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'login_screen_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'shopping_divider', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'shopping_table_header_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'shopping_table_header_bg', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'quickview_title_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'quickview_more_details_tip_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'footer_titles_divider_type', 'footer', 'solid', 0),
(102, 'footer_titles_align', 'footer', 'left', 0),
(102, 'content_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(102, 'post_list_image_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_list_title_overflow', 'blog', 'normal', 0),
(102, 'slider_bullet_width', 'moduleslider', '{\"value\":{\"text\":\"30\"}}', 1),
(102, 'slider_bullet_border', 'moduleslider', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"8\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'slider_bullet_margin', 'moduleslider', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'slider_bullet_hover', 'moduleslider', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'slider_bullet_color', 'moduleslider', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'slider_right_icon', 'moduleslider', '{\"value\":{\"options\":{\"font_size\":\"60px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-15\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(102, 'slider_bullet_border_hover', 'moduleslider', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'slider_left_icon', 'moduleslider', '{\"value\":{\"options\":{\"font_size\":\"60px\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"top\":\"-15\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62b;\",\"class\":\"angle-left\"}}}', 1),
(102, 'slider_thumbs_active_overlay', 'moduleslider', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'slider_thumbs_border', 'moduleslider', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":{\"text\":\"3\"}},\"border_right\":{\"value\":{\"text\":\"3\"}},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":{\"text\":\"3\"}},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'slider_thumbs_overlay', 'moduleslider', '{\"value\":{\"text\":\".4\"}}', 1),
(102, 'slider_timer_size', 'moduleslider', '{\"value\":{\"text\":\"3\"}}', 1),
(102, 'carousel_title_bg_hover', 'modulecarousel', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'carousel_title_line_height', 'modulecarousel', '{\"value\":\"\"}', 1),
(102, 'carousel_left_icon', 'modulecarousel', '{\"value\":{\"options\":{\"font_size\":\"24px\",\"color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe60f;\",\"class\":\"chevron-left\"}}}', 1),
(102, 'product_grid_item_bg', 'productgrid', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'product_list_price_font', 'productlist', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}}}', 1),
(102, 'filter_availability_yes_text', 'modulesuperfilter', '{\"value\":{\"2\":\"C\\u00f2n h\\u00e0ng\"}}', 1),
(102, 'filter_price_apply_text', 'modulesuperfilter', '{\"value\":{\"2\":\"\"}}', 1),
(102, 'filter_availability_no_text', 'modulesuperfilter', '{\"value\":{\"2\":\"H\\u1ebft h\\u00e0ng\"}}', 1),
(102, 'filter_price_font', 'modulesuperfilter', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'filter_cat_image_size', 'modulesuperfilter', '20', 0),
(102, 'flyout_link_hover', 'moduleflyout', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'filter_brand_image_size', 'modulesuperfilter', '25', 0),
(102, 'filter_image_size', 'modulesuperfilter', '16.666666', 0),
(102, 'filter_price_tooltip_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'filter_heading_bg', 'modulesuperfilter', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'filter_font', 'modulesuperfilter', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'filter_price_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Shop by Price\"}}', 1),
(102, 'filter_categories_text', 'modulesuperfilter', '{\"value\":[null,\"Categories\",\"Danh m\\u1ee5c\"]}', 1),
(102, 'filter_brands_text', 'modulesuperfilter', '{\"value\":[null,\"Shop by Brand\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\"]}', 1),
(102, 'filter_item_divider', 'modulesuperfilter', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}}', 1),
(102, 'filter_section_padding_from_title', 'modulesuperfilter', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'filter_heading_height', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'filter_heading_font', 'modulesuperfilter', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'filter_height', 'modulesuperfilter', '{\"value\":{\"text\":\"300\"}}', 1),
(102, 'filter_price_button_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'filter_heading_border', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'filter_item_divider_type', 'modulesuperfilter', 'solid', 0),
(102, 'filter_price_bar_height', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(102, 'filter_price_tip_radius', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"10\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'filter_image_section_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'filter_image_section_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'filter_image_section_margin_right', 'modulesuperfilter', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'filter_price_padding_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"35\"}}', 1),
(102, 'filter_price_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'filter_price_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'filter_price_bar_offset', 'modulesuperfilter', '{\"value\":{\"text\":\"-6\"}}', 1),
(102, 'filter_image_section_margin_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'filter_price_button_height', 'modulesuperfilter', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'filter_price_bar_static_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}', 1),
(102, 'filter_price_button_width', 'modulesuperfilter', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'filter_section_padding_left', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'filter_section_padding_bottom', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(102, 'filter_section_padding_top', 'modulesuperfilter', '{\"value\":{\"text\":\"2\"}}', 1),
(102, 'filter_section_spacing', 'modulesuperfilter', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'filter_section_padding_right', 'modulesuperfilter', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'filter_price_padding_left', 'modulesuperfilter', '{\"value\":{\"text\":\"17\"}}', 1),
(102, 'filter_border', 'modulesuperfilter', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"2\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(102, 'filter_reset_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Reset Filters\",\"2\":\"L\\u00e0m m\\u1edbi b\\u1ed9 l\\u1ecdc\"}}', 1),
(102, 'filter_show_box', 'modulesuperfilter', '1', 0),
(102, 'reset_icon', 'modulesuperfilter', '{\"value\":{\"options\":{\"font_size\":\"22px\",\"color\":{\"value\":{\"color\":\"rgb(69, 69, 92)\"}},\"top\":\"-1\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe024;\",\"class\":\"repeat\"}}}', 1),
(102, 'filter_reset_display', 'modulesuperfilter', 'icon', 0),
(102, 'filter_loading_text', 'modulesuperfilter', '{\"value\":{\"1\":\"Loading...\",\"2\":\"\\u0110ang x\\u1eed l\\u00fd...\"}}', 1),
(102, 'filter_active_text', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'filter_active_border', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'filter_price_button', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'filter_price_button_hover', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}', 1),
(102, 'filter_price_tip', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'reset_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'filter_price_bar', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'filter_price_color', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'reset_tip_text', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'reset_hover', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'flyout_title_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":null,\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(102, 'flyout_link_bg_hover', 'moduleflyout', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(102, 'flyout_divider_type', 'moduleflyout', 'solid', 0),
(102, 'flyout_link_icon_offset_right', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_title_line_height', 'moduleflyout', '{\"value\":{\"text\":\"38\"}}', 1),
(102, 'flyout_link_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_title_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'flyout_link_icon_offset_top', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_menu_item_left_padding', 'moduleflyout', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'flyout_menu_item_height', 'moduleflyout', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'flyout_container_shadow', 'moduleflyout', '0 2px 8px -2px rgba(0, 0, 0, 0.4)', 0),
(102, 'flyout_container_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'flyout_container_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_categories_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'flyout_categories_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_categories_link_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_categories_image_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'flyout_categories_link_bottom_margin', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_view_more_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_categories_title_align', 'moduleflyout', 'left', 0),
(102, 'flyout_categories_link_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_categories_title_padding_bottom', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_categories_title_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'flyout_categories_title_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_categories_title_padding_right', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_categories_title_padding_top', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_product_grid_item_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_product_grid_item_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_product_grid_name_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'fly_menu_product_grid_price_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_product_grid_price_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_categories_title_padding_left', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_product_grid_button_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_product_grid_button_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'fly_menu_brands_image_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_brands_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_brands_title_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_brands_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_brands_title_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'fly_menu_brands_title_align', 'moduleflyout', 'left', 0),
(102, 'fly_menu_brands_title_padding_left', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_brands_title_padding_bottom', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_brands_title_padding_right', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_brands_title_padding_top', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'fly_html_heading_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'fly_menu_html_title_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'side_cms_heading_font', 'modulecmsblocks', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"15px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(102, 'cms_heading_font', 'modulecmsblocks', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'cms_block_p_padding', 'modulecmsblocks', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'cms_padding', 'modulecmsblocks', '{\"value\":{\"text\":\"3\"}}', 1),
(102, 'cms_bg', 'modulecmsblocks', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'cms_font_color', 'modulecmsblocks', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cms_border', 'modulecmsblocks', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'side_cms_heading_padding', 'modulecmsblocks', '{\"value\":{\"text\":\"4\"}}', 1),
(102, 'side_cms_border', 'modulecmsblocks', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}},\"border_type\":\"solid\",\"border_radius_unit\":\"px\"}}', 1),
(102, 'side_cms_block_line_height', 'modulecmsblocks', '{\"value\":{\"text\":\"19\"}}', 1),
(102, 'cms_heading_padding', 'modulecmsblocks', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'side_cms_margin', 'modulecmsblocks', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'cms_block_line_height', 'modulecmsblocks', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'side_cms_padding', 'modulecmsblocks', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'side_cms_bg', 'modulecmsblocks', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'side_cms_font', 'modulecmsblocks', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'text_rotator_bullet_margin', 'moduletextrotator', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'text_rotator_bullet_border', 'moduletextrotator', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"5\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'text_rotator_bullet_color', 'moduletextrotator', '{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}', 1),
(102, 'text_rotator_bullet_hover_color', 'moduletextrotator', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'text_rotator_bullet_scale', 'moduletextrotator', '{\"value\":{\"text\":\"1\"}}', 1),
(102, 'text_rotator_bullet_height', 'moduletextrotator', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'text_rotator_bullet_width', 'moduletextrotator', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'product_page_additional_spacing', 'productpage', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'product_page_gallery_text', 'productpage', '{\"value\":{\"1\":\"Click Image for Gallery\",\"2\":\"Xem t\\u1ea5t c\\u1ea3\"}}', 1),
(102, 'product_page_gallery_text_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_page_latest_label_status', 'productpage', 'block', 0),
(102, 'product_page_special_label_status', 'productpage', 'block', 0),
(102, 'product_page_outofstock_label_status', 'productpage', 'block', 0),
(102, 'cart_heading_icon_bg', 'header', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'cart_heading_bg', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(102, 'curr_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'menu_html_title_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Oswald\",\"font_weight\":\"300\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'refine_category', 'category', 'carousel', 0),
(102, 'refine_image_font', 'category', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'refine_link_divider', 'category', '{\"value\":\"\"}', 1),
(102, 'refine_bar_radius', 'category', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_page_tabs_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"2\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'share_buttons_position', 'productpage', 'right', 0),
(102, 'share_buttons_account_key', 'productpage', '{\"value\":\"\"}', 1),
(102, 'product_page_tabs_font', 'productpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(59, 59, 83)\"}},\"letter_spacing\":\"0\"}}', 1),
(102, 'product_page_wishlist_font', 'productpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(153, 153, 153)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_list_name_font', 'productlist', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_list_outofstock_label_status', 'productlist', 'block', 0),
(102, 'product_list_special_label_status', 'productlist', 'block', 0),
(102, 'product_grid_compare_icon', 'productgrid', '{\"value\":{\"options\":{\"font_size\":\"12px\",\"color\":{\"value\":{\"color\":\"rgb(119, 119, 119)\"}},\"top\":\"\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe025;\",\"class\":\"refresh\"}}}', 1),
(102, 'quickview_more_details_bg_color_hover', 'quickview', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'side_title_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'side_product_name_overflow', 'sidecolumn', 'nowrap', 0),
(102, 'side_title_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'side_module_link_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(56, 56, 56)\"}}}}', 1),
(102, 'side_product_price_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}}}', 1),
(102, 'side_category_link_plus', 'sidecolumn', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'side_category_link_plus_right', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'category_plus_font', 'sidecolumn', '{\"value\":{\"font_type\":\"system\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'side_category_link_plus_height', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'side_category_link_plus_width', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'side_category_link_padding_right', 'sidecolumn', '{\"value\":{\"text\":\"20\"}}', 1),
(102, 'side_category_product_padding_bottom', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'side_category_product_padding_top', 'sidecolumn', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'side_modules_margin', 'sidecolumn', 'on', 0),
(102, 'side_category_sub_left_padding', 'sidecolumn', '{\"value\":{\"text\":\"7\"}}', 1),
(102, 'side_category_link_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'side_category_link_padding_top', 'sidecolumn', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'side_category_link_padding_bottom', 'sidecolumn', '{\"value\":{\"text\":\"2\"}}', 1),
(102, 'side_category_product_padding_left', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'side_category_product_padding_right', 'sidecolumn', '{\"value\":{\"text\":\"0\"}}', 1),
(102, 'side_title_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"20px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"]}}', 1),
(102, 'side_module_sub_link_icon', 'sidecolumn', '{\"value\":{\"options\":{\"font_size\":\"13px\",\"color\":{\"value\":{\"color\":\"rgb(169, 184, 192)\"}},\"top\":\"1\"},\"icon_type\":\"none\",\"icon\":{\"icon\":\"&#xe6ae;\",\"class\":\"caret-right\"}}}', 1),
(102, 'category_plus_bg_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(238, 238, 238)\"}}', 1),
(102, 'category_plus_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'category_plus_color', 'sidecolumn', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'category_plus_bg', 'sidecolumn', '{\"value\":{\"color\":\"rgb(119, 119, 119)\"}}', 1),
(102, 'side_module_bg', 'sidecolumn', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'side_module_font_color', 'sidecolumn', '{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}', 1),
(102, 'side_module_link_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'side_module_link_bg_hover', 'sidecolumn', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'side_module_divider', 'sidecolumn', '{\"value\":{\"color\":\"rgba(255, 255, 255, 0)\"}}', 1),
(102, 'side_module_link_icon', 'sidecolumn', '{\"value\":{\"options\":{\"font_size\":\"15px\",\"color\":{\"value\":{\"color\":\"rgb(169, 184, 192)\"}},\"top\":\"-2\"},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe62c;\",\"class\":\"angle-right\"}}}', 1),
(102, 'category_plus_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'quickview_height', 'quickview', '{\"value\":{\"text\":\"600\"}}', 1),
(102, 'quickview_border', 'quickview', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'quickview_title_font', 'quickview', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Lato\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"2\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'quickview_description_position', 'quickview', 'bottom', 0),
(102, 'extended_layout_bg_image', 'general', '{\"value\":{\"bgimage_attach\":\"scroll\",\"bgimage_repeat\":\"repeat\",\"bgimage_position\":\"center top\",\"bgimage\":{\"value\":{\"image\":\"\"}},\"use_gradient\":0,\"bgimage_size\":\"auto\"}}', 1),
(102, 'top_bar_bg_color', 'header', '{\"value\":{\"color\":\"rgb(42, 41, 55)\"}}', 1),
(102, 'header_bg_color', 'header', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'logo_bg_color', 'header', '{\"value\":{\"color\":\"rgb(42, 43, 46)\"}}', 1),
(102, 'product_view', 'category', 'grid', 0),
(102, 'product_list_shadow', 'productlist', 'hover', 0),
(102, 'product_list_item_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_list_second_image', 'productlist', '1', 0),
(102, 'post_page_category_font', 'blogpostpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_tags_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'post_tags_hover_font', 'blogpostpage', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'post_page_title_font', 'blogpostpage', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"30px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(48, 62, 123)\"}}}}', 1),
(102, 'post_form_title_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_comment_title_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_page_title_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'post_tags_title_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'post_comment_bg_even', 'blogpostpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_comment_bg_odd', 'blogpostpage', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'post_form_reply_title_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_page_h1_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_tags_hover_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'post_page_padding', 'blogpostpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'post_page_share_align', 'blogpostpage', 'left', 0),
(102, 'post_page_desc_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_page_q_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_page_author_date_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'post_page_stats_padding_left', 'blogpostpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'post_page_stats_padding_bottom', 'blogpostpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'post_page_h2_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_page_stats_padding_top', 'blogpostpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'post_page_stats_padding_right', 'blogpostpage', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'post_page_author_date_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_page_h3_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_page_q_padding_top', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_tags_title_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'post_tags_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'post_page_q_padding_right', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_padding_bottom', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_tags_align', 'blogpostpage', 'left', 0),
(102, 'post_page_q_margin_top', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_margin_left', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_margin_bottom', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_margin_right', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_page_q_padding_left', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_comment_author_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_comment_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_comment_date_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_tags_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'post_comment_title_align', 'blogpostpage', 'left', 0),
(102, 'post_comment_title_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_comment_padding', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_comment_avatar_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":{\"text\":\"2\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'post_form_reply_title_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_form_reply_title_align', 'blogpostpage', 'left', 0),
(102, 'post_reply_comment_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_comment_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'post_reply_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_reply_date_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_reply_author_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_form_padding', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_form_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_reply_padding', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_reply_avatar_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_comment_button_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_comment_button_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_form_title_font', 'blogpostpage', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_form_title_align', 'blogpostpage', 'left', 0),
(102, 'post_form_reply_padding', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_form_reply_border', 'blogpostpage', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_page_author_date_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(250, 250, 250)\"}}', 1),
(102, 'post_page_bg', 'blogpostpage', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'post_page_category_icon', 'blogpostpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_page_comments_icon', 'blogpostpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_page_date_icon', 'blogpostpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_page_author_icon', 'blogpostpage', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'side_posts_grid_author_date_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'side_posts_grid_title_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'side_posts_grid_spacing', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_button_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'side_posts_grid_item_spacing_bottom', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_button_padding_right', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_button_padding_bottom', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_button_padding_left', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_button_padding_top', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_post_image_height', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_post_image_width', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_button_padding_left', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_button_padding_top', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_button_padding_right', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_button_padding_bottom', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_button_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_button_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'posts_grid_author_date_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_author_date_padding', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_author_date_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'posts_grid_details_padding_left', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_details_padding_bottom', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_details_padding_right', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_details_padding_top', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'posts_grid_desc_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'posts_module_title_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_title_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'posts_module_title_font', 'blogmodules', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'posts_grid_image_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_padding', 'blogmodules', '{\"value\":\"\"}', 1),
(102, 'side_posts_grid_image_border', 'blogmodules', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'posts_grid_author_icon', 'blogmodules', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'posts_grid_date_icon', 'blogmodules', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'posts_grid_comments_icon', 'blogmodules', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'posts_grid_button_icon', 'blogmodules', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'posts_grid_bg', 'blogmodules', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'share_buttons_status', 'productpage', '1', 0),
(102, 'product_page_cloud_zoom', 'productpage', '1', 0),
(102, 'product_page_gallery', 'productpage', '1', 0),
(102, 'product_page_gallery_carousel', 'productpage', '1', 0),
(102, 'product_page_gallery_carousel_arrows', 'productpage', 'always', 0);
INSERT INTO `oc_journal2_settings` (`theme_id`, `key`, `category`, `value`, `serialized`) VALUES
(102, 'product_page_image_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(102, 'quickview_product_options', 'quickview', '1', 0),
(102, 'quickview_status', 'quickview', '1', 0),
(102, 'product_grid_button_height', 'productgrid', '{\"value\":\"\"}', 1),
(102, 'product_grid_button_tooltip_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'reset_tip_bg', 'modulesuperfilter', '{\"value\":{\"color\":\"rgb(69, 69, 92)\"}}', 1),
(102, 'product_page_additional_border', 'productpage', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'shopping_table_link_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'notification_checkout_button_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'notification_checkout_button_bg_color', 'notification', '{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}', 1),
(102, 'notification_checkout_button_bg_hover_color', 'notification', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'notification_checkout_button_color_hover', 'notification', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'notification_cart_button_color_hover', 'notification', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'notification_cart_button_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}}}', 1),
(102, 'notification_image_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'notification_close_color', 'notification', '{\"value\":{\"color\":\"rgb(234, 35, 73)\"}}', 1),
(102, 'notification_close_hover', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'notification_bg_color', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'notification_title_bg', 'notification', '{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}', 1),
(102, 'notification_text_link_color', 'notification', '{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}', 1),
(102, 'notification_text_link_hover', 'notification', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'notification_buttons_status', 'notification', 'block', 0),
(102, 'notification_text_font', 'notification', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'notification_title_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'notification_hide', 'notification', '{\"value\":{\"text\":\"2000\"}}', 1),
(102, 'notification_border', 'notification', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'notification_title_font', 'notification', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"600\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"],\"letter_spacing\":\"0\"}}', 1),
(102, 'notification_shadow', 'notification', '1', 0),
(102, 'notification_show_image', 'notification', 'block', 0),
(102, 'shopping_table_color', 'pages', '{\"value\":{\"color\":\"rgb(53, 53, 53)\"}}', 1),
(102, 'shopping_table_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'actions_bg_color', 'pages', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'actions_padding_lr', 'pages', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'actions_padding_tb', 'pages', '{\"value\":{\"text\":\"15\"}}', 1),
(102, 'actions_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'side_product_old_price_font', 'sidecolumn', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(164, 23, 51)\"}}}}', 1),
(102, 'side_module_image_border', 'sidecolumn', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'side_module_divider_type', 'sidecolumn', 'solid', 0),
(102, 'side_module_border', 'sidecolumn', '{\"value\":{\"text\":\"5\",\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'side_list_price', 'catalog', 'inline-block', 0),
(102, 'catalog_header_lang2', 'catalog', 'hidden', 0),
(102, 'catalog_list_name', 'catalog', 'table', 0),
(102, 'catalog_header_curr2', 'catalog', 'hidden', 0),
(102, 'catalog_list_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_list_price', 'catalog', 'inline-block', 0),
(102, 'catalog_list_wishlist', 'catalog', 'none', 0),
(102, 'catalog_list_cart', 'catalog', 'none', 0),
(102, 'catalog_grid_main_menu_name', 'catalog', 'table', 0),
(102, 'catalog_grid_main_menu_price', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_main_menu_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_main_menu_wishlist', 'catalog', 'none', 0),
(102, 'catalog_grid_main_menu_cart', 'catalog', 'none', 0),
(102, 'catalog_grid_cs_price', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_cs_name', 'catalog', 'table', 0),
(102, 'catalog_grid_cs_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_cs_cart', 'catalog', 'none', 0),
(102, 'catalog_grid_cs_wishlist', 'catalog', 'none', 0),
(102, 'catalog_grid_side_carousel_name', 'catalog', 'table', 0),
(102, 'catalog_grid_side_carousel_price', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_side_carousel_cart', 'catalog', 'none', 0),
(102, 'catalog_grid_side_carousel_wishlist', 'catalog', 'none', 0),
(102, 'catalog_grid_side_carousel_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_carousel_price', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_carousel_name', 'catalog', 'table', 0),
(102, 'catalog_grid_carousel_compare', 'catalog', 'none', 0),
(102, 'catalog_grid_carousel_wishlist', 'catalog', 'none', 0),
(102, 'product_page_additional_width', 'productpage', '{\"value\":\"4\",\"range\":\"1,8\",\"step\":\"1\"}', 1),
(102, 'fly_menu_html_title_align', 'moduleflyout', 'left', 0),
(102, 'fly_html_padding_left', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_padding_bottom', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_padding_right', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_block_line_height', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_heading_padding', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_html_padding_top', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_dropdown_divider_type', 'moduleflyout', 'solid', 0),
(102, 'fly_menu_html_title_border', 'moduleflyout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'fly_menu_html_title_padding_left', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'flyout_link_icon', 'moduleflyout', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'fly_menu_html_title_padding_bottom', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_dropdown_shadow', 'moduleflyout', '0 1px 8px -3px rgba(0, 0, 0, 0.5)', 0),
(102, 'fly_menu_html_title_padding_top', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_menu_html_title_padding_right', 'moduleflyout', '{\"value\":\"\"}', 1),
(102, 'fly_dropdown_font', 'moduleflyout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'flyout_divider', 'moduleflyout', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'fly_dropdown_icon', 'moduleflyout', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'flyout_categories_link_icon', 'moduleflyout', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'fly_dropdown_bg_hover', 'moduleflyout', '{\"value\":{\"color\":\"rgb(116, 142, 200)\"}}', 1),
(102, 'autosuggest_height', 'header', '{\"value\":{\"text\":\"350\"}}', 1),
(102, 'lang_divider_type', 'header', 'solid', 0),
(102, 'drop_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'search_autocomplete', 'header', '1', 0),
(102, 'footer_bottom_margin', 'footer', '20', 0),
(102, 'footer_top_margin', 'footer', '20', 0),
(102, 'fullwidth_footer', 'footer', 'fullwidth-footer', 0),
(102, 'secondary_title_padding_tb', 'general', '{\"value\":{\"text\":\"8\"}}', 1),
(102, 'secondary_title_padding_lr', 'general', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'general_button_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}},\"letter_spacing\":\"\"}}', 1),
(102, 'post_list_title_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'product_list_image_overlay_opacity', 'productlist', '{\"value\":\"\"}', 1),
(102, 'product_list_latest_label_status', 'productlist', 'block', 0),
(102, 'product_list_image_border', 'productlist', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'catalog_grid_price', 'catalog', 'inline-block', 0),
(102, 'catalog_grid_carousel_cart', 'catalog', 'none', 0),
(102, 'carousel_title_font', 'modulecarousel', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":null,\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'carousel_title_border', 'modulecarousel', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'label_latest_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}', 1),
(102, 'label_special_bg', 'productlabels', '{\"value\":{\"color\":\"rgb(221, 0, 23)\"}}', 1),
(102, 'out_of_stock_font_color', 'productlabels', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'out_of_stock_ribbon_size', 'productlabels', 'medium', 0),
(102, 'out_of_stock_status', 'productlabels', 'always', 0),
(102, 'label_special_height', 'productlabels', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'label_special_width', 'productlabels', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'label_special_font', 'productlabels', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'label_special_border', 'productlabels', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'label_latest_font', 'productlabels', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'label_latest_border', 'productlabels', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"%\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"50\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'label_special_text', 'productlabels', '{\"value\":{\"1\":\"\",\"2\":\"\"}}', 1),
(102, 'label_special_type', 'productlabels', 'percent', 0),
(102, 'label_special_status', 'productlabels', 'always', 0),
(102, 'label_latest_width', 'productlabels', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'label_latest_height', 'productlabels', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'label_latest_limit', 'productlabels', '{\"value\":{\"text\":\"10\"}}', 1),
(102, 'product_list_old_price_font', 'productlist', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(164, 23, 51)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'product_page_spec_title_bg', 'productpage', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(102, 'custom_css', 'custom_code', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'custom_js', 'custom_code', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'secondary_menu_link_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"11px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'top_menu_text_font', 'headermenus', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":null,\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[]}}', 1),
(102, 'shopping_table_link_hover_color', 'pages', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'shopping_action_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(102, 'shopping_action_header', 'pages', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'shopping_table_border', 'pages', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'shopping_divider_style', 'pages', 'solid', 0),
(102, 'carousel_title_divider_type', 'modulecarousel', 'solid', 0),
(102, 'notification_show_close', 'notification', 'always', 0),
(102, 'notification_status', 'notification', 'block', 0),
(102, 'notification_position', 'notification', 'top-right', 0),
(102, 'one_page_title_line_height', 'journalcheckout', '{\"value\":\"\"}', 1),
(102, 'one_page_title_font', 'journalcheckout', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'one_page_title', 'journalcheckout', '{\"value\":{\"1\":\"\",\"2\":\"\\u0110\\u1eb7t h\\u00e0ng nhanh\"}}', 1),
(102, 'one_page_title_bg', 'journalcheckout', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'one_page_title_align', 'journalcheckout', 'left', 0),
(102, 'one_page_auto_save', 'journalcheckout', '0', 0),
(102, 'one_page_status', 'journalcheckout', 'one-page', 0),
(102, 'one_page_section_title_border', 'journalcheckout', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'one_page_section_title_align', 'journalcheckout', 'left', 0),
(102, 'one_page_section_title_bg', 'journalcheckout', '{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}', 1),
(102, 'one_page_table_border', 'journalcheckout', '{\"value\":{\"color\":\"rgb(204, 204, 204)\"}}', 1),
(102, 'label_latest_text', 'productlabels', '{\"value\":{\"1\":\"New\",\"2\":\"M\\u1edaI\"}}', 1),
(102, 'post_comment_button_padding_left', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_comment_button_padding_bottom', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_comment_button_padding_right', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_comment_button_padding_top', 'blogpostpage', '{\"value\":\"\"}', 1),
(102, 'post_list_author_date_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_list_desc_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'top_menu_link_font', 'headermenus', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'autosuggest_name_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'wc_button_shadow_hover', 'productgrid', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'product_grid_button_width', 'productgrid', '{\"value\":\"\"}', 1),
(102, 'product_grid_button_icon_position', 'productgrid', 'left', 0),
(102, 'product_grid_button_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"0\"}},\"border_top\":{\"value\":{\"text\":\"0\"}},\"border_right\":{\"value\":{\"text\":\"0\"}},\"border_bottom\":{\"value\":{\"text\":\"2\"}},\"border_left\":{\"value\":{\"text\":\"0\"}},\"border_radius\":{\"value\":{\"text\":\"3\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(162, 136, 48)\"}}}}', 1),
(102, 'product_grid_button_icon_display', 'productgrid', 'both', 0),
(102, 'product_grid_details_tip_offset_x', 'productgrid', '{\"value\":{\"text\":\"-14\"}}', 1),
(102, 'product_grid_button_block_button', 'productgrid', 'block-button', 0),
(102, 'product_grid_details_tip_offset_y', 'productgrid', '{\"value\":{\"text\":\"-21\"}}', 1),
(102, 'product_grid_price_pt', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_price_pr', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_price_pb', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_price_pl', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_details_tip_size', 'productgrid', '{\"value\":{\"text\":\"25\"}}', 1),
(102, 'product_grid_price_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":{\"text\":\"\"}},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'product_grid_details_margin', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_name_overflow', 'productgrid', 'normal', 0),
(102, 'product_grid_price_full', 'productgrid', 'block', 0),
(102, 'product_grid_details_tip', 'productgrid', 'never', 0),
(102, 'product_grid_details_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_grid_outofstock_label_status', 'productgrid', 'block', 0),
(102, 'product_grid_image_overlay_opacity', 'productgrid', '{\"value\":{\"text\":\"\"}}', 1),
(102, 'product_grid_latest_label_status', 'productgrid', 'block', 0),
(102, 'product_grid_special_label_status', 'productgrid', 'block', 0),
(102, 'product_grid_item_padding', 'productgrid', '{\"value\":{\"text\":\"5\"}}', 1),
(102, 'product_grid_second_image', 'productgrid', '0', 0),
(102, 'product_grid_image_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'product_grid_item_border', 'productgrid', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(228, 228, 228)\"}}}}', 1),
(102, 'search_button_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":{\"text\":\"\"}},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'search_radius', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}}}', 1),
(102, 'search_divider_type', 'header', 'solid', 0),
(102, 'search_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"14px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Roboto Slab\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'cart_content_height', 'header', '{\"value\":{\"text\":\"350\"}}', 1),
(102, 'cart_total_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"bold\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}}}}', 1),
(102, 'cart_content_image_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'cart_content_font', 'header', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(0, 0, 0)\"}}}}', 1),
(102, 'cart_heading_icon_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":{\"text\":\"\"}}}}', 1),
(102, 'cart_heading_content_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1),
(102, 'cart_heading_border', 'header', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"40\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(79, 79, 101)\"}}}}', 1),
(102, 'cart_heading_font', 'header', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(255, 255, 255)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'cart_content_divider_type', 'header', 'solid', 0),
(102, 'cart_content_shadow', 'header', '0 2px 5px rgba(0, 0, 0, 0.10)', 0),
(102, 'boxed_header', 'header', '0', 0),
(102, 'header_type', 'header', 'mega', 0),
(102, 'sticky_header', 'header', '0', 0),
(102, 'cart_icon_divider_type', 'header', 'solid', 0),
(102, 'catalog_grid_name', 'catalog', 'table', 0),
(102, 'catalog_product_page_wishlist', 'catalog', 'none', 0),
(102, 'catalog_product_page_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_product_page_price', 'catalog', 'block', 0),
(102, 'catalog_product_page_options', 'catalog', 'block', 0),
(102, 'catalog_product_page_details', 'catalog', 'block', 0),
(102, 'catalog_product_page_cart', 'catalog', 'none', 0),
(102, 'catalog_grid_cart', 'catalog', 'none', 0),
(102, 'catalog_header_search', 'catalog', 'block', 0),
(102, 'catalog_grid_wishlist', 'catalog', 'none', 0),
(102, 'catalog_grid_compare', 'catalog', 'inline-block', 0),
(102, 'catalog_list_description', 'catalog', 'block', 0),
(102, 'quickview_more_details_bg_color', 'quickview', '{\"value\":{\"color\":\"\"}}', 1),
(102, 'quickview_description_font', 'quickview', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"ABeeZee\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"font_subset\":[\"latin\"],\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_list_button_font', 'blog', '{\"value\":{\"font_type\":\"none\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"\",\"font_weight\":\"normal\",\"font_style\":\"normal\",\"letter_spacing\":\"\",\"text_transform\":\"none\"}}', 1),
(102, 'post_list_button_icon_position', 'blog', 'left', 0),
(102, 'post_list_author_date_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_list_author_date_padding', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_list_button_padding_right', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_list_button_padding_top', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_list_button_border', 'blog', '{\"value\":{\"border_rounded\":\"px\"}}', 1),
(102, 'post_list_date_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_list_author_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_grid_button_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"},\"icon_type\":\"none\"}}', 1),
(102, 'post_grid_comments_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"13px\",\"color\":{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe1ae;\",\"class\":\"bubble2\"}}}', 1),
(102, 'post_grid_date_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"13px\",\"color\":{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe6b3;\",\"class\":\"date\"}}}', 1),
(102, 'post_list_button_padding_left', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_author_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"13px\",\"color\":{\"value\":{\"color\":\"rgb(59, 59, 83)\"}}},\"icon_type\":\"icon\",\"icon\":{\"icon\":\"&#xe1b8;\",\"class\":\"user3\"}}}', 1),
(102, 'post_list_comments_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_list_button_padding_bottom', 'blog', '{\"value\":\"\"}', 1),
(102, 'post_grid_bg', 'blog', '{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}', 1),
(102, 'post_list_button_icon', 'blog', '{\"value\":{\"options\":{\"font_size\":\"16px\"}}}', 1),
(102, 'post_list_button_bg_image', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'post_list_button_bg_image_hover', 'blog', '{\"value\":{\"bgimage_attach\":\"scroll\",\"use_gradient\":0,\"bgimage_size\":\"auto\",\"bgimage_position\":\"center top\"}}', 1),
(102, 'post_list_shadow_custom', 'blog', '{\"value\":{\"inner_shadow\":\"0\"}}', 1),
(102, 'blog_show_author', 'blog', 'on', 0),
(102, 'blog_show_date', 'blog', 'on', 0),
(102, 'blog_show_comments', 'blog', 'on', 0),
(102, 'breadcrumb_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"12px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(53, 53, 53)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'general_button_width', 'general', '{\"value\":{\"text\":\"14\"}}', 1),
(102, 'general_button_height', 'general', '{\"value\":{\"text\":\"32\"}}', 1),
(102, 'breadcrumb_align', 'general', 'left', 0),
(102, 'general_button_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":{\"text\":\"1\"}},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"5\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(58, 94, 225)\"}}}}', 1),
(102, 'secondary_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"16px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(22, 73, 159)\"}}}}', 1),
(102, 'secondary_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"1\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"rgb(244, 244, 244)\"}}}}', 1),
(102, 'main_title_line_height', 'general', '{\"value\":{\"text\":\"40\"}}', 1),
(102, 'main_title_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":{\"text\":\"\"}},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":{\"text\":\"2\"}},\"border_radius_top\":{\"value\":\"\"},\"border_radius_right\":{\"value\":\"\"},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"},\"border_color\":{\"value\":{\"color\":\"\"}}}}', 1),
(102, 'body_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"13px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"regular\",\"font_style\":\"normal\",\"text_transform\":\"none\",\"color\":{\"value\":{\"color\":\"rgb(51, 55, 69)\"}},\"font_subset\":[\"latin\"]}}', 1),
(102, 'main_title_font', 'general', '{\"value\":{\"font_type\":\"google\",\"font_size\":\"18px\",\"font_family\":\"Helvetica, Arial, sans-serif\",\"font_name\":\"Open Sans\",\"font_weight\":\"700\",\"font_style\":\"normal\",\"text_transform\":\"uppercase\",\"font_subset\":[\"latin\"],\"color\":{\"value\":{\"color\":\"rgb(59, 59, 83)\"}},\"letter_spacing\":\"\"}}', 1),
(102, 'main_title_align', 'general', 'left', 0),
(102, 'secondary_title_align', 'general', 'left', 0),
(102, 'responsive_design', 'general', '1', 0),
(102, 'extended_layout', 'general', '1', 0),
(102, 'container_border', 'general', '{\"value\":{\"border_rounded\":\"px\",\"border_type\":\"solid\",\"border_radius_unit\":\"px\",\"border\":{\"value\":\"\"},\"border_top\":{\"value\":\"\"},\"border_right\":{\"value\":\"\"},\"border_bottom\":{\"value\":\"\"},\"border_left\":{\"value\":\"\"},\"border_radius\":{\"value\":\"\"},\"border_radius_top\":{\"value\":{\"text\":\"\"}},\"border_radius_right\":{\"value\":{\"text\":\"\"}},\"border_radius_left\":{\"value\":\"\"},\"border_radius_bottom\":{\"value\":\"\"}}}', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_journal2_skins`
--

CREATE TABLE `oc_journal2_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_journal2_skins`
--

INSERT INTO `oc_journal2_skins` (`skin_id`, `skin_name`, `parent_id`) VALUES
(101, 'HyperShop v2', 1),
(102, 'Hypershop v2', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Pav Blog'),
(13, 'Blog'),
(15, 'Journal Blog'),
(16, 'Journal Blog Post'),
(17, 'Search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(618, 3, 'journal2_carousel.42', 'bottom', 21),
(617, 2, 'journal2_carousel.42', 'bottom', 21),
(616, 1, 'journal2_carousel.42', 'bottom', 21),
(615, 2, 'journal2_carousel.38', 'bottom', 20),
(614, 1, 'journal2_carousel.23', 'content_top', 3),
(613, 1, 'journal2_carousel.15', 'content_top', 2),
(497, 16, 'journal2_blog_side_posts.41', 'column_right', 20),
(498, 15, 'journal2_blog_side_posts.32', 'column_right', 3),
(499, 16, 'journal2_blog_side_posts.32', 'column_right', 3),
(500, 1, 'journal2_blog_side_posts.32', 'column_right', 20),
(501, 2, 'journal2_blog_side_posts.41', 'column_right', 20),
(558, 1, 'journal2_simple_slider.3', 'top', 1),
(605, 16, 'journal2_cms_blocks.37', 'column_right', 0),
(604, 15, 'journal2_cms_blocks.37', 'column_right', 0),
(603, 4, 'journal2_cms_blocks.37', 'column_right', 0),
(602, 13, 'journal2_cms_blocks.37', 'column_right', 0),
(599, 2, 'journal2_cms_blocks.37', 'column_right', 0),
(600, 3, 'journal2_cms_blocks.37', 'column_right', 0),
(510, 1, 'journal2_newsletter.19', 'column_left', 4),
(511, 1, 'journal2_newsletter.19', 'bottom', 20),
(512, 1, 'journal2_headline_rotator.33', 'top', -10),
(513, 1, 'journal2_headline_rotator.95', 'bottom', 6),
(514, 1, 'journal2_headline_rotator.148', 'content_top', 1),
(515, 1, 'journal2_headline_rotator.120', 'top', 4),
(516, 1, 'journal2_headline_rotator.126', 'bottom', 20),
(517, 1, 'journal2_headline_rotator.130', 'top', 15),
(518, 1, 'journal2_headline_rotator.131', 'top', 17),
(519, 1, 'journal2_headline_rotator.143', 'bottom', 11),
(520, 1, 'journal2_headline_rotator.144', 'bottom', 29),
(521, 1, 'journal2_headline_rotator.184', 'bottom', 4),
(522, 1, 'journal2_headline_rotator.187', 'content_top', 10),
(523, 1, 'journal2_headline_rotator.192', 'bottom', 0),
(561, 1, 'journal2_static_banners.4', 'top', 2),
(525, 16, 'journal2_blog_comments.33', 'column_right', 4),
(526, 15, 'journal2_blog_comments.33', 'column_right', 4),
(527, 1, 'journal2_side_category.9', 'column_left', 0),
(528, 1, 'journal2_custom_sections.7', 'top', 4),
(529, 2, 'journal2_custom_sections.8', 'content_bottom', 20),
(530, 17, 'journal2_super_filter.18', 'column_right', 0),
(531, 5, 'journal2_super_filter.18', 'column_left', 0),
(532, 3, 'journal2_super_filter.18', 'column_left', 1),
(533, 1, 'journal2_text_rotator.14', 'content_top', 1),
(534, 1, 'journal2_advanced_grid.26', 'content_top', 20),
(535, -1, 'journal2_fullscreen_slider.25', 'footer', 1),
(536, 1, 'journal2_fullscreen_slider.122', 'footer', 0),
(537, 1, 'journal2_photo_gallery.11', 'column_left', 3),
(538, 1, 'journal2_side_products.13', 'column_left', 5),
(539, 1, 'journal2_side_products.10', 'column_left', 2),
(540, 2, 'journal2_side_products.43', 'column_right', 10),
(541, 15, 'journal2_blog_tags.36', 'column_right', 9),
(542, 16, 'journal2_blog_tags.36', 'column_right', 9),
(543, 2, 'journal2_blog_tags.36', 'column_right', 4),
(544, 16, 'journal2_blog_search.35', 'column_right', 0),
(545, 15, 'journal2_blog_search.35', 'column_right', 0),
(546, 1, 'journal2_slider.5', 'top', 1),
(547, 16, 'journal2_blog_categories.31', 'column_right', 2),
(548, 15, 'journal2_blog_categories.31', 'column_right', 2),
(549, 15, 'journal2_blog_categories.51', 'column_right', 3),
(550, 16, 'journal2_blog_categories.51', 'column_right', 3),
(551, 16, 'journal2_side_column_menu.39', 'column_right', 2),
(552, 11, 'journal2_side_column_menu.39', 'column_right', 1),
(553, 15, 'journal2_side_column_menu.39', 'column_right', 2),
(554, -1, 'journal2_header_notice.44', 'header', 0),
(555, 2, 'journal2_blog_posts.34', 'content_bottom', 30),
(601, 1, 'journal2_cms_blocks.37', 'column_right', 0),
(598, 2, 'journal2_cms_blocks.12', 'column_right', 1),
(597, 1, 'journal2_cms_blocks.12', 'column_right', 4),
(619, 1, 'journal2_carousel.45', 'content_top', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(33, 12, 0, 'pavblog/'),
(34, 13, 0, 'blog/article'),
(35, 13, 0, 'blog/category'),
(36, 15, 0, 'journal2/blog'),
(37, 16, 0, 'journal2/blog/post'),
(38, 17, 0, 'product/search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(27, 'SM Pro (Australia)', 'no_image.png', 0),
(6, 'AmazonBasics (Mỹ)', 'no_image.png', 0),
(29, 'UrbanEars (Thụy Điển)', 'no_image.png', 0),
(28, 'KRK (Mỹ)', 'no_image.png', 0),
(10, 'Griffin Technology (Mỹ)', 'no_image.png', 0),
(11, 'Pioneer (Nhật Bản)', 'no_image.png', 0),
(12, 'Monkey-Banana (Đức)', 'no_image.png', 0),
(13, 'Focal (Pháp)', 'no_image.png', 0),
(14, 'Focusrite (Anh)', 'no_image.png', 0),
(15, 'Sennheiser (Đức)', 'no_image.png', 0),
(16, 'Beats By Dre (Mỹ)', '', 0),
(17, 'IsoAcoustics (Canada)', 'no_image.png', 0),
(18, 'Odyssey (Mỹ)', 'no_image.png', 0),
(19, 'Native Instruments (Đức)', 'no_image.png', 0),
(20, 'Akai (Mỹ)', 'no_image.png', 0),
(21, 'Novation (Anh)', 'no_image.png', 0),
(22, 'Apogee (Mỹ)', 'no_image.png', 0),
(23, 'Ableton (Đức)', 'no_image.png', 0),
(24, 'AIAIAI (Đan Mạch)', 'no_image.png', 0),
(25, 'Technics (Nhật Bản)', 'no_image.png', 0),
(26, 'V-Moda (Mỹ)', 'no_image.png', 0),
(30, 'DJ Tech Tools (Mỹ)', 'no_image.png', 0),
(31, 'PreSonus (Mỹ)', 'no_image.png', 0),
(32, 'Audient (Anh)', 'no_image.png', 0),
(33, ' Allen &amp; Heath (Anh)', 'no_image.png', 0),
(34, 'Cosmos', 'no_image.png', 0),
(35, 'Kingston (Mỹ)', 'no_image.png', 0),
(36, 'Sandisk (Mỹ)', 'no_image.png', 0),
(37, 'Apton', 'no_image.png', 0),
(38, 'Liton', 'no_image.png', 0),
(39, 'Numark (Mỹ)', 'no_image.png', 0),
(40, 'Rane', 'no_image.png', 0),
(41, 'Audio-Technica (Nhật)', 'no_image.png', 0),
(42, 'D-Tech', 'no_image.png', 0),
(43, 'Hyundai', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(6, 0),
(10, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:\"name\";s:17:\"Banner - Category\";s:9:\"banner_id\";s:1:\"6\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:6:\"status\";s:1:\"1\";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:\"name\";s:20:\"Carousel - Home Page\";s:9:\"banner_id\";s:1:\"8\";s:5:\"width\";s:3:\"130\";s:6:\"height\";s:3:\"100\";s:6:\"status\";s:1:\"1\";}'),
(28, 'Home Page', 'featured', 'a:6:{s:4:\"name\";s:20:\"Featured - Home Page\";s:7:\"product\";a:4:{i:0;s:2:\"43\";i:1;s:2:\"40\";i:2;s:2:\"42\";i:3;s:2:\"30\";}s:5:\"limit\";s:1:\"4\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:6:\"status\";s:1:\"1\";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:\"name\";s:21:\"Slideshow - Home Page\";s:9:\"banner_id\";s:1:\"7\";s:5:\"width\";s:4:\"1140\";s:6:\"height\";s:3:\"380\";s:6:\"status\";s:1:\"1\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(32, 1, 'catalog/Headphones/Studio-Headphones/AUD-ATHM50XBLK_1.jpg', 1),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(31, 1, 'catalog/Headphones/Studio-Headphones/AUD-ATHM50XWHT_1.jpg', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(31, 2, 1, 'Trắng'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(32, 2, 1, 'Đen'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Hyundai Hà Đông - Bảng Giá Xe Hyundai Tại Hà Nội', 'http://hyundai4svn.com/', 0, 1, '', '', '', '', '', 's:0:\"\";', '', '', '', '', '', '', '', '', 230, '', 3776, '', 'a:0:{}', 'Thu tiền khi giao hàng', 'cod', '', '', '', '', '', '', '', '', 230, '', 3776, '', 'a:0:{}', 'Phí vận chuyển cố định', 'flat.flat', '', '0.0100', 0, 0, '0.0000', 0, '', 2, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'vi-VN,vi;q=0.8,fr-FR;q=0.6,fr;q=0.4,en-US;q=0.2,en;q=0.2', '2017-02-11 08:27:49', '2017-02-11 08:27:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_fraud`
--

CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(15, 1, 314, 'Pioneer XDJ-1000MK2', 'PIO-XDJ1000MK2', 1, '0.0100', '0.0100', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(37, 1, 'total', 'Tổng cộng ', '0.0100', 9),
(35, 1, 'sub_total', 'Thành tiền', '0.0100', 1),
(36, 1, 'shipping', 'Phí vận chuyển cố định', '0.0000', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `khuyenmai` varchar(255) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`, `khuyenmai`, `trang_thai`) VALUES
(169, 'aaaaaaaaaaaaaa', '', '', '', '', '', '', '', 1, 7, '', 0, 1, '0.0000', 0, 0, '2015-04-26', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2015-04-27 03:38:03', '0000-00-00 00:00:00', '', 0),
(325, 'Hyundai Tucson', '', '', '', '', '', '', '', 1, 7, 'tucson-2016/HYUNDAI-TUCSON-2016-db-2-500x500.jpg', 43, 1, '770000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 962, '2017-02-12 13:19:59', '2017-11-09 11:51:26', NULL, NULL),
(329, 'Hyundai Accent Blue', '', '', '', '', '', '', '', 1, 7, 'Accent/Accent-600x600.jpg', 43, 1, '541000000.0000', 0, 0, '2017-02-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 198, '2017-02-16 21:13:34', '2017-02-16 21:16:16', NULL, NULL),
(318, 'Hyundai SantaFe', '', '', '', '', '', '', '', 1, 7, 'HYUNDAI-SANTAFE-dau-tc-dd-500x500.jpg', 43, 1, '1020000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 775, '2017-02-12 11:06:20', '2017-11-09 11:59:13', NULL, NULL),
(320, 'Hyundai Creta', '', '', '', '', '', '', '', 1, 7, 'Creta/hyundai-creta-suv-running-shot-500x500.jpg', 43, 1, '790000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 295, '2017-02-12 11:50:38', '2017-02-16 01:03:02', NULL, NULL),
(321, 'Hyundai Elantra', '', '', '', '', '', '', '', 1, 7, 'Elantra/hyundai-elantra-1-6-at-2017.png', 43, 1, '615000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 869, '2017-02-12 12:47:26', '2017-11-09 12:01:28', NULL, NULL),
(322, 'Hyundai I20 Active', '', '', '', '', '', '', '', 1, 7, 'Active/HYUNDAI-I20-ACTIVE-2-500x500.jpg', 43, 1, '586000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 269, '2017-02-12 12:56:56', '2017-03-02 16:22:10', NULL, NULL),
(323, 'Hyundai Grand i10 Sedan', '', '', '', '', '', '', '', 1, 7, 'Sedan/hyundai-grand-i10-sedan-1-2-mt-2017.png', 43, 1, '384500000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 262, '2017-02-12 13:04:48', '2017-02-27 11:11:44', NULL, NULL),
(324, 'Hyundai Grand I10 Hatchback', '', '', '', '', '', '', '', 1, 7, 'Hatchback/minh.jpg', 43, 1, '315000000.0000', 0, 0, '2017-02-12', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 7000, '2017-02-12 13:07:56', '2017-12-07 09:23:03', NULL, NULL),
(328, 'Hyundai Starex', '', '', '', '', '', '', '', 1, 7, 'Hyundai Starex/hyundai-starex-9-cho-xang-mt-2017.png', 43, 1, '800500000.0000', 0, 0, '2017-02-15', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 180, '2017-02-16 01:11:30', '2017-02-16 01:11:52', NULL, NULL),
(330, 'Hyundai SONATA', '', '', '', '', '', '', '', 1, 7, 'hyundai-sonata-2-0-at-2017.png', 43, 1, '1019000000.0000', 0, 0, '2017-02-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 123, '2017-02-20 09:34:43', '2017-02-20 15:08:56', NULL, NULL),
(331, ' Hyundai Accent', '', '', '', '', '', '', '', 1, 7, 'hyundai-accent-4cua2.jpg', 43, 1, '535000000.0000', 0, 0, '2017-02-20', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 159, '2017-02-20 09:42:36', '2017-03-01 23:55:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `thongtinsanpham` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `custom_alt` varchar(255) DEFAULT NULL,
  `custom_h1` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(318, 2, 'Hyundai SantaFe', '&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: blue; cursor: pointer;&quot;&gt;Hyundai&lt;/a&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(58, 94, 225); cursor: pointer;&quot;&gt;&amp;nbsp;&lt;/a&gt;Phạm Văn Đồng&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&amp;nbsp;trân trọng gửi đến Quý khách hàng Bảng giá của&lt;/span&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&amp;nbsp;Hyundai Santafe&lt;/span&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;- Tăng tốc tới tương lai&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;p style=&quot;margin-bottom: 15px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Bảng giá xe&amp;nbsp;Hyundai Santafe&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Giá Xe SantaFe &amp;nbsp;2.4 xăng Bản&amp;nbsp; thường (CKD)&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&amp;nbsp;898.000.000 VNĐ&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Gía &amp;nbsp;Xe SantaFe 2.4 Bản Đặc Biệt (CKD)&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);&quot;&gt;1.020.000.000 VNĐ&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Giá Xe SantaFe &amp;nbsp;2.2 dầu Bản&amp;nbsp; thường (CKD) &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;937&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;.000.000VNĐ&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;SantaFe &amp;nbsp;2.2 dầu Bản đặc biệt (CKD)&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;1,070.000.000 VNĐ&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;div id=&quot;slide_content02&quot; style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: 14px;&quot;&gt;&lt;div class=&quot;content_header&quot;&gt;&lt;div class=&quot;titlecate&quot; style=&quot;font-family: Arial, sans-serif; background: url(&amp;quot;/images/borderbottom.png&amp;quot;) left bottom no-repeat; padding: 10px 0px; text-transform: uppercase; font-size: 15px; color: rgb(115, 115, 115);&quot;&gt;&lt;h2 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;&quot;&gt;&lt;div class=&quot;tabDetails&quot; style=&quot;padding: 45px 0px 0px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: normal; text-transform: none;&quot;&gt;&lt;div id=&quot;tab0&quot; class=&quot;tabContents&quot;&gt;&lt;p&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_1.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_1.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_2.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_2.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_3.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_3.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_4.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_4.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_5.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_5.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_6.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_6.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_7.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_7.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_8.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_8.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_9.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_9.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_10.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_10.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_11.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_11.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_12.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_12.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_13.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_13.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_14.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_14.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_15.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_15.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_16.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_16.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_17.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_17.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_18.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_18.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_19.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_19.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_20.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_20.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_21.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_21.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_22.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_22.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/santafe/santafe2016_23.jpg&quot; alt=&quot;&quot; data-mce-src=&quot;files/assets/santafe/santafe2016_23.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: normal; text-transform: none;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: normal; text-transform: none;&quot;&gt;&lt;/h2&gt;&lt;h3 style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: normal; text-transform: none;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; font-size: 19.5px; line-height: 20px; background-color: rgb(244, 244, 244);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-bottom: 10px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: large;&quot;&gt;Nếu bạn vân chưa yên tâm hay &amp;nbsp;cảm thấy băn khoăn về sản phẩm này có thể tham khảo thêm từ bài viêt &quot;&amp;nbsp;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&lt;a title=&quot;tư vấn mua xe grand i10&quot; href=&quot;http://hyundaithainguyen3s.com/tu-van-mua-xe-grand-i10.html&quot; target=&quot;_blank&quot; data-mce-href=&quot;http://hyundaithainguyen3s.com/tu-van-mua-xe-grand-i10.html&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(99, 56, 25); cursor: pointer;&quot;&gt;Tư vấn mua xe&lt;/a&gt;&amp;nbsp;SantaFe&amp;nbsp;&lt;/strong&gt;&quot; hoặc gọi điện trực tiếp tới phòng bán hàng của Hyundai Phạm Văn Đồng - Phụ Trách bán hàng:&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px;&quot;&gt;Mr Minh: 0976.059.735&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-bottom: 10px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: large;&quot;&gt;để được hỗ trợ tư vấn nhanh nhất và báo giá cụ thể nhất.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-bottom: 10px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: large;&quot;&gt;Địa chỉ &amp;nbsp;138 phạm văn đồng, xuân đỉnh ,bắc từ. liêm hà nội&lt;/span&gt;&lt;/p&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h3&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '', 'Xe Hyundai SantaFe', 'Bảng giá xe Hyundai Santafe 2016,Xe Hyundai SantaFe,Giá Xe SantaFe 2016 2.4 xăng Bản  thường,Giá Xe SantaFe 2016 2.4 xăng Bản đặc biệt', '', NULL, NULL, NULL, NULL),
(320, 2, 'Hyundai Creta', '&lt;p class=&quot;description&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;a href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;Hyundai Creta&amp;nbsp;&lt;/a&gt;với khả năng tăng tốc tốt, không gian cabin yên tĩnh, ổn định khi vào cua và tiết kiệm nhiên liệu là những đánh giá ban đầu của chúng tôi khi trải nghiệm tân binh Hyundai Creta 1.6L tại Việt Nam.&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Do chỉ có 01 ngày nên chúng tôi lựa chọn cung đường 300 km Hà Nội – Lai Châu – Hà Nội với đủ điều kiện địa hình, từ phố xá, cao tốc và đèo dốc để thử sức mạnh của Creta 1.6L máy dầu.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_0&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(7).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;Hyundai Creta 2016&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Mặc dù chưa được cầm vô-lăng của Creta nhưng với tôi mẫu SUV cỡ nhỏ này không hề lạ lẫm bởi trước khi được đưa về Việt Nam, Creta đã ra mắt tại Ấn Độ và tạo nên “cơn sốt” ở quốc gia Nam Á khi nhận tới hơn 30.000 đơn đặt hàng trong vòng chưa đầy 1 tháng.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Lý do khiến Creta nhanh chóng gặt hái thành công tại Ấn Độ xuất phát từ tính đa dụng, tính kinh tế và chiến dịch truyền thông của Hyundai.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Sau 3 tháng đến tay người tiêu dùng Ấn Độ,&amp;nbsp;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;a href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;Hyundai Creta&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;cũng “chào” thị trường Việt. Xe vẫn giữ những điểm nổi bật như tính kinh tế, đa dụng hay tiết kiệm nhiên liệu, nhưng chênh về giá bán&amp;nbsp;khi bản 1.6L máy dầu được bán 846 triệu đồng. Đây là mức giá có thể khiến người tiêu dùng đôi chút lăn tăn khi quyết định “móc hầu bao”.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_1&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(2).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;a href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;Hyundai Creta&amp;nbsp;&lt;/a&gt;&lt;/strong&gt;sở hữu ngoại thất cân đối cùng những đường nét thiết kế góc cạnh.&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Diện mạo ưa nhìn hơn so với trong ảnh là ấn tượng đầu tiên khi tôi bắt gặp Hyundai Creta ngoài đời thực. Creta sở hữu ngoại thất cân đối cùng những đường nét thiết kế góc cạnh. Xe có kích thước tổng thể lần lượt là 4.270 x 1.780 x 1.665 mm (Dài x Rộng x Cao), chiều dài cơ sở 2.590mm. Với chỉ số này, Creta là chiếc xe không quá cồng kềnh khi di chuyển trong phố và không làm cho khách hàng cảm giác chật chội khi ngồi bên trong.&lt;/p&gt;&lt;div class=&quot;mceTmpl&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;img id=&quot;atdl_slide_image_2&quot; class=&quot;alignnone size-thumbnail wp-image-65268&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(12).jpg&quot; alt=&quot;hyundai-creta-test-drive (12).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&amp;nbsp;&lt;img id=&quot;atdl_slide_image_3&quot; class=&quot;alignnone size-thumbnail wp-image-65267&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(13).jpg&quot; alt=&quot;hyundai-creta-test-drive (13).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&amp;nbsp;&lt;img id=&quot;atdl_slide_image_4&quot; class=&quot;alignnone size-thumbnail wp-image-65269&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(14).jpg&quot; alt=&quot;hyundai-creta-test-drive (14).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Mặc trước của Hyundai Creta khá “cơ bắp” với lưới tản nhiệt lưới tản nhiệt hình lục giác, cản trước lớn kết hợp với dải LED chạy ban ngày cùng nhiều nét thừa hưởng phong cách của đàn anh SantaFe. Dù vậy, Creta vẫn mang trên mình những nét thiết kế đặc trưng riêng biệt như đèn sương mù dựng dọc mới mẻ, cụm đèn hậu được vuốt gọn tạo điểm nhấn.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_5&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(3).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Một số điểm đáng chú ý khác ở ngoại thất của Creta gồm đèn pha Projector, đèn mở rộng góc chiếu tự động khi xe vào cua, đèn phanh trên cao dạng LED, tay nắm cửa mạ chrome, gương chiếu hậu tích hợp xi-nhan điều chỉnh điện hỗ trợ sấy và la-zăng hợp kim 17 inch.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Bước vào khoang cabin, Creta gây chú ý với ghế ngồi bọc da, màn hình cảm ứng 5 inch nằm ở vị trí trung tâm bảng táp-lô, tích hợp camera lùi và hệ thống giải trí hỗ trợ CD/Mp3/USB/Aux/Bluetooth với 6 loa.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_6&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(8).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;Huyndai Creta gây chú ý với ghế ngồi bọc da, màn hình cảm ứng 5 inch nằm ở vị trí trung tâm bảng táp-lô, tích hợp camera lùi.&amp;nbsp;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai Creta trang bị nút bấm khởi động Start/Stop Engine cùng chìa khóa thông minh. Ghế lái xe điều chỉnh điện 8 hướng, vô-lăng có thể điều chỉnh góc cao, thấp 4 hướng. Hệ thống điều hòa tự động kết hợp cùng cửa gió cho hàng ghế sau. Vô-lăng xe tích hợp các nút điều khiển thông số cài đặt, chuyển nhạc, nhận cuộc gọi đảm bảo tính tiện lợi và an toàn khi vận hành.&lt;/p&gt;&lt;div class=&quot;mceTmpl&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;img id=&quot;atdl_slide_image_7&quot; class=&quot;alignnone size-thumbnail wp-image-65268&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(9).jpg&quot; alt=&quot;hyundai-creta-test-drive (9).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&amp;nbsp;&lt;img id=&quot;atdl_slide_image_8&quot; class=&quot;alignnone size-thumbnail wp-image-65267&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(15).jpg&quot; alt=&quot;hyundai-creta-test-drive (15).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&amp;nbsp;&lt;img id=&quot;atdl_slide_image_9&quot; class=&quot;alignnone size-thumbnail wp-image-65269&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(11).jpg&quot; alt=&quot;hyundai-creta-test-drive (11).jpg&quot; width=&quot;212&quot; height=&quot;120&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;Nút khởi động, cửa gió hàng ghế sau và ghế chỉnh điện.&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Với thiện cảm từ diện mạo bên ngoài đến nội thất bên trong, Creta tạo cho tôi hứng thú để ngồi sau vô-lăng, trải nghiệm quãng đường 152km Hà Nội – Mai Châu. Bản máy dầu trên Creta là loại U2 phun nhiên liệu trực tiếp CRDi, kết hợp Turbo điều khiển cánh biến thiên VGT, dung tích 1.6L, công suất tối đa 128 mã lực tại 4.000 vòng/phút cùng mô-men xoắn 260 Nm tại 1.900-2.750 vòng/phút. Theo công bố của nhà sản xuất, Creta máy dầu tiêu thụ trung bình 5,88 lít/100km.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_10&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(1).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;Creta mạng lại cảm giác đầm, chắc khi vận hành trên cao tốc.&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Khi khởi động, người lái ngay lập tức cảm nhận được âm thanh đặc trưng của máy dầu. Tuy nhiên, khi vào khoang cabin, đóng cửa lại và nhấn ga khởi hành thì không gian của Creta khá yên tĩnh chứ không ồn ào như quan niệm người dùng hay nói về dòng xe máy dầu.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Thực tế trải nghiệm Creta cho thấy mang đến cảm giác lái linh hoạt và êm ái khi di chuyển trên những con đường nhỏ trong phố. Trong khi đó, vận hành trên đại lộ Thăng Long, Creta mạng lại cảm giác đầm, chắc. Người lái chỉ cần nhích nhẹ chân ga là xe đã vọt lên và đạt tốc độ giới hạn cho phép.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_11&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/hyundai-creta-test-drive%20(5).jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;em style=&quot;line-height: 20px;&quot;&gt;Sức mạnh của Huyndai Creta 1.6L máy dầu thể hiện rõ nét nhất khi chạy qua đoạn đường đèo dốc.&amp;nbsp;&lt;/em&gt;&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Sức mạnh của Creta thể hiện rõ nét nhất khi chạy qua đoạn đường đèo dốc Bãi Chạo, đèo Thung Khe hay dốc Cun. Với động cơ máy dầu và hộp số tự động 6 cấp, Creta dễ dàng chinh phục những đoạn có độ dốc 10% mà không gặp chút khó khăn nào.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Bên cạnh đó, người lái và hành khách hoàn toàn có thể yên tâm khi ngồi trên Creta bởi xe sở hữu hàng loạt những hệ thống như chống bó cứng phanh ABS, hỗ trợ phanh khẩn cấp BA, phân phối lực phanh điện tử EBD, cân bằng điện tử ESC, khởi hành ngang dốc HAC và 6 túi khí.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Với khá nhiều ưu điểm, Hyundai Creta 1.6L máy dầu được xem là một sự lựa chọn không tồi trong phân khúc SUV cỡ nhỏ&amp;nbsp;tại Việt Nam. Tuy nhiên, nếu mức giá “mềm” hơn nữa thì chắc chắn Creta sẽ đến được với nhiều người tiêu dùng.&lt;/p&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img id=&quot;atdl_slide_image_12&quot; class=&quot;alignnone&quot; src=&quot;http://hyundai4svn.com/image/Creta/creta-test-drive.jpg&quot; alt=&quot;creta 2016&quot; width=&quot;645&quot; height=&quot;361&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;', 'Xe Hyundai Creta,Hyundai Creta,Hyundai,Creta', 'Xe Hyundai Creta', 'Hyundai Creta với khả năng tăng tốc tốt, không gian cabin yên tĩnh, ổn định khi vào cua và tiết kiệm nhiên liệu là những đánh giá ban đầu của chúng tôi khi trải nghiệm tân binh Hyundai Creta 1.6L tại Việt Nam.\r\n\r\n', '', NULL, NULL, NULL, NULL),
(329, 2, 'Hyundai Accent Blue', '&lt;div id=&quot;slide_content01&quot; class=&quot;slide-content&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;div style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;h3 class=&quot;ModernHBold&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Thiết kế tinh tế,&amp;nbsp;&lt;/strong&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;năng động trên từng đường nét&lt;/strong&gt;&lt;/h3&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;Là mẫu xe compact nhưng&amp;nbsp;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;a href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;Hyundai Accent&amp;nbsp;&lt;/a&gt;&lt;/strong&gt;mới mang đến cảm giác không gian rộng hơn nhờ các đường nét điêu khắc mang đậm chất ngôn ngữ thiết kế điêu khắc dòng chảy của Tập Đoàn Hyundai. Accent mới được thiết kế dài hơn, giảm bớt chiều cao và mũi xe được thiết kế ngắn hơn, trong khi đó phia sau, đèn hậu rộng, thiết kế bề mặt gọn gàng kết hợp với kính hậu tạo nên ấn tượng về vẻ hiện đại tinh tế.&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;h/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Ngoaithat1.png&quot; alt=&quot;&quot; width=&quot;825&quot; height=&quot;283&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container 5&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Đèn pha sang trọng kết hợp cùng dải đèn LED&lt;/strong&gt;&amp;nbsp;Đèn pha với dải đèn LED mang đến vẻ sang trọng, đồng thời cho ánh sáng tối đa vào ban đêm.&lt;/div&gt;&lt;div class=&quot;container 7&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Ngoaithat-denpha.jpg&quot; alt=&quot;&quot; width=&quot;831&quot; height=&quot;221&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 class=&quot;ModernHBold&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Kích thước nhỏ, tầm cỡ lớn&lt;/strong&gt;&lt;/h3&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;Kết hợp những tính năng thường chỉ được thấy trong các xe hạng sang,&amp;nbsp;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;a href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;Hyundai Accent&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;mới mang lại cho bạn vẻ đẹp thanh lịch, công nghệ tiên tiến và các tính năng an toàn đột phá, trên tất cả là sự mạnh mẽ , thể thao và cá tính của xe&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Ngoaithat2.png&quot; alt=&quot;&quot; width=&quot;828&quot; height=&quot;327&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container 7&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Ngoaithat-denhau.jpg&quot; alt=&quot;&quot; width=&quot;830&quot; height=&quot;182&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;container 5&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Cụm đèn hậu&lt;/strong&gt;&lt;br style=&quot;line-height: 20px;&quot;&gt;Phía sau xe nổi bật với đèn hậu lớn, hài hòa với thiết kế xe, chiếu sáng tối đa vào ban đêm&lt;/div&gt;&lt;/div&gt;&lt;h3 class=&quot;ModernHBold&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Thiết kế thể thao&lt;/strong&gt;&lt;/h3&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;Sự cân đối trong thiết kế thể hiện phong cách thể thao rất đặc trưng của Accent. Và chắc chắn đây là một trong những mẫu xe phong cách, hợp thời nhất.&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Ngoaithat3.png&quot; alt=&quot;&quot; width=&quot;828&quot; height=&quot;297&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/den.png&quot; alt=&quot;&quot; width=&quot;825&quot; height=&quot;276&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;slide_content02&quot; class=&quot;slide-content&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;content_header&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;titlecate-detail modernHBold&quot; style=&quot;line-height: 20px;&quot;&gt;NỘI THẤT&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/NoiThat1.png&quot; alt=&quot;&quot; width=&quot;827&quot; height=&quot;403&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/Noithat2.png&quot; alt=&quot;&quot; width=&quot;828&quot; height=&quot;238&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;slide_content03&quot; class=&quot;slide-content&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;content_header&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;titlecate-detail modernHBold&quot; style=&quot;line-height: 20px;&quot;&gt;VẬN HÀNH&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Động cơ Kapa&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;Khối lượng nhẹ giúp việc tiết kiệm nhiên liệu, động cơ Kappa 1.4 Dual có công suất cực đại 100 mã lực tại 6000 vòng/phút&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent//dongco-kapa.jpg&quot; alt=&quot;&quot; width=&quot;464&quot; height=&quot;512&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent//hopso-tudong.jpg&quot; alt=&quot;&quot; width=&quot;460&quot; height=&quot;340&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Hộp số tự động vô cấp&lt;/strong&gt;&lt;br style=&quot;line-height: 20px;&quot;&gt;Áp suất dầu biến đổi giúp việc chuyển số êm ái hơn. Hộp số tự động vô cấp mang đến phản ứng nhanh, mạnh mẽ và gia tốc lớn.&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;clearfix&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Hộp số sàn 6 cấp&lt;/strong&gt;&lt;br style=&quot;line-height: 20px;&quot;&gt;Hộp số sàn 6 cấp giúp chuyển số êm và nhẹ nhàng nhờ có bộ đồng tốc hình cầu bánh răng tối ưu và gia công chính xác.&lt;/div&gt;&lt;div class=&quot;container 6&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent//hopsosan-6cap.jpg&quot; alt=&quot;&quot; width=&quot;459&quot; height=&quot;340&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div id=&quot;slide_content04&quot; class=&quot;slide-content&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;content_header&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;titlecate-detail modernHBold&quot; style=&quot;line-height: 20px;&quot;&gt;AN TOÀN&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;line-height: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/phanh.png&quot; alt=&quot;&quot; width=&quot;828&quot; height=&quot;426&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 25px; margin-bottom: 15px;&quot;&gt;&lt;a title=&quot;Accent 2016&quot; href=&quot;/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Accent/dai-an-toan1.png&quot; alt=&quot;&quot; width=&quot;831&quot; height=&quot;321&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', 'Hyundai,Accent,Blue', 'Hyundai Accent Blue', 'Hyundai Accent Blue Mã sản phẩm: Oti10\r\nTình trạng: Còn hàng\r\nGiá thị trường: 541.000.000 đ', 'Hyundai Accent Blue Mã sản phẩm: Oti10\r\nTình trạng: Còn hàng\r\nGiá thị trường: 541.000.000 đ', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(322, 2, 'Hyundai I20 Active', '&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai i20 Active được thiết ngoại hình xe ấn tượng, phong cách năng động, từng chi tiết được chau chuốt, lưới tản nhiệt mạnh mẽ, đèn chiếu sáng đa chức năng, cột say đèn sáng bóng vvv…&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img class=&quot;alignnone wp-image-2166 &quot; src=&quot;http://hyundai4svn.com/image/Active/I20-Acite.jpg&quot; alt=&quot;I20 Acite&quot; width=&quot;813&quot; height=&quot;457&quot; sizes=&quot;(max-width: 813px) 100vw, 813px&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&amp;nbsp;Hyundai i20 Active&lt;/strong&gt;&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; width=&quot;814&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; border-spacing: 5px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 543px;&quot;&gt;\r\n&lt;tbody style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;tr style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 370px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto1-denpha.jpg&quot; alt=&quot;den-suong-mu&quot; width=&quot;400&quot; height=&quot;444&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 19px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 403px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto1-dennho.jpg&quot; alt=&quot;den-pha&quot; width=&quot;376&quot; height=&quot;418&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 370px;&quot;&gt;Đèn chiếu sáng&amp;nbsp;đa chức năng Pha – Cos. Đèn Led&lt;br style=&quot;line-height: 20px;&quot;&gt;chiếu sáng ban ngày DRL và đèn chiếu góc giúp tăng&lt;br style=&quot;line-height: 20px;&quot;&gt;vùng sáng khi vào cua.&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 19px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/strong&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 403px;&quot;&gt;Đèn sương mù&amp;nbsp;cỡ lớn giúp lái xe khi thời tiết xấu dễ dàng hơn.&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai i20 Active&lt;strong style=&quot;line-height: 20px;&quot;&gt;&amp;nbsp;– ĐƯỜNG NÉT SÁNG TẠO, TINH TẾ&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img class=&quot;alignnone wp-image-2169 &quot; src=&quot;http://hyundai4svn.com/image/Active/5-3.jpg&quot; alt=&quot;5&quot; width=&quot;818&quot; height=&quot;546&quot; sizes=&quot;(max-width: 818px) 100vw, 818px&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai i20 Active&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; width=&quot;816&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; border-spacing: 5px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); height: 413px;&quot;&gt;\r\n&lt;tbody style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;tr style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 247px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto2-banhxe.jpg&quot; alt=&quot;la-zang&quot; width=&quot;308&quot; height=&quot;342&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 262px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto2-guongxe.jpg&quot; alt=&quot;guong-chieu-hau&quot; width=&quot;254&quot; height=&quot;282&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 265px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto1-luoitannhiet.jpg&quot; alt=&quot;luoi-tan-nhiet&quot; width=&quot;261&quot; height=&quot;289&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 247px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Lazang&lt;/strong&gt;&amp;nbsp;16 inch 5 chấu kép với công nghệ&lt;br style=&quot;line-height: 20px;&quot;&gt;Diamond Cut giúp xe trẻ trung, cá tính&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 262px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Gương chiếu hậu&lt;/strong&gt;&amp;nbsp;chỉnh điện tích hợp xinhan&lt;br style=&quot;line-height: 20px;&quot;&gt;báo rẽ cùng chức năng sấy gương, đảm bảo&lt;br style=&quot;line-height: 20px;&quot;&gt;tầm nhìn tốt cho lái xe.&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 265px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Lưới tản nhiệ&lt;/strong&gt;t lục giác mạ Crom tạo hình cổng&lt;br style=&quot;line-height: 20px;&quot;&gt;vòm cho chiếc xe.&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai i20 Active&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;PHONG CÁCH HIỆN ĐẠI TRÊN TỪNG CHI TIẾT&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;img class=&quot;alignnone wp-image-2172 &quot; src=&quot;http://hyundai4svn.com/image/Active/6-1.jpg&quot; alt=&quot;6&quot; width=&quot;815&quot; height=&quot;544&quot; sizes=&quot;(max-width: 815px) 100vw, 815px&quot; style=&quot;line-height: 20px; max-width: 100%; height: auto; border-width: initial; border-style: none;&quot;&gt;&lt;/p&gt;\r\n&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;Hyundai i20 Active&lt;/p&gt;\r\n&lt;table border=&quot;0&quot; style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; border-spacing: 5px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); width: 816px; height: 876px;&quot;&gt;\r\n&lt;tbody style=&quot;line-height: 20px;&quot;&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 289px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 289px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto3-dentronsau.jpg&quot; alt=&quot;den-duoi&quot; width=&quot;251&quot; height=&quot;278&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 289px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 289px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto3-angten.jpg&quot; alt=&quot;ang-ten-mai&quot; width=&quot;254&quot; height=&quot;282&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 289px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 289px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/anhto-3trontron.jpg&quot; alt=&quot;nap-binh-xang&quot; width=&quot;251&quot; height=&quot;279&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 72px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 72px;&quot;&gt;Đèn đuôi độc đáo&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 72px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 72px;&quot;&gt;Ăng – ten nóc đảm bảo việc liên lạc thông&lt;br style=&quot;line-height: 20px;&quot;&gt;suốt cho người ngồi trên xe.&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 72px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 72px;&quot;&gt;Nắp bình xăng nổi bật, mang lại vẻ cá tính&lt;br style=&quot;line-height: 20px;&quot;&gt;đặc trưng cho chiếc xe&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 24px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 120px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 120px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/be1.jpg&quot; alt=&quot;luoi-tan-nhiet&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 120px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/be2.jpg&quot; alt=&quot;gia-noc-1&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 120px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/be3.jpg&quot; alt=&quot;tay-nam-cua&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 72px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 72px;&quot;&gt;Lưới tản nhiệt mạ Crom&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 72px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 72px;&quot;&gt;Giá nóc xe với 2 thanh đỡ màu bạc giúp&lt;br style=&quot;line-height: 20px;&quot;&gt;i20 năng động hơn&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 72px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 72px;&quot;&gt;Tay nắm cửa mạ Crom&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 24px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 24px;&quot;&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 120px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 120px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/be4.jpg&quot; alt=&quot;op-hong&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 120px;&quot;&gt;&amp;nbsp;Hyundai i20 Active&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 120px;&quot;&gt;&lt;a href=&quot;http://hyundai3smienbac.com/&quot; style=&quot;line-height: 20px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai4svn.com/image/Active/be5.jpg&quot; alt=&quot;den-phanh&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;line-height: 20px; border-width: initial; border-style: none;&quot;&gt;&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;line-height: 20px; height: 120px;&quot;&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 257px; height: 120px;&quot;&gt;Ốp hông và dè thân xe ôm trọn bánh&lt;br style=&quot;line-height: 20px;&quot;&gt;trước giúp xe mạnh mẽ hơn&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 258px; height: 120px;&quot;&gt;&amp;nbsp;Hyundai i20 Active&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 4px; height: 120px;&quot;&gt;&lt;/td&gt;\r\n&lt;td style=&quot;line-height: 20px; border: 1px solid rgb(204, 204, 204); padding-left: 10px; width: 259px; height: 120px;&quot;&gt;Đèn phanh trên cao với công nghệ hiển thị&lt;br style=&quot;line-height: 20px;&quot;&gt;Led tạo nên vẻ hiện đại và đảm bảo an toàn&lt;br style=&quot;line-height: 20px;&quot;&gt;khi di chuyển.&lt;br&gt;&lt;br&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;', 'Xe,Hyundai,I20 Active,Xe Hyundai I20 Active,Hyundai I20,Hyundai I20 Active,', 'Xe Hyundai I20 Active', 'Hyundai i20 Active được thiết ngoại hình xe ấn tượng, phong cách năng động, từng chi tiết được chau chuốt, lưới tản nhiệt mạnh mẽ, đèn chiếu sáng đa chức năng, cột say đèn sáng bóng vvv…\r\n\r\n', '', NULL, NULL, NULL, NULL),
(328, 2, 'Hyundai Starex', '&lt;div style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;Hyundai Hà Đông trân trọng giới thiệu xe&amp;nbsp;&lt;strong style=&quot;line-height: 20px;&quot;&gt;Hyundai&amp;nbsp;Starex&amp;nbsp;2016&lt;/strong&gt;&lt;/div&gt;&lt;div style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-01.jpg&quot; alt=&quot;&quot; width=&quot;905&quot; height=&quot;394&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Hyundai Starex là dòng xe du lịch 9 chỗ được nhập khẩu 100% từ hàn quốc, chất lương theo tiêu chuẩn Châu Âu.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-02.jpg&quot; alt=&quot;&quot; width=&quot;924&quot; height=&quot;402&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Hyundai Starex sử dụng động cơ dầu 2.5L tăng áp và có làm mát khí nạp, cho công suất cực đại 116 mã lực tại tốc độ 4.000 vòng/phút, mô-men xoắn cực đại 200 Nm tại 2.000 vòng/phút.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-03.jpg&quot; alt=&quot;&quot; width=&quot;912&quot; height=&quot;397&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Hyundai Starex 2016 được trang bị thiết kế tao nhã hài hoà với lưới tản nhiệt mạ crôm, tạo lên sự khác biệt so với thiết kế truyền thống của Hyundai.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-04.jpg&quot; alt=&quot;&quot; width=&quot;891&quot; height=&quot;387&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-05.jpg&quot; alt=&quot;&quot; width=&quot;892&quot; height=&quot;387&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Đèn pha Huyndai Starex 2016 có hình dạng điển hình, duyên dáng, đánh dấu GS là thành viên của gia đình Hyundai. Phiên bản xe này mô tả những nét nổi bật của cặp đèn sương mù, đó là sự kết hợp hài hoà bên trong khu vực thấp hơn của thanh cản phía trước Hyundai starex 2016.Hệ thống rửa kính gồm 3 tia với áp suất cao được phun lên kính, giúp cho việc rửa kính được dễ dàng và sạch sẽ hơn. Tổ hợp đèn sau xe Hyundai Starex 2016 vừa dễ quan sát, đảm bảo yếu tố an toàn, vừa mang lại nét thanh lịch cho xe.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-06.jpg&quot; alt=&quot;&quot; width=&quot;912&quot; height=&quot;397&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Đối với dòng xe Hyundai Starex 9 chỗ này, Hyundai Thành Công Việt Nam đưa vào 2 lựa chọn động cơ : máy xăng 2.4l và máy dầu 2.5l.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-07.jpg&quot; alt=&quot;&quot; width=&quot;903&quot; height=&quot;671&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Hyundai Starex máy xăng có dung tích xy-lanh 2.359cc, tỉ số nén 10.5:1, công suất cực đại đạt 172 mã lực tại tốc độ động cơ 6.000 vòng/phút, mô-men xoắn cực đại 227 Nm tại tốc độ 4.200 vòng/phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Hyundai Starex máy dầu có dung tích xy-lanh 2.476 cc, động cơ TCI, tỉ số nén lên tới 21:1, công suất cực đại đạt 99 mã lực tại tốc độ động cơ 3.800 vòng/phút, mô-men xoắn cực đại 226 Nm tại tốc độ 2.000 vòng/phút.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Cả hai phiên bản Xe Hyundai starex đều sử dụng hộp số sàn 5 cấp.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-08.jpg&quot; alt=&quot;&quot; width=&quot;892&quot; height=&quot;438&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;Nội thất Hyundai Starex tiện nghi, rộng rãi cùng với yếu tố an toàn và tiết kiệm được tính đến cẩn thận, động cơ trên Hyundai Starex vận hành ổn định, bền bỉ.&lt;/p&gt;&lt;p align=&quot;center&quot; style=&quot;margin-bottom: 15px; line-height: 25px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;http://hyundai4svn.com/image/Hyundai%20Starex/Starex-09.jpg&quot; alt=&quot;&quot; width=&quot;890&quot; height=&quot;534&quot; border=&quot;0&quot; style=&quot;border-width: initial; border-style: none; line-height: 20px; max-width: 100%; height: auto;&quot;&gt;&lt;/p&gt;&lt;/div&gt;', 'Hyundai,Starex', 'Hyundai Starex', 'Hyundai Starex', 'Hyundai Starex', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(330, 2, 'Hyundai SONATA', '&lt;div class=&quot;info-car-bordered&quot;&gt;                                        &lt;div class=&quot;info-car-tr&quot;&gt;                                            &lt;div class=&quot;info-car-1&quot;&gt;&lt;div class=&quot;info-car-1&quot;&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;ự hài hòa giữa vẻ đẹp bên ngoài và sức mạnh bên trong Hyundai Sonata.&amp;nbsp;&lt;/span&gt;Trải nghiệm cảm giác lái hoàn toàn mới Thiết kế ngoại thất phong cách, ẩn chứa nội lực tiềm tàng.&lt;/p&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter wp-image-37 size-full&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/hyundai-sotana.jpg&quot; alt=&quot;hyundai-sotana&quot; width=&quot;830&quot; height=&quot;450&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;table border=&quot;0&quot; class=&quot;ng-scope&quot; style=&quot;max-width: 100%; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;padding: 5px 10px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Điêu khắc dòng chảy 2.0&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Các đường gân mềm mại điêu khắc dọc thân xe mang đến cho Sonata vẻ ngoài hiện đại và sang trọng. Thiết kế đơn giản mà tỉ mỉ đến từng chi tiết, lưới tản nhiệt và đèn pha độc đáo mang đến sự tự tin và hiện đại cho người sử dụng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter wp-image-38 size-full&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/hyundai-sonata-20.png&quot; alt=&quot;hyundai-sonata-20&quot; width=&quot;342&quot; height=&quot;178&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/td&gt;&lt;td style=&quot;padding: 5px 10px;&quot;&gt;&amp;nbsp;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter wp-image-39 size-full&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/khung-xe-hyundai-sonata.png&quot; alt=&quot;khung-xe-hyundai-sonata&quot; width=&quot;424&quot; height=&quot;214&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Thép cường độ cao (AHSS)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Cảm nhận sự khác biệt với vận hành linh hoạt và ổn định. Được sử dụng lên đến 51% giúp hấp thụ và phân phối lực va chạm, giảm thiểu tác động lên thân xe&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table border=&quot;0&quot; cellspacing=&quot;1&quot; cellpadding=&quot;1&quot; align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;max-width: 100%; background-color: rgb(255, 255, 255); color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;padding: 5px 10px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Giao diện thân thiện&lt;br&gt;với người sử dụng.&lt;/span&gt;&lt;br&gt;Nhằm mang đến sự tương tác trực quan với chiếc xe..&lt;img class=&quot;alignleft wp-image-40&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/v%C3%B4-l%C4%83ng-xe-hyundai-sonata.png&quot; alt=&quot;vô-lăng-xe-hyundai-sonata&quot; width=&quot;315&quot; height=&quot;385&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 20px;&quot;&gt;&lt;/td&gt;&lt;td style=&quot;padding: 5px 10px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-41&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/h%E1%BB%87-th%E1%BB%91ng-treo-xe-hyundai-sonata.png&quot; alt=&quot;hệ-thống-treo-xe-hyundai-sonata&quot; width=&quot;312&quot; height=&quot;235&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Hệ thống lái (R&amp;amp;H)&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Các bánh trước phản ứng linh hoạt trong khi các bánh sau&lt;br&gt;giúp chuyển hướng ổn định. Đạt hiệu quả cao nhất trong vận hành và&lt;br&gt;ổn định nhờ đổi mới hệ thống treo&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;h2 class=&quot;ng-scope&quot; style=&quot;font-family: Roboto, sans-serif; line-height: 1.5; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 16px;&quot;&gt;NGOẠI THẤT HYUNDAI SONTANA&lt;/h2&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/ki%E1%BB%83u-d%C3%A1ng-xe-hyundai-sonata.jpg&quot; alt=&quot;kiểu-dáng-xe-hyundai-sonata&quot; style=&quot;display: inline-block; width: 850px; margin-bottom: 20px;&quot;&gt;.&lt;br&gt;Vẻ đẹp của sự tự tin và tĩnh lặng. Sang trọng mà không phô trương Thiết kế hài hòa giữa thẩm mỹ và sự tinh tế. Sự đối lập giữa vẻ mạnh mẽ ở đuôi xe và mượt mà ở phía trước đã tạo nên nét đặc trưng riêng của Hyundai Sonata.&lt;br&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/hyundai-sonata-2.0.jpg&quot; alt=&quot;hyundai-sonata-2.0&quot; style=&quot;display: inline-block; width: 850px; margin-bottom: 20px;&quot;&gt;&lt;/p&gt;&lt;div class=&quot;row ng-scope&quot; style=&quot;margin-right: -10px; margin-left: -10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;padding-right: 10px; padding-left: 10px; width: 435px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/%C4%91%C3%A8n-xe-hyundai-sonata.jpg&quot; alt=&quot;đèn-xe-hyundai-sonata&quot; style=&quot;display: inline-block; width: 415px; margin-bottom: 20px;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;padding-right: 10px; padding-left: 10px; width: 435px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/l%C6%B0%E1%BB%9Bi-t%E1%BA%A3n-nhi%E1%BB%87t-xe-hyundai-sonata.png&quot; alt=&quot;lưới-tản-nhiệt-xe-hyundai-sonata&quot; style=&quot;display: inline-block; width: 415px; margin-bottom: 20px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Mặt bên&lt;/span&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;Mặt bên nổi bật với các đường gân dập nổi thân xe. Các đường nét mạnh mẽ và mượt mà mang đến nétPhía sau&lt;br&gt;“Công nghệ cao” và “tiên tiến” là từ miêu tả chính xác nhất phía sau của Sonata, với cụm đèn hậu và cản sau được thiết kế thể thao và hài hòa tinh tế và quyến rũ cho Sonata.&lt;/p&gt;&lt;div class=&quot;row ng-scope&quot; style=&quot;margin-right: -10px; margin-left: -10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;div class=&quot;col-sm-12&quot; style=&quot;padding-right: 10px; padding-left: 10px; width: 870px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/Hyundai-sonata-hyundai-longbien.jpg&quot; alt=&quot;Hyundai-sonata-hyundai-longbien&quot; style=&quot;display: inline-block; width: 850px; margin-bottom: 20px;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-12&quot; style=&quot;padding-right: 10px; padding-left: 10px; width: 870px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/c%E1%BB%ADa-tr%E1%BB%9Di-xe-sonata.jpg&quot; alt=&quot;cửa-trời-xe-sonata&quot; style=&quot;display: inline-block; width: 850px; margin-bottom: 20px;&quot;&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-12&quot; style=&quot;padding-right: 10px; padding-left: 10px; width: 870px;&quot;&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/%C4%91%C3%A8n-h%E1%BA%ADu-xe-hyundai-sonata.jpg&quot; alt=&quot;đèn-hậu-xe-hyundai-sonata&quot; style=&quot;display: inline-block; width: 850px; margin-bottom: 20px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;table class=&quot;table ng-scope&quot; border=&quot;0&quot; width=&quot;100%&quot; style=&quot;background-color: rgb(255, 255, 255); width: 850px; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-50&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/tay-n%E1%BA%AFm-c%E1%BB%ADa-xe-hyundai-sonata.jpg&quot; alt=&quot;tay-nắm-cửa-xe-hyundai-sonata&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/td&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-51&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/g%C6%B0%C6%A1ng-xe-hyundai-sonata.jpg&quot; alt=&quot;gương-xe-hyundai-sonata&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-52&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/c%E1%BB%ADa-tr%E1%BB%9Di-xe-hyundai-sonata1.jpg&quot; alt=&quot;cửa-trời-xe-hyundai-sonata&quot; width=&quot;306&quot; height=&quot;133&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Tay nắm cửa mạ crôm&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Tay nắm cửa mạ crôm mang đến vẻ sang trọng và tăng cường độ bám.&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Xi nhan tích hợp trên gương chiếu hậu&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Xi nhan tích hợp trên gương chiếu hậu đảm bảo an toàn khi chuyển hướng đồng thời mang đến sự sang trọng cho Sonata.&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Đèn soi bậc lên xuống&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Là chiếc xe thân thiện với người sử dụng, đèn soi bậc lên xuống được thiết kế giúp chiếu sáng cho hành khách khi bước lên xe.&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;h2 class=&quot;ng-scope&quot; style=&quot;font-family: Roboto, sans-serif; line-height: 1.5; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 16px;&quot;&gt;NỘI THẤT HYUNDAI SONTANA&lt;/h2&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-53&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/n%E1%BB%99i-th%E1%BA%A5t-gh%E1%BA%BF-da-xe-hyundai-sonata.jpg&quot; alt=&quot;nội-thất-ghế-da-xe-hyundai-sonata&quot; width=&quot;840&quot; height=&quot;359&quot; style=&quot;max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-54&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/gh%E1%BA%BF-xe-hyundai-sonata.jpg&quot; alt=&quot;ghế-xe-hyundai-sonata&quot; width=&quot;754&quot; height=&quot;449&quot; style=&quot;max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-55&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/n%E1%BB%99i-th%E1%BA%A5t-xe-hyundai-sonata.jpg&quot; alt=&quot;nội-thất-xe-hyundai-sonata&quot; width=&quot;753&quot; height=&quot;480&quot; style=&quot;max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/p&gt;&lt;p align=&quot;center&quot; class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Chất liệu nội thất cao cấp&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;Thiết kế “Điêu khắc dòng chảy” tiếp tục được áp dụng trong nội thất xe với không gian rộng rãi và 3 màu lựa chọn. Hyundai Sonata sử dụng các chất liệu nội thất cao cấp mang đến sự sang trọng trong từng chi tiết .&lt;/p&gt;&lt;p class=&quot;ng-scope&quot; style=&quot;margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-56&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/hyundai-sonata-n%E1%BB%99i-th%E1%BA%A5t-.jpg&quot; alt=&quot;hyundai-sonata-nội-thất-&quot; width=&quot;840&quot; height=&quot;340&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;table class=&quot;table ng-scope&quot; border=&quot;0&quot; width=&quot;100%&quot; style=&quot;background-color: rgb(255, 255, 255); width: 850px; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-57&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/tap-lo-sieu-sang-sonata-hyundai-long-bien.jpg&quot; alt=&quot;tap-lo-sieu-sang-sonata-hyundai-long-bien&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-58&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/dieu-hoa-tu-dong-sonata-hyundai-long-bien.jpg&quot; alt=&quot;dieu-hoa-tu-dong-sonata-hyundai-long-bien&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;td width=&quot;33%&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-59&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/ghe-gap-sonata-hyundai-long-bien.jpg&quot; alt=&quot;ghe-gap-sonata-hyundai-long-bien&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Táp lô siêu sáng với màn hình hiển thị LCD 4.2”&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Bảng táp lô hiển thị tất cả các thông tin về tốc độ, hiệu quả sử dụng nhiên liệu, điều khiển ánh sáng… Hệ thống điều khiển được sắp xếp hài hòa và liền mạch, mang đến sự thoải mái và tiện nghi cho người sử dụng.&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Táp lô siêu sáng với màn hình hiển thị LCD 4.2”&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Bảng táp lô hiển thị tất cả các thông tin về tốc độ, hiệu quả sử dụng nhiên liệu, điều khiển ánh sáng… Hệ thống điều khiển được sắp xếp hài hòa và liền mạch, mang đến sự thoải mái và tiện nghi cho người sử dụng.&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Ghế gập 6:4&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Hàng ghế sau gập 6:4, linh hoạt trong việc vận chuyển hành lý.&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-60&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/rem-cua-sau-sonata-hyundai-long-bi%C3%AAn.jpg&quot; alt=&quot;rem-cua-sau-sonata-hyundai-long-biên&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-61&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/ghe-truoc-sonata-hyundai-long-bien.jpg&quot; alt=&quot;ghe-truoc-sonata-hyundai-long-bien&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;a href=&quot;http://hyundailongbien3s.vn/hyundai-sonata-2-0/&quot; style=&quot;background-position: 0px 0px; color: rgb(45, 108, 154);&quot;&gt;&lt;img class=&quot;aligncenter size-full wp-image-62&quot; src=&quot;http://hyundailongbien3s.vn/wp-content/uploads/2015/11/dieu-hoa-ghe-sau-hyundai-sonata-hyundai-long-bien.jpg&quot; alt=&quot;dieu-hoa-ghe-sau-hyundai-sonata-hyundai-long-bien&quot; width=&quot;330&quot; height=&quot;170&quot; style=&quot;text-align: center; max-width: 100%; height: auto; margin: 0px auto 20px; display: block;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Rèm cửa phía sau&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Tiện lợi khi bạn muốn có không gian riêng tư hoặc che bớt ánh sáng.&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Ghế trước điều chỉnh điện&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Tận hưởng sự thoải mái và giảm căng thẳng mệt mỏi trên mọi hành tr&lt;/p&gt;&lt;/td&gt;&lt;td valign=&quot;top&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&lt;span style=&quot;font-weight: 600;&quot;&gt;Cửa gió hàng ghế sau&lt;/span&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Giúp hành khách cảm thấy thoải mái với chế độ gió tùy chỉnh.&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;h2 class=&quot;ng-scope&quot; style=&quot;font-family: Roboto, sans-serif; line-height: 1.5; color: rgb(51, 51, 51); margin-bottom: 10px; font-size: 16px;&quot;&gt;Bảng Thông Số Kĩ Thuật Xe Hyundai Sonata&lt;/h2&gt;&lt;table class=&quot;table ng-scope&quot; style=&quot;background-color: rgb(255, 255, 255); width: 850px; margin-bottom: 20px; color: rgb(51, 51, 51); font-family: Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; width=&quot;542&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;THÔNG SỐ KĨ THUẬT&lt;/td&gt;&lt;td width=&quot;205&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hyundai Sonata 2.0 AT&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Kích thước tổng thể ( D x R x C )(mm )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;4.855 x 1.865 x 1.475&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Chiều dài cơ sở (mm )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;2805&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Khoảng cách hai vệt bánh xe( mm )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;1.597/1.604 (Trước / Sau)&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Khoảng sáng gầm xe ( mm)&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;135&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Bán kính vòng quay tối thiểu (mm)&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;5.45&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống treo trước&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Kiểu Macpherson&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống treo sau&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Liên kết đa điểm&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Dung tích bình nhiên liệu (l)&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;70&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Trọng lượng không tải ( kg )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;1.555&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Trọng lượng toàn tải ( kg )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;2.030&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Công xuất cực đại ( Ps /rpm )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;157/6.200&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Mô men xoắn cực đại ( kg.m/rpm)&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;20.0/4.000&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Tốc độ tối đa ( km / h )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;200&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td colspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;TRANG BỊ&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Động cơ&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Động cơ xăng 2.0 DOHC với Dual CVVT&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hộp số&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Tự động 6 cấp&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;4&quot; width=&quot;116&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống an toàn chủ động&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống chống bó cứng phanh ABS&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống cân bằng điện tử ESC&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Camera lùi&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cảm biến trước sau&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;3&quot; width=&quot;116&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống an toàn thụ động&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Túi khí phía trước&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Túi khí rèm&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Túi khí bên&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;3&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Lốp&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Mâm đúc hợp kim&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;18″&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cỡ lốp&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;235/45R18&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Lốp dự phòng cùng cỡ&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;3&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống lái&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Vô lăng điều chỉnh gật gù,lên xuống&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Trợ lực lái điện&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Vô lăng,tay nắm cần số bọc da&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Ghế&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Ghế da&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Ghế phía trước chỉnh điện ( bên lái + bên phụ )&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;4&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Âm thanh&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;AM/FM + CD + MP3&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cổng USB / AUX&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Điều khiển âm thanh trên vô lăng&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Số loa&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;6&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;14&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Tiện nghi&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Chìa khóa thông minh + khởi động nút bấm&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Gương chiếu hậu gập,chỉnh điện,tích hợp đèn báo rẽ,có sấy&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Hệ thống khóa cửa trung tâm&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Chân ga tự động&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Đèn pha Bi – Xenon&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Đèn pha tự động&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Đèn pha chiếu hậu&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Rửa đèn&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cửa sổ trời panorama&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Chống trộm điện tử&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Rèm cửa sổ sau chỉnh tay&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cảm biến gạt mưa&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Đèn soi bậc lên xuống&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Gương chiếu hậu chống chói&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td rowspan=&quot;2&quot; style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Điều hòa&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Điều hòa tự động hai vùng khí hậu&lt;/td&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;•&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td style=&quot;line-height: 1.42857; vertical-align: top;&quot;&gt;Cửa gió phía sau&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;info-car-tr&quot;&gt;                                            &lt;div class=&quot;info-car-3&quot;&gt;&lt;span class=&quot;parameter_ts&quot;&gt;&lt;/span&gt;&lt;/div&gt;                                            &lt;div class=&quot;info-car-4&quot;&gt;&lt;/div&gt;                                        &lt;/div&gt;                                    &lt;/div&gt;', 'SONATA', 'Hyundai SONATA', 'Hyundai SONATA,SONATA', '', NULL, NULL, NULL, NULL),
(331, 2, ' Hyundai Accent', '&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Hyundai Tiên Phong đại lỹ xe Hyundai chính hãng bán&amp;nbsp;&lt;strong&gt;Giá xe Hyundai Accent&lt;/strong&gt;&amp;nbsp;tốt nhất toàn quốc, đại lý áp dụng chương trình chăm sóc khách hàng, khuyến mại hậu mãi cao cho dòng sản phẩm Hyundai Acent mới.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Giảm ngay từ 10 đến 15 triệu đồng cho 3 dòng xe Accent 5 cửa 1.4AT, Accent 4 cửa 1.4AT và 1.4MT.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-4cua2.jpg&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;img class=&quot;alignnone size-full wp-image-1677&quot; src=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-4cua2.jpg&quot; alt=&quot;hyundai accent 1.4 at&quot; width=&quot;960&quot; height=&quot;600&quot; data-id=&quot;1677&quot; style=&quot;max-width: 100%; height: 385.125px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;h4 style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;Ngoại thất xe&lt;/span&gt;&lt;/h4&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Nhìn tổng quan đánh giá ngoại thất&amp;nbsp;&lt;strong&gt;Hyundai Accent&lt;/strong&gt;&amp;nbsp;mới chúng ta dễ dàng cảm nhận thấy ơ phiên bản mới Accent được thiết kế đầy tinh tế, trẻ trung và năng động. Kế thừa những thành công trước đó và kết hợp thếm phong cách hiện đại của những xu thế những năm gần đây và tương lai . Áp dụng triết lý điêu khắc dòng chảy mà các sản phẩm của&amp;nbsp;&lt;strong&gt;Accent&lt;/strong&gt;&amp;nbsp;được thiết kế rộng hơn, dài hơn giảm bớt chiều cao và phần mũi xe ngắng hơn trong khi đó phia sau, đèn hậu rộng, thiết kế bề mặt gọn gàng kết hợp với kính hậu tạo nên ấn tượng về vẻ hiện đại tinh tế và tạo ra được sự năng động trẻ trung cho dòng xe này.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-5c1.jpg&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;img class=&quot;alignnone  wp-image-1665&quot; src=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-5c1.jpg&quot; alt=&quot;Hyundai accent&quot; width=&quot;960&quot; height=&quot;600&quot; data-id=&quot;1665&quot; style=&quot;max-width: 100%; height: 385.125px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;Nội thất xe hyundai accent&lt;br&gt;&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Nội thất xe được đánh giá là đầy hiện đại và tiện nghi. Accent trang bị nhiều tiện nghi thuận tiện cho người sử dụng. Không gian nội thất rộng rãi kết hợp cùng với việc sắp xếp hợp lý các thiết bị và bảng điều khiển mang đến sự thoải mái vượt trội. Hàng ghế sau có thể gập hoàn toàn mang đến nhiều không gian hơn. Với ghế ngồi thiết kế chắc chắn và khả năng cách âm tối ưu của Accent mới. Rộng rãi thường không được dùng để miêu tả các xe compact, nhưng Accent mới một lần nữa lại làm được điều trái với các quy tắc thông thường. Không chỉ đem lại không gian thoải mái,&amp;nbsp;&lt;a title=&quot;hyundai accent&quot; href=&quot;http://dailyhyundai.net/xe/gia-xe-hyundai-accent/&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;strong&gt;Hyundai Accent&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;mới còn rất phong cách với thiết kế nội thất tinh tế trang nhã.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-ngoai-that-10.jpg&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;img class=&quot;alignnone size-full wp-image-1636&quot; src=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-ngoai-that-10.jpg&quot; alt=&quot;gia xe hyundai accent&quot; width=&quot;960&quot; height=&quot;418&quot; data-id=&quot;1636&quot; style=&quot;max-width: 100%; height: 279.969px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Cả 3 phiên bản Accent 5 cửa và Accent 4 cửa 1.4T, 14.MT đều đươc trang bị cửa sổ điều khiển đi, các nút đươc sắp xếp họp lý tiện lợi hơn&amp;nbsp; đều được phủ kim loại tinh tế và sang trọng.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Khoang hành lý được bố sắp xếp thiết kế rộng rãi hơn , phiên bản Accent 5 cửa 1.4AT có khoang hành lý hơn phiên bản 4 cửa.&lt;/p&gt;&lt;h4 style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;Vận Hành của xe:&lt;/span&gt;&lt;/h4&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Hyundai Accent mới được trang bị động cơ Kappa 1.4 Dual. Khối lượng động cơ nhẹ giúp tiết kiệm nhiên liệu ( 1 lợi thế đánh vào người dùng)&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-2015.jpg&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;img class=&quot;alignnone size-full wp-image-1674&quot; src=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-2015.jpg&quot; alt=&quot;hyundai accent 2015&quot; width=&quot;464&quot; height=&quot;512&quot; data-id=&quot;1674&quot; style=&quot;max-width: 100%; height: 512px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Phiên bản Hyundai Accent 5 cưa và 4 cửa AT được trang bị Hộp số tự động vô cấp giúp việc chuyển số êm ái hơn. Hộp số tự động vô cấp mang đến phản ứng nhanh, mạnh mẽ và gia tốc lớn.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Phiên bản Accent 1.4 MT trang bị hộp số sàn 6 cấp&lt;/p&gt;&lt;h4 style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;Một số tiện nghi đáng chú ý trên xe:&lt;/span&gt;&lt;/h4&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Hệ thống chống bó cứng phanh ABS giúp Khi phanh trong điều kiện đường ẩm và trơn trượt, độ lệch trong điều khiển&lt;br&gt;được kiểm soát bởi bộ cảm biến ABS. Hệ thống chống bó cứng phanh sẽ được kích hoạt để giữ bánh xe không bị khoá cứng,&lt;br&gt;chống trượt và kiểm soát được việc điều khiển xe.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;&lt;a href=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-5c4.jpg&quot; style=&quot;color: rgb(51, 51, 51);&quot;&gt;&lt;img class=&quot;alignnone size-full wp-image-1668&quot; src=&quot;http://dailyhyundai.net/wp-content/uploads/2014/11/hyundai-accent-5c4.jpg&quot; alt=&quot;Hyundai accent 5 cua&quot; width=&quot;960&quot; height=&quot;500&quot; data-id=&quot;1668&quot; style=&quot;max-width: 100%; height: 334.891px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; font-size: 14px;&quot;&gt;Ngoài ra Hyundai accent mới được trang bị đầy đủ h&lt;span class=&quot;description&quot;&gt;ệ thống âm thanh với radio, CD, MP3, USB và AUX, trang bị 4 loa và 2 tweeter mang đến không gian âm thanh cao cấp&lt;/span&gt;, cổng kết nối iphone ipod usb, tiện ích&lt;/p&gt;', ' Hyundai,Accent', ' Hyundai Accent', ' Hyundai Accent', '', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(324, 2, 'Hyundai Grand I10 Hatchback', '&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;br&gt;&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal;&quot;&gt;&lt;p style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 25px; text-size-adjust: none; margin-bottom: 15px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;font-size: inherit; font-family: inherit; line-height: 20px; text-size-adjust: none;&quot;&gt;&lt;span style=&quot;font-size: inherit; font-family: inherit; line-height: 20px; text-size-adjust: none; color: rgb(255, 0, 0);&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; text-size-adjust: none; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; color: rgb(0, 0, 0);&quot;&gt;&lt;ul class=&quot;wpb_tabs_nav ui-tabs-nav vc_clearfix ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all&quot; role=&quot;tablist&quot; style=&quot;margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 1px solid rgb(221, 221, 221); outline: 0px; line-height: 1.3; list-style: none; min-height: 0px; background: rgb(233, 233, 233); color: rgb(51, 51, 51); font-weight: bold; border-radius: 3px; font-family: Roboto;&quot;&gt;&lt;li class=&quot;ui-state-default ui-corner-top ui-tabs-active ui-state-active&quot; role=&quot;tab&quot; tabindex=&quot;0&quot; aria-controls=&quot;tab-90676444-d4f2-8&quot; aria-labelledby=&quot;ui-id-1&quot; aria-selected=&quot;true&quot; aria-expanded=&quot;true&quot; style=&quot;margin-bottom: 8px; border: 1px solid rgb(0, 62, 255); background: rgb(0, 127, 255); font-weight: normal; color: rgb(255, 255, 255); border-top-left-radius: 3px; border-top-right-radius: 3px;&quot;&gt;&lt;a href=&quot;http://hyundailevanluongvn.com/listings/grand-i10-2017/#tab-90676444-d4f2-8&quot; class=&quot;ui-tabs-anchor&quot; role=&quot;presentation&quot; tabindex=&quot;-1&quot; id=&quot;ui-id-1&quot; style=&quot;color: rgb(255, 255, 255); transition: all 0.25s ease;&quot;&gt;Giới thiệu&lt;/a&gt;&lt;/li&gt;&lt;li class=&quot;ui-state-default ui-corner-top&quot; role=&quot;tab&quot; tabindex=&quot;-1&quot; aria-controls=&quot;tab-745aa3c6-a316-2&quot; aria-labelledby=&quot;ui-id-2&quot; aria-selected=&quot;false&quot; aria-expanded=&quot;false&quot; style=&quot;margin-bottom: 8px; border: 1px solid rgb(197, 197, 197); background: rgb(246, 246, 246); font-weight: normal; color: rgb(69, 69, 69); border-top-left-radius: 3px; border-top-right-radius: 3px;&quot;&gt;&lt;a href=&quot;http://hyundailevanluongvn.com/listings/grand-i10-2017/#tab-745aa3c6-a316-2&quot; class=&quot;ui-tabs-anchor&quot; role=&quot;presentation&quot; tabindex=&quot;-1&quot; id=&quot;ui-id-2&quot; style=&quot;color: rgb(69, 69, 69); transition: all 0.25s ease;&quot;&gt;Thông số kỹ thuật&lt;/a&gt;&lt;/li&gt;&lt;li class=&quot;ui-state-default ui-corner-top&quot; role=&quot;tab&quot; tabindex=&quot;-1&quot; aria-controls=&quot;tab-1446536320841-4-6&quot; aria-labelledby=&quot;ui-id-3&quot; aria-selected=&quot;false&quot; aria-expanded=&quot;false&quot; style=&quot;margin-bottom: 8px; border: 1px solid rgb(197, 197, 197); background: rgb(246, 246, 246); font-weight: normal; color: rgb(69, 69, 69); border-top-left-radius: 3px; border-top-right-radius: 3px;&quot;&gt;&lt;a href=&quot;http://hyundailevanluongvn.com/listings/grand-i10-2017/#tab-1446536320841-4-6&quot; class=&quot;ui-tabs-anchor&quot; role=&quot;presentation&quot; tabindex=&quot;-1&quot; id=&quot;ui-id-3&quot; style=&quot;color: rgb(69, 69, 69); transition: all 0.25s ease;&quot;&gt;LIÊN HỆ NGAY&lt;/a&gt;&amp;nbsp;0976.059.735&lt;/li&gt;&lt;/ul&gt;&lt;div id=&quot;tab-90676444-d4f2-8&quot; class=&quot;wpb_tab ui-tabs-panel wpb_ui-tabs-hide vc_clearfix ui-widget-content ui-corner-bottom&quot; aria-labelledby=&quot;ui-id-1&quot; role=&quot;tabpanel&quot; aria-hidden=&quot;false&quot; style=&quot;border: 1px solid rgb(221, 221, 221); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(51, 51, 51); border-bottom-left-radius: 3px; border-bottom-right-radius: 3px; font-family: Roboto;&quot;&gt;&lt;div class=&quot;wpb_text_column wpb_content_element &quot; style=&quot;margin-bottom: 21.74px;&quot;&gt;&lt;div class=&quot;wpb_wrapper&quot; style=&quot;margin-bottom: 0px;&quot;&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Grand i10 2017 – một chiếc xe nhỏ gọn, linh hoạt, xe nhỏ đầu tiên được trang bị nút bấm khởi động&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://4.bp.blogspot.com/-LH2Bl2m821A/VGK_9Ma4lzI/AAAAAAAAJKE/PA96IM61vmE/s1600/Hyundai-i10-2015.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://4.bp.blogspot.com/-LH2Bl2m821A/VGK_9Ma4lzI/AAAAAAAAJKE/PA96IM61vmE/s640/Hyundai-i10-2015.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;382&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 14px;&quot;&gt;Với thiết kế thông minh và thân thiện, Grand i10 2017 có không gian rộng rãi và cao cấp không chỉ khoang hành lái mà còn cả màu sắc và chất lượng.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 14px;&quot;&gt;Động cơ Kappa 1.25L và 1.0L vận hành êm ái và mượt mà. Được thiết kế với các chất liệu nhẹ nhằm giảm trọng lượng và giảm thiểu tiêu thụ nhiên liệu.&lt;/p&gt;&lt;div style=&quot;margin-bottom: 0px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://2.bp.blogspot.com/-4I1bAWRxHQc/VGJGyC0bRyI/AAAAAAAAJG4/5qOH9J1yx1g/s1600/exterior_4door_front_01.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://2.bp.blogspot.com/-4I1bAWRxHQc/VGJGyC0bRyI/AAAAAAAAJG4/5qOH9J1yx1g/s640/exterior_4door_front_01.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;div style=&quot;margin-bottom: 0px;&quot;&gt;Đèn pha phía trước được thiết kế dạng vòng, trong suốt tạo và đường viền “kẻ mắt” thu hút tạo nên phong cách sang trọng mà vẫn đảm bảo độ an toàn tối ưu. Ngoài ra, thiết kế còn tích hợp đèn sương mù giúp tăng khả năng chiếu&amp;nbsp;sáng ban đêm và cả trong điều kiện thời tiết xấu.&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-au5g391MgKY/VGJG05dEgBI/AAAAAAAAJHM/ZTuwUcoulZ4/s1600/exterior_4door_front_03.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-au5g391MgKY/VGJG05dEgBI/AAAAAAAAJHM/ZTuwUcoulZ4/s640/exterior_4door_front_03.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Bề mặt lưới tản nhiệt mạ crom với diện tích rộng rãi giúp tăng cường lượng khí làm mát và giữ cho động cơ luôn chắc khỏe, đạt hiệu suất tối đa.&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-SY2a2LpPa8A/VGJG2BRw2gI/AAAAAAAAJHY/LhadPHjJEx0/s1600/exterior_4door_front_05.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-SY2a2LpPa8A/VGJG2BRw2gI/AAAAAAAAJHY/LhadPHjJEx0/s640/exterior_4door_front_05.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Tay nắm cửa mạ crôm mang đến vẻ sang trọng hơn phù hợp với toàn bộ ngoại thất của Grand i10. Sự kết hợp hài hòa giữa thiết kế tuyệt đẹp và công nghệ tương lai.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hyundai Grand i10 2017 khiến mọi ánh mắt phải ngoái nhìn ở bất kì nơi nào nó xuất hiện. Không có sự an toàn nào là tuyệt đối, chính vì vậy Grand i10 được bố trí cụm đèn hậu ở vị trí cao nhất có thể, nhằm tăng độ nhận diện từ xa.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Cánh gió phía sau được thiết kế gọn gàng mang đến tính khí động học và thẩm mĩ hơn cho Grand i10.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-5w-JRUOVGt0/VGJGz1E3ULI/AAAAAAAAJHA/jTVjlAsUCGw/s1600/exterior_4door_front_02.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-5w-JRUOVGt0/VGJGz1E3ULI/AAAAAAAAJHA/jTVjlAsUCGw/s640/exterior_4door_front_02.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Được tích hợp một cách liền mạch với cản trước, đèn sương mù giúp tăng tầm nhìn và giảm bớt những khó khăn khi lưu thông trên các con đường nhiều sương phủ. Được thiết kế độc đáo hình kim cương màu đen và crôm, mâm đúc mang đến cảm giác thể thao và năng động.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Không gì quan trọng bằng tầm nhìn của người lái xe, đặc biệt khi đang lùi trên đoạn đường tối vào lúc trời mưa – đó là lý do vì sao gạt mưa sau được trang bị trên Grand i10.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Nội thất&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Nội thất xe Grand&amp;nbsp;i10 tiện nghi&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-kxY6pf4Om60/VGJHDCnaLNI/AAAAAAAAJJA/Ii315xpK7ns/s1600/noi-that-grand-i10-2015.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-kxY6pf4Om60/VGJHDCnaLNI/AAAAAAAAJJA/Ii315xpK7ns/s640/noi-that-grand-i10-2015.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;332&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Đằng sau vẻ ngoài nhỏ gọn của xe là không gian rộng rãi , lớn nhất trong các xe cùng phân khúc. Với Grand i10&amp;nbsp;bạn có thể hoàn toàn yên tâm đưa những người thân yêu đi dã ngoại mà không lo thiếu những vật dụng cần thiết. Bằng cách nào? Đó chính là khoang hành lý được nâng thể tích lên 31 lít. Không những vậy, không gian rộng rãi vượt trội của xe còn đem lại cho hành khách sự thoải mái tiện nghi trong suốt những hành trình dài&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://2.bp.blogspot.com/-7y9jKXtle8M/VGJG_x4SJqI/AAAAAAAAJIs/wUkJwlivb6I/s1600/interior_driving-space_08.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://2.bp.blogspot.com/-7y9jKXtle8M/VGJG_x4SJqI/AAAAAAAAJIs/wUkJwlivb6I/s640/interior_driving-space_08.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hệ thống âm thanh trên xe Grand i10 cũng được trang bị 4 loa, hệ thống âm thanh tích hợp CD/MP3 cùng kết nối iPod® và USB (dành cho phiên bản 1.25 AT).&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-D78leRTQg18/VGJJ-MkUVvI/AAAAAAAAJJs/Cs4zo8UDobc/s1600/i10_Main%2BSeat.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-D78leRTQg18/VGJJ-MkUVvI/AAAAAAAAJJs/Cs4zo8UDobc/s640/i10_Main%2BSeat.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;312&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hàng ghế trước thiết kế tiện lợi và hàng ghế sau rộng rãi, êm ái mang đến sự thoải mái, thư giãn cho khách hàng.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&amp;nbsp;&lt;a href=&quot;https://3.bp.blogspot.com/-dVK0hyWo9n0/VGJHBJeo2fI/AAAAAAAAJI4/Y8g9aQbVLx0/s1600/interior_driving-space_12.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-dVK0hyWo9n0/VGJHBJeo2fI/AAAAAAAAJI4/Y8g9aQbVLx0/s640/interior_driving-space_12.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hàng ghế sau gập, mở rộng tối đa khoang hành lý cho những chuyến dã ngoại cuối tuần.&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://2.bp.blogspot.com/-geB5y9ugPwg/VGJGwx1BT5I/AAAAAAAAJGo/ZC4rB4WY_IU/s1600/Khoang%2Bhanh%2Bly-i10-2015.png&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://2.bp.blogspot.com/-geB5y9ugPwg/VGJGwx1BT5I/AAAAAAAAJGo/ZC4rB4WY_IU/s640/Khoang%2Bhanh%2Bly-i10-2015.png&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;346&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Khoang hành lý rộng rãi hơn, thuận tiện cho việc chở đồ.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Tiện nghi&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Hyundai i10 2017 được trang bị thêm nhiều tiện ích&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Tiện nghi của người sử dụng luôn được Hyundai đặt lên hàng đầu. Đó là lý do vì sao vô lăng của Grand i10 có thể được điều chỉnh tùy theo nhu cầu của người lái một cách dễ dàng.&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-m7BGAkWsmp8/VGJG8lDPiGI/AAAAAAAAJIU/seyMLsH4Yck/s1600/interior_driving-space_04.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-m7BGAkWsmp8/VGJG8lDPiGI/AAAAAAAAJIU/seyMLsH4Yck/s640/interior_driving-space_04.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-tEj_EhlC73o/VGJG9NRQqeI/AAAAAAAAJIY/XiCAeNf5_PA/s1600/interior_driving-space_05.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-tEj_EhlC73o/VGJG9NRQqeI/AAAAAAAAJIY/XiCAeNf5_PA/s640/interior_driving-space_05.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Công nghệ hiện đại và thuận tiện cho phép khởi động xe chỉ với 1 nút bấm. Nhấn nút khởi động cuộc sống mới&amp;nbsp;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;i10 2017&amp;nbsp;&lt;/span&gt;mang đến đẳng cấp mới về thiết kế và công nghệ tiên tiến. Trải nghiệm Grand i10, bạn sẽ cảm nhận hơn những gì mình mong đợi Hyundai Grand i10 đáp ứng mọi mong đợi của khách hàng. Từ màu sắc đến chất lượng, thiết kế khoang hành khách, tất cả đều mang đến sự rộng rãi và cao cấp.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Gương chống chói được trang bị với các chế độ ngày/đêm làm giảm tia sáng gây chói mắt khi lái xe.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Các công tắc được thiết kế tiện lợi giúp dễ dàng điều khiển cửa sổ xe.&lt;/p&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 14px;&quot;&gt;&lt;img src=&quot;https://4.bp.blogspot.com/-9YeWD3xiwgQ/VGJG5PWSnmI/AAAAAAAAJH4/tLiTyulDuC0/s640/hyundai-grand-i10-17-1024x768.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;480&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Bạn có thể dễ dàng sử dụng điện thoại di động qua Bluetooth mà không cần phải rời tay khỏi vô lăng. Điều khiển hệ thống âm thanh từ các nút bấm trên chấu trái.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Chế độ gọi rảnh tay qua Bluetooth Hữu ích khi để các vật dụng nhỏ, đồng thời là tấm ngăn với khoang hành lý. Cho phép mở/đóng cửa từ xa, chống kẻ gian xâm nhập vào bên trong xe.&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-jo5_JUWaa-Y/VGJG1EHxihI/AAAAAAAAJHU/TvsgjC-Gezs/s1600/exterior_4door_front_04.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-jo5_JUWaa-Y/VGJG1EHxihI/AAAAAAAAJHU/TvsgjC-Gezs/s640/exterior_4door_front_04.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Gương chiếu hậu gập điện Gương chiếu hậu điều khiển điện mang đến cho khách hàng sự an toàn và tiện lợi. Lý tưởng với những vật dụng nhỏ và tiện lợi như iPod hoặc điện thoại di động.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;An toàn&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Hệ thống an toàn trên&amp;nbsp;Grand i10&amp;nbsp;luôn được đặt lên hàng đầu&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Về an toàn, Xe Grand i10&amp;nbsp;được trang bị khá đầy đủ, gồm cả những trang bị thường thấy ở phân khúc cao hơn như hệ thống thắng đĩa có ABS, cảm biến de, 2 túi khí phía trước…&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;a href=&quot;https://3.bp.blogspot.com/-MgHGKHUh7TQ/VGJHDxvTQSI/AAAAAAAAJJI/9bdKMd21rcg/s1600/performance_05.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://3.bp.blogspot.com/-MgHGKHUh7TQ/VGJHDxvTQSI/AAAAAAAAJJI/9bdKMd21rcg/s640/performance_05.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Kết cấu của Grand i10 được đặc biệt chú ý với thép chống ăn mòn, ứng dụng cấu trúc vòng làm tăng độ cứng và chắc chắn cho thân xe. Hyundai đã không chỉ tạo ra sự kỳ diệu với động cơ và hộp số. với hệ thống giảm xóc&amp;nbsp;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Hyundai Grand i10 2015&lt;/span&gt;&amp;nbsp;có lò xo giảm xóc tốt.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&amp;nbsp;&lt;a href=&quot;https://4.bp.blogspot.com/-fqJeBaZlnuw/VGJGrVUnC8I/AAAAAAAAJGY/9J77Wcjc9VQ/s1600/an-toan-hyundai-grand-i10-2115.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://4.bp.blogspot.com/-fqJeBaZlnuw/VGJGrVUnC8I/AAAAAAAAJGY/9J77Wcjc9VQ/s640/an-toan-hyundai-grand-i10-2115.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;480&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Điều đó thể hiện qua những khúc cua và có độ dốc cao chiếc xe luôn cung cấp cảm giác kiểm soát tốt. khi điều khiển chiếc xe Hyundai Grand i10 với tốc độ tối đa chiếc xe cho cảm giác chắc chắn tuyệt vời ngay cả khi không có đủ người ngồi trên xe&lt;/p&gt;&lt;/div&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://4.bp.blogspot.com/-wbKgTX6EHG0/VGJHFhFJ01I/AAAAAAAAJJY/eNkorDZk9-Q/s1600/performance_07.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://4.bp.blogspot.com/-wbKgTX6EHG0/VGJHFhFJ01I/AAAAAAAAJJY/eNkorDZk9-Q/s640/performance_07.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hệ thống chống bó cứng phanh (ABS) Hệ thống phanh ABS giúp lái xe có thể kiểm soát được chiếc xe khi phanh trên đường trơn trượt, đảm bảo an toàn cho xe.&lt;/p&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 14px;&quot;&gt;&lt;img src=&quot;https://2.bp.blogspot.com/-ovz0k_ToHkg/VGJHFUKKpcI/AAAAAAAAJJU/wOXiEbQL-uI/s640/performance_06.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;278&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Giúp việc đỗ xe trở nên dễ dàng hơn. Cảm biến phát hiện những vật cản và phát ra âm thanh để tránh va chạm không cần thiết.&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Động cơ&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Hyundai Grand i10 được trang bị động cơ mới&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Động cơ vận hành êm ái và mượt mà được thiết kế với các vật liệu nhẹ nhằm giảm trọng lượng xe và giảm thiểu tiêu thụ nhiên liệu.&amp;nbsp;&lt;span style=&quot;font-weight: 700; margin-bottom: 0px;&quot;&gt;Hyundai Grand i10 2017&amp;nbsp;&lt;/span&gt;có 2 lựa chọn động cơ: 1.0L công suất 66 mã lực tại 5.500 vòng/phút, mô-men xoắn 91,2 Nm và 1.25L công suất 87 mã lực tại 6.000 vòng/phút, mô-men xoắn 119,7 Nm tại 4.000 vòng/phút.&lt;/p&gt;&lt;/div&gt;&lt;table class=&quot;tr-caption-container mceItemTable&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; align=&quot;center&quot; style=&quot;width: 2683px; margin-bottom: 20px;&quot;&gt;&lt;tbody style=&quot;margin-bottom: 0px;&quot;&gt;&lt;tr&gt;&lt;td style=&quot;padding-top: 9px; padding-bottom: 8px; font-size: 12px; color: rgb(136, 136, 136); border-bottom: 1px solid rgb(213, 217, 224); margin-bottom: 0px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-u1k_9d-DQjs/VGJGxH-s8LI/AAAAAAAAJGs/WBgAAA5AfpA/s1600/dong-co-hyundai-grand-i10-2015.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-u1k_9d-DQjs/VGJGxH-s8LI/AAAAAAAAJGs/WBgAAA5AfpA/s640/dong-co-hyundai-grand-i10-2015.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;480&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;margin-bottom: 0px;&quot;&gt;&lt;td class=&quot;tr-caption&quot; style=&quot;padding-top: 9px; padding-bottom: 8px; font-size: 12px; color: rgb(136, 136, 136); border-bottom: 1px solid rgb(213, 217, 224); margin-bottom: 0px;&quot;&gt;Động cơ Xe Hyundai Grand i10 2015&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;p class=&quot;separator&quot; style=&quot;margin-bottom: 14px;&quot;&gt;&lt;a href=&quot;https://1.bp.blogspot.com/-5stlXxs-esU/VGJG4Qr9cdI/AAAAAAAAJHw/vZAC_NVzW3Y/s1600/hop-so-hyundai-grand-i10-2015.jpg&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); transition: all 0.25s ease; margin-bottom: 0px;&quot;&gt;&lt;img src=&quot;https://1.bp.blogspot.com/-5stlXxs-esU/VGJG4Qr9cdI/AAAAAAAAJHw/vZAC_NVzW3Y/s640/hop-so-hyundai-grand-i10-2015.jpg&quot; alt=&quot;&quot; width=&quot;640&quot; height=&quot;480&quot; border=&quot;0&quot; style=&quot;max-width: 100%; height: auto; margin-bottom: 0px;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;div&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hộp số đi kèm là 5 số sàn 5 cấp mạnh mẽ và êm ái, cho công suất tối ưu. chỉ phiên bản động cơ 1.0L hoặc tự động 4 số cho 2 lựa chọn động cơ 1.0L và 1.2L động 4 cấp.&lt;/p&gt;&lt;/div&gt;&lt;div style=&quot;margin-bottom: 0px;&quot;&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;Hiện tại giá xe Hyundai Grand i10 2017 có các tùy chọn màu sắc: Trắng, bạc, cam, đỏ.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; font-size: 19.5px; line-height: 20px; background-color: rgb(244, 244, 244);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal;&quot;&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; box-sizing: border-box; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; box-sizing: border-box; margin-bottom: 5px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-size: 12px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-size: large;&quot;&gt;Nếu bạn vân chưa yên tâm hay &amp;nbsp;cảm thấy băn khoăn về sản phẩm này có thể tham khảo thêm từ bài viêt &quot;&amp;nbsp;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box;&quot;&gt;&lt;a title=&quot;tư vấn mua xe grand i10&quot; href=&quot;http://hyundaithainguyen3s.com/tu-van-mua-xe-grand-i10.html&quot; target=&quot;_blank&quot; data-mce-href=&quot;http://hyundaithainguyen3s.com/tu-van-mua-xe-grand-i10.html&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(99, 56, 25); text-decoration: none; cursor: pointer; box-sizing: border-box;&quot;&gt;Tư vấn mua xe&lt;/a&gt;&amp;nbsp;i10&amp;nbsp;&lt;/strong&gt;&quot; hoặc gọi điện trực tiếp tới phòng bán hàng của Hyundai Phạm Văn Đồng - Phụ Trách bán hàng:&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box;&quot;&gt;Mr Minh: 0976.059.735&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-size: 12px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-size: large;&quot;&gt;để được hỗ trợ tư vấn nhanh nhất và báo giá cụ thể nhất.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px 0px 10px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-weight: normal; line-height: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; box-sizing: border-box; font-size: large;&quot;&gt;Địa chỉ 138 phạm Văn Đồng Xuân Đỉnh Bắc Từ Liêm Hà Nội&lt;/span&gt;&lt;/p&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;br&gt;&lt;/h2&gt;', 'Xe,Hyundai, Grand, I10, Hatchback', 'Xe Hyundai Grand I10 Hatchback', 'Xe,Hyundai, Grand, I10, Hatchback,Bảng Giá Xe Hyundai Grand i10 2016,Hyundai Grand I10 Hatchback\r\n\r\n', '', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(321, 2, 'Hyundai Elantra', '&lt;h2 style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;color: blue;&quot;&gt;Hyundai&lt;/a&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot;&gt; &lt;/a&gt;Phạm Văn Đồng&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&amp;nbsp;trân trọng gửi đến Quý khách hàng Bảng giá của&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&amp;nbsp;Hyundai Elantra 2017&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;- Tăng tốc tới tương lai&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;span style=&quot;font-weight: bold; color: rgb(66, 66, 66);&quot;&gt;Hyundai &amp;nbsp; Elantra &amp;nbsp;với giá bán lẻ (đã bao gồm VAT) tại thị trường toàn quốc &lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87);&quot;&gt;:&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;– &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(0, 0, 255); font-weight: bold;&quot;&gt; Elantra 2017 1.6 MT&lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(0, 0, 255); background-color: rgb(247, 247, 247); font-weight: bold;&quot;&gt;:&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(255, 0, 0); background-color: rgb(247, 247, 247); font-weight: bold;&quot;&gt;548 triệu đồng&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(87, 87, 87);&quot;&gt;– &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold; color: rgb(0, 0, 255); background-color: rgb(247, 247, 247);&quot;&gt; Elantra 2017 1.6 AT:&lt;/span&gt; &lt;span style=&quot;font-weight: bold; color: rgb(255, 0, 0); background-color: rgb(247, 247, 247);&quot;&gt;615 triệu đồng&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;span style=&quot;line-height: 20px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;– &amp;nbsp; &amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt; &amp;nbsp; &lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(0, 0, 255); background-color: rgb(247, 247, 247); font-weight: bold;&quot;&gt;Elantra 2017 2.0 AT&lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(0, 0, 255); background-color: rgb(247, 247, 247); font-weight: bold;&quot;&gt;:&lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(255, 0, 0); background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;660&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;triệu đồng&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong style=&quot;line-height: 20px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;div id=&quot;tabContaier&quot; style=&quot;clear: both; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-weight: normal; line-height: normal;&quot;&gt;&lt;ul style=&quot;overflow: hidden; height: 35px; position: absolute; z-index: 3; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;li style=&quot;float: left; list-style: none; margin: 0px;&quot;&gt;&lt;a rel=&quot;nofollow&quot; class=&quot;active&quot; title=&quot;#tab0&quot; style=&quot;color: rgb(51, 51, 51); border-radius: 4px; border: 1px solid rgb(187, 187, 187); cursor: pointer; display: block; height: 37px; font-weight: 700; line-height: 35px; padding: 0px 10px; text-transform: uppercase;&quot;&gt;CHI TIẾT&lt;/a&gt;&lt;/li&gt;&lt;li style=&quot;float: left; list-style: none; margin: 0px;&quot;&gt;&lt;a rel=&quot;nofollow&quot; class=&quot;backgroundtab&quot; title=&quot;#tab1&quot; style=&quot;color: rgb(51, 51, 51); border-radius: 4px; border-width: 2px 0px 2px 2px; border-top-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: rgb(252, 252, 252); border-bottom-color: rgb(252, 252, 252); border-left-color: rgb(252, 252, 252); cursor: pointer; display: block; height: 35px; line-height: 35px; padding: 0px 10px; background-color: rgb(221, 221, 221);&quot;&gt;Thông số Kỹ thuật&lt;/a&gt;&lt;/li&gt;&lt;li style=&quot;float: left; list-style: none; margin: 0px;&quot;&gt;&lt;a rel=&quot;nofollow&quot; class=&quot;backgroundtab&quot; title=&quot;#tab2&quot; style=&quot;color: rgb(51, 51, 51); border-radius: 4px; border-width: 2px 0px 2px 2px; border-top-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: rgb(252, 252, 252); border-bottom-color: rgb(252, 252, 252); border-left-color: rgb(252, 252, 252); cursor: pointer; display: block; height: 35px; line-height: 35px; padding: 0px 10px; background-color: rgb(221, 221, 221);&quot;&gt;Video về xe&lt;/a&gt;&lt;/li&gt;&lt;li style=&quot;float: left; list-style: none; margin: 0px;&quot;&gt;&lt;a rel=&quot;nofollow&quot; class=&quot;backgroundtab&quot; title=&quot;#tab3&quot; style=&quot;color: rgb(51, 51, 51); border-radius: 4px; border-width: 2px 0px 2px 2px; border-top-style: solid; border-bottom-style: solid; border-left-style: solid; border-top-color: rgb(252, 252, 252); border-bottom-color: rgb(252, 252, 252); border-left-color: rgb(252, 252, 252); cursor: pointer; display: block; height: 35px; line-height: 35px; padding: 0px 10px; background-color: rgb(221, 221, 221);&quot;&gt;Phản hồi&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;div class=&quot;tabDetails&quot; style=&quot;padding: 45px 0px 0px; color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; font-weight: normal; line-height: normal;&quot;&gt;&lt;div id=&quot;tab0&quot; class=&quot;tabContents&quot;&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;strong data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_1.jpg&quot; alt=&quot;Elantra2016_1&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_1.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Elantra hoàn toàn mớ&lt;/strong&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;i đã được&amp;nbsp;&lt;/span&gt;&lt;strong data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Hyundai Thành Công&lt;/strong&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&amp;nbsp;chính thức ra mắt ngày 12/7/2017 . Hyundai Elantra phiên bản 2017 đến thị trường Việt Nam là chiếc xe sedan cỡ trung. Elantra 2016 có 3 phiên bản gồm 1.6 MT, 1.6 AT và 2.0 AT.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_2.jpg&quot; alt=&quot;Elantra2016_2&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_2.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Hyundai Elantra 2017&lt;/strong&gt;&amp;nbsp;là thế hệ thứ 6 của mẫu xe ăn khách&lt;strong&gt;&amp;nbsp;Hyundai Elantra&lt;/strong&gt;, chiếc&amp;nbsp;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;sở hữu nhiều thay đổi ấn tượng về thiết kế, đem đến một ngoại hình cá tính và bắt mắt hơn, tạo sự lôi cuốn ngay từ cái nhìn đầu tiên. Bạn có thể chiêm ngưỡng vẻ đẹp thực tế của chiếc xe tại Hyundai Thái Nguyên.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_3.jpg&quot; alt=&quot;Elantra2016_3&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_3.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Xe được sở hữu kích một thước lớn hơn thế hệ cũ với các thông số Dài x Rộng x Cao lần lượt là 4.570 x 1.800 x 1450 (mm), chiều dài cơ sở 2.700 (mm) cùng khoảng sáng gầm xe 150 (mm).đem đến một tổng thể rộng rãi và sang trọng phù hợp với mọi nhu cầu của khách hàng.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_3.jpg&quot; alt=&quot;Elantra2016_3&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_3.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;được thiết kế dựa trên cảm hứng thiết kế “Điêu khắc dòng chảy 2.0” với lưới tản nhiệt lục giác mạ Crom đặc trưng.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_5.jpg&quot; alt=&quot;Elantra2016_5&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_5.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Cặp đèn pha HID tích hợp dải đèn LED chạy ban ngày DRL cùng cụm đèn hậu LED 3D được hình ngũ giác sắc sảo, tạo nên vẻ năng động và thể thao cho xe.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_25.jpg&quot; alt=&quot;Elantra2016_25&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_25.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_6.jpg&quot; alt=&quot;Elantra2016_6&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_6.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;mang phong cách của 1 chiếc coupe 4 cửa thiết kế khí động học cao với hệ số cản gió 0,27Cd, thấp nhất trong phân khúc.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_37.jpg&quot; alt=&quot;Elantra2016_37&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_37.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Các chi tiết ngoại thất trên xe cũng được tối ưu để giảm sức cản của không khí: Hốc hút gió đặt dưới thấp cùng lazang hợp kim 17 inch tạo hình khí động học, phần mui xe được vuốt xuống thấp.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_19.jpg&quot; alt=&quot;Elantra2016_19&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_19.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Không gian nội thất của&amp;nbsp;&lt;strong&gt;Hyundai Elantra 2017&lt;/strong&gt;được làm mới với vật liệu da kết hợp cùng những chi tiết bằng kim loại.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_38.jpg&quot; alt=&quot;Elantra2016_38&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_38.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Nội thất của&lt;strong&gt;&amp;nbsp;Elantra&lt;/strong&gt;&amp;nbsp;tuân thủ theo triết lý thiết kế HMI (Human Machine Interface) của Hyundai với giao diện thân thiện, dễ sử dụng.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_58.jpg&quot; alt=&quot;Elantra2016_58&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_58.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: left;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Xe được trang bị ghế ngồi bọc da cùng chức năng sưởi ghế với các lỗ thoát khí nhỏ, đem đến cảm giác dễ chịu cho người lái.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Bảng taplo xe nổi bật với màn hình AVN 7 inch cảm ứng tích hợp camera lùi cùng bản đồ dẫn đường chính hãng dành riêng cho thị trường Việt Nam.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_49.jpg&quot; alt=&quot;Elantra2016_49&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_49.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Hệ thống giải trí của xe hỗ trợ Mp3/Aux/Usb/Bluetooth/Radio FM với 6 loa. Cửa sổ trời là trang bị tiêu chuẩn.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_45.jpg&quot; alt=&quot;Elantra2016_45&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_45.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: left;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;sở hữu những trang bị cao cấp khác như: Chìa khóa thông minh Smartkey cùng nút bấm khởi động Start/Stop engine.&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_46.jpg&quot; alt=&quot;Elantra2016_46&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_46.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;ghế lái chỉnh điện 10 hướng, vô lăng điều chỉnh 4 hướng, cốp điều khiển từ xa, điều khiển hành trình Cruise Control, cảm biến đèn và gạt mưa tự động, kính lái chống sương mù tự động...&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Xe được trang bị hệ thống điều hòa tự động 2 vùng độc lập tích hợp khử ion cùng cửa gió cho hàng ghế phía sau. Vô lăng xe tích hợp các nút điều khiển thông số cài đặt, chuyển nhạc, nhận cuộc gọi,&lt;/span&gt;&lt;/p&gt;&lt;p data-mce-style=&quot;text-align: center;&quot; style=&quot;text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_40.jpg&quot; alt=&quot;Elantra2016_40&quot; data-mce-src=&quot;files/assets/Elantra2016/Elantra2016_40.jpg&quot; data-mce-style=&quot;float: none;&quot; style=&quot;float: none;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Hyundai Elantra 2017&lt;/strong&gt;&amp;nbsp;được&amp;nbsp;&lt;strong&gt;Hyundai Thành Công&lt;/strong&gt;&amp;nbsp;phân phối với 2 phiên bản động cơ:&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Động cơ xăng Nu 2.0L cho công suất tối đa 156 mã lực tại 6.200 vòng/phút cùng Momen xoắn cực đại 196 Nm tại 4.000 vòng/phút.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Động cơ xăng Gamma II 1.6L có công suất tối đa 128 mã lực tại 6.300 vòng/phút cùng Momen xoắn cực đại 154,5 Nm tại 4.850 vòng/phút.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Xe có 2 lựa chọn hộp số: Hộp số tự động 6 cấp và hộp số sàn 6 cấp. Khả năng vận hành của Elantra 2016 được tuỳ chọn qua tính năng Drive Mode 3 chế độ lái Eco (tiết kiệm) – Normal (thông thường) – Sport (thể thao).&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;là chiếc xe đầu tiên trong phân khúc được trang bị cảm biến áp suất lốp. Hệ thống sẽ theo dõi liên tục và thông báo tình trạng áp suất trên 4 bánh xe, đồng thời sẽ có những cảnh báo cho người lái khi có sự thay đổi áp suất lốp có thể gây nguy hiểm cho xe khi vận hành.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Hyundai Elantra 2017&lt;/strong&gt;&amp;nbsp;được trang bị hệ thống khung vỏ hoàn toàn mới với hơn 51% thành phần thép cường lực AHSS (Advance High Strength Steel), giúp tăng cường sức chịu lực cũng như đảm bảo độ ổn định.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;Ngoài ra, Elantra 2016 còn được trang bị thanh chịu lực kép cho cửa sau, đảm bảo độ an toàn tối đa cho hành khách.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Hyundai Elantra 2017&lt;/strong&gt;&amp;nbsp;được trang bị các công nghệ và tính năng an toàn tốt nhất cho người sử dụng như: Hệ thống chống bó cứng phanh ABS, Hệ thống phân bố lực phanh điện tử EBD, Hệ thống hỗ trợ lực phanh khẩn cấp BA, Hệ thống cân bằng điện tử ESC, Hệ thống kiểm soát thân xe VSM, Hệ thống chống trộm Immobilizer, Hệ thống hỗ trợ khởi hành ngang dốc HAC, Hệ thống 8 cảm biến trước và sau, Hệ thống an toàn 6 túi khí...&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-mark=&quot;1&quot; data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;strong&gt;Elantra 2017&lt;/strong&gt;&amp;nbsp;có 6 lựa chọn màu sắc gồm Đen, Trắng, Bạc, Vàng cát, Xanh và Đỏ. Xe được bảo hành 3 năm hoặc 100.000 km, tuỳ điều kiện nào đến trước.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&amp;nbsp;Bạn nhấc máy gọi cho chúng tôi hoặc để lại số chúng tôi sẽ gọi lại cho bạn sớm nhất để có thể tư vấn chi tiết hơn về sản phẩm này.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span data-mce-style=&quot;font-size: medium;&quot; style=&quot;font-size: medium;&quot;&gt;&lt;span data-mce-style=&quot;font-size: medium;&quot;&gt;Dưới đây là một số hình ảnh tham khảo&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_23.jpg&quot; alt=&quot;Elantra2016_23&quot; style=&quot;float: none; display: block; margin-left: auto; margin-right: auto;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_34.jpg&quot; alt=&quot;Elantra2016_34&quot; style=&quot;float: none; display: block; margin-left: auto; margin-right: auto;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_23.jpg&quot; alt=&quot;Elantra2016_23&quot; style=&quot;float: none;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_22.jpg&quot; alt=&quot;Elantra2016_22&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_21.jpg&quot; alt=&quot;Elantra2016_21&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_20.jpg&quot; alt=&quot;Elantra2016_20&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_17.jpg&quot; alt=&quot;Elantra2016_17&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_16.jpg&quot; alt=&quot;Elantra2016_16&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_12.jpg&quot; alt=&quot;Elantra2016_12&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_56.jpg&quot; alt=&quot;Elantra2016_56&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_52.jpg&quot; alt=&quot;Elantra2016_52&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_51.jpg&quot; alt=&quot;Elantra2016_51&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_39.jpg&quot; alt=&quot;Elantra2016_39&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_44.jpg&quot; alt=&quot;Elantra2016_44&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_40.jpg&quot; alt=&quot;Elantra2016_40&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_46.jpg&quot; alt=&quot;Elantra2016_46&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_49.jpg&quot; alt=&quot;Elantra2016_49&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Elantra2016/Elantra2016_38.jpg&quot; alt=&quot;Elantra2016_38&quot; style=&quot;float: none;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;br data-mce-bogus=&quot;1&quot;&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;p style=&quot;margin-bottom: 10px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: normal;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 12px; line-height: normal;&quot;&gt;&lt;/p&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;&lt;em&gt;&lt;strong&gt;Để được GIÁ TỐT NHẤT và NHIỀU KHUYẾN MẠI hơn nữa xin vui lòng gọi điện&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;strong&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; line-height: normal;&quot;&gt;&lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;&lt;em&gt;&lt;strong&gt;Phụ Trách Bán Hàng(Mr Minh&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;div class=&quot;row properties-content&quot; style=&quot;box-sizing: border-box; margin-right: -15px; margin-left: -15px; font-family: Arial, AppleGothic, sans-serif, Helvetica; color: rgb(87, 87, 87); font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); margin-top: 50px;&quot;&gt;&lt;div class=&quot;col-lg-12&quot; style=&quot;box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 970px;&quot;&gt;&lt;div id=&quot;slide_content04&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;div style=&quot;box-sizing: border-box; padding-top: 20px;&quot;&gt;&lt;div style=&quot;box-sizing: border-box; text-align: justify;&quot;&gt;&lt;div style=&quot;box-sizing: border-box; text-align: justify;&quot;&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin: 0px;&quot;&gt;&lt;div class=&quot; col-md-6 col-xs-12&quot; style=&quot;box-sizing: border-box; position: relative; min-height: 1px; padding: 28.1875px; float: left; width: 470px; margin-top: 50px;&quot;&gt;&lt;div style=&quot;box-sizing: border-box; padding-right: 32.8906px; position: absolute; left: 40px; top: 36px; width: 413.594px; font-size: 1rem; line-height: 20px; color: rgb(136, 136, 136); z-index: 14;&quot;&gt;&lt;div style=&quot;box-sizing: border-box; padding: 19.0313px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h2&gt;', 'Xe Hyundai Elantra,Elantra,Hyundai ,Xe Hyundai', 'Xe Hyundai Elantra', 'Hyundai   Elantra  với giá bán lẻ (đã bao gồm VAT) tại thị trường toàn quốc :\r\n\r\n–       Elantra 2016 1.6 MT: 588iệu đồng\r\n\r\n–       Elantra 2016 1.6 AT: 660iệu đồng\r\n\r\n–       Elantra 2016 2.0 AT: 725 triệu đồng', '', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(323, 2, 'Hyundai Grand i10 Sedan', '&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: blue; cursor: pointer;&quot;&gt;Hyundai&lt;/a&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(58, 94, 225); cursor: pointer;&quot;&gt;&amp;nbsp;&lt;/a&gt;Lê Văn Lương&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&amp;nbsp;trân trọng gửi đến Quý khách hàng Bảng giá của&lt;/span&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&amp;nbsp;Hyundai&amp;nbsp;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0); margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; padding: 0px 0px 4px; border: 0px; outline: 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;Grand I10 Sedan&lt;/strong&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&amp;nbsp;Tăng tốc tới tương lai&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;br&gt;&lt;/h2&gt;&lt;h3 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px 0px 4px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; color: rgb(0, 0, 0);&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;Giới thiệu sơ lược về dòng xe Hyundai Grand I10 Sedan 2016&lt;/strong&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Hyundai Grand i10 Base&amp;nbsp;(Xcent)&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt; &lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;giá&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239); color: rgb(255, 0, 0);&quot;&gt;389.500.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Hyundai Grand i10 Sedan gia đình 1.2 MT&amp;nbsp;(Số sàn)&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0); background-color: rgb(239, 239, 239);&quot;&gt;giá&amp;nbsp;437.500.000 vnd&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;Hyundai Grand i10 Sedan gia đình 1.2 AT&amp;nbsp;(Số tự động)&lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt; &lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;giá&amp;nbsp;477.000.000 vnd&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.8; color: inherit; margin: 0px; font-size: 15px; padding: 0px;&quot;&gt;NGOẠI THẤT&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div id=&quot;slide_content01&quot; style=&quot;box-sizing: border-box; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div class=&quot;content_header&quot; style=&quot;box-sizing: border-box;&quot;&gt;&lt;div class=&quot;titlecate&quot; style=&quot;box-sizing: border-box; font-family: Arial, sans-serif; background: url(&amp;quot;/images/borderbottom.png&amp;quot;) left bottom no-repeat; padding: 10px 0px; text-transform: uppercase; font-size: 15px; color: rgb(115, 115, 115);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;box-sizing: border-box; padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;box-sizing: border-box; padding-right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto; width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;box-sizing: border-box; border-spacing: inherit; border-collapse: inherit; background-color: transparent;&quot;&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.8; color: inherit; margin: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;Hiện đại và tiên tiến&lt;/strong&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;box-sizing: border-box; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;box-sizing: border-box; padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;box-sizing: border-box; padding-right: 15px; padding-left: 15px; margin-right: auto; margin-left: auto; width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;box-sizing: border-box; border-spacing: inherit; border-collapse: inherit; background-color: transparent;&quot;&gt;&lt;tbody style=&quot;box-sizing: border-box;&quot;&gt;&lt;tr style=&quot;box-sizing: border-box;&quot;&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;strong style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;&lt;a title=&quot;Grand i10 Sedan&quot; href=&quot;http://hyundaigiaiphong.com.vn/vi/san-pham/grand-i10-sedan&quot; style=&quot;box-sizing: border-box; background-color: transparent; color: blue; text-decoration: none;&quot;&gt;Hyundai Grand i10 sedan&lt;/a&gt;&lt;/strong&gt;&amp;nbsp;thu hút ánh mắt của bạn ngay từ cái nhìn đầu tiên với một sự&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;tinh tế&lt;/em&gt;&amp;nbsp;không kém phần&amp;nbsp;&lt;em style=&quot;box-sizing: border-box;&quot;&gt;quyến rũ&lt;/em&gt;, hấp dẫn tất cả các xung quanh.&lt;strong style=&quot;box-sizing: border-box; font-weight: 700;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/td&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr style=&quot;box-sizing: border-box;&quot;&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/ngoaithat1%20(1).png&quot; alt=&quot;&quot; width=&quot;1160&quot; height=&quot;592&quot; class=&quot;img-responsive&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto;&quot;&gt;&lt;br style=&quot;box-sizing: border-box;&quot;&gt;&lt;/td&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;td style=&quot;box-sizing: border-box; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h4 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.8; color: inherit; margin: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;img src=&quot;http://hyundai-ninhbinh.vn/tempfiles/uploads/products/gallery/Sedan/sedannt1.PNG&quot; alt=&quot;&quot; class=&quot;img-responsive&quot; style=&quot;box-sizing: border-box; border: 0px; vertical-align: middle; display: block; max-width: 100%; height: auto; margin: auto;&quot;&gt;&lt;/h4&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;http://hyundai-ninhbinh.vn/tempfiles/uploads/products/gallery/Sedan/sedannt2.PNG&quot; alt=&quot;&quot; class=&quot;img-responsive&quot; style=&quot;margin: auto;&quot;&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;img class=&quot;img-responsive&quot; src=&quot;http://hyundai-ninhbinh.vn/tempfiles/uploads/TinTuc/hyundai-i10-grand-sedan-1.png&quot; alt=&quot;&quot;&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;&quot;&gt;VẬN HÀNH&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div id=&quot;slide_content02&quot; style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div class=&quot;content_header&quot;&gt;&lt;div class=&quot;titlecate&quot; style=&quot;font-family: Arial, sans-serif; background: url(&amp;quot;/images/borderbottom.png&amp;quot;) left bottom no-repeat; padding: 10px 0px; text-transform: uppercase; font-size: 15px; color: rgb(115, 115, 115);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Mạnh mẽ mà vẫn hiệu quả trong tiêu hao nhiên liệu&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Với&amp;nbsp;&lt;em&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Grand i10 sedan&lt;/span&gt;&lt;/em&gt;, bạn sẽ cảm nhận được sự pha trộn thú vị của sức mạnh và hiệu quả, khả năng xử lí nhạy bén, sự tĩnh lặng trong khoang lái cùng với sự tối ưu về mặt khí động học. Tất cả đều nằm trong 1 chiếc xe.&lt;/p&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/vanhanh1.jpg&quot; alt=&quot;&quot; width=&quot;892&quot; height=&quot;384&quot; class=&quot;img-responsive&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;(Công suất tối đa : 83 PS, Lượng khí thải : 11.6 kg-m)&lt;/span&gt;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Động cơ xăng 1.2 Mpi với công nghệ Dual VTVT&amp;nbsp;&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Động cơ xăng Kappa có dung tích 1.2l, 16 Valve kết hợp cùng công nghệ Dual VTVT đem đến sự hiệu quả về tiêu thụ nhiên liệu cũng như sự bền bỉ trong vận hành. Dual VTVT hoạt động hiệu quả đem đến lượng&amp;nbsp; khí thải thấp hơn.&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/vanhanh2.jpg&quot; alt=&quot;&quot; width=&quot;1280&quot; height=&quot;680&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Đồng hồ hiển thị cấp số&lt;br&gt;&lt;/span&gt;Đồng hồ điện tử hiện thị cấp số hiện hành giúp bạn chủ động trong việc điều khiển xe hơn&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/vanhanh3.jpg&quot; alt=&quot;&quot; width=&quot;1280&quot; height=&quot;680&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;br&gt;Thiết kế khí động học&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Kiểu dáng xe được thiết kế với sức cản gió thấp ở mặt trước cùng đột vuốt thoát gió ra phía sau, khiến luồng không khí được lưu chuyển dễ dàng, giúp tăng hiệu quả sử dụng cũng như khả năng cân bằng ổn định cho xe&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;td&gt;&amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;width: 455px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/vanhanh4.jpg&quot; alt=&quot;&quot; width=&quot;306&quot; height=&quot;133&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Hộp số tự động 4 cấp&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;width: 455px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Hộp số tự động 4 cấp được trang bị trên Grand i10&amp;nbsp; sedan giúp chiếc xe đạt hiệu quả tối ưu trong vận hành&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;width: 455px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/vanhanh5.jpg&quot; alt=&quot;&quot; width=&quot;306&quot; height=&quot;133&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Hộp số tay 5 cấp&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-6&quot; style=&quot;width: 455px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Hộp số tay 5 cấp trang bị trên Grand i10 sedan&amp;nbsp; có trọng lượng nhẹ đem đến khả năng vào số&amp;nbsp; chính xác và vận hành mạnh mẽ của chiếc xe.&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;&quot;&gt;NỘI THẤT&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div id=&quot;slide_content03&quot; style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div class=&quot;content_header&quot;&gt;&lt;div class=&quot;titlecate&quot; style=&quot;font-family: Arial, sans-serif; background: url(&amp;quot;/images/borderbottom.png&amp;quot;) left bottom no-repeat; padding: 10px 0px; text-transform: uppercase; font-size: 15px; color: rgb(115, 115, 115);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Nội thất sang trọng, cao cấp&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;table border=&quot;0&quot; style=&quot;border-spacing: inherit; border-collapse: inherit;&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;p style=&quot;margin-bottom: 10px; text-align: justify;&quot;&gt;Nội thất của&amp;nbsp;&lt;em&gt;Grand i10 sedan&amp;nbsp;&lt;/em&gt;mang phong cách sang trọng nhưng đầy tính thực tế. Khoang lái sáng và rộng rãi với chất lượng hoàn thiện cao tạo cho bạn niềm cảm hứng phiêu lưu cùng chiếc xe.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat1.jpg&quot; alt=&quot;&quot; width=&quot;1280&quot; height=&quot;600&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;/td&gt;&lt;td&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat2.png&quot; alt=&quot;&quot; width=&quot;349&quot; height=&quot;199&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Bảng đồng hồ hiển thị LCD&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Bảng đồng hồ của Grand i10 sedan có khả năng thông báo đồng thời nhiều thông tin vận hành, được thiết kế mang tính thẩm mỹ cao với ánh sáng hiển thị màu xanh và trắng dịu dàng cho mắt.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat3.jpg&quot; alt=&quot;&quot; width=&quot;330&quot; height=&quot;170&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Hệ thống âm thanh&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Xe được trang bị hệ thống âm thanh giải trí hỗ trợ Radio/CD/Mp3 cùng kết nối Bluetooth với 1GB bộ nhớ trong đem lại trải nghiệm âm nhạc vô tận.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat4.jpg&quot; alt=&quot;&quot; width=&quot;330&quot; height=&quot;170&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Tay lái trợ lực điều chỉnh góc lái&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Grand i10 sedan được trang bị tay lái trợ lực, có thể điều chỉnh được góc lái nên nó phù hợp với tất cả mọi người với vóc dáng khác nhau.&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat5.jpg&quot; alt=&quot;&quot; width=&quot;306&quot; height=&quot;133&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Đèn trần&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Đèn trần được tự động kích hoạt khi mở cửa trong điều kiện trời tối, đem đến ánh sáng thích hợp giúp bạn có thể nhìn rõ mọi thứ trên xe.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat6.jpg&quot; alt=&quot;&quot; width=&quot;306&quot; height=&quot;133&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Hộc để đồ trung tâm&lt;/span&gt;&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Hộc để đồ trung tâm với kích thước vừa vặn cùng nắp đậy là nơi lưu trữ lí tưởng cho ví, điện thoại hoặc các thiết bị cầm tay.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;img src=&quot;http://hyundaigiaiphong.com.vn/tempfiles/uploads/Themxe-Thanh-1207/sedan/noithat7.jpg&quot; alt=&quot;&quot; width=&quot;306&quot; height=&quot;133&quot; class=&quot;img-responsive&quot;&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h3 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 14px; padding: 0px;&quot;&gt;Túi tài liệu sau ghế&lt;/h3&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;div class=&quot;col-sm-12 no-padding&quot; style=&quot;width: 940px;&quot;&gt;&lt;div class=&quot;col-sm-4&quot; style=&quot;width: 303.328px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;Túi tài liệu được thiết kế liền mạch tại mặt lưng ghế hàng ghế trước, giúp bạn có thể để những cuốn sách và tạp chí yêu thích.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;line-height: 1.8; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 15px; padding: 0px;&quot;&gt;AN TOÀN&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;&lt;ul style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; font-size: 14px; font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px;&quot;&gt;&lt;li style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-left: 30px; margin-bottom: 5px; line-height: 20px; list-style: inherit; padding: 3px 0px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(239, 239, 239);&quot;&gt;&lt;div id=&quot;slide_content04&quot; style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-weight: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;div class=&quot;content_header&quot;&gt;&lt;div class=&quot;titlecate&quot; style=&quot;font-family: Arial, sans-serif; background: url(&amp;quot;/images/borderbottom.png&amp;quot;) left bottom no-repeat; padding: 10px 0px; text-transform: uppercase; font-size: 15px; color: rgb(115, 115, 115);&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;div class=&quot;container&quot; style=&quot;width: 970px;&quot;&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-size: large;&quot;&gt;&lt;span style=&quot;font-weight: 700;&quot;&gt;Công nghệ an toàn chủ động&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;span style=&quot;font-size: medium;&quot;&gt;Bạn hoàn toàn có thể đặt niềm tin với khả năng đảm bảo an toàn của Grand i10 sedan. Hệ thống túi khí sẽ bảo vệ người lái và hành khách khỏi những chấn thương do va chạm.&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 10px;&quot;&gt;&lt;img src=&quot;http://hyundai-ninhbinh.vn/tempfiles/uploads/TinTuc/hyundai-i10-g', 'Hyundai Grand i10 Base (Xcent),Hyundai Grand i10 Sedan gia đình, Grand i10 Base', 'Hyundai Grand i10 Base (Xcent)', 'Giới thiệu sơ lược về dòng xe Hyundai Grand I10 Sedan 2016\r\n\r\nHyundai Grand i10 Base (Xcent) giá 389.500.000 vnd\r\nHyundai Grand i10 Sedan gia đình 1.2 MT (Số sàn) giá 437.500.000 vnd\r\nHyundai Grand i10 Sedan gia đình 1.2 AT (Số tự động) giá 477.000.000 vn', '', NULL, NULL, NULL, NULL);
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`, `thongtinsanpham`, `hinhanh`, `custom_alt`, `custom_h1`) VALUES
(325, 2, 'Hyundai Tucson', '&lt;header style=&quot;line-height: 20px;&quot;&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;strong style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 55, 69); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: blue; cursor: pointer;&quot;&gt;Hyundai&lt;/a&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(0, 0, 255); background-color: rgb(239, 239, 239);&quot;&gt;&lt;a href=&quot;http://hyundaigiaiphong.com.vn/&quot; target=&quot;_blank&quot; style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(58, 94, 225); cursor: pointer;&quot;&gt;&amp;nbsp;&lt;/a&gt;Phạm Văn Đồng&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: normal;&quot;&gt;trân trọng gửi đến Quý khách hàng Bảng giá của&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&amp;nbsp;Hyundai Tucson&lt;/span&gt;&lt;/strong&gt;&lt;strong style=&quot;color: rgb(51, 55, 69); font-family: &amp;quot;Open Sans&amp;quot;, Arial, Helvetica, sans-serif; font-size: 14px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; font-weight: normal;&quot;&gt;- Tăng tốc tới tương lai&lt;/span&gt;&lt;/strong&gt;&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255);&quot;&gt;+&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87);&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-weight: bold; background-color: rgb(247, 247, 247); color: rgb(0, 0, 255);&quot;&gt;Tucson bản thường Xăng 2.0 AT &amp;nbsp;giá bán&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(247, 247, 247);&quot;&gt; :&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;span style=&quot;background-color: rgb(247, 247, 247);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 770&lt;/span&gt;.000.000 VNĐ&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(0, 0, 255); background-color: rgb(247, 247, 247);&quot;&gt;+ &lt;span style=&quot;font-weight: bold;&quot;&gt;Tucson bản đặc biệt Full Xăng 2.0 AT giá bán&lt;/span&gt;:&lt;/span&gt;&lt;span style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt; &lt;/span&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(255, 0, 0); background-color: rgb(247, 247, 247); font-weight: bold;&quot;&gt;&amp;nbsp;840.000.000 VNĐ&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&lt;span style=&quot;font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(247, 247, 247);&quot;&gt;+&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); background-color: rgb(247, 247, 247);&quot;&gt;Tucson bản đặc biệt Full Dầu 2.0 AT giá bán: &amp;nbsp; &lt;/span&gt;&lt;span style=&quot;background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255);&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;910.000.00 VNĐ&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 255);&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; line-height: 20px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; -webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; padding: 0px; border: 0px; outline: 0px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 255); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; background-color: rgb(247, 247, 247);&quot;&gt;+&amp;nbsp;&lt;span style=&quot;font-weight: bold;&quot;&gt;Tucson bản Turbo 1.6 AT : &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;color: rgb(0, 0, 255); font-weight: bold; background-color: rgb(247, 247, 247); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium;&quot;&gt;&amp;nbsp; &lt;/span&gt;&lt;span style=&quot;font-weight: bold; background-color: rgb(247, 247, 247); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: medium; color: rgb(255, 0, 0);&quot;&gt;900.000.00 VNĐ&lt;/span&gt;&lt;/h2&gt;&lt;h2 style=&quot;box-sizing: border-box; font-family: inherit; font-weight: 500; line-height: 1.8; color: inherit; margin: 0px; font-size: 15px; padding: 0px;&quot;&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal; text-align: center;&quot;&gt;&lt;span data-mce-mark=&quot;1&quot; style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;HYUNDAI TUCSON 2017 ĐÃ MANG LẠI NĂNG LƯỢNG&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;&lt;span data-mce-mark=&quot;1&quot; style=&quot;font-size: large;&quot;&gt;&lt;strong&gt;HỨNG KHỞI CHO TỪNG PHÚT GIÂY CẦM LÁI&lt;/strong&gt;&lt;/span&gt;&lt;br&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;strong&gt;Hyundai Tucson 2017&lt;/strong&gt;&amp;nbsp;là thế hệ thứ 3 của Tucson, được ra mắt vào tháng 3/2015 với những cải tiến hoàn toàn mới từ thiết kế đến động cơ và vận hành của Hyundai.&lt;br&gt;Hyundai Tucson là một trong những mẫu crossover (C-SUV) thành công nhất thế giới với hơn 4 triệu xe bán ra chỉ trong vòng 11 năm ra đời và phát triển.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_1.jpg&quot; alt=&quot;Hyundai Tucson là một trong những mẫu crossover &quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_1.jpg&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;Tucson mang cảm hứng thiết kế từ triết lý &quot;Điêu khắc dòng chảy 2.0&quot; với các đường gân mạnh mẽ &amp;nbsp;, tạo kiểu dáng khí động học .&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_2.jpg&quot; alt=&quot;các đường gân mạnh mẽ &quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_2.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_3.jpg&quot; alt=&quot;tạo kiểu dáng khí động học&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_3.jpg&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;Kích thước tổng thể của xe : dài x rộng x cao của xe lần lượt là 4.475 x 1.850 x 1.660 (mm), đã đem đến tổng thể của xe lớn và rộng rãi hơn phiên bản cũ.&lt;br&gt;Xe được trang bị những tiện ích hiện đại như cửa sổ ứng dụng cảm biến chống kẹt, gương chiếu hậu chỉnh điện, đèn chiếu sáng tự động, lazang 18 inch hợp kim tạo hình chữ Y 5 chấu.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_4.jpg&quot; alt=&quot;Kích thước tổng thể của xe&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_4.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_5.jpg&quot; alt=&quot;đèn chiếu sáng tự động&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_5.jpg&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;Hyundai Tucson sở hữu cụm đèn pha được trang bị công nghệ LED sắc cạnh vuốt từ cặp lưới tản nhiệt đặc trưng hình lục giác sang hai bên.Hệ thống đèn của xe được trang bị những công nghệ hiện đại nhất với đèn pha LED 4 bóng projector, đèn pha là dạng đèn bi là tăng cường độ chiếu sáng, cùng đèn hậu dạng LED 3D.&lt;/p&gt;&lt;p style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_6.jpg&quot; alt=&quot;Hyundai Tucson sở hữu cụm đèn pha được trang bị công nghệ LED&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_6.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_7.jpg&quot; alt=&quot;đèn pha LED 4 bóng projector&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_7.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_8.jpg&quot; alt=&quot;đèn pha là dạng đèn bi là tăng cường độ chiếu sáng&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_8.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_9.jpg&quot; alt=&quot;Hyundai Tucson 2016 là thế hệ thứ 3 của Tucson&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_9.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_10.jpg&quot; alt=&quot;Hyundai Tucson 2016 &quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_10.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_11.jpg&quot; alt=&quot;Hyundai Tucson 2016 là thế hệ thứ 3 của Tucson&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_11.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_12.jpg&quot; alt=&quot;Hyundai Tucson 2016 là thế hệ thứ 3 của Tucson&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_12.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_13.jpg&quot; alt=&quot;Hyundai Tucson 2016 &quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_13.jpg&quot; style=&quot;float: none; width: 425px;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_14.jpg&quot; alt=&quot;Hyundai Tucson 2016 là thế hệ thứ 3 của Tucson&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_14.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_15.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_15.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_16.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_16.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_17.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_17.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_18.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_18.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_19.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_19.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_20.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_20.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_21.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_21.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_22.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_22.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_23.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_23.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_24.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_24.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_25.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_25.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_26.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_26.jpg&quot; style=&quot;float: none;&quot;&gt;&amp;nbsp;&lt;img src=&quot;http://hyundaithainguyen3s.com/files/assets/Tucson2016/tucson2016_27.jpg&quot; alt=&quot;Hyundai Tucson 2016&quot; data-mce-src=&quot;files/assets/Tucson2016/tucson2016_27.jpg&quot; style=&quot;float: none;&quot;&gt;&lt;/p&gt;&lt;div style=&quot;color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: 15.6px; line-height: normal;&quot;&gt;&lt;p&gt;Để được tư vấn chi tiết và báo giá tốt nhất về sản phẩm&amp;nbsp;&lt;strong&gt;Hyundai Tucson 2017&amp;nbsp;&lt;/strong&gt;quý khách hãy gọi tới số Hotline của chúng tôi hoặc để lại số điện thoại chúng tôi sẽ gọi lại tư vấn cho quý khách. Chi tiết xin liên hệ theo địa chỉ:68 lê văn lương&amp;nbsp;&lt;/p&gt;&lt;/div&gt;&lt;/h2&gt;&lt;h2 style=&quot;-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; line-height: 20px;&quot;&gt;&lt;div id=&quot;slide_content07&quot; style=&quot;color: rgb(87, 87, 87); font-family: Arial, AppleGothic, sans-serif, Helvetica; font-size: 14px;&quot;&gt;&lt;div style=&quot;padding-top: 20px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h2&gt;&lt;/header&gt;', 'Hyundai Tucson,Hyundai,Tucson', 'Xe Hyundai Tucson', 'Hyundai Tucson 2016 cạnh tranh những đối thủ sừng sỏ như CX5 Và CRV ??????\r\n\r\nHyundai Tucson 2016 chính thức ra mắt khách hàng tại thị trường Việt Nam với giá bán từ 915 triệu đồng, trực tiếp cạnh tranh với các xe cùng phân khúc như : Honda CR-V và Mazda ', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(9465, 324, 'Hatchback/9.jpg', 6),
(9440, 325, 'tucson-2016/Hyundai Tucson 2016 (4).jpg', 0),
(9441, 325, 'tucson-2016/Hyundai Tucson 2016 (11).jpg', 0),
(9439, 325, 'tucson-2016/Hyundai Tucson 2016 (3).jpg', 0),
(9274, 329, 'Accent/NoiThat1.png', 0),
(9273, 329, 'Accent/Ngoaithat2.png', 0),
(9443, 318, 'santafe/1-1.jpg', 0),
(9272, 329, 'Accent/Ngoaithat1.png', 0),
(9240, 320, 'Creta/creta-test-drive.jpg', 0),
(9239, 320, 'Creta/hyundai-creta-test-drive (5).jpg', 0),
(9238, 320, 'Creta/hyundai-creta-test-drive (2).jpg', 0),
(9237, 320, 'Creta/hyundai-creta-test-drive (3).jpg', 0),
(9236, 320, 'Creta/Creta-600x333.jpg', 0),
(9464, 324, 'Hatchback/1.jpg', 5),
(9446, 321, 'Elantra/creta-test-drive.jpg', 0),
(9445, 321, 'Elantra/Hyundai-Elantra-2016-11.JPG', 0),
(9365, 322, 'Active/HYUNDAI-I20-ACTIVE-2-500x500.jpg', 0),
(9364, 322, 'Active/5-3.jpg', 0),
(9322, 323, 'Sedan/mx_grandi10sedan_gallery0_3304.jpg', 0),
(9321, 323, 'Sedan/7.jpg', 0),
(9320, 323, 'Sedan/grand-i10-sedan_7235_6686.jpg', 0),
(9463, 324, 'Hatchback/8.jpg', 4),
(9462, 324, 'Hatchback/3.jpg', 3),
(9363, 322, 'Active/I20-Acite.jpg', 0),
(9319, 323, 'Sedan/mx_grandi10sedan_gallery16_5667.jpg', 0),
(9252, 328, 'Hyundai Starex/Starex-01.jpg', 0),
(9251, 328, 'Hyundai Starex/Starex-02.jpg', 0),
(9250, 328, 'Hyundai Starex/Starex-03.jpg', 0),
(9249, 328, 'Hyundai Starex/Starex-06.jpg', 0),
(9461, 324, 'Hatchback/2.jpg', 2),
(9460, 324, 'Hatchback/minh.jpg', 1),
(9444, 321, 'Elantra/2017-Hyundai-Elantra-colors-Phantom-Black.jpg', 0),
(9438, 325, 'tucson-2016/HYUNDAI-TUCSON-2016-db-2-500x500.jpg', 0),
(9447, 321, 'Elantra/hyundai-elantra-1-6-at-2017.png', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(113, 325, 1, 0),
(115, 318, 1, 0),
(54, 329, 1, 0),
(45, 320, 1, 0),
(116, 321, 1, 0),
(98, 322, 1, 0),
(82, 323, 1, 0),
(119, 324, 1, 0),
(48, 328, 1, 0),
(74, 330, 1, 0),
(95, 331, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(318, 102),
(320, 102),
(321, 102),
(322, 102),
(323, 102),
(324, 102),
(325, 102),
(328, 102),
(329, 102),
(330, 102),
(331, 102),
(331, 103);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(329, 0, 0),
(325, 0, 0),
(318, 0, 0),
(320, 0, 0),
(321, 0, 0),
(322, 0, 0),
(323, 0, 0),
(324, 0, 0),
(328, 0, 0),
(330, 0, 0),
(331, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(318, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 0),
(324, 0),
(325, 0),
(328, 0),
(329, 0),
(330, 0),
(331, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(1101, 0, 'free', 'free_sort_order', '1', 0),
(1100, 0, 'free', 'free_status', '0', 0),
(1099, 0, 'free', 'free_geo_zone_id', '0', 0),
(1098, 0, 'free', 'free_total', '', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(2496, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(2493, 0, 'config', 'config_seo_url', '1', 0),
(2494, 0, 'config', 'config_file_max_size', '300000', 0),
(2495, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(2492, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2491, 0, 'config', 'config_shared', '0', 0),
(2490, 0, 'config', 'config_secure', '0', 0),
(2489, 0, 'config', 'config_fraud_status_id', '7', 0),
(2487, 0, 'config', 'config_fraud_key', '', 0),
(2488, 0, 'config', 'config_fraud_score', '', 0),
(2485, 0, 'config', 'config_mail_alert', '', 0),
(2486, 0, 'config', 'config_fraud_detection', '0', 0),
(2484, 0, 'config', 'config_mail', 'a:7:{s:8:\"protocol\";s:4:\"mail\";s:9:\"parameter\";s:0:\"\";s:13:\"smtp_hostname\";s:0:\"\";s:13:\"smtp_username\";s:0:\"\";s:13:\"smtp_password\";s:0:\"\";s:9:\"smtp_port\";s:0:\"\";s:12:\"smtp_timeout\";s:0:\"\";}', 1),
(2483, 0, 'config', 'config_ftp_status', '0', 0),
(2481, 0, 'config', 'config_ftp_password', '', 0),
(2482, 0, 'config', 'config_ftp_root', '', 0),
(2480, 0, 'config', 'config_ftp_username', '', 0),
(2479, 0, 'config', 'config_ftp_port', '21', 0),
(2478, 0, 'config', 'config_ftp_hostname', 'shoptest.com', 0),
(2477, 0, 'config', 'config_image_location_height', '50', 0),
(2476, 0, 'config', 'config_image_location_width', '268', 0),
(2475, 0, 'config', 'config_image_cart_height', '47', 0),
(2474, 0, 'config', 'config_image_cart_width', '47', 0),
(2473, 0, 'config', 'config_image_wishlist_height', '47', 0),
(2472, 0, 'config', 'config_image_wishlist_width', '47', 0),
(2471, 0, 'config', 'config_image_compare_height', '90', 0),
(2470, 0, 'config', 'config_image_compare_width', '90', 0),
(2469, 0, 'config', 'config_image_related_height', '80', 0),
(2468, 0, 'config', 'config_image_related_width', '80', 0),
(2467, 0, 'config', 'config_image_additional_height', '74', 0),
(2466, 0, 'config', 'config_image_additional_width', '74', 0),
(2465, 0, 'config', 'config_image_product_height', '228', 0),
(2464, 0, 'config', 'config_image_product_width', '228', 0),
(2463, 0, 'config', 'config_image_popup_height', '500', 0),
(2462, 0, 'config', 'config_image_popup_width', '500', 0),
(2461, 0, 'config', 'config_image_thumb_height', '228', 0),
(2460, 0, 'config', 'config_image_thumb_width', '228', 0),
(2459, 0, 'config', 'config_image_category_height', '80', 0),
(2458, 0, 'config', 'config_image_category_width', '80', 0),
(2457, 0, 'config', 'config_icon', 'hyundai-xxl.png', 0),
(2456, 0, 'config', 'config_logo', 'system/logo.png', 0),
(2455, 0, 'config', 'config_return_status_id', '2', 0),
(2454, 0, 'config', 'config_return_id', '0', 0),
(2453, 0, 'config', 'config_affiliate_mail', '0', 0),
(2452, 0, 'config', 'config_affiliate_id', '4', 0),
(2451, 0, 'config', 'config_affiliate_commission', '5', 0),
(2450, 0, 'config', 'config_affiliate_auto', '0', 0),
(2449, 0, 'config', 'config_affiliate_approval', '0', 0),
(2448, 0, 'config', 'config_stock_checkout', '0', 0),
(2447, 0, 'config', 'config_stock_warning', '0', 0),
(2446, 0, 'config', 'config_stock_display', '0', 0),
(2445, 0, 'config', 'config_order_mail', '0', 0),
(2444, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:\"5\";}', 1),
(2443, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:\"2\";}', 1),
(2442, 0, 'config', 'config_order_status_id', '1', 0),
(2441, 0, 'config', 'config_checkout_id', '5', 0),
(2440, 0, 'config', 'config_checkout_guest', '1', 0),
(1106, 0, 'flat', 'flat_sort_order', '', 0),
(1105, 0, 'flat', 'flat_status', '1', 0),
(1104, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(1103, 0, 'flat', 'flat_tax_class_id', '0', 0),
(1097, 0, 'journal2_blog_posts', 'journal2_blog_posts_555_status', '1', 0),
(1102, 0, 'flat', 'flat_cost', '', 0),
(1096, 0, 'journal2_header_notice', 'journal2_header_notice_554_status', '0', 0),
(1095, 0, 'journal2_side_column_menu', 'journal2_side_column_menu_553_status', '1', 0),
(1094, 0, 'journal2_side_column_menu', 'journal2_side_column_menu_552_status', '1', 0),
(1093, 0, 'journal2_side_column_menu', 'journal2_side_column_menu_551_status', '1', 0),
(1092, 0, 'journal2_blog_categories', 'journal2_blog_categories_550_status', '1', 0),
(1091, 0, 'journal2_blog_categories', 'journal2_blog_categories_549_status', '1', 0),
(1090, 0, 'journal2_blog_categories', 'journal2_blog_categories_548_status', '1', 0),
(1089, 0, 'journal2_blog_categories', 'journal2_blog_categories_547_status', '1', 0),
(1088, 0, 'journal2_slider', 'journal2_slider_546_status', '1', 0),
(1087, 0, 'journal2_blog_search', 'journal2_blog_search_545_status', '1', 0),
(1086, 0, 'journal2_blog_search', 'journal2_blog_search_544_status', '1', 0),
(1085, 0, 'journal2_blog_tags', 'journal2_blog_tags_543_status', '1', 0),
(1084, 0, 'journal2_blog_tags', 'journal2_blog_tags_542_status', '1', 0),
(1083, 0, 'journal2_blog_tags', 'journal2_blog_tags_541_status', '1', 0),
(1082, 0, 'journal2_side_products', 'journal2_side_products_540_status', '0', 0),
(1076, 0, 'journal2_advanced_grid', 'journal2_advanced_grid_534_status', '0', 0),
(1077, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_535_status', '0', 0),
(1078, 0, 'journal2_fullscreen_slider', 'journal2_fullscreen_slider_536_status', '0', 0),
(1079, 0, 'journal2_photo_gallery', 'journal2_photo_gallery_537_status', '0', 0),
(1080, 0, 'journal2_side_products', 'journal2_side_products_538_status', '0', 0),
(1081, 0, 'journal2_side_products', 'journal2_side_products_539_status', '0', 0),
(1073, 0, 'journal2_super_filter', 'journal2_super_filter_531_status', '1', 0),
(1074, 0, 'journal2_super_filter', 'journal2_super_filter_532_status', '1', 0),
(1075, 0, 'journal2_text_rotator', 'journal2_text_rotator_533_status', '0', 0),
(1072, 0, 'journal2_super_filter', 'journal2_super_filter_530_status', '1', 0),
(1071, 0, 'journal2_custom_sections', 'journal2_custom_sections_529_status', '0', 0),
(1069, 0, 'journal2_side_category', 'journal2_side_category_527_status', '0', 0),
(1070, 0, 'journal2_custom_sections', 'journal2_custom_sections_528_status', '0', 0),
(1068, 0, 'journal2_blog_comments', 'journal2_blog_comments_526_status', '1', 0),
(1556, 0, 'journal2_static_banners', 'journal2_static_banners_561_status', '1', 0),
(1067, 0, 'journal2_blog_comments', 'journal2_blog_comments_525_status', '1', 0),
(1065, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_523_status', '0', 0),
(1064, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_522_status', '0', 0),
(1063, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_521_status', '0', 0),
(1062, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_520_status', '0', 0),
(1061, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_519_status', '0', 0),
(1060, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_518_status', '0', 0),
(1059, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_517_status', '0', 0),
(1058, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_516_status', '0', 0),
(1057, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_515_status', '0', 0),
(1056, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_514_status', '0', 0),
(1054, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_512_status', '0', 0),
(1055, 0, 'journal2_headline_rotator', 'journal2_headline_rotator_513_status', '0', 0),
(1053, 0, 'journal2_newsletter', 'journal2_newsletter_511_status', '0', 0),
(1052, 0, 'journal2_newsletter', 'journal2_newsletter_510_status', '0', 0),
(1600, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_605_status', '1', 0),
(1599, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_604_status', '1', 0),
(1598, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_603_status', '1', 0),
(1597, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_602_status', '1', 0),
(1596, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_601_status', '1', 0),
(1595, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_600_status', '1', 0),
(1594, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_599_status', '1', 0),
(1553, 0, 'journal2_simple_slider', 'journal2_simple_slider_558_status', '0', 0),
(1041, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_499_status', '1', 0),
(1042, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_500_status', '1', 0),
(1043, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_501_status', '1', 0),
(1040, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_498_status', '1', 0),
(1039, 0, 'journal2_blog_side_posts', 'journal2_blog_side_posts_497_status', '1', 0),
(2173, 0, 'journal2_carousel', 'journal2_carousel_619_status', '1', 0),
(2172, 0, 'journal2_carousel', 'journal2_carousel_618_status', '1', 0),
(2171, 0, 'journal2_carousel', 'journal2_carousel_617_status', '1', 0),
(2170, 0, 'journal2_carousel', 'journal2_carousel_616_status', '1', 0),
(2169, 0, 'journal2_carousel', 'journal2_carousel_615_status', '1', 0),
(2168, 0, 'journal2_carousel', 'journal2_carousel_614_status', '1', 0),
(2167, 0, 'journal2_carousel', 'journal2_carousel_613_status', '1', 0),
(2435, 0, 'config', 'config_account_id', '3', 0),
(2436, 0, 'config', 'config_account_mail', '0', 0),
(2437, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1593, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_598_status', '1', 0),
(1592, 0, 'journal2_cms_blocks', 'journal2_cms_blocks_597_status', '1', 0),
(1604, 0, 'openbaypro', 'openbaypro_status', '0', 0),
(1603, 0, 'openbaypro', 'openbaypro_menu', '0', 0),
(2438, 0, 'config', 'config_api_id', '1', 0),
(2439, 0, 'config', 'config_cart_weight', '1', 0),
(2422, 0, 'config', 'config_review_status', '1', 0),
(2423, 0, 'config', 'config_review_guest', '1', 0),
(2424, 0, 'config', 'config_review_mail', '0', 0),
(2425, 0, 'config', 'config_voucher_min', '1', 0),
(2426, 0, 'config', 'config_voucher_max', '1000', 0),
(2427, 0, 'config', 'config_tax', '1', 0),
(2428, 0, 'config', 'config_tax_default', 'shipping', 0),
(2429, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2430, 0, 'config', 'config_customer_online', '0', 0),
(2431, 0, 'config', 'config_customer_group_id', '1', 0),
(2432, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:\"1\";}', 1),
(2433, 0, 'config', 'config_customer_price', '0', 0),
(2434, 0, 'config', 'config_login_attempts', '5', 0),
(2421, 0, 'config', 'config_limit_admin', '20', 0),
(2418, 0, 'config', 'config_product_count', '1', 0),
(2419, 0, 'config', 'config_product_limit', '15', 0),
(2420, 0, 'config', 'config_product_description_length', '100', 0),
(2408, 0, 'config', 'config_template', 'journal2', 0),
(2409, 0, 'config', 'config_layout_id', '4', 0),
(2410, 0, 'config', 'config_country_id', '230', 0),
(2411, 0, 'config', 'config_zone_id', '', 0),
(2412, 0, 'config', 'config_language', 'vi', 0),
(2413, 0, 'config', 'config_admin_language', 'vi', 0),
(2414, 0, 'config', 'config_currency', 'VND', 0),
(2415, 0, 'config', 'config_currency_auto', '0', 0),
(2416, 0, 'config', 'config_length_class_id', '1', 0),
(2417, 0, 'config', 'config_weight_class_id', '1', 0),
(2407, 0, 'config', 'config_meta_keyword', 'Hyundai Phạm Văn Đồng đại lý Hyundai chính hãng.Đối với Huyndai Hà Đông sự hài lòng của quý khách là động lực giúp chúng tôi làm việc không biết mệt mỏi.....', 0),
(2399, 0, 'config', 'config_email', 'designertuan95@gmail.com', 0),
(2400, 0, 'config', 'config_telephone', ' 0976059735', 0),
(2401, 0, 'config', 'config_fax', '', 0),
(2402, 0, 'config', 'config_image', '', 0),
(2403, 0, 'config', 'config_open', '8h sáng', 0),
(2404, 0, 'config', 'config_comment', '', 0),
(2405, 0, 'config', 'config_meta_title', 'Hyundai Phạm Văn Đồng - Bảng Giá Xe Hyundai Tại Hà Nội', 0),
(2406, 0, 'config', 'config_meta_description', 'Hyundai Phạm Văn Đồng đại lý Hyundai chính hãng.Đối với Huyndai Hà Đông sự hài lòng của quý khách là động lực giúp chúng tôi làm việc không biết mệt mỏi.....', 0),
(2398, 0, 'config', 'config_geocode', '', 0),
(2397, 0, 'config', 'config_address', 'Hyundai Phạm Văn Đồng', 0),
(2396, 0, 'config', 'config_owner', 'Hyundai Phạm Văn Đồng - Bảng Giá Xe Hyundai Tại Hà Nội', 0),
(2395, 0, 'config', 'config_name', 'Hyundai Phạm Văn Đồng - Bảng Giá Xe Hyundai Tại Hà Nội', 0),
(2497, 0, 'config', 'config_maintenance', '0', 0),
(2498, 0, 'config', 'config_password', '1', 0),
(2499, 0, 'config', 'config_encryption', '8374e19867ac0cfb1ba15b4b04a5ab99', 0),
(2500, 0, 'config', 'config_compression', '0', 0),
(2501, 0, 'config', 'config_error_display', '1', 0),
(2502, 0, 'config', 'config_error_log', '1', 0),
(2503, 0, 'config', 'config_error_filename', 'error.log', 0),
(2504, 0, 'config', 'config_google_analytics', '', 0),
(2505, 0, 'config', 'journal_db_check_journal2_newsletter_store_id', '1', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'Còn hàng'),
(8, 2, 'Đặt hàng'),
(5, 2, 'Hết hàng'),
(9, 2, 'Ngừng sản xuất'),
(6, 2, 'Sắp về hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `oc_url_alias` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`, `language_id`, `oc_url_alias`) VALUES
(2585, 'information_id=4', 'gioi-thieu-ve-cong-ty-hyper.html', 2, NULL),
(2380, 'gen_cms_category_id=2', 'tip-huong-dan', 2, NULL),
(2350, 'gen_cms_category_id=1', 'reviews', 2, NULL),
(2928, 'manufacturer_id=43', '', NULL, NULL),
(3030, 'product_id=318', 'Hyundai-SantaFe', NULL, NULL),
(3013, 'product_id=322', 'Hyundai-I20-Active', NULL, NULL),
(2504, 'manufacturer_id=11', 'pioneer', 2, NULL),
(1289, 'product_id=78', 'beats-mixr-black.html', 2, NULL),
(899, 'product_id=79', 'beats-mixr-red.html', 2, NULL),
(1124, 'product_id=80', 'beats-mixr-white.html', 2, NULL),
(901, 'product_id=81', 'beats-mixr-neon-blue.html', 2, NULL),
(1116, 'product_id=82', 'beats-mixr-neon-orange.html', 2, NULL),
(1118, 'product_id=83', 'beats-mixr-neon-yellow.html', 2, NULL),
(1125, 'product_id=84', 'beats-pro-black-limited.html', 2, NULL),
(1127, 'product_id=85', 'beats-pro-sliver.html', 2, NULL),
(1129, 'product_id=86', 'beats-pro-white.html', 2, NULL),
(1130, 'product_id=89', 'combo-laptop-stand-odyssey.html', 2, NULL),
(933, 'product_id=114', 'ni-maschine-studio-white.html', 2, NULL),
(1095, 'product_id=120', 'aiaiai-tma-1-dj-fool-gold.html', 2, NULL),
(2506, 'manufacturer_id=36', 'sandisk', 2, NULL),
(2512, 'manufacturer_id=28', 'krk', 2, NULL),
(2497, 'manufacturer_id=10', 'griffin-technology', 2, NULL),
(2499, 'manufacturer_id=12', 'monkey-banana', 2, NULL),
(2477, 'manufacturer_id=13', 'focal-phap.html', 2, NULL),
(2507, 'manufacturer_id=15', 'sennheiser', 2, NULL),
(2491, 'manufacturer_id=16', 'beats-by-dre', 2, NULL),
(2481, 'manufacturer_id=17', 'isoacoustics-canada', 2, NULL),
(2503, 'manufacturer_id=18', 'odyssey', 2, NULL),
(2464, 'article_id=19', 'he-thong-thiet-bi-danh-cho-touring-dj-cdj-tour1-djm-tour1.html', 2, NULL),
(2485, 'manufacturer_id=20', 'akai', 2, NULL),
(2501, 'manufacturer_id=21', 'novation', 2, NULL),
(2487, 'manufacturer_id=22', 'apogee', 2, NULL),
(2483, 'manufacturer_id=23', 'ableton', 2, NULL),
(2484, 'manufacturer_id=24', 'aiaiai', 2, NULL),
(2509, 'manufacturer_id=25', 'technics', 2, NULL),
(2511, 'manufacturer_id=26', 'v-moda', 2, NULL),
(2600, 'information_id=6', 'chinh-sach-giao-nhan-hang.html', 2, NULL),
(2510, 'manufacturer_id=29', 'urbanears', 2, NULL),
(2495, 'manufacturer_id=14', 'focusrite', 2, NULL),
(1175, 'product_id=178', 'pioneer-djm-900-nexus-95.html', 2, NULL),
(1215, 'product_id=180', 'pioneer-cdj-1000mk3-90.html', 2, NULL),
(2492, 'manufacturer_id=30', 'dj-tech-tools', 2, NULL),
(2508, 'manufacturer_id=27', 'sm-pro', 2, NULL),
(3028, 'product_id=325', 'Hyundai-Tucson', NULL, NULL),
(2967, 'product_id=329', 'hyundai-accent-blue', NULL, NULL),
(2958, 'product_id=320', 'hyundai-creta', NULL, NULL),
(2505, 'manufacturer_id=31', 'presonus', 2, NULL),
(3034, 'product_id=324', 'Hyundai-Grand-I10-Hatchback', NULL, NULL),
(3031, 'product_id=321', 'Hyundai-Elantra', NULL, NULL),
(2489, 'manufacturer_id=32', 'audient', 2, NULL),
(2482, 'manufacturer_id=33', 'allen-heath', 2, NULL),
(2995, 'product_id=323', 'Hyundai-Grand-i10-Sedan', NULL, NULL),
(2490, 'manufacturer_id=34', 'cosmos', 2, NULL),
(2494, 'manufacturer_id=35', 'kingston', 2, NULL),
(2488, 'manufacturer_id=37', 'apton', 2, NULL),
(2498, 'manufacturer_id=38', 'liton', 2, NULL),
(2361, 'article_id=1', 'review-tai-nghe-dj-urbanears-zinken', 2, NULL),
(2360, 'article_id=2', 'cdj-nao-cua-pioneer-la-tot-nhat-danh-cho-ban', 2, NULL),
(2394, 'gen_cms_category_id=4', 'videos', 2, NULL),
(2373, 'gen_cms_category_id=3', 'phan-mem-ung-dung', 2, NULL),
(2406, 'article_id=3', 'cho-thue-thiet-bi-dj.html', 2, NULL),
(2408, 'article_id=4', 'cho-thue-studio.html', 2, NULL),
(2395, 'gen_cms_category_id=5', 'dich-vu', 2, NULL),
(2403, 'article_id=5', 'review-pioneer-xdj-1000', 2, NULL),
(2405, 'article_id=6', 'review-pioneer-ddj-sz', 2, NULL),
(2420, 'article_id=7', 'serato-dj-1-7-3-them-ho-tro-cho-cac-may-choi-ky-thuat-so-pioneer-xdj-1000.html', 2, NULL),
(2502, 'manufacturer_id=39', 'numark', 2, NULL),
(2422, 'article_id=8', 'sennheiser-hd-25-van-la-vua-trong-dong-headphones-cho-dj', 2, NULL),
(2426, 'article_id=9', 'ra-mat-traktor-kontrol-s8.html', 2, NULL),
(2431, 'article_id=10', 'pioneer-xdj-1000-noi-khong-voi-cd.html', 2, NULL),
(2500, 'manufacturer_id=19', 'native-instruments', 2, NULL),
(2433, 'article_id=12', 'pioneer-ddj-sx2-serato-flip-va-dvs-controller.html', 2, NULL),
(2466, 'article_id=20', 'giai-dap-nhung-cau-hoi-cua-ban-ve-traktor-kontrol-s8.html', 2, NULL),
(2467, 'article_id=21', 'amx-afx-controller-nhung-dua-con-moi-cua-akai-danh-cho-serato-dj.html', 2, NULL),
(2461, 'article_id=18', 'pioneer-dj-ddj-rzx-rekordbox-official-video.html', 2, NULL),
(2486, 'manufacturer_id=6', 'amazonbasics', 2, NULL),
(2513, 'manufacturer_id=40', 'rane', 2, NULL),
(2518, 'information_id=7', 'co-hoi-nghe-nghiep.html', 2, NULL),
(2595, 'information_id=8', 'huong-dan-mua-hang-online.html', 2, NULL),
(2735, 'information_id=3', 'phuong-thuc-thanh-toan.html', 2, NULL),
(2736, 'information_id=5', 'chinh-sach-bao-hanh.html', 2, NULL),
(2522, 'information_id=9', 'chinh-sach-bao-mat-thong-tin.html', 2, NULL),
(2621, 'manufacturer_id=41', 'audio-technica', 2, NULL),
(2713, 'manufacturer_id=42', 'd-tech', 2, NULL),
(2961, 'product_id=328', 'hyundai-Starex', NULL, NULL),
(2987, 'product_id=330', 'hyundai-sonata', NULL, NULL),
(3010, 'product_id=331', 'hyundai-accent', NULL, NULL),
(3007, 'category_id=103', '', NULL, NULL),
(3008, 'category_id=104', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '79e67cd1359dc41cf6924288e7bff5126a87aae3', '34058c0b1', 'John', 'Doe', 'designertuan95@gmail.com', '', '', '1.55.116.236', 1, '2017-02-10 09:58:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:\"access\";a:190:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:13:\"module/latest\";i:182;s:15:\"module/journal2\";i:183;s:13:\"shipping/free\";i:184;s:13:\"shipping/flat\";i:185;s:12:\"module/store\";i:186;s:19:\"feed/google_sitemap\";i:187;s:16:\"feed/google_base\";i:188;s:15:\"feed/openbaypro\";i:189;s:17:\"extension/openbay\";}s:6:\"modify\";a:190:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:13:\"module/latest\";i:182;s:15:\"module/journal2\";i:183;s:13:\"shipping/free\";i:184;s:13:\"shipping/flat\";i:185;s:12:\"module/store\";i:186;s:19:\"feed/google_sitemap\";i:187;s:16:\"feed/google_base\";i:188;s:15:\"feed/openbaypro\";i:189;s:17:\"extension/openbay\";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Chỉ mục cho bảng `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Chỉ mục cho bảng `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Chỉ mục cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Chỉ mục cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Chỉ mục cho bảng `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Chỉ mục cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Chỉ mục cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Chỉ mục cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Chỉ mục cho bảng `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  ADD PRIMARY KEY (`customer_ban_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Chỉ mục cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Chỉ mục cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Chỉ mục cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Chỉ mục cho bảng `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Chỉ mục cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Chỉ mục cho bảng `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Chỉ mục cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Chỉ mục cho bảng `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_category`
--
ALTER TABLE `oc_journal2_blog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_category_description`
--
ALTER TABLE `oc_journal2_blog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_category_to_layout`
--
ALTER TABLE `oc_journal2_blog_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_comments`
--
ALTER TABLE `oc_journal2_blog_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_post`
--
ALTER TABLE `oc_journal2_blog_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_post_description`
--
ALTER TABLE `oc_journal2_blog_post_description`
  ADD PRIMARY KEY (`post_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_post_to_category`
--
ALTER TABLE `oc_journal2_blog_post_to_category`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_post_to_layout`
--
ALTER TABLE `oc_journal2_blog_post_to_layout`
  ADD PRIMARY KEY (`post_id`,`store_id`),
  ADD KEY `layout_id` (`layout_id`);

--
-- Chỉ mục cho bảng `oc_journal2_blog_post_to_product`
--
ALTER TABLE `oc_journal2_blog_post_to_product`
  ADD PRIMARY KEY (`post_id`,`product_id`);

--
-- Chỉ mục cho bảng `oc_journal2_config`
--
ALTER TABLE `oc_journal2_config`
  ADD PRIMARY KEY (`key`,`store_id`);

--
-- Chỉ mục cho bảng `oc_journal2_modules`
--
ALTER TABLE `oc_journal2_modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `oc_journal2_settings`
--
ALTER TABLE `oc_journal2_settings`
  ADD PRIMARY KEY (`key`,`theme_id`);

--
-- Chỉ mục cho bảng `oc_journal2_skins`
--
ALTER TABLE `oc_journal2_skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Chỉ mục cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Chỉ mục cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Chỉ mục cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Chỉ mục cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Chỉ mục cho bảng `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Chỉ mục cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Chỉ mục cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Chỉ mục cho bảng `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Chỉ mục cho bảng `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Chỉ mục cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Chỉ mục cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Chỉ mục cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Chỉ mục cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Chỉ mục cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Chỉ mục cho bảng `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Chỉ mục cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Chỉ mục cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Chỉ mục cho bảng `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Chỉ mục cho bảng `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Chỉ mục cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Chỉ mục cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Chỉ mục cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Chỉ mục cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Chỉ mục cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Chỉ mục cho bảng `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;
--
-- AUTO_INCREMENT cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_blog_category`
--
ALTER TABLE `oc_journal2_blog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_blog_category_to_layout`
--
ALTER TABLE `oc_journal2_blog_category_to_layout`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_blog_comments`
--
ALTER TABLE `oc_journal2_blog_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_blog_post`
--
ALTER TABLE `oc_journal2_blog_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_blog_post_to_layout`
--
ALTER TABLE `oc_journal2_blog_post_to_layout`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_modules`
--
ALTER TABLE `oc_journal2_modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT cho bảng `oc_journal2_skins`
--
ALTER TABLE `oc_journal2_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=620;
--
-- AUTO_INCREMENT cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9466;
--
-- AUTO_INCREMENT cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;
--
-- AUTO_INCREMENT cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2506;
--
-- AUTO_INCREMENT cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3035;
--
-- AUTO_INCREMENT cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4225;
--
-- AUTO_INCREMENT cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
