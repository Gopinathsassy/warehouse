-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2023 at 01:58 PM
-- Server version: 10.3.38-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbainruy_venus_warehouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add customer_master', 7, 'add_customer_master'),
(26, 'Can change customer_master', 7, 'change_customer_master'),
(27, 'Can delete customer_master', 7, 'delete_customer_master'),
(28, 'Can view customer_master', 7, 'view_customer_master'),
(29, 'Can add material_master', 8, 'add_material_master'),
(30, 'Can change material_master', 8, 'change_material_master'),
(31, 'Can delete material_master', 8, 'delete_material_master'),
(32, 'Can view material_master', 8, 'view_material_master'),
(33, 'Can add material_stock', 9, 'add_material_stock'),
(34, 'Can change material_stock', 9, 'change_material_stock'),
(35, 'Can delete material_stock', 9, 'delete_material_stock'),
(36, 'Can view material_stock', 9, 'view_material_stock'),
(37, 'Can add vendor_master', 10, 'add_vendor_master'),
(38, 'Can change vendor_master', 10, 'change_vendor_master'),
(39, 'Can delete vendor_master', 10, 'delete_vendor_master'),
(40, 'Can view vendor_master', 10, 'view_vendor_master'),
(41, 'Can add inbound_data', 11, 'add_inbound_data'),
(42, 'Can change inbound_data', 11, 'change_inbound_data'),
(43, 'Can delete inbound_data', 11, 'delete_inbound_data'),
(44, 'Can view inbound_data', 11, 'view_inbound_data'),
(45, 'Can add outbound_data', 12, 'add_outbound_data'),
(46, 'Can change outbound_data', 12, 'change_outbound_data'),
(47, 'Can delete outbound_data', 12, 'delete_outbound_data'),
(48, 'Can view outbound_data', 12, 'view_outbound_data'),
(49, 'Can add inbound_head', 13, 'add_inbound_head'),
(50, 'Can change inbound_head', 13, 'change_inbound_head'),
(51, 'Can delete inbound_head', 13, 'delete_inbound_head'),
(52, 'Can view inbound_head', 13, 'view_inbound_head'),
(53, 'Can add outbound_head', 14, 'add_outbound_head'),
(54, 'Can change outbound_head', 14, 'change_outbound_head'),
(55, 'Can delete outbound_head', 14, 'delete_outbound_head'),
(56, 'Can view outbound_head', 14, 'view_outbound_head');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'wms_management', 'customer_master'),
(8, 'wms_management', 'material_master'),
(9, 'wms_management', 'material_stock'),
(10, 'wms_management', 'vendor_master'),
(11, 'wms_management', 'inbound_data'),
(12, 'wms_management', 'outbound_data'),
(13, 'wms_management', 'inbound_head'),
(14, 'wms_management', 'outbound_head');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-08 10:41:03.799952'),
(2, 'auth', '0001_initial', '2022-09-08 10:41:04.012575'),
(3, 'admin', '0001_initial', '2022-09-08 10:41:04.042844'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-08 10:41:04.055828'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-08 10:41:04.063968'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-08 10:41:04.099125'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-08 10:41:04.114978'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-08 10:41:04.139549'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-08 10:41:04.150751'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-08 10:41:04.164803'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-08 10:41:04.166389'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-08 10:41:04.182732'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-08 10:41:04.206385'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-08 10:41:04.220638'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-08 10:41:04.242995'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-08 10:41:04.258893'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-08 10:41:04.275313'),
(18, 'sessions', '0001_initial', '2022-09-08 10:41:04.288270'),
(19, 'wms_management', '0001_initial', '2022-09-08 10:41:04.297515'),
(20, 'wms_management', '0002_material', '2022-09-08 10:41:04.303206'),
(21, 'wms_management', '0003_material_stock_vendor_master_delete_material_and_more', '2022-09-08 10:41:04.333852'),
(22, 'wms_management', '0004_rename_matcode_material_master_matcode_and_more', '2022-09-08 10:41:04.343987'),
(23, 'wms_management', '0005_inbound_data_outbound_data', '2022-09-08 10:41:04.367338'),
(24, 'wms_management', '0006_rename_uom_material_stock_uom', '2022-09-08 10:41:04.374277'),
(25, 'wms_management', '0007_rename_vendor_inbound_data_serial_num_and_more', '2022-09-09 07:39:16.530927'),
(26, 'wms_management', '0008_inbound_head_outbound_head', '2022-09-09 07:43:59.359543');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_customer_master`
--

CREATE TABLE `wms_management_customer_master` (
  `id` bigint(20) NOT NULL,
  `customer_code` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_customer_master`
--

INSERT INTO `wms_management_customer_master` (`id`, `customer_code`, `customer_name`, `address`) VALUES
(1, 'Select Customer', '', '*'),
(2, 'C001', 'Water Heater sellers', 'Chennai'),
(3, 'C002', 'Electrical and Electronic appliances', 'Tuticorin'),
(4, 'C003', 'New Customer', 'Chennai'),
(5, 'M10WH', '', ''),
(6, 'M10WH', '', ''),
(7, 'M10WH', '', ''),
(8, 'M10WH', '', ''),
(9, 'M10WH', '', ''),
(10, 'M20WH', '', ''),
(11, 'M20WH', '', ''),
(12, 'M20WH', '', ''),
(13, 'M20WH', '', ''),
(14, 'M20WH', '', ''),
(15, 'M20WH', '', ''),
(16, 'M01CF', '', ''),
(17, 'M01CF', '', ''),
(18, 'M01CF', '', ''),
(19, 'M01CF', '', ''),
(20, 'M01AC', '', ''),
(21, 'M01AC', '', ''),
(22, 'M01AC', '', ''),
(23, 'M01AC', '', ''),
(24, 'M01AC', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_inbound_data`
--

CREATE TABLE `wms_management_inbound_data` (
  `id` bigint(20) NOT NULL,
  `GRnum` varchar(50) NOT NULL,
  `matcode` varchar(50) NOT NULL,
  `matdesc` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `scan_date` varchar(50) NOT NULL,
  `scan_time` varchar(50) NOT NULL,
  `serial_num` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_inbound_data`
--

INSERT INTO `wms_management_inbound_data` (`id`, `GRnum`, `matcode`, `matdesc`, `quantity`, `uom`, `scan_date`, `scan_time`, `serial_num`) VALUES
(1, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456'),
(2, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456'),
(3, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456'),
(4, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456'),
(5, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456'),
(6, 'GR-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '18:11:24', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_inbound_head`
--

CREATE TABLE `wms_management_inbound_head` (
  `id` bigint(20) NOT NULL,
  `GRnum` varchar(50) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `no_of_item` varchar(50) NOT NULL,
  `note1` varchar(50) NOT NULL,
  `note2` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_inbound_head`
--

INSERT INTO `wms_management_inbound_head` (`id`, `GRnum`, `vendor`, `date`, `no_of_item`, `note1`, `note2`) VALUES
(1, '', '', '', '', '', ''),
(2, 'GR-1', 'V002 - Venus Plant', '13-09-2022', '6', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_material_master`
--

CREATE TABLE `wms_management_material_master` (
  `id` bigint(20) NOT NULL,
  `matdesc` varchar(50) NOT NULL,
  `matcode` varchar(50) NOT NULL,
  `Uom` varchar(50) NOT NULL,
  `note1` varchar(50) NOT NULL,
  `note2` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_material_master`
--

INSERT INTO `wms_management_material_master` (`id`, `matdesc`, `matcode`, `Uom`, `note1`, `note2`) VALUES
(1, '10 L Water heater', 'M10WH', 'EA', '', ''),
(2, '20 L Water heater', 'M20WH', 'EA', '', ''),
(3, 'Ceiling Fan', 'M01CF', 'EA', '', ''),
(4, 'Air Cooler', 'M01AC', 'EA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_material_stock`
--

CREATE TABLE `wms_management_material_stock` (
  `id` bigint(20) NOT NULL,
  `mat_code` varchar(50) NOT NULL,
  `mat_desc` varchar(50) NOT NULL,
  `curr_stock` varchar(50) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `note1` varchar(50) NOT NULL,
  `note2` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_material_stock`
--

INSERT INTO `wms_management_material_stock` (`id`, `mat_code`, `mat_desc`, `curr_stock`, `uom`, `note1`, `note2`) VALUES
(1, 'M10WH', '10 L Water heater', '88', 'EA', '', ''),
(2, 'M20WH', '20 L Water heater', '0', 'EA', '', ''),
(3, 'M01CF', 'Ceiling Fan', '0', 'EA', '', ''),
(4, 'M01AC', 'Air Cooler', '0', 'EA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_outbound_data`
--

CREATE TABLE `wms_management_outbound_data` (
  `id` bigint(20) NOT NULL,
  `delnum` varchar(50) NOT NULL,
  `matcode` varchar(50) NOT NULL,
  `matdesc` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `scan_date` varchar(50) NOT NULL,
  `scan_time` varchar(50) NOT NULL,
  `serial_num` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_outbound_data`
--

INSERT INTO `wms_management_outbound_data` (`id`, `delnum`, `matcode`, `matdesc`, `quantity`, `uom`, `scan_date`, `scan_time`, `serial_num`) VALUES
(1, 'Del-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '17:40:18', '123456'),
(2, 'Del-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '17:40:18', '123456'),
(3, 'Del-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '17:40:18', '123456'),
(4, 'Del-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '17:40:18', '123456'),
(5, 'Del-1', 'M10WH', 'Water Heater', '1', 'EA', '13-09-2022', '17:40:18', '123456'),
(14, 'Del-3', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:25', '001'),
(11, 'Del-2', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:12', '001'),
(12, 'Del-2', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:12', '001'),
(13, 'Del-2', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:12', '001'),
(15, 'Del-3', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:25', '001'),
(16, 'Del-3', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:25', '001'),
(17, 'Del-3', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:25', '001'),
(18, 'Del-3', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:25', '001'),
(19, 'Del-4', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:37', '001'),
(20, 'Del-4', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:37', '001'),
(21, 'Del-4', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:37', '001'),
(22, 'Del-4', 'M10WH', 'Water Heater', '1', 'EA', '15-09-2022', '15:50:37', '001');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_outbound_head`
--

CREATE TABLE `wms_management_outbound_head` (
  `id` bigint(20) NOT NULL,
  `delnum` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `no_of_item` varchar(50) NOT NULL,
  `note1` varchar(50) NOT NULL,
  `note2` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_outbound_head`
--

INSERT INTO `wms_management_outbound_head` (`id`, `delnum`, `customer`, `date`, `no_of_item`, `note1`, `note2`) VALUES
(1, '', '', '', '', '', ''),
(2, 'Del-1', 'C001 - Water Heater sellers', '13-09-2022', '5', '', ''),
(3, 'Del-2', 'M20WH', '15-09-2022', '3', '', ''),
(4, 'Del-3', 'M20WH', '15-09-2022', '5', '', ''),
(5, 'Del-4', 'M20WH', '15-09-2022', '4', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wms_management_vendor_master`
--

CREATE TABLE `wms_management_vendor_master` (
  `id` bigint(20) NOT NULL,
  `vendor_code` varchar(50) NOT NULL,
  `vendor_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wms_management_vendor_master`
--

INSERT INTO `wms_management_vendor_master` (`id`, `vendor_code`, `vendor_name`, `address`) VALUES
(1, 'Select Vendor', '', '*'),
(2, 'V001', 'Venus Home Appliances', 'Chennai'),
(3, 'V002', 'Venus Plant', 'Tuticorin'),
(4, 'V003', 'Other Vendor', 'Chennai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `wms_management_customer_master`
--
ALTER TABLE `wms_management_customer_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_inbound_data`
--
ALTER TABLE `wms_management_inbound_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_inbound_head`
--
ALTER TABLE `wms_management_inbound_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_material_master`
--
ALTER TABLE `wms_management_material_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_material_stock`
--
ALTER TABLE `wms_management_material_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_outbound_data`
--
ALTER TABLE `wms_management_outbound_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_outbound_head`
--
ALTER TABLE `wms_management_outbound_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wms_management_vendor_master`
--
ALTER TABLE `wms_management_vendor_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wms_management_customer_master`
--
ALTER TABLE `wms_management_customer_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wms_management_inbound_data`
--
ALTER TABLE `wms_management_inbound_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wms_management_inbound_head`
--
ALTER TABLE `wms_management_inbound_head`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wms_management_material_master`
--
ALTER TABLE `wms_management_material_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wms_management_material_stock`
--
ALTER TABLE `wms_management_material_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wms_management_outbound_data`
--
ALTER TABLE `wms_management_outbound_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wms_management_outbound_head`
--
ALTER TABLE `wms_management_outbound_head`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wms_management_vendor_master`
--
ALTER TABLE `wms_management_vendor_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
