-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2018 at 04:01 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airticketonl`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `Airline_ID` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Term` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`Airline_ID`, `Name`, `Term`) VALUES
('JS', 'Jestar', 'Hành lý xách tay: 07 kg\r\nHành lý ký gửi: Chọn mua trước'),
('VJ', 'Vietjet', 'Hành lý xách tay: 07 kg\r\nHành lý ký gửi: Chọn mua bước sau\r\nThay đổi chuyến bay: Được phép thay đổi trước 6h, phí 500,000VNĐ + chênh lệch\r\nNâng Hạng: Được phép thay đổi trước 6h, phí 500,000VNĐ + chênh lệch\r\nĐổi Hành Trình: Được phép thay đổi trước 6h, phí 500,000VNĐ + chênh lệch\r\nĐổi Tên Hành Khách: Được phép thay đổi trước 6h, phí 500,000VNĐ + chênh lệch'),
('VNA', 'Vietnam Airline', 'Hành lý ký gửi: 20 kg\r\nHành lý xách tay: 7 kg');

-- --------------------------------------------------------

--
-- Table structure for table `airplanes`
--

CREATE TABLE `airplanes` (
  `Airplane_ID` varchar(10) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airplanes`
--

INSERT INTO `airplanes` (`Airplane_ID`, `Name`) VALUES
('A320', 'Airbus 320'),
('A321', 'Airbus 321'),
('A330', 'Airbus 330 – 200'),
('A500', 'ATR72-500'),
('B777', 'Boeing 777'),
('F70', 'Fokker 70');

-- --------------------------------------------------------

--
-- Table structure for table `airplane_class`
--

CREATE TABLE `airplane_class` (
  `Airplane_ID` varchar(10) NOT NULL,
  `Class_ID` int(1) NOT NULL,
  `NumSeat` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airplane_class`
--

INSERT INTO `airplane_class` (`Airplane_ID`, `Class_ID`, `NumSeat`) VALUES
('A320', 1, 24),
('A320', 2, 150),
('A320', 3, 30),
('A320', 4, 40),
('A321', 1, 24),
('A321', 2, 160),
('A321', 3, 30),
('A321', 4, 40),
('A330', 1, 30),
('A330', 2, 160),
('A330', 3, 30),
('A330', 4, 40),
('A500', 1, 36),
('A500', 2, 180),
('A500', 3, 30),
('A500', 4, 40),
('B777', 1, 18),
('B777', 2, 180),
('B777', 3, 30),
('B777', 4, 40),
('F70', 1, 0),
('F70', 2, 160),
('F70', 3, 20),
('F70', 4, 20);

-- --------------------------------------------------------

--
-- Table structure for table `airplane_model`
--

CREATE TABLE `airplane_model` (
  `Model_ID` varchar(10) NOT NULL,
  `Airplane_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airplane_model`
--

INSERT INTO `airplane_model` (`Model_ID`, `Airplane_ID`) VALUES
('BL584', 'A320'),
('BL586', 'A320'),
('VJ622', 'A320'),
('VJ626', 'A320'),
('VJ628', 'A320'),
('VJ640', 'A320'),
('VN112', 'A320'),
('VN126', 'A320'),
('BL580', 'A321'),
('BL582', 'A321'),
('VJ636', 'A321'),
('VJ638', 'A321'),
('VN130', 'A321'),
('VN134', 'A321'),
('VN110', 'A330'),
('VN132', 'A330'),
('VN120', 'A500'),
('VN124', 'A500'),
('BL592', 'B777'),
('VJ652', 'B777'),
('VJ654', 'B777');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `Airport_ID` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Location_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`Airport_ID`, `Name`, `Location_ID`) VALUES
('BMV', 'Ban Mê Thuật', '14BMT'),
('CAH', 'Cà Mau', '15CM'),
('CXR', 'Nha Trang', '5NT'),
('DAD', 'Đà Nẵng', '3DN'),
('DLI', 'Đà Lạt', '8DL'),
('HAN', 'Hà Nội', '1HN'),
('HPH', 'Hải Phòng', '10HP'),
('HUI', 'Huế', '7H'),
('PQC', 'Phú Quốc', '9KG'),
('PXU', 'Pleiku', '16Pl'),
('SGN', 'Sài Gòn', '2HCM'),
('TBB', 'Tuy Hoà', '18THoa'),
('THD', 'Thanh Hoá', '17TH'),
('UIH', 'Quy Nhơn', '13QNh'),
('VCA', 'Cần Thơ', '4CT'),
('VCL', 'Quảng Nam', '12QN'),
('VCS', 'Côn Đảo', '19CĐ'),
('VDH', 'Đồng Hới', '11DH'),
('VII', 'Vinh', '6V'),
('VKG', 'Rạch Giá', '9KG');

-- --------------------------------------------------------

--
-- Table structure for table `baggageprices`
--

CREATE TABLE `baggageprices` (
  `ID` int(1) NOT NULL,
  `Weight` int(2) NOT NULL,
  `Unit` varchar(2) NOT NULL,
  `Airline_ID` varchar(10) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `baggageprices`
--

INSERT INTO `baggageprices` (`ID`, `Weight`, `Unit`, `Airline_ID`, `Price`) VALUES
(1, 0, 'Kg', 'VJ', 0),
(2, 15, 'Kg', 'VJ', 154000),
(3, 20, 'Kg', 'VJ', 176000),
(4, 25, 'Kg', 'VJ', 242000),
(5, 30, 'Kg', 'VJ', 352000),
(6, 35, 'Kg', 'VJ', 407000),
(7, 40, 'Kg', 'VJ', 462000),
(12, 0, 'Kg', 'JS', 0),
(13, 15, 'Kg', 'JS', 160000),
(14, 20, 'Kg', 'JS', 180000),
(15, 25, 'Kg', 'JS', 245000),
(16, 30, 'Kg', 'JS', 355000),
(17, 35, 'Kg', 'JS', 410000),
(18, 40, 'Kg', 'JS', 465000);

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `Account_number` int(13) NOT NULL,
  `Bank` text NOT NULL,
  `Account_holder` text NOT NULL,
  `Branch` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`Account_number`, `Bank`, `Account_holder`, `Branch`) VALUES
(1, 'VietcomBank', '5555555555554444', 'Quảng Nam'),
(2, 'Agribank', '4111111111111111', 'Quảng Nam'),
(3, 'TPBank', '5412 7534 5678 9010', 'Quảng Nam'),
(4, 'Đông Á Bank', '4264 6558 2759 6499', 'Quảng Nam'),
(5, 'Sacombank', '5454545454545454', 'Quảng Nam'),
(6, 'BIDV', '12345678910111213', 'Quảng Nam');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-09-28 06:51:49', '2018-09-28 06:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '', 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '', 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '', 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '', 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, '', 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, '', 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, '', 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, '', 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-09-28 06:51:14', '2018-09-28 06:51:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-09-28 06:51:14', '2018-09-28 06:51:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-09-28 06:51:14', '2018-09-28 06:51:14'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2018-09-28 06:51:48', '2018-09-28 06:51:48'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2018-09-28 06:51:50', '2018-09-28 06:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `Flight_ID` int(11) NOT NULL,
  `Route_ID` int(11) NOT NULL,
  `Model_ID` varchar(10) NOT NULL,
  `Airline_ID` varchar(10) NOT NULL,
  `Departs_at` datetime NOT NULL,
  `Arrives_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`Flight_ID`, `Route_ID`, `Model_ID`, `Airline_ID`, `Departs_at`, `Arrives_at`) VALUES
(1, 1, 'BL584', 'JS', '2018-10-10 07:00:00', '2018-10-31 08:30:00'),
(2, 3, 'BL586', 'JS', '2018-10-10 07:00:00', '2018-10-10 07:50:00'),
(3, 4, 'VJ622', 'VJ', '2018-10-10 07:00:00', '2018-10-10 08:20:00'),
(4, 5, 'VJ626', 'VJ', '2018-10-10 07:00:00', '2018-10-10 07:50:00'),
(5, 6, 'VJ628', 'VJ', '2018-10-10 07:00:00', '2018-10-10 09:00:00'),
(6, 7, 'VJ640', 'VJ', '2018-10-10 07:00:00', '2018-10-10 09:00:00'),
(7, 8, 'VN112', 'VNA', '2018-10-10 07:00:00', '2018-10-10 08:25:00'),
(8, 9, 'VN126', 'VNA', '2018-10-10 07:00:00', '2018-10-10 08:20:00'),
(9, 10, 'VN134', 'VNA', '2018-10-10 07:00:00', '2018-10-10 08:00:00'),
(10, 4, 'VN130', 'VNA', '2018-10-10 08:00:00', '2018-10-10 09:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `image_airline`
--

CREATE TABLE `image_airline` (
  `Image_Airline` int(11) NOT NULL,
  `Airline_ID` varchar(10) NOT NULL,
  `Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_airline`
--

INSERT INTO `image_airline` (`Image_Airline`, `Airline_ID`, `Link`) VALUES
(1, 'JS', 'https://ibev2.maybay.net/Statics/Images/Airline/jq.gif'),
(2, 'VJ', 'https://ibev2.maybay.net/Statics/Images/Airline/vj.gif'),
(3, 'VNA', 'https://ibev2.maybay.net/Statics/Images/Airline/vn.gif');

-- --------------------------------------------------------

--
-- Table structure for table `image_bank`
--

CREATE TABLE `image_bank` (
  `Image_ID` int(11) NOT NULL,
  `Account_number` int(13) NOT NULL,
  `Link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `image_bank`
--

INSERT INTO `image_bank` (`Image_ID`, `Account_number`, `Link`) VALUES
(1, 1, 'https://ibev2.maybay.net/statics/images/bank-logos/vcb.png'),
(2, 2, 'https://ibev2.maybay.net/statics/images/bank-logos/vbarb.png'),
(3, 3, 'https://ibev2.maybay.net/statics/images/bank-logos/tpb.png'),
(4, 4, 'https://ibev2.maybay.net/statics/images/bank-logos/dab.png'),
(5, 5, 'https://ibev2.maybay.net/statics/images/bank-logos/scmb.png'),
(6, 6, 'https://ibev2.maybay.net/statics/images/bank-logos/bidv.png');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `Location_ID` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`Location_ID`, `Name`, `Description`) VALUES
('10HP', 'Hải Phòng', NULL),
('11DH', 'Đồng Hới', NULL),
('12QN', 'Quảng Nam', NULL),
('13QNh', 'Quy Nhơn', NULL),
('14BMT', 'Ban Mê Thuật', NULL),
('15CM', 'Cà Mau', NULL),
('16Pl', 'Pleiku', NULL),
('17TH', 'Thanh Hoá', NULL),
('18THoa', 'Tuy Hoà', NULL),
('19CĐ', 'Côn Đảo', NULL),
('1HN', 'Hà Nội', NULL),
('2HCM', 'Hồ Chí Minh', NULL),
('3DN', 'Đà Nẵng', NULL),
('4CT', 'Cần Thơ', NULL),
('5NT', 'Nha Trang', NULL),
('6V', 'Vinh', NULL),
('7H', 'Huế', NULL),
('8DL', 'Đà Lạt', NULL),
('9KG', 'Kiên Giang', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-09-28 06:51:15', '2018-09-28 06:51:15');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-09-28 06:51:15', '2018-09-28 06:51:15', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-09-28 06:51:15', '2018-09-28 06:51:15', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-09-28 06:51:16', '2018-09-28 06:51:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-09-28 06:51:16', '2018-09-28 06:51:16', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-09-28 06:51:19', '2018-09-28 06:51:19', 'voyager.hooks', NULL),
(12, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-09-28 06:51:48', '2018-09-28 06:51:48', 'voyager.categories.index', NULL),
(13, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-09-28 06:51:50', '2018-09-28 06:51:50', 'voyager.posts.index', NULL),
(14, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-09-28 06:51:51', '2018-09-28 06:51:51', 'voyager.pages.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text,
  `body` text,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-09-28 06:51:51', '2018-09-28 06:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(2, 'browse_bread', NULL, '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(3, 'browse_database', NULL, '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(4, 'browse_media', NULL, '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(5, 'browse_compass', NULL, '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(6, 'browse_menus', 'menus', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(7, 'read_menus', 'menus', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(8, 'edit_menus', 'menus', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(9, 'add_menus', 'menus', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(10, 'delete_menus', 'menus', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(11, 'browse_roles', 'roles', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(12, 'read_roles', 'roles', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(13, 'edit_roles', 'roles', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(14, 'add_roles', 'roles', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(15, 'delete_roles', 'roles', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(16, 'browse_users', 'users', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(17, 'read_users', 'users', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(18, 'edit_users', 'users', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(19, 'add_users', 'users', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(20, 'delete_users', 'users', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(21, 'browse_settings', 'settings', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(22, 'read_settings', 'settings', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(23, 'edit_settings', 'settings', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(24, 'add_settings', 'settings', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(25, 'delete_settings', 'settings', '2018-09-28 06:51:17', '2018-09-28 06:51:17'),
(26, 'browse_hooks', NULL, '2018-09-28 06:51:19', '2018-09-28 06:51:19'),
(27, 'browse_categories', 'categories', '2018-09-28 06:51:48', '2018-09-28 06:51:48'),
(28, 'read_categories', 'categories', '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(29, 'edit_categories', 'categories', '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(30, 'add_categories', 'categories', '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(31, 'delete_categories', 'categories', '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(32, 'browse_posts', 'posts', '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(33, 'read_posts', 'posts', '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(34, 'edit_posts', 'posts', '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(35, 'add_posts', 'posts', '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(36, 'delete_posts', 'posts', '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(37, 'browse_pages', 'pages', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(38, 'read_pages', 'pages', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(39, 'edit_pages', 'pages', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(40, 'add_pages', 'pages', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(41, 'delete_pages', 'pages', '2018-09-28 06:51:51', '2018-09-28 06:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text,
  `meta_keywords` text,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-09-28 06:51:50', '2018-09-28 06:51:50'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-09-28 06:51:50', '2018-09-28 06:51:50');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `Reservation_number` varchar(6) NOT NULL,
  `First_Name` int(11) NOT NULL,
  `Last_Name` int(11) NOT NULL,
  `Phone_number` int(11) NOT NULL,
  `Email` int(11) NOT NULL,
  `Requirement` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reservations_details`
--

CREATE TABLE `reservations_details` (
  `ID` int(10) NOT NULL,
  `Reservation_number` varchar(6) NOT NULL,
  `Gender` text NOT NULL,
  `First_Name` text NOT NULL,
  `Last_Name` text NOT NULL,
  `Check-in_baggage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-09-28 06:51:16', '2018-09-28 06:51:16'),
(2, 'user', 'Normal User', '2018-09-28 06:51:16', '2018-09-28 06:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `Route_ID` int(11) NOT NULL,
  `Airport_ID_From` varchar(10) NOT NULL,
  `Airport_ID_To` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`Route_ID`, `Airport_ID_From`, `Airport_ID_To`, `Name`, `from`, `to`) VALUES
(1, 'SGN', 'CAH', 'Sài Gòn - Cà Mau', '2HCM', '15CM'),
(3, 'SGN', 'CXR', 'Sài Gòn - Nha Trang', NULL, NULL),
(4, 'SGN', 'DAD', 'Sài Gòn - Đà Nẵng', NULL, NULL),
(5, 'SGN', 'DLI', 'Sài Gòn - Đà Lạt', NULL, NULL),
(6, 'SGN', 'HAN', 'Sài Gòn - Hà Nội', NULL, NULL),
(7, 'SGN', 'HPH', 'Sài Gòn - Hải Phòng', NULL, NULL),
(8, 'SGN', 'HUI', 'Sài Gòn - Huế', NULL, NULL),
(9, 'SGN', 'PQC', 'Sài Gòn - Phú Quốc', NULL, NULL),
(10, 'SGN', 'PXU', 'Sài Gòn - Pleiku', NULL, NULL),
(11, 'SGN', 'BMV', 'Sài Gòn - Ban Mê Thuật', NULL, NULL),
(12, 'SGN', 'TBB', 'Sài Gòn - Tuy Hoà', NULL, NULL),
(13, 'SGN', 'THD', 'Sài Gòn - Thanh Hoá', NULL, NULL),
(14, 'SGN', 'UIH', 'Sài Gòn - Quy Nhơn', NULL, NULL),
(15, 'SGN', 'VCA', 'Sài Gòn - Cần Thơ', NULL, NULL),
(16, 'SGN', 'VCL', 'Sài Gòn - Quảng Nam', NULL, NULL),
(17, 'SGN', 'VCS', 'Sài Gòn - Côn Đảo', NULL, NULL),
(18, 'SGN', 'VDH', 'Sài Gòn - Đồng Hới', NULL, NULL),
(19, 'SGN', 'VII', 'Sài Gòn - Vinh', NULL, NULL),
(20, 'SGN', 'VKG', 'Sài Gòn - Rạch Giá', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seatclasses`
--

CREATE TABLE `seatclasses` (
  `SeatClass_ID` int(1) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seatclasses`
--

INSERT INTO `seatclasses` (`SeatClass_ID`, `Name`) VALUES
(1, 'Business'),
(2, 'Economy'),
(3, 'First Class'),
(4, 'Premium Economy');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text,
  `details` text,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `Ticket_ID` int(10) NOT NULL,
  `Reservation_number` varchar(6) NOT NULL,
  `Flight_ID` int(10) NOT NULL,
  `SeatClass_ID` int(1) NOT NULL,
  `TicketType_ID` int(2) NOT NULL,
  `Weight` int(2) NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickettypeprices`
--

CREATE TABLE `tickettypeprices` (
  `TTPrice_ID` int(11) NOT NULL,
  `Type_ID` int(2) NOT NULL,
  `Flight_ID` int(10) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickettypeprices`
--

INSERT INTO `tickettypeprices` (`TTPrice_ID`, `Type_ID`, `Flight_ID`, `Price`) VALUES
(1, 1, 1, 1795000),
(2, 2, 1, 1581000),
(3, 3, 1, 154000),
(4, 1, 3, 500000),
(5, 2, 3, 380000),
(6, 3, 3, 110000),
(7, 1, 4, 1074000),
(8, 2, 4, 954000),
(9, 3, 4, 110000),
(10, 1, 9, 1024000),
(11, 2, 9, 887000),
(12, 3, 9, 77000);

-- --------------------------------------------------------

--
-- Table structure for table `tickettypes`
--

CREATE TABLE `tickettypes` (
  `TicketType_ID` int(2) NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tickettypes`
--

INSERT INTO `tickettypes` (`TicketType_ID`, `Name`) VALUES
(1, 'Adult'),
(2, 'Child'),
(3, 'Infant');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-09-28 06:51:51', '2018-09-28 06:51:51'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-09-28 06:51:52', '2018-09-28 06:51:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-09-28 06:51:53', '2018-09-28 06:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$pgrLBqQ4/C9FA0sXtQyXFe4oMLax8jZC.wOLTgXY2BShtQCAjB4pm', 'SOgRxeYWOBTsE0nGWM4YEJpwBrT74ObKFLMhMLSoWRyopo3VDmzHKhSzjxRX', NULL, '2018-09-28 06:51:49', '2018-09-28 06:51:49'),
(2, 2, 'aaa', 'aaa@gmail.com', 'users/default.png', NULL, '$2y$10$Mdn..nsKBQaZ.2h9I8huBeYEs1wqOw36bkWhzJGE.joE3/p.hudlC', NULL, '{\"locale\":\"en\"}', '2018-09-28 06:54:20', '2018-09-28 06:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`Airline_ID`);

--
-- Indexes for table `airplanes`
--
ALTER TABLE `airplanes`
  ADD PRIMARY KEY (`Airplane_ID`);

--
-- Indexes for table `airplane_class`
--
ALTER TABLE `airplane_class`
  ADD PRIMARY KEY (`Airplane_ID`,`Class_ID`) USING BTREE;

--
-- Indexes for table `airplane_model`
--
ALTER TABLE `airplane_model`
  ADD PRIMARY KEY (`Model_ID`),
  ADD KEY `Airplane_ID` (`Airplane_ID`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`Airport_ID`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `baggageprices`
--
ALTER TABLE `baggageprices`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Airline_ID` (`Airline_ID`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`Account_number`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`Flight_ID`),
  ADD KEY `Route_ID` (`Route_ID`),
  ADD KEY `Model_ID` (`Model_ID`),
  ADD KEY `Airline_ID` (`Airline_ID`);

--
-- Indexes for table `image_airline`
--
ALTER TABLE `image_airline`
  ADD PRIMARY KEY (`Image_Airline`),
  ADD KEY `Airline_ID` (`Airline_ID`);

--
-- Indexes for table `image_bank`
--
ALTER TABLE `image_bank`
  ADD PRIMARY KEY (`Image_ID`),
  ADD KEY `Account_number` (`Account_number`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`Reservation_number`);

--
-- Indexes for table `reservations_details`
--
ALTER TABLE `reservations_details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Reservation_number` (`Reservation_number`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`Route_ID`),
  ADD KEY `Airport_ID_From` (`Airport_ID_From`),
  ADD KEY `Airport_ID_To` (`Airport_ID_To`);

--
-- Indexes for table `seatclasses`
--
ALTER TABLE `seatclasses`
  ADD PRIMARY KEY (`SeatClass_ID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`Ticket_ID`),
  ADD KEY `Reservation_number` (`Reservation_number`),
  ADD KEY `tickets_ibfk_2` (`TicketType_ID`);

--
-- Indexes for table `tickettypeprices`
--
ALTER TABLE `tickettypeprices`
  ADD PRIMARY KEY (`TTPrice_ID`),
  ADD KEY `Type_ID` (`Type_ID`),
  ADD KEY `Flight_ID` (`Flight_ID`);

--
-- Indexes for table `tickettypes`
--
ALTER TABLE `tickettypes`
  ADD PRIMARY KEY (`TicketType_ID`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baggageprices`
--
ALTER TABLE `baggageprices`
  MODIFY `ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `Flight_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `image_airline`
--
ALTER TABLE `image_airline`
  MODIFY `Image_Airline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image_bank`
--
ALTER TABLE `image_bank`
  MODIFY `Image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservations_details`
--
ALTER TABLE `reservations_details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `Route_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `seatclasses`
--
ALTER TABLE `seatclasses`
  MODIFY `SeatClass_ID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `Ticket_ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickettypeprices`
--
ALTER TABLE `tickettypeprices`
  MODIFY `TTPrice_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airplane_model`
--
ALTER TABLE `airplane_model`
  ADD CONSTRAINT `airplane_model_ibfk_1` FOREIGN KEY (`Airplane_ID`) REFERENCES `airplanes` (`Airplane_ID`);

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_ibfk_1` FOREIGN KEY (`Location_ID`) REFERENCES `locations` (`Location_ID`);

--
-- Constraints for table `baggageprices`
--
ALTER TABLE `baggageprices`
  ADD CONSTRAINT `baggageprices_ibfk_1` FOREIGN KEY (`Airline_ID`) REFERENCES `airlines` (`Airline_ID`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`Route_ID`) REFERENCES `routes` (`Route_ID`),
  ADD CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`Model_ID`) REFERENCES `airplane_model` (`Model_ID`),
  ADD CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`Airline_ID`) REFERENCES `airlines` (`Airline_ID`);

--
-- Constraints for table `image_airline`
--
ALTER TABLE `image_airline`
  ADD CONSTRAINT `image_airline_ibfk_1` FOREIGN KEY (`Airline_ID`) REFERENCES `airlines` (`Airline_ID`);

--
-- Constraints for table `image_bank`
--
ALTER TABLE `image_bank`
  ADD CONSTRAINT `image_bank_ibfk_1` FOREIGN KEY (`Account_number`) REFERENCES `bank` (`Account_number`);

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations_details`
--
ALTER TABLE `reservations_details`
  ADD CONSTRAINT `reservations_details_ibfk_1` FOREIGN KEY (`Reservation_number`) REFERENCES `reservations` (`Reservation_number`);

--
-- Constraints for table `routes`
--
ALTER TABLE `routes`
  ADD CONSTRAINT `routes_ibfk_1` FOREIGN KEY (`Airport_ID_From`) REFERENCES `airports` (`Airport_ID`),
  ADD CONSTRAINT `routes_ibfk_2` FOREIGN KEY (`Airport_ID_To`) REFERENCES `airports` (`Airport_ID`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Reservation_number`) REFERENCES `reservations` (`Reservation_number`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`TicketType_ID`) REFERENCES `tickettypeprices` (`TTPrice_ID`);

--
-- Constraints for table `tickettypeprices`
--
ALTER TABLE `tickettypeprices`
  ADD CONSTRAINT `tickettypeprices_ibfk_1` FOREIGN KEY (`Type_ID`) REFERENCES `tickettypes` (`TicketType_ID`),
  ADD CONSTRAINT `tickettypeprices_ibfk_2` FOREIGN KEY (`Flight_ID`) REFERENCES `flights` (`Flight_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
