-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 09:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zarvitrin_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` char(36) NOT NULL,
  `city_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `receiver_name` varchar(191) NOT NULL,
  `contact_number` varchar(191) NOT NULL,
  `mobile_number` varchar(191) NOT NULL,
  `address` text NOT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` char(36) NOT NULL,
  `user_type` varchar(191) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `event` varchar(191) NOT NULL,
  `auditable_type` varchar(191) NOT NULL,
  `auditable_id` varchar(191) NOT NULL,
  `old_values` text DEFAULT NULL,
  `new_values` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(191) DEFAULT NULL,
  `tags` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `identify_code` varchar(191) NOT NULL,
  `wage_percent` double(4,2) DEFAULT NULL,
  `wage_rial` double(12,3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carriers`
--

INSERT INTO `carriers` (`id`, `user_id`, `identify_code`, `wage_percent`, `wage_rial`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'cfba98d0-7564-418e-a5b3-96da98ef8653', '24873', 0.00, 0.000, '2020-05-20 04:05:51', '2020-05-20 04:05:51', NULL),
('3dba8483-9478-4fe7-aef1-4e457e157f92', 'a808aee7-cd93-4d0d-b274-338bf1b43a11', '1502', 2.00, 50000.000, '2020-04-29 11:31:41', '2020-04-29 11:31:41', NULL),
('5f2205fb-021e-498a-8057-f5012ccc8833', 'f2c72d94-3ace-4ecc-941a-162022e7a24a', '1504', 2.00, 80000.000, '2020-04-29 11:32:36', '2020-04-29 11:32:36', NULL),
('f379f2e6-b88b-4d0e-bc5c-959d271c550a', '205d5029-f5ad-4611-8405-2e3f56d98698', '1503', 2.00, 80000.000, '2020-04-29 11:32:06', '2020-04-29 11:32:06', NULL),
('fbb7ba2c-304d-48db-9891-ffe29e93ea01', '1220c7cb-2b11-4a2b-9516-34908051cc2b', '1501', 2.00, 80000.000, '2020-04-29 11:31:09', '2020-04-29 11:31:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carrier_customer`
--

CREATE TABLE `carrier_customer` (
  `carrier_id` char(36) NOT NULL,
  `customer_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carrier_customer`
--

INSERT INTO `carrier_customer` (`carrier_id`, `customer_id`) VALUES
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '09cea249-b094-476d-aa30-3e61b8582434'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '25c02199-11b3-41df-bc27-6c5c3d0bf9dc'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '2ddb8513-7d8a-4771-a52a-23bdaf0c0967'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3c71404c-49ec-4fa1-b069-64d663acee8a'),
('3dba8483-9478-4fe7-aef1-4e457e157f92', '2ddb8513-7d8a-4771-a52a-23bdaf0c0967');

-- --------------------------------------------------------

--
-- Table structure for table `carrier_owner`
--

CREATE TABLE `carrier_owner` (
  `carrier_id` char(36) NOT NULL,
  `owner_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carrier_owner`
--

INSERT INTO `carrier_owner` (`carrier_id`, `owner_id`) VALUES
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3dba8483-9478-4fe7-aef1-4e457e157f92', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('5f2205fb-021e-498a-8057-f5012ccc8833', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('f379f2e6-b88b-4d0e-bc5c-959d271c550a', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('fbb7ba2c-304d-48db-9891-ffe29e93ea01', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1');

-- --------------------------------------------------------

--
-- Table structure for table `carrier_producer`
--

CREATE TABLE `carrier_producer` (
  `carrier_id` char(36) CHARACTER SET utf8 NOT NULL,
  `producer_id` char(36) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrier_producer`
--

INSERT INTO `carrier_producer` (`carrier_id`, `producer_id`) VALUES
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '06772c25-fe20-49e6-844a-8f32149c1098'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '081034a1-3790-4ce1-94a5-278b8255d001'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '0b474b5d-40ff-4683-a656-41fded2d2bcb'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '132a5e46-918b-49c0-bdb4-6df92ab9d647'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '14cd65eb-0023-4c1a-b46d-f621012e695c'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '1a48105a-8b2e-4259-a0fe-a2482f897e37'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '1b1831da-88d5-43de-8354-6e9cdca8a03b'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '1c44f152-32e6-4d33-a54d-87fae60bd78e'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '1d7427b3-1de9-4241-9d19-c1c73a649608'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '1e89f107-0288-4bbf-8c07-eac69c81cede'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '2044ca25-3192-4f40-ab51-f2f2aaa6cc73'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '22520968-1a57-4f80-afee-a2cda5ca7c92'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '26ad40ab-5122-42c9-b591-2e50bc00cd8c'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '28776704-f959-4977-ac05-6851cad290f9'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '2e8da2f7-6c24-4528-836c-36663a35891f'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3165532c-1223-4bb0-8460-8fa82000fb20'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '32ff30d5-bc83-41f2-8094-f4ad35177b28'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '367e7a0d-e912-4ad6-ae68-af8ee1538596'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3a2ee82e-ad1c-424d-9d65-1d12a4c64b90'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3a5e7fa2-984e-4104-bbfa-93eececaf081'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3bbb0c3b-68b7-4db4-99d5-26de7133069e'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '3fbf3e77-39fa-4fbe-9da2-fd1aaa5d7648'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '4146e233-37bb-41a5-8dfd-01c6e0ffefff'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '457f494d-70ad-40ff-b044-0f14fa596156'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '484549cd-0d13-44c6-a3ab-ff51dbc0658b'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '4a2c37d0-4b22-4e98-a198-464399b65201'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '4bd17282-6625-4bac-ab0a-597ffbecf9a6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '4e992728-9cb9-43da-8900-e649d89c64d4'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '5012ea55-4e47-4b0d-8ba3-ba1086928810'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '52349345-f502-4ac8-902e-7902f38b3a80'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '523e9fd8-3920-4407-98b5-e133c7a5c15d'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '53333542-d550-4883-8146-6773a371b8c6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '54276dce-d785-48bc-bb86-95dd6f6e2170'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '56fcdbde-8296-4a5e-963b-2eba1ff0aba1'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '58a267b8-80d9-43fe-8d95-29b1267b7dd1'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '5d607bde-4029-4fcb-bd14-4792b0323120'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '5dfb0a35-f881-4376-a779-1dd584f4d97b'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '603e5909-bfc9-4186-a71d-c148d23fa232'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '66ad429d-3441-4cdd-b6e5-631b8858c1c6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '671e88e3-8932-4ceb-bbb7-eee225090114'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '71e8b10a-6ac1-4770-a867-c79ec627945f'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '745059d1-feea-4ac9-99bb-62de7602a7f6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '76eaef11-16f6-4396-9ed8-96ba11372861'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '7758181b-ae0e-4ca5-81e7-446aa94ba51c'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '80ab8449-363a-46ce-9f29-f68ec7d86c5e'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '80e09169-c0f0-46a6-b42b-cb0b55084035'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '8af409da-cb0a-4bcb-9b89-960e27909908'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '93bab21f-c12e-4ab2-bab5-b37f6d2cbe77'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '9479bc78-600f-47cc-8282-6749baa884a3'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '9a745f99-dfcc-4d55-803c-fb8080f840df'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', '9ced61c0-44d2-4a92-9df0-11a48d3477b2'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'a4a047c5-8f85-4e4d-bd7a-29151b035c23'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'a5d5e403-1865-4c54-9561-519e3192249d'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'a7c026ba-0173-4bc2-9b25-e40ed0b1593f'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'ad433c77-029a-448f-97c2-5e9776423e93'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'b296ec34-c47e-4a2e-a399-3ecaa9cf6122'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'b41b2133-5824-4257-ad12-3f944c846eee'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'b663f103-a70d-4361-9492-f5ef3b62f5ea'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'bae27c33-7b91-411d-bbf1-b92e22432fa6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'bd258d3b-b79e-4318-902e-4b9314aea4f1'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'bd836ae6-d58e-45ad-88c2-39c329fec6d5'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'be550f29-ae2d-453c-a836-a8196cbc08d0'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'c00d6443-5622-4cb8-b8f0-8696df338c85'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'c2852bb5-49e5-461a-a15f-bd7aaa8620b5'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'c3058628-aad1-4467-992d-945d0582fd92'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'c8f389eb-721b-45ed-9358-cfc3a0c3807a'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'ce3cd2d1-bcaf-480e-a099-002e7106d6a4'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'd4a9a342-6c22-4195-91bd-1b37a3dc60ee'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'dc11f5a4-ca10-4283-ac9a-ab3d728f6f12'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'df515dab-f185-49ef-b7c2-6786d190b8c6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'e274d7ab-eabe-4f20-acba-fffd63c4672d'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'e970c2ab-2938-4291-bcea-6ee784c25f0f'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'eddca960-ab1a-42ba-a8a4-b72b8da17de2'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'ee115450-7c35-4eeb-a0b8-f15103c83099'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'f136ead4-294e-4b1c-a320-932759af3aad'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'f568869f-edb6-4a15-a36d-491789af417e'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'f57e2094-03e2-4187-b072-76ac47679751'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'f5f217d9-cb2b-4c07-9241-ed70cb9d228a'),
('0da23588-5880-4a3f-a5a2-b5821a8305dd', 'fc2912e5-7db2-4a9b-b5bd-a85b6923506d');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `customer_id` char(36) CHARACTER SET utf8 NOT NULL,
  `product_id` char(36) CHARACTER SET utf8 NOT NULL,
  `subcategory_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `size_id` char(36) CHARACTER SET utf8 DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
('248dbb51-13bc-4d98-b543-32b0719653ac', 'دستبند', 'dstbnd-1', '2020-01-23 09:24:06', '2020-01-23 09:24:18', '2020-01-23 09:24:18'),
('39aef691-ed7d-4fcb-9bc6-77fc38166774', 'دستبند', 'dstbnd', '2019-12-22 07:25:17', '2019-12-22 07:25:17', NULL),
('3a5df87b-bd43-4dbb-80b2-b8b7bb40e056', 'پرسینگ', 'rs-n', '2019-12-22 07:31:47', '2020-01-28 17:45:25', '2020-01-28 17:45:25'),
('3b65c737-e71e-4ad6-afd8-5bf411d24b35', 'سرویس', 'sro-s', '2019-12-22 07:24:40', '2019-12-22 07:24:40', NULL),
('69d341df-3580-4d75-ab5f-7336d6fa9650', 'نیم ست', 'n-m-st', '2019-12-22 07:24:48', '2019-12-22 07:24:48', NULL),
('76e4454d-bece-4b8c-b650-87227056ecae', 'پلاک', 'l', '2019-12-22 07:29:36', '2019-12-22 07:29:36', NULL),
('78b5dff2-b359-46ed-b216-8e901146d2e3', 'آویزساعت', 'o-zs-aat', '2019-12-22 07:33:38', '2020-01-28 17:45:36', '2020-01-28 17:45:36'),
('7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر', 'n-shtr', '2019-12-22 07:23:21', '2019-12-22 07:23:21', NULL),
('8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره', 'sho-rh', '2019-12-22 07:29:27', '2020-05-03 19:38:56', NULL),
('9fad35ee-b8be-4cd1-bb8a-880beb895b30', 'تکپوش', 't-osh', '2019-12-22 07:23:10', '2020-01-28 17:50:42', '2020-01-28 17:50:42'),
('a86a1811-2f41-4b2a-980d-c59e16a87f8a', 'پابند', 'bnd', '2019-12-22 07:31:34', '2020-01-28 17:45:48', '2020-01-28 17:45:48'),
('b4c768d8-1ba9-49d4-b6d5-489668b18b98', 'دستبند النگویی', 'dstbnd-ln-o', '2019-12-24 20:06:01', '2020-01-28 17:47:28', '2020-01-28 17:47:28'),
('df25954a-3c17-450b-bec3-0ec1244499f6', 'حلقه ست', 'hlkh-st', '2019-12-22 07:23:29', '2019-12-22 07:23:29', NULL),
('e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'زنجیر', 'zng-r', '2019-12-22 07:25:08', '2019-12-22 07:25:08', NULL),
('eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو', 'ln-o', '2019-12-22 07:22:56', '2019-12-22 07:22:56', NULL),
('f613272d-ec61-4ac9-9982-059a2440f63c', 'زنجیر و دستبند', 'zng-r-o-dstbnd', '2019-12-22 07:29:16', '2020-01-28 17:55:23', '2020-01-28 17:55:23'),
('fd0c163a-03ae-4cb8-a59a-62187505d2e3', 'دستبند وانگشتر', 'dstbnd-o-n-shtr', '2019-12-22 07:35:02', '2020-01-28 17:46:46', '2020-01-28 17:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` char(36) NOT NULL,
  `province_id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `province_id`, `name`) VALUES
('1', '1', 'تبريز'),
('10', '1', 'هاديشهر'),
('100', '7', 'بوشهر'),
('101', '7', 'تنگستان'),
('102', '7', 'دشتستان'),
('103', '7', 'دير'),
('104', '7', 'ديلم'),
('105', '7', 'كنگان'),
('106', '7', 'گناوه'),
('107', '7', 'ريشهر'),
('108', '7', 'دشتي'),
('109', '7', 'خورموج'),
('11', '1', 'بناب'),
('110', '7', 'اهرم'),
('111', '7', 'برازجان'),
('112', '7', 'خارك'),
('113', '7', 'جم'),
('114', '7', 'کاکی'),
('115', '7', 'عسلویه'),
('116', '7', 'بردخون'),
('117', '8', 'تهران'),
('118', '8', 'ورامين'),
('119', '8', 'فيروزكوه'),
('12', '1', 'كليبر'),
('120', '8', 'ري'),
('121', '8', 'دماوند'),
('122', '8', 'اسلامشهر'),
('123', '8', 'رودهن'),
('124', '8', 'لواسان'),
('125', '8', 'بومهن'),
('126', '8', 'تجريش'),
('127', '8', 'فشم'),
('128', '8', 'كهريزك'),
('129', '8', 'پاكدشت'),
('13', '1', 'تسوج'),
('130', '8', 'چهاردانگه'),
('131', '8', 'شريف آباد'),
('132', '8', 'قرچك'),
('133', '8', 'باقرشهر'),
('134', '8', 'شهريار'),
('135', '8', 'رباط كريم'),
('136', '8', 'قدس'),
('137', '8', 'ملارد'),
('138', '9', 'شهركرد'),
('139', '9', 'فارسان'),
('14', '1', 'اهر'),
('140', '9', 'بروجن'),
('141', '9', 'چلگرد'),
('142', '9', 'اردل'),
('143', '9', 'لردگان'),
('144', '9', 'سامان'),
('145', '10', 'قائن'),
('146', '10', 'فردوس'),
('147', '10', 'بيرجند'),
('148', '10', 'نهبندان'),
('149', '10', 'سربيشه'),
('15', '1', 'هريس'),
('150', '10', 'طبس مسینا'),
('151', '10', 'قهستان'),
('152', '10', 'درمیان'),
('153', '11', 'مشهد'),
('154', '11', 'نيشابور'),
('155', '11', 'سبزوار'),
('156', '11', 'كاشمر'),
('157', '11', 'گناباد'),
('158', '11', 'طبس'),
('159', '11', 'تربت حيدريه'),
('16', '1', 'عجبشير'),
('160', '11', 'خواف'),
('161', '11', 'تربت جام'),
('162', '11', 'تايباد'),
('163', '11', 'قوچان'),
('164', '11', 'سرخس'),
('165', '11', 'بردسكن'),
('166', '11', 'فريمان'),
('167', '11', 'چناران'),
('168', '11', 'درگز'),
('169', '11', 'كلات'),
('17', '1', 'هشترود'),
('170', '11', 'طرقبه'),
('171', '11', 'سر ولایت'),
('172', '12', 'بجنورد'),
('173', '12', 'اسفراين'),
('174', '12', 'جاجرم'),
('175', '12', 'شيروان'),
('176', '12', 'آشخانه'),
('177', '12', 'گرمه'),
('178', '12', 'ساروج'),
('179', '13', 'اهواز'),
('18', '1', 'ملكان'),
('180', '13', 'ايرانشهر'),
('181', '13', 'شوش'),
('182', '13', 'آبادان'),
('183', '13', 'خرمشهر'),
('184', '13', 'مسجد سليمان'),
('185', '13', 'ايذه'),
('186', '13', 'شوشتر'),
('187', '13', 'انديمشك'),
('188', '13', 'سوسنگرد'),
('189', '13', 'هويزه'),
('19', '1', 'بستان آباد'),
('190', '13', 'دزفول'),
('191', '13', 'شادگان'),
('192', '13', 'بندر ماهشهر'),
('193', '13', 'بندر امام خميني'),
('194', '13', 'اميديه'),
('195', '13', 'بهبهان'),
('196', '13', 'رامهرمز'),
('197', '13', 'باغ ملك'),
('198', '13', 'هنديجان'),
('199', '13', 'لالي'),
('2', '1', 'كندوان'),
('20', '1', 'ورزقان'),
('200', '13', 'رامشیر'),
('201', '13', 'حمیدیه'),
('202', '13', 'دغاغله'),
('203', '13', 'ملاثانی'),
('204', '13', 'شادگان'),
('205', '13', 'ویسی'),
('206', '14', 'زنجان'),
('207', '14', 'ابهر'),
('208', '14', 'خدابنده'),
('209', '14', 'كارم'),
('21', '1', 'اسكو'),
('210', '14', 'ماهنشان'),
('211', '14', 'خرمدره'),
('212', '14', 'ايجرود'),
('213', '14', 'زرين آباد'),
('214', '14', 'آب بر'),
('215', '14', 'قيدار'),
('216', '15', 'سمنان'),
('217', '15', 'شاهرود'),
('218', '15', 'گرمسار'),
('219', '15', 'ايوانكي'),
('22', '1', 'آذر شهر'),
('220', '15', 'دامغان'),
('221', '15', 'بسطام'),
('222', '16', 'زاهدان'),
('223', '16', 'چابهار'),
('224', '16', 'خاش'),
('225', '16', 'سراوان'),
('226', '16', 'زابل'),
('227', '16', 'سرباز'),
('228', '16', 'نيكشهر'),
('229', '16', 'ايرانشهر'),
('23', '1', 'قره آغاج'),
('230', '16', 'راسك'),
('231', '16', 'ميرجاوه'),
('232', '17', 'شيراز'),
('233', '17', 'اقليد'),
('234', '17', 'داراب'),
('235', '17', 'فسا'),
('236', '17', 'مرودشت'),
('237', '17', 'خرم بيد'),
('238', '17', 'آباده'),
('239', '17', 'كازرون'),
('24', '1', 'ممقان'),
('240', '17', 'ممسني'),
('241', '17', 'سپيدان'),
('242', '17', 'لار'),
('243', '17', 'فيروز آباد'),
('244', '17', 'جهرم'),
('245', '17', 'ني ريز'),
('246', '17', 'استهبان'),
('247', '17', 'لامرد'),
('248', '17', 'مهر'),
('249', '17', 'حاجي آباد'),
('25', '1', 'صوفیان'),
('250', '17', 'نورآباد'),
('251', '17', 'اردكان'),
('252', '17', 'صفاشهر'),
('253', '17', 'ارسنجان'),
('254', '17', 'قيروكارزين'),
('255', '17', 'سوريان'),
('256', '17', 'فراشبند'),
('257', '17', 'سروستان'),
('258', '17', 'ارژن'),
('259', '17', 'گويم'),
('26', '1', 'ایلخچی'),
('260', '17', 'داريون'),
('261', '17', 'زرقان'),
('262', '17', 'خان زنیان'),
('263', '17', 'کوار'),
('264', '17', 'ده بید'),
('265', '17', 'باب انار/خفر'),
('266', '17', 'بوانات'),
('267', '17', 'خرامه'),
('268', '17', 'خنج'),
('269', '17', 'سیاخ دارنگون'),
('27', '1', 'خسروشهر'),
('270', '18', 'قزوين'),
('271', '18', 'تاكستان'),
('272', '18', 'آبيك'),
('273', '18', 'بوئين زهرا'),
('274', '19', 'قم'),
('275', '5', 'طالقان'),
('276', '5', 'نظرآباد'),
('277', '5', 'اشتهارد'),
('278', '5', 'هشتگرد'),
('279', '5', 'كن'),
('28', '1', 'باسمنج'),
('280', '5', 'آسارا'),
('281', '5', 'شهرک گلستان'),
('282', '5', 'اندیشه'),
('283', '5', 'كرج'),
('284', '5', 'نظر آباد'),
('285', '5', 'گوهردشت'),
('286', '5', 'ماهدشت'),
('287', '5', 'مشکین دشت'),
('288', '20', 'سنندج'),
('289', '20', 'ديواندره'),
('29', '1', 'سهند'),
('290', '20', 'بانه'),
('291', '20', 'بيجار'),
('292', '20', 'سقز'),
('293', '20', 'كامياران'),
('294', '20', 'قروه'),
('295', '20', 'مريوان'),
('296', '20', 'صلوات آباد'),
('297', '20', 'حسن آباد'),
('298', '21', 'كرمان'),
('299', '21', 'راور'),
('3', '1', 'بندر شرفخانه'),
('30', '2', 'اروميه'),
('300', '21', 'بابك'),
('301', '21', 'انار'),
('302', '21', 'کوهبنان'),
('303', '21', 'رفسنجان'),
('304', '21', 'بافت'),
('305', '21', 'سيرجان'),
('306', '21', 'كهنوج'),
('307', '21', 'زرند'),
('308', '21', 'بم'),
('309', '21', 'جيرفت'),
('31', '2', 'نقده'),
('310', '21', 'بردسير'),
('311', '22', 'كرمانشاه'),
('312', '22', 'اسلام آباد غرب'),
('313', '22', 'سر پل ذهاب'),
('314', '22', 'كنگاور'),
('315', '22', 'سنقر'),
('316', '22', 'قصر شيرين'),
('317', '22', 'گيلان غرب'),
('318', '22', 'هرسين'),
('319', '22', 'صحنه'),
('32', '2', 'ماكو'),
('320', '22', 'پاوه'),
('321', '22', 'جوانرود'),
('322', '22', 'شاهو'),
('323', '23', 'ياسوج'),
('324', '23', 'گچساران'),
('325', '23', 'دنا'),
('326', '23', 'دوگنبدان'),
('327', '23', 'سي سخت'),
('328', '23', 'دهدشت'),
('329', '23', 'ليكك'),
('33', '2', 'تكاب'),
('330', '24', 'گرگان'),
('331', '24', 'آق قلا'),
('332', '24', 'گنبد كاووس'),
('333', '24', 'علي آباد كتول'),
('334', '24', 'مينو دشت'),
('335', '24', 'تركمن'),
('336', '24', 'كردكوي'),
('337', '24', 'بندر گز'),
('338', '24', 'كلاله'),
('339', '24', 'آزاد شهر'),
('34', '2', 'خوي'),
('340', '24', 'راميان'),
('341', '25', 'رشت'),
('342', '25', 'منجيل'),
('343', '25', 'لنگرود'),
('344', '25', 'رود سر'),
('345', '25', 'تالش'),
('346', '25', 'آستارا'),
('347', '25', 'ماسوله'),
('348', '25', 'آستانه اشرفيه'),
('349', '25', 'رودبار'),
('35', '2', 'مهاباد'),
('350', '25', 'فومن'),
('351', '25', 'صومعه سرا'),
('352', '25', 'بندرانزلي'),
('353', '25', 'كلاچاي'),
('354', '25', 'هشتپر'),
('355', '25', 'رضوان شهر'),
('356', '25', 'ماسال'),
('357', '25', 'شفت'),
('358', '25', 'سياهكل'),
('359', '25', 'املش'),
('36', '2', 'سر دشت'),
('360', '25', 'لاهیجان'),
('361', '25', 'خشک بيجار'),
('362', '25', 'خمام'),
('363', '25', 'لشت نشا'),
('364', '25', 'بندر کياشهر'),
('365', '26', 'خرم آباد'),
('366', '26', 'ماهشهر'),
('367', '26', 'دزفول'),
('368', '26', 'بروجرد'),
('369', '26', 'دورود'),
('37', '2', 'چالدران'),
('370', '26', 'اليگودرز'),
('371', '26', 'ازنا'),
('372', '26', 'نور آباد'),
('373', '26', 'كوهدشت'),
('374', '26', 'الشتر'),
('375', '26', 'پلدختر'),
('376', '27', 'ساري'),
('377', '27', 'آمل'),
('378', '27', 'بابل'),
('379', '27', 'بابلسر'),
('38', '2', 'بوكان'),
('380', '27', 'بهشهر'),
('381', '27', 'تنكابن'),
('382', '27', 'جويبار'),
('383', '27', 'چالوس'),
('384', '27', 'رامسر'),
('385', '27', 'سواد كوه'),
('386', '27', 'قائم شهر'),
('387', '27', 'نكا'),
('388', '27', 'نور'),
('389', '27', 'بلده'),
('39', '2', 'مياندوآب'),
('390', '27', 'نوشهر'),
('391', '27', 'پل سفيد'),
('392', '27', 'محمود آباد'),
('393', '27', 'فريدون كنار'),
('394', '28', 'اراك'),
('395', '28', 'آشتيان'),
('396', '28', 'تفرش'),
('397', '28', 'خمين'),
('398', '28', 'دليجان'),
('399', '28', 'ساوه'),
('4', '1', 'مراغه'),
('40', '2', 'سلماس'),
('400', '28', 'سربند'),
('401', '28', 'محلات'),
('402', '28', 'شازند'),
('403', '29', 'بندرعباس'),
('404', '29', 'قشم'),
('405', '29', 'كيش'),
('406', '29', 'بندر لنگه'),
('407', '29', 'بستك'),
('408', '29', 'حاجي آباد'),
('409', '29', 'دهبارز'),
('41', '2', 'شاهين دژ'),
('410', '29', 'انگهران'),
('411', '29', 'ميناب'),
('412', '29', 'ابوموسي'),
('413', '29', 'بندر جاسك'),
('414', '29', 'تنب بزرگ'),
('415', '29', 'بندر خمیر'),
('416', '29', 'پارسیان'),
('417', '29', 'قشم'),
('418', '30', 'همدان'),
('419', '30', 'ملاير'),
('42', '2', 'پيرانشهر'),
('420', '30', 'تويسركان'),
('421', '30', 'نهاوند'),
('422', '30', 'كبودر اهنگ'),
('423', '30', 'رزن'),
('424', '30', 'اسدآباد'),
('425', '30', 'بهار'),
('426', '31', 'يزد'),
('427', '31', 'تفت'),
('428', '31', 'اردكان'),
('429', '31', 'ابركوه'),
('43', '2', 'سيه چشمه'),
('430', '31', 'ميبد'),
('431', '31', 'طبس'),
('432', '31', 'بافق'),
('433', '31', 'مهريز'),
('434', '31', 'اشكذر'),
('435', '31', 'هرات'),
('436', '31', 'خضرآباد'),
('437', '31', 'شاهديه'),
('438', '31', 'حمیدیه شهر'),
('439', '31', 'سید میرزا'),
('44', '2', 'اشنويه'),
('440', '31', 'زارچ'),
('45', '2', 'چایپاره'),
('46', '2', 'پلدشت'),
('47', '2', 'شوط'),
('48', '3', 'اردبيل'),
('49', '3', 'سرعين'),
('5', '1', 'ميانه'),
('50', '3', 'بيله سوار'),
('51', '3', 'پارس آباد'),
('52', '3', 'خلخال'),
('53', '3', 'مشگين شهر'),
('54', '3', 'مغان'),
('55', '3', 'نمين'),
('56', '3', 'نير'),
('57', '3', 'كوثر'),
('58', '3', 'كيوي'),
('59', '3', 'گرمي'),
('6', '1', 'شبستر'),
('60', '4', 'اصفهان'),
('61', '4', 'فريدن'),
('62', '4', 'فريدون شهر'),
('63', '4', 'فلاورجان'),
('64', '4', 'گلپايگان'),
('65', '4', 'دهاقان'),
('66', '4', 'نطنز'),
('67', '4', 'نايين'),
('68', '4', 'تيران'),
('69', '4', 'كاشان'),
('7', '1', 'مرند'),
('70', '4', 'فولاد شهر'),
('71', '4', 'اردستان'),
('72', '4', 'سميرم'),
('73', '4', 'درچه'),
('74', '4', 'کوهپایه'),
('75', '4', 'مباركه'),
('76', '4', 'شهرضا'),
('77', '4', 'خميني شهر'),
('78', '4', 'شاهين شهر'),
('79', '4', 'نجف آباد'),
('8', '1', 'جلفا'),
('80', '4', 'دولت آباد'),
('81', '4', 'زرين شهر'),
('82', '4', 'آران و بيدگل'),
('83', '4', 'باغ بهادران'),
('84', '4', 'خوانسار'),
('85', '4', 'مهردشت'),
('86', '4', 'علويجه'),
('87', '4', 'عسگران'),
('88', '4', 'نهضت آباد'),
('89', '4', 'حاجي آباد'),
('9', '1', 'سراب'),
('90', '4', 'تودشک'),
('91', '4', 'ورزنه'),
('92', '6', 'ايلام'),
('93', '6', 'مهران'),
('94', '6', 'دهلران'),
('95', '6', 'آبدانان'),
('96', '6', 'شيروان چرداول'),
('97', '6', 'دره شهر'),
('98', '6', 'ايوان'),
('99', '6', 'سرابله');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `identify_code` varchar(191) NOT NULL,
  `order_min_weight` double(7,3) NOT NULL DEFAULT 0.000,
  `order_max_weight` double(9,3) NOT NULL DEFAULT 0.000,
  `order_without_price` tinyint(1) NOT NULL,
  `is_punctual` tinyint(1) NOT NULL DEFAULT 0,
  `is_enable` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `identify_code`, `order_min_weight`, `order_max_weight`, `order_without_price`, `is_punctual`, `is_enable`, `created_at`, `updated_at`, `deleted_at`) VALUES
('09cea249-b094-476d-aa30-3e61b8582434', 'fb1bfc39-6bad-45a0-a8f5-4ee6458db3fe', '7806', 100.000, 500.000, 0, 0, 1, '2020-05-20 04:13:52', '2020-05-20 04:13:52', NULL),
('25c02199-11b3-41df-bc27-6c5c3d0bf9dc', 'e9d678fc-ff7b-48ce-91af-5f15666679d6', '7962', 100.000, 300.000, 0, 0, 1, '2020-05-20 04:13:22', '2020-05-20 04:13:22', NULL),
('2ddb8513-7d8a-4771-a52a-23bdaf0c0967', 'd20bcc10-b029-4dc3-96c3-61121468b302', '0022', 100.000, 5000.000, 1, 1, 1, '2020-05-10 12:35:03', '2020-05-17 07:24:38', NULL),
('3c71404c-49ec-4fa1-b069-64d663acee8a', 'c9cb88f4-37de-4460-b795-6aab498bde8a', '4157', 100.000, 600.000, 0, 0, 1, '2020-05-17 07:37:33', '2020-05-20 04:14:38', NULL),
('90b5d3c9-06cc-48da-a385-eefaebe1e28c', '81131d2a-309b-4431-b611-eadf0f38dac1', '0', 0.000, 1000.000, 1, 1, 1, '2020-05-10 10:05:02', '2020-05-10 12:32:01', NULL),
('d584eee5-092b-41e2-bcf0-be1377b0e58a', '9e585f26-a036-44d7-8ea5-515e1db7e133', '11228', 0.000, 0.000, 1, 1, 1, '2020-05-21 16:19:24', '2020-05-21 16:19:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_owner`
--

CREATE TABLE `customer_owner` (
  `owner_id` char(36) NOT NULL,
  `customer_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_owner`
--

INSERT INTO `customer_owner` (`owner_id`, `customer_id`) VALUES
('6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1', '2ddb8513-7d8a-4771-a52a-23bdaf0c0967'),
('6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1', '3c71404c-49ec-4fa1-b069-64d663acee8a');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `prefix_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `prefix_name`, `created_at`, `updated_at`) VALUES
(1, 'آقا', 'آقای', NULL, NULL),
(2, 'خانم', 'خانم', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` char(36) NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` char(36) NOT NULL,
  `collection_name` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `mime_type` varchar(191) DEFAULT NULL,
  `disk` varchar(191) NOT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
('60210cbb-f3bc-4407-8a46-500bfe56a7ab', 'App\\Models\\Shop\\Product', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'main', 'blob', 'blob', 'image/jpeg', 'public', 290943, '[]', '[]', '[]', 1, '2019-12-28 16:45:59', '2019-12-28 16:45:59'),
('add2fa75-f03a-481b-84eb-58871abf720a', 'App\\Models\\Shop\\Product', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'main', 'blob', 'blob', 'image/jpeg', 'public', 290943, '[]', '[]', '[]', 3, '2019-12-28 17:01:48', '2019-12-28 17:01:48'),
('b796a37e-f78f-4eb3-925b-0e31cceef446', 'App\\Models\\Shop\\Product', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'main', 'blob', 'blob', 'image/jpeg', 'public', 290943, '[]', '[]', '[]', 2, '2019-12-28 17:00:59', '2019-12-28 17:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(25, '2020_05_30_204851_create_addresses_table', 0),
(26, '2020_05_30_204851_create_audits_table', 0),
(27, '2020_05_30_204851_create_carrier_customer_table', 0),
(28, '2020_05_30_204851_create_carrier_owner_table', 0),
(29, '2020_05_30_204851_create_carrier_producer_table', 0),
(30, '2020_05_30_204851_create_carriers_table', 0),
(31, '2020_05_30_204851_create_categories_table', 0),
(32, '2020_05_30_204851_create_cities_table', 0),
(33, '2020_05_30_204851_create_customer_owner_table', 0),
(34, '2020_05_30_204851_create_customers_table', 0),
(35, '2020_05_30_204851_create_genders_table', 0),
(36, '2020_05_30_204851_create_media_table', 0),
(37, '2020_05_30_204851_create_owner_producer_table', 0),
(38, '2020_05_30_204851_create_owners_table', 0),
(39, '2020_05_30_204851_create_password_resets_table', 0),
(40, '2020_05_30_204851_create_permission_groups_table', 0),
(41, '2020_05_30_204851_create_permission_permission_group_table', 0),
(42, '2020_05_30_204851_create_permission_role_assignment_table', 0),
(43, '2020_05_30_204851_create_permissions_table', 0),
(44, '2020_05_30_204851_create_price_ranges_table', 0),
(45, '2020_05_30_204851_create_producers_table', 0),
(46, '2020_05_30_204851_create_product_images_table', 0),
(47, '2020_05_30_204851_create_product_subcategories_table', 0),
(48, '2020_05_30_204851_create_product_subcategory_size_table', 0),
(49, '2020_05_30_204851_create_products_table', 0),
(50, '2020_05_30_204851_create_provinces_table', 0),
(51, '2020_05_30_204851_create_role_assignments_table', 0),
(52, '2020_05_30_204851_create_role_user_table', 0),
(53, '2020_05_30_204851_create_roles_table', 0),
(54, '2020_05_30_204851_create_sessions_table', 0),
(55, '2020_05_30_204851_create_sizes_table', 0),
(56, '2020_05_30_204851_create_subcategories_table', 0),
(57, '2020_05_30_204851_create_users_table', 0),
(58, '2020_05_30_204851_create_wage_ranges_table', 0),
(59, '2020_05_30_204851_create_weight_ranges_table', 0),
(60, '2020_05_30_204854_add_foreign_keys_to_addresses_table', 0),
(61, '2020_05_30_204854_add_foreign_keys_to_carrier_customer_table', 0),
(62, '2020_05_30_204854_add_foreign_keys_to_carrier_owner_table', 0),
(63, '2020_05_30_204854_add_foreign_keys_to_carrier_producer_table', 0),
(64, '2020_05_30_204854_add_foreign_keys_to_carriers_table', 0),
(65, '2020_05_30_204854_add_foreign_keys_to_cities_table', 0),
(66, '2020_05_30_204854_add_foreign_keys_to_customer_owner_table', 0),
(67, '2020_05_30_204854_add_foreign_keys_to_customers_table', 0),
(68, '2020_05_30_204854_add_foreign_keys_to_owner_producer_table', 0),
(69, '2020_05_30_204854_add_foreign_keys_to_owners_table', 0),
(70, '2020_05_30_204854_add_foreign_keys_to_permission_permission_group_table', 0),
(71, '2020_05_30_204854_add_foreign_keys_to_permission_role_assignment_table', 0),
(72, '2020_05_30_204854_add_foreign_keys_to_producers_table', 0),
(73, '2020_05_30_204854_add_foreign_keys_to_product_images_table', 0),
(74, '2020_05_30_204854_add_foreign_keys_to_product_subcategories_table', 0),
(75, '2020_05_30_204854_add_foreign_keys_to_product_subcategory_size_table', 0),
(76, '2020_05_30_204854_add_foreign_keys_to_products_table', 0),
(77, '2020_05_30_204854_add_foreign_keys_to_role_assignments_table', 0),
(78, '2020_05_30_204854_add_foreign_keys_to_role_user_table', 0),
(79, '2020_05_30_204854_add_foreign_keys_to_sizes_table', 0),
(80, '2020_05_30_204854_add_foreign_keys_to_subcategories_table', 0),
(81, '2020_05_30_204854_add_foreign_keys_to_users_table', 0);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `identify_code` varchar(191) NOT NULL,
  `business_name` varchar(191) NOT NULL,
  `wage_percent` double(4,2) DEFAULT NULL,
  `wage_rial` double(12,3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `user_id`, `identify_code`, `business_name`, `wage_percent`, `wage_rial`, `created_at`, `updated_at`, `deleted_at`) VALUES
('6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1', '1d1dea23-26b0-4b92-a6e2-27fd59a4d147', '1101', 'بنکدار', 1.00, 1500.000, '2019-12-24 09:14:54', '2019-12-24 09:14:54', NULL),
('e36c8315-e36e-48d5-9a65-19414541166a', '81131d2a-309b-4431-b611-eadf0f38dac1', '1222000', 'تولید کننده', 10.00, 1200.000, '2020-05-10 09:26:23', '2020-05-10 10:05:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner_producer`
--

CREATE TABLE `owner_producer` (
  `producer_id` char(36) NOT NULL,
  `owner_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `owner_producer`
--

INSERT INTO `owner_producer` (`producer_id`, `owner_id`) VALUES
('06772c25-fe20-49e6-844a-8f32149c1098', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('081034a1-3790-4ce1-94a5-278b8255d001', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('0b474b5d-40ff-4683-a656-41fded2d2bcb', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('132a5e46-918b-49c0-bdb4-6df92ab9d647', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('14cd65eb-0023-4c1a-b46d-f621012e695c', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('1a48105a-8b2e-4259-a0fe-a2482f897e37', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('1b1831da-88d5-43de-8354-6e9cdca8a03b', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('1c44f152-32e6-4d33-a54d-87fae60bd78e', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('1d7427b3-1de9-4241-9d19-c1c73a649608', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('1e89f107-0288-4bbf-8c07-eac69c81cede', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('2044ca25-3192-4f40-ab51-f2f2aaa6cc73', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('22520968-1a57-4f80-afee-a2cda5ca7c92', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('26ad40ab-5122-42c9-b591-2e50bc00cd8c', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('28776704-f959-4977-ac05-6851cad290f9', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('2e8da2f7-6c24-4528-836c-36663a35891f', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3165532c-1223-4bb0-8460-8fa82000fb20', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('32ff30d5-bc83-41f2-8094-f4ad35177b28', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('367e7a0d-e912-4ad6-ae68-af8ee1538596', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3a2ee82e-ad1c-424d-9d65-1d12a4c64b90', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3a5e7fa2-984e-4104-bbfa-93eececaf081', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3bbb0c3b-68b7-4db4-99d5-26de7133069e', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('3fbf3e77-39fa-4fbe-9da2-fd1aaa5d7648', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('4146e233-37bb-41a5-8dfd-01c6e0ffefff', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('457f494d-70ad-40ff-b044-0f14fa596156', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('484549cd-0d13-44c6-a3ab-ff51dbc0658b', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('4a2c37d0-4b22-4e98-a198-464399b65201', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('4bd17282-6625-4bac-ab0a-597ffbecf9a6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('4e992728-9cb9-43da-8900-e649d89c64d4', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('5012ea55-4e47-4b0d-8ba3-ba1086928810', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('52349345-f502-4ac8-902e-7902f38b3a80', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('523e9fd8-3920-4407-98b5-e133c7a5c15d', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('53333542-d550-4883-8146-6773a371b8c6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('54276dce-d785-48bc-bb86-95dd6f6e2170', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('56fcdbde-8296-4a5e-963b-2eba1ff0aba1', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('58a267b8-80d9-43fe-8d95-29b1267b7dd1', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('5d607bde-4029-4fcb-bd14-4792b0323120', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('5dfb0a35-f881-4376-a779-1dd584f4d97b', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('603e5909-bfc9-4186-a71d-c148d23fa232', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('66ad429d-3441-4cdd-b6e5-631b8858c1c6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('671e88e3-8932-4ceb-bbb7-eee225090114', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('71e8b10a-6ac1-4770-a867-c79ec627945f', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('745059d1-feea-4ac9-99bb-62de7602a7f6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('76eaef11-16f6-4396-9ed8-96ba11372861', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('7758181b-ae0e-4ca5-81e7-446aa94ba51c', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('80ab8449-363a-46ce-9f29-f68ec7d86c5e', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('80e09169-c0f0-46a6-b42b-cb0b55084035', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('8af409da-cb0a-4bcb-9b89-960e27909908', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('93bab21f-c12e-4ab2-bab5-b37f6d2cbe77', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('9479bc78-600f-47cc-8282-6749baa884a3', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('9a745f99-dfcc-4d55-803c-fb8080f840df', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('9ced61c0-44d2-4a92-9df0-11a48d3477b2', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('a4a047c5-8f85-4e4d-bd7a-29151b035c23', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('a5d5e403-1865-4c54-9561-519e3192249d', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('a7c026ba-0173-4bc2-9b25-e40ed0b1593f', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('ad433c77-029a-448f-97c2-5e9776423e93', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('b296ec34-c47e-4a2e-a399-3ecaa9cf6122', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('b41b2133-5824-4257-ad12-3f944c846eee', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('b663f103-a70d-4361-9492-f5ef3b62f5ea', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('bae27c33-7b91-411d-bbf1-b92e22432fa6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('bd258d3b-b79e-4318-902e-4b9314aea4f1', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('bd836ae6-d58e-45ad-88c2-39c329fec6d5', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('be550f29-ae2d-453c-a836-a8196cbc08d0', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('c00d6443-5622-4cb8-b8f0-8696df338c85', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('c2852bb5-49e5-461a-a15f-bd7aaa8620b5', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('c3058628-aad1-4467-992d-945d0582fd92', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('c8f389eb-721b-45ed-9358-cfc3a0c3807a', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('ce3cd2d1-bcaf-480e-a099-002e7106d6a4', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('d4a9a342-6c22-4195-91bd-1b37a3dc60ee', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('dc11f5a4-ca10-4283-ac9a-ab3d728f6f12', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('df515dab-f185-49ef-b7c2-6786d190b8c6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('e274d7ab-eabe-4f20-acba-fffd63c4672d', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('e64a0e18-f97a-4879-99d4-7dfae0c09da6', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('e970c2ab-2938-4291-bcea-6ee784c25f0f', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('eddca960-ab1a-42ba-a8a4-b72b8da17de2', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('ee115450-7c35-4eeb-a0b8-f15103c83099', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('f136ead4-294e-4b1c-a320-932759af3aad', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('f568869f-edb6-4a15-a36d-491789af417e', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('f57e2094-03e2-4187-b072-76ac47679751', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('f5f217d9-cb2b-4c07-9241-ed70cb9d228a', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('fc2912e5-7db2-4a9b-b5bd-a85b6923506d', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('fc58e877-c689-4fd8-b1dd-dfb068215b1c', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('fd928ed5-008b-4a20-8493-b26d6f7ed29e', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1'),
('ffb69382-a0b0-4e2f-8308-d5ee84e79778', '6fac3afa-7fb3-4d6a-b4f8-4f8f0aee53b1');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `title`, `deleted_at`) VALUES
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', 'crud', 'ایجاد / ویرایش / مشاهده / حذف', NULL),
('488428e1-ed82-4b4e-ac8b-d806baac4792', 'view', 'مشاهده', NULL),
('991af575-ce68-4025-8a7a-b5fd4e34de18', 'toggle', 'تغییر وضعیت', NULL),
('f48bcd72-53fd-4e87-971b-9b4d2ce0d215', 'reset', 'ریست', NULL),
('fd1c7f57-dc1d-453a-b73a-04266d021857', 'read', 'فهرســت', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `title`, `deleted_at`) VALUES
('0860dd33-62d2-4a1c-9a68-cfaa6a0e56f0', 'Owner', 'بنک دار', NULL),
('18c7e5a0-ad6a-4bd3-b0d0-7e06efd7414c', 'Permission', 'مجوز', NULL),
('1c2b6851-07b1-4a4d-95da-cd08c2e84e48', 'Customer', 'مشتری', NULL),
('2e23158a-426e-442f-9a44-a241bb57a411', 'WageRange', 'بازه کارمــزد', NULL),
('387d4b35-32e1-46cd-9308-92b8e67965f3', 'Carrier', 'حامل', NULL),
('40a5a9da-69db-442a-ad60-f19f0e31fc2a', 'Subcategory', 'دسته بندی دوم محصول', NULL),
('45c67040-6312-49fb-8b49-4a1725f0a81e', 'PermissionGroup', 'گروه مجوز', NULL),
('45ffc46e-724c-4ffa-8fac-1d0bb0976d2c', 'Role', 'سطح دسترسی', NULL),
('6754f6fb-d87a-4db9-b7f1-ce7eb4f06878', 'User', 'کاربر', NULL),
('797c8634-84bf-4117-8198-23d623384d12', 'PriceRange', 'بــازه قیمت', NULL),
('82fdc788-f8a7-4213-84a5-3cef9405f437', 'WeightRange', 'بــازه وزن', NULL),
('903d0c35-271f-4a50-9a69-76ec072c30d8', 'Producer', 'تولید کننده', NULL),
('b1868b3f-0696-4480-8e80-f5dacfdf55d3', 'Category', 'دسته بندی محصول', NULL),
('cf64e11b-5dc7-4ef5-8837-05c7e4b4f870', 'Product', 'محصول', NULL),
('d1716e63-5ce8-4410-aea2-dec051c76018', 'AdminPanel', 'پنل مدیریت', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_permission_group`
--

CREATE TABLE `permission_permission_group` (
  `permission_id` char(36) NOT NULL,
  `permission_group_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_permission_group`
--

INSERT INTO `permission_permission_group` (`permission_id`, `permission_group_id`) VALUES
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '0860dd33-62d2-4a1c-9a68-cfaa6a0e56f0'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '18c7e5a0-ad6a-4bd3-b0d0-7e06efd7414c'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '1c2b6851-07b1-4a4d-95da-cd08c2e84e48'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '2e23158a-426e-442f-9a44-a241bb57a411'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '387d4b35-32e1-46cd-9308-92b8e67965f3'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '40a5a9da-69db-442a-ad60-f19f0e31fc2a'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '45c67040-6312-49fb-8b49-4a1725f0a81e'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '45ffc46e-724c-4ffa-8fac-1d0bb0976d2c'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '6754f6fb-d87a-4db9-b7f1-ce7eb4f06878'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '797c8634-84bf-4117-8198-23d623384d12'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '82fdc788-f8a7-4213-84a5-3cef9405f437'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', '903d0c35-271f-4a50-9a69-76ec072c30d8'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', 'b1868b3f-0696-4480-8e80-f5dacfdf55d3'),
('02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924', 'cf64e11b-5dc7-4ef5-8837-05c7e4b4f870'),
('488428e1-ed82-4b4e-ac8b-d806baac4792', 'd1716e63-5ce8-4410-aea2-dec051c76018'),
('991af575-ce68-4025-8a7a-b5fd4e34de18', '6754f6fb-d87a-4db9-b7f1-ce7eb4f06878'),
('991af575-ce68-4025-8a7a-b5fd4e34de18', 'cf64e11b-5dc7-4ef5-8837-05c7e4b4f870'),
('f48bcd72-53fd-4e87-971b-9b4d2ce0d215', '6754f6fb-d87a-4db9-b7f1-ce7eb4f06878'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '0860dd33-62d2-4a1c-9a68-cfaa6a0e56f0'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '1c2b6851-07b1-4a4d-95da-cd08c2e84e48'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '2e23158a-426e-442f-9a44-a241bb57a411'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '387d4b35-32e1-46cd-9308-92b8e67965f3'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '40a5a9da-69db-442a-ad60-f19f0e31fc2a'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '45ffc46e-724c-4ffa-8fac-1d0bb0976d2c'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '6754f6fb-d87a-4db9-b7f1-ce7eb4f06878'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '797c8634-84bf-4117-8198-23d623384d12'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '82fdc788-f8a7-4213-84a5-3cef9405f437'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', '903d0c35-271f-4a50-9a69-76ec072c30d8'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', 'b1868b3f-0696-4480-8e80-f5dacfdf55d3'),
('fd1c7f57-dc1d-453a-b73a-04266d021857', 'cf64e11b-5dc7-4ef5-8837-05c7e4b4f870');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role_assignment`
--

CREATE TABLE `permission_role_assignment` (
  `role_assignment_id` char(36) NOT NULL,
  `permission_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_role_assignment`
--

INSERT INTO `permission_role_assignment` (`role_assignment_id`, `permission_id`) VALUES
('02ea821a-1690-4c18-9997-0c52c87d408a', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('02ea821a-1690-4c18-9997-0c52c87d408a', '991af575-ce68-4025-8a7a-b5fd4e34de18'),
('02ea821a-1690-4c18-9997-0c52c87d408a', 'f48bcd72-53fd-4e87-971b-9b4d2ce0d215'),
('02ea821a-1690-4c18-9997-0c52c87d408a', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('12af0232-a629-46c0-9339-5d3348ff4935', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('1445312d-f564-47be-a79b-59a266d057dd', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('1445312d-f564-47be-a79b-59a266d057dd', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('1f1d3d0d-0501-49a4-8e3a-0571013b58a5', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('1f1d3d0d-0501-49a4-8e3a-0571013b58a5', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('2d81f37a-5f8e-4cc2-8c91-773af85c7596', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('2d81f37a-5f8e-4cc2-8c91-773af85c7596', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('3341057c-ee83-4fa5-adee-75567215912a', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('623f2c9e-3bfb-46f5-8742-5c65c2c806c1', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('623f2c9e-3bfb-46f5-8742-5c65c2c806c1', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('6ef257f8-c81f-4081-af94-977f4a9dc331', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('6ef257f8-c81f-4081-af94-977f4a9dc331', '991af575-ce68-4025-8a7a-b5fd4e34de18'),
('6ef257f8-c81f-4081-af94-977f4a9dc331', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('7908ec88-d25f-43f6-8216-34f3edb7537c', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('7908ec88-d25f-43f6-8216-34f3edb7537c', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('7f5b2417-7b4d-4efb-96f8-331c9a417963', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('7f5b2417-7b4d-4efb-96f8-331c9a417963', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('904aa589-ae86-467d-8686-7684ffa26d31', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('904aa589-ae86-467d-8686-7684ffa26d31', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('94f2b2f3-9b8c-493e-a0cc-6bd20f203edd', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('94f2b2f3-9b8c-493e-a0cc-6bd20f203edd', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('a65181fa-ecaf-4e22-bdd7-46c0d61ed510', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('a65181fa-ecaf-4e22-bdd7-46c0d61ed510', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('ac602b59-62e0-4fa3-868d-4ce62af0622e', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('ac602b59-62e0-4fa3-868d-4ce62af0622e', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('bccc999a-2452-43a2-98d6-36615ec251ad', '488428e1-ed82-4b4e-ac8b-d806baac4792'),
('c1d65f57-b864-415a-a300-19a32b9569c0', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('c1d65f57-b864-415a-a300-19a32b9569c0', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('f38d3b4b-b8cc-4952-9f1a-46c1b2bf250b', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('f38d3b4b-b8cc-4952-9f1a-46c1b2bf250b', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('f95925eb-6744-4c91-be57-7cd3820c1fa4', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('f95925eb-6744-4c91-be57-7cd3820c1fa4', 'fd1c7f57-dc1d-453a-b73a-04266d021857'),
('fbb0e690-8d0f-462f-aa84-23c490a31f13', '02f2d9cf-6eea-4ffa-a6d9-d5cdf4b5d924'),
('fbb0e690-8d0f-462f-aa84-23c490a31f13', 'fd1c7f57-dc1d-453a-b73a-04266d021857');

-- --------------------------------------------------------

--
-- Table structure for table `price_ranges`
--

CREATE TABLE `price_ranges` (
  `id` char(36) NOT NULL,
  `range_from` double(15,3) NOT NULL,
  `range_to` double(15,3) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `price_ranges`
--

INSERT INTO `price_ranges` (`id`, `range_from`, `range_to`, `slug`, `deleted_at`) VALUES
('0870e33c-da2d-4946-8035-86e91004958f', 60000.000, 80000.000, '60000-80000', NULL),
('25fdda28-7871-4458-9a5d-d1625c5a0bd3', 0.000, 10000.000, '0-10000', NULL),
('2934388e-bba9-41c5-aef8-cd1ba7d7b389', 100000.000, 150000.000, '100000-150000', NULL),
('386b37e5-cfde-459d-819d-c13fa058bf6f', 250000.000, 300000.000, '250000-300000', NULL),
('414ecffc-de67-4929-9f64-3fdc7fd79262', 300000.000, 350000.000, '300000-350000', NULL),
('41b33097-e356-47b6-ad2c-e9ba8f660725', 400000.000, 450000.000, '400000-450000', NULL),
('4ee537e6-e020-4942-a489-ed5faa0b4ed8', 550000.000, 600000.000, '550000-600000', NULL),
('508f79d5-1092-4206-bcff-786cca413743', 450000.000, 500000.000, '450000-500000', NULL),
('51ecb93a-e252-4cb4-80f6-5084436693a6', 10000.000, 20000.000, '10000-20000', NULL),
('77de309d-c972-4f3c-8e7e-a581122c5f8e', 600000.000, 650000.000, '600000-650000', NULL),
('7af8494d-5e45-4079-abeb-fa876c86d67a', 350000.000, 400000.000, '350000-400000', NULL),
('918e2961-999c-45d5-a2df-89b615160531', 30000.000, 50000.000, '30000-50000', NULL),
('9fccfcb5-ee9f-4988-96ac-4d91f2f9845c', 20000.000, 30000.000, '20000-30000', NULL),
('c609a939-1279-441c-acf3-467ca7c932f1', 150000.000, 200000.000, '150000-200000', NULL),
('c9a0ab31-eff2-426d-bd26-3b880c7388b0', 500000.000, 550000.000, '500000-550000', NULL),
('cd358552-2a1a-4162-bb38-87be5cadf127', 80000.000, 100000.000, '80000-100000', NULL),
('f4a8d0ac-6051-4281-8c95-3ebba9956b78', 200000.000, 250000.000, '200000-250000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `identify_code` varchar(191) NOT NULL,
  `business_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `user_id`, `identify_code`, `business_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
('06772c25-fe20-49e6-844a-8f32149c1098', 'e5c849e3-c1e2-426d-9627-afae14946b2e', '390', 'تولیدکننده', '2020-04-29 07:24:05', '2020-04-29 07:24:05', NULL),
('081034a1-3790-4ce1-94a5-278b8255d001', 'dd45773c-513a-43a4-ac3e-12b651e8451d', 'E860', 'حامل سازنده', '2019-12-24 09:02:04', '2019-12-24 09:02:04', NULL),
('0b474b5d-40ff-4683-a656-41fded2d2bcb', '26b9930c-8cfc-4577-93aa-7b7d77edd013', 'E1258', 'سازنده', '2019-12-24 10:08:26', '2019-12-24 10:08:26', NULL),
('132a5e46-918b-49c0-bdb4-6df92ab9d647', 'fa2a7853-4b2c-4e37-80e6-6c29249fff4a', 'O82', 'سازنده', '2019-12-24 09:05:09', '2019-12-24 09:05:09', NULL),
('14cd65eb-0023-4c1a-b46d-f621012e695c', '067cbede-80fa-403b-8a84-4e6eb3761847', '2187', 'تولید کننده', '2020-04-29 07:41:58', '2020-04-29 07:41:58', NULL),
('1a48105a-8b2e-4259-a0fe-a2482f897e37', 'eb608c38-7d8e-4c47-a540-ea256881b310', '1254', 'تولید کننده', '2020-04-29 07:33:18', '2020-04-29 07:33:18', NULL),
('1b1831da-88d5-43de-8354-6e9cdca8a03b', 'ea6128f0-12a2-4c43-bbe5-a8d72e6826db', '1247', 'تولیدکننده', '2020-04-29 07:32:54', '2020-04-29 07:32:54', NULL),
('1c44f152-32e6-4d33-a54d-87fae60bd78e', '9a395e5d-4c8d-4055-8e46-90365d39da38', '1842', 'تولید کننده', '2020-04-29 07:40:08', '2020-04-29 07:40:08', NULL),
('1d7427b3-1de9-4241-9d19-c1c73a649608', 'ab9ea803-95b3-404e-818b-879112c34c6c', 'T1423', 'سازنده', '2019-12-24 10:09:32', '2019-12-24 10:09:32', NULL),
('1e89f107-0288-4bbf-8c07-eac69c81cede', '99e458a6-0749-4769-89b4-9c47de845b4a', 'E821', 'تولیدکننده', '2019-12-23 20:33:58', '2019-12-24 08:56:54', NULL),
('2044ca25-3192-4f40-ab51-f2f2aaa6cc73', '334a6acf-d661-43a3-b30c-97b1ffc3fe68', 'E600', 'حامل سازنده', '2019-12-24 08:58:04', '2019-12-24 08:58:04', NULL),
('22520968-1a57-4f80-afee-a2cda5ca7c92', '5fdfe905-a4f5-438d-8f3e-470513e29b72', '2668', 'تولیدکننده', '2020-04-29 07:26:37', '2020-04-29 07:26:37', NULL),
('26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'e1222ed4-45f8-47c4-979f-a05b4d1deed1', 'Y657', 'حامل سازنده', '2019-12-24 09:02:38', '2019-12-24 09:02:38', NULL),
('28776704-f959-4977-ac05-6851cad290f9', '29b474b0-04d1-4030-bf4e-1a7e0fd20fe5', '2137', 'تولیدکننده', '2020-05-05 08:52:36', '2020-05-05 08:52:36', NULL),
('2e8da2f7-6c24-4528-836c-36663a35891f', 'a1cefc3e-06cc-482b-9562-c75c9b5da409', '2575', 'تولید کننده', '2020-04-29 07:45:26', '2020-04-29 07:45:26', NULL),
('3165532c-1223-4bb0-8460-8fa82000fb20', '638ccec6-7954-4902-b98f-ca64a1bc24a6', '1470', 'تولید کننده', '2020-04-29 07:34:51', '2020-04-29 07:34:51', NULL),
('32ff30d5-bc83-41f2-8094-f4ad35177b28', '6731e34d-53e6-4eee-b2ed-1e79d1153cd2', '560', 'تولید کننده', '2020-04-29 07:30:27', '2020-04-29 07:30:27', NULL),
('367e7a0d-e912-4ad6-ae68-af8ee1538596', '3ef667c0-bb2f-4024-b890-2077ef3bad4e', '988', 'تولید کننده', '2020-04-29 07:31:45', '2020-04-29 07:31:45', NULL),
('3a2ee82e-ad1c-424d-9d65-1d12a4c64b90', '26b9930c-8cfc-4577-93aa-7b7d77edd013', '75', 'تولیدکننده', '2020-04-29 07:16:54', '2020-04-29 07:16:54', NULL),
('3a5e7fa2-984e-4104-bbfa-93eececaf081', '6731e34d-53e6-4eee-b2ed-1e79d1153cd2', '1401', 'تولیدکننده', '2020-01-17 11:44:48', '2020-01-17 11:44:48', NULL),
('3bbb0c3b-68b7-4db4-99d5-26de7133069e', '6b2a0923-dd87-493f-a0a0-e0a352ee2548', '2579', 'تولید کننده', '2020-04-29 07:44:59', '2020-04-29 07:44:59', NULL),
('3fbf3e77-39fa-4fbe-9da2-fd1aaa5d7648', 'ff15cb55-546c-41b1-a54a-dbf41ee835f0', '2567', 'تولیدکننده', '2020-04-29 07:43:49', '2020-04-29 07:43:49', NULL),
('4146e233-37bb-41a5-8dfd-01c6e0ffefff', '02d6963b-4874-4751-9207-d76cbe0239e8', '1774', 'تولید کننده', '2020-04-29 07:39:07', '2020-04-29 07:39:07', NULL),
('457f494d-70ad-40ff-b044-0f14fa596156', '40265539-6e2a-4aba-8fd0-e98350f41b9a', '28', 'تولیدکننده', '2020-04-29 07:15:22', '2020-04-29 07:15:22', NULL),
('484549cd-0d13-44c6-a3ab-ff51dbc0658b', '2c8b47db-9a9c-46db-a0f1-47b848f05a95', '2786', 'تولیدکننده', '2020-04-29 07:29:01', '2020-04-29 07:29:01', NULL),
('4a2c37d0-4b22-4e98-a198-464399b65201', 'f8f14bbf-03ab-4d10-8a1f-358a80fb24d3', '1301', 'تولیدکننده', '2020-04-29 07:34:08', '2020-04-29 07:34:08', NULL),
('4bd17282-6625-4bac-ab0a-597ffbecf9a6', '7fc086cf-5884-4562-abbf-f2ef0c996b07', '1546', 'تولید کننده', '2020-04-29 07:35:16', '2020-04-29 07:35:16', NULL),
('4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'be846416-94ad-46bd-bce7-bc0326cacb7d', '2771', 'تولیدکننده', '2020-04-29 07:28:40', '2020-04-29 07:28:40', NULL),
('4e992728-9cb9-43da-8900-e649d89c64d4', '7316a9b7-30d5-43a9-84d8-c0c82a8d0177', '2573', 'تولید کننده', '2020-04-29 07:44:32', '2020-04-29 07:44:32', NULL),
('5012ea55-4e47-4b0d-8ba3-ba1086928810', '516e38de-728d-4f42-ad3b-b80f05b426a6', '2755', 'تولیدکننده', '2020-04-29 07:28:17', '2020-04-29 07:28:17', NULL),
('52349345-f502-4ac8-902e-7902f38b3a80', '5b9a5de9-0624-4ef4-a702-5120747004a9', '2045', 'تولید کننده', '2020-04-29 07:41:36', '2020-04-29 07:41:36', NULL),
('523e9fd8-3920-4407-98b5-e133c7a5c15d', '334a6acf-d661-43a3-b30c-97b1ffc3fe68', '1232', 'تولید کننده', '2020-04-29 07:32:28', '2020-04-29 07:32:28', NULL),
('53333542-d550-4883-8146-6773a371b8c6', 'f133eff3-1d9d-49af-a618-f1ed9344d815', '2602', 'تولیدکننده', '2020-04-29 07:25:15', '2020-04-29 07:25:15', NULL),
('54276dce-d785-48bc-bb86-95dd6f6e2170', '8ac43cf8-4bee-4953-9bf2-121e68fcf4bf', '1', 'تولیدکننده', '2020-04-29 07:13:54', '2020-04-29 07:13:54', NULL),
('56fcdbde-8296-4a5e-963b-2eba1ff0aba1', '42b84cfb-590a-4a01-84b8-fd2404966b1b', '26', 'تولیدکننده', '2020-04-29 07:15:01', '2020-04-29 07:15:01', NULL),
('58a267b8-80d9-43fe-8d95-29b1267b7dd1', '22d50502-5f42-4ce6-88e0-b183f6ac2b98', 'E344', 'حامل سازنده', '2019-12-24 08:57:32', '2019-12-24 08:57:32', NULL),
('5d607bde-4029-4fcb-bd14-4792b0323120', '6feb8245-ead6-4d63-9ce7-4ad734a519bf', '907', 'تولیدکننده', '2020-04-29 07:30:49', '2020-04-29 07:30:49', NULL),
('5dfb0a35-f881-4376-a779-1dd584f4d97b', 'ecaa9e76-b640-4cd4-b617-60a6f0547458', '260', 'تولیدکننده', '2020-04-29 07:22:58', '2020-04-29 07:22:58', NULL),
('603e5909-bfc9-4186-a71d-c148d23fa232', '93df9dac-2937-4fa3-acbe-8abc260207ae', '113', 'تولیدکننده', '2020-04-29 07:17:18', '2020-04-29 07:17:18', NULL),
('66ad429d-3441-4cdd-b6e5-631b8858c1c6', 'a024d139-3890-4d90-85f0-8ebcbdd319f4', 'T1372', 'سازنده', '2019-12-24 09:08:26', '2019-12-24 09:08:26', NULL),
('671e88e3-8932-4ceb-bbb7-eee225090114', '097d693d-9f6e-4d9e-8e0a-8899f5d1fb5d', '1694', 'تولیدکننده', '2020-04-29 07:36:59', '2020-04-29 07:36:59', NULL),
('71e8b10a-6ac1-4770-a867-c79ec627945f', 'b7dd2211-242b-48de-99b0-801bf2b700ad', '2585', 'تولیدکننده', '2020-04-29 07:24:39', '2020-04-29 07:24:53', NULL),
('745059d1-feea-4ac9-99bb-62de7602a7f6', '6eaca1d2-1168-4a0c-9392-cbeeedc1190b', '2570', 'تولید کننده', '2020-04-29 07:44:11', '2020-04-29 07:44:11', NULL),
('76eaef11-16f6-4396-9ed8-96ba11372861', 'b8dce778-8052-4056-be33-dd025832b7a3', '310', 'تولیدکننده', '2020-04-29 07:23:21', '2020-04-29 07:23:21', NULL),
('7758181b-ae0e-4ca5-81e7-446aa94ba51c', '00e3b682-288e-4823-a976-8ef14982c7f6', 'E627', 'حامل سازنده', '2019-12-24 08:55:56', '2019-12-24 08:55:56', NULL),
('7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', 'b0eae399-3af1-4d82-9626-38255fed57a8', 'E725', 'سازنده', '2019-12-24 09:01:24', '2019-12-24 09:01:24', NULL),
('80ab8449-363a-46ce-9f29-f68ec7d86c5e', '02a42afc-de0e-4455-bcb5-4c6383b13f86', '1763', 'تولید کننده', '2020-04-29 07:37:47', '2020-04-29 07:37:47', NULL),
('80e09169-c0f0-46a6-b42b-cb0b55084035', '470377c9-6834-4a96-903a-5483f909c12c', '1632', 'تولید کننده', '2020-05-10 05:11:57', '2020-05-10 05:11:57', NULL),
('8af409da-cb0a-4bcb-9b89-960e27909908', 'cda35175-7dfc-438b-ba69-2bde532d7ebb', '2603', 'تولیدکننده', '2020-04-29 07:25:41', '2020-04-29 07:25:41', NULL),
('8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', 'f143e5f5-1c4f-405e-982e-d01bc31386d2', 'Y462', 'حامل سازنده', '2019-12-24 09:03:28', '2019-12-24 09:03:28', NULL),
('93bab21f-c12e-4ab2-bab5-b37f6d2cbe77', '837eca10-9e27-4945-b15e-39fde3a259ca', '1919', 'تولید کننده', '2020-04-29 07:40:57', '2020-04-29 07:40:57', NULL),
('9479bc78-600f-47cc-8282-6749baa884a3', '42b84cfb-590a-4a01-84b8-fd2404966b1b', 'T784', 'سازنده', '2019-12-24 08:58:47', '2019-12-24 08:58:47', NULL),
('9a745f99-dfcc-4d55-803c-fb8080f840df', 'c05381da-47a7-485a-b69c-6a497af82a77', '1188', 'تولید کننده', '2020-04-29 07:32:06', '2020-04-29 07:32:06', NULL),
('9ced61c0-44d2-4a92-9df0-11a48d3477b2', '71eecfa8-a25b-4ba1-adee-f59f67bda81e', '1332', 'سازنده', '2019-12-31 12:47:38', '2019-12-31 12:47:38', NULL),
('a4a047c5-8f85-4e4d-bd7a-29151b035c23', 'd96f2568-77c1-438d-b1e7-18b613be5392', '2746', '2746', '2020-04-29 07:27:41', '2020-04-29 07:27:41', NULL),
('a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', '4e51b4f9-8121-4057-8469-18403565138f', 'E575', 'سازنده', '2019-12-24 09:00:13', '2019-12-24 09:00:13', NULL),
('a5d5e403-1865-4c54-9561-519e3192249d', '8219c33f-7557-48f4-9324-8aeddaff240c', '2633', 'تولیدکننده', '2020-04-29 07:26:01', '2020-04-29 07:26:01', NULL),
('a7c026ba-0173-4bc2-9b25-e40ed0b1593f', 'ca13c2cd-f4fe-4d5c-81fb-6f8a0273b01f', '215', 'تولیدکننده', '2020-04-29 07:22:18', '2020-04-29 07:22:18', NULL),
('ad433c77-029a-448f-97c2-5e9776423e93', 'fc8cbef4-91ba-4f61-baed-3c6bb0581eb6', '40', 'تولیدکننده', '2020-04-29 07:15:41', '2020-04-29 07:15:41', NULL),
('b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '00f72b2f-8ad5-4a09-8678-99e09ff07d9e', '1408', 'تولیدکننده', '2020-05-05 07:06:35', '2020-05-05 07:06:35', NULL),
('b296ec34-c47e-4a2e-a399-3ecaa9cf6122', '62393de2-59d3-467c-91f3-b4810d5b8c0f', '217', 'تولیدکننده', '2020-04-29 07:22:38', '2020-04-29 07:22:38', NULL),
('b41b2133-5824-4257-ad12-3f944c846eee', 'dcff5367-a489-4951-8257-9e7adfd5f0d6', '1287', 'تولید کننده', '2020-04-29 07:33:45', '2020-04-29 07:33:45', NULL),
('b663f103-a70d-4361-9492-f5ef3b62f5ea', '8ac43cf8-4bee-4953-9bf2-121e68fcf4bf', 'E559', 'حامل سازنده', '2019-12-24 09:00:45', '2019-12-24 09:00:45', NULL),
('bae27c33-7b91-411d-bbf1-b92e22432fa6', 'c418e2ec-07c8-4b18-89f7-129c1ac522db', '2194', 'تولیدکننده', '2020-04-29 07:42:16', '2020-04-29 07:42:16', NULL),
('bd258d3b-b79e-4318-902e-4b9314aea4f1', '3d29e973-3319-4ca2-abc0-a6aa613bde3d', '1732', 'تولید کننده', '2020-04-29 07:37:23', '2020-04-29 07:37:23', NULL),
('bd836ae6-d58e-45ad-88c2-39c329fec6d5', '4d8935ed-5253-4c0f-a9d0-d402c5491fd1', '175', 'سازنده', '2019-12-24 08:59:40', '2020-04-29 07:21:34', NULL),
('bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '00e3b682-288e-4823-a976-8ef14982c7f6', '2283', 'تولید کننده', '2020-04-29 07:42:49', '2020-04-29 07:42:49', NULL),
('be550f29-ae2d-453c-a836-a8196cbc08d0', 'bf671011-772c-4eab-9e3f-420c6634d5cb', '165', 'تولیدکننده', '2020-04-29 07:19:45', '2020-04-29 07:19:45', NULL),
('c00d6443-5622-4cb8-b8f0-8696df338c85', 'd168a9ff-97d0-45ab-8430-7cf18176b1b5', '5102', 'تولید کننده', '2020-04-30 07:47:21', '2020-04-30 07:47:21', NULL),
('c2852bb5-49e5-461a-a15f-bd7aaa8620b5', '6bcf2748-ace9-42b8-a5ba-802ca7f805e8', '962', 'تولیدکننده', '2020-04-29 07:31:15', '2020-04-29 07:31:15', NULL),
('c3058628-aad1-4467-992d-945d0582fd92', 'cf8aa10a-efc4-4835-bae6-35bc289925e0', 'T52', 'سازنده', '2019-12-24 10:11:33', '2019-12-24 10:11:33', NULL),
('c8f389eb-721b-45ed-9358-cfc3a0c3807a', '33fce925-f909-4fa8-821e-00f0a45e0477', '00111', 'تولید کننده', '2020-04-28 06:08:56', '2020-04-28 06:08:56', NULL),
('ce3cd2d1-bcaf-480e-a099-002e7106d6a4', '61db7ecf-f0c3-4044-8bcf-6cf1773d9db5', '1764', 'تولیدکننده', '2020-04-29 07:38:05', '2020-04-29 07:38:05', NULL),
('d220fdeb-dede-4b4d-b3d8-f3cb99a55379', '4d8935ed-5253-4c0f-a9d0-d402c5491fd1', '175', 'ت', '2020-04-29 07:20:02', '2020-04-29 07:21:13', '2020-04-29 07:21:13'),
('d4a9a342-6c22-4195-91bd-1b37a3dc60ee', '7b00fa70-1036-418f-8aa0-08074f0d4a31', '552', 'تولیدکننده', '2020-04-29 07:29:54', '2020-04-29 07:29:54', NULL),
('dc11f5a4-ca10-4283-ac9a-ab3d728f6f12', '89db4342-2281-4273-af26-429c180bd1e7', '67', 'آورنده', '2020-04-29 07:16:31', '2020-04-29 07:16:31', NULL),
('df515dab-f185-49ef-b7c2-6786d190b8c6', 'fb68401d-49d8-4267-8672-1180f82d3b56', '1805', 'تولید کننده', '2020-04-29 07:39:27', '2020-04-29 07:39:27', NULL),
('e274d7ab-eabe-4f20-acba-fffd63c4672d', '333681b7-252c-49d7-90ec-757f8c5e77f8', '139', 'تولیدکننده', '2020-04-29 07:17:56', '2020-04-29 07:17:56', NULL),
('e64a0e18-f97a-4879-99d4-7dfae0c09da6', '084f57a2-4a32-4ba1-be2d-fcad61aacd84', '1500', 'تولیدکننده', '2020-01-17 15:47:14', '2020-01-17 15:47:14', NULL),
('e970c2ab-2938-4291-bcea-6ee784c25f0f', 'f8f14bbf-03ab-4d10-8a1f-358a80fb24d3', 'E1506', 'سازنده', '2019-12-24 09:04:03', '2019-12-24 09:04:03', NULL),
('eddca960-ab1a-42ba-a8a4-b72b8da17de2', '4e51b4f9-8121-4057-8469-18403565138f', '2499', 'تولید کننده', '2020-04-29 07:43:13', '2020-04-29 07:43:13', NULL),
('ee115450-7c35-4eeb-a0b8-f15103c83099', '9dc8f49e-d8c7-4e6b-9ddf-dadacb754b7a', '25', 'تولیدکننده', '2020-04-29 07:14:39', '2020-04-29 07:14:39', NULL),
('f136ead4-294e-4b1c-a320-932759af3aad', '100994e1-e397-470e-86fe-30b1f7a843e7', '1769', 'تولید کننده', '2020-04-29 07:38:30', '2020-04-29 07:38:30', NULL),
('f568869f-edb6-4a15-a36d-491789af417e', '02d6963b-4874-4751-9207-d76cbe0239e8', '1432', 'تولید کننده', '2020-04-29 07:34:30', '2020-04-29 07:34:30', NULL),
('f57e2094-03e2-4187-b072-76ac47679751', 'd044e607-ba59-4f3b-b680-b9d61b65eaa4', '2102', 'آورنده', '2020-05-14 08:04:26', '2020-05-14 08:04:26', NULL),
('f5f217d9-cb2b-4c07-9241-ed70cb9d228a', '02a42afc-de0e-4455-bcb5-4c6383b13f86', '130', 'تولیدکننده', '2020-04-29 07:17:38', '2020-04-29 07:17:38', NULL),
('fc2912e5-7db2-4a9b-b5bd-a85b6923506d', '22d50502-5f42-4ce6-88e0-b183f6ac2b98', '202', 'تولیدکننده', '2020-04-29 07:21:57', '2020-04-29 07:21:57', NULL),
('fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'a024d139-3890-4d90-85f0-8ebcbdd319f4', '58', 'تولیدکننده', '2020-04-29 07:16:03', '2020-04-29 07:16:03', NULL),
('fd928ed5-008b-4a20-8493-b26d6f7ed29e', 'eee53564-74c1-49d4-8408-d248bc459f51', '1588', 'تولید کننده', '2020-04-29 07:35:36', '2020-04-29 07:35:36', NULL),
('ffb69382-a0b0-4e2f-8308-d5ee84e79778', '1dfd828a-34a3-4f1d-8980-374bc1d80961', '1847', 'تولید کننده', '2020-04-29 07:40:36', '2020-04-29 07:40:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `producer_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `subcategory_id` char(36) DEFAULT NULL,
  `weight_range_id` char(36) DEFAULT NULL,
  `wage_range_id` char(36) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `weight` double(7,3) DEFAULT NULL,
  `wage_percent` double(4,2) DEFAULT NULL,
  `wage_rial` double(12,3) DEFAULT NULL,
  `site_profit_percent` double(4,2) DEFAULT NULL,
  `site_profit_rial` double(12,3) DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `producer_id`, `category_id`, `subcategory_id`, `weight_range_id`, `wage_range_id`, `code`, `name`, `slug`, `weight`, `wage_percent`, `wage_rial`, `site_profit_percent`, `site_profit_rial`, `is_published`, `description`, `published_at`, `expires_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
('05289ec9-bd78-4106-921b-f4ca2b75b11c', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3326', 'دستبند  آریان', 'dstbnd-r-n-13', 9.400, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 08:05:20', NULL, '2020-05-07 08:06:10', '2020-05-07 08:08:13', NULL),
('06ee348e-365d-43ad-a6ee-8af13fe098cc', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1501', 'دنیز', 'dn-z', 5.100, NULL, 150000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:47:21', NULL, '2020-01-17 15:47:59', '2020-05-06 04:35:00', NULL),
('0776b2ba-ccc8-4250-b086-e1b194c952e9', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '620', 'یکتا', 't-1', 5.000, 0.00, 68000.000, 0.00, 0.000, 1, NULL, '2020-01-04 09:12:49', NULL, '2020-01-02 05:54:19', '2020-01-04 20:44:37', NULL),
('090b4afc-e646-4e02-8750-7dd52a83a406', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '9831', 'فیوژن', 'f-o-n-32', 4.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 18:54:37', NULL, '2020-05-02 08:25:33', '2020-05-06 04:34:48', NULL),
('0995c9ce-0b28-4233-9c1f-69c4a90fd6c9', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1502', 'دنیز', 'dn-z-1', 6.500, 0.00, 150000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 21:38:08', NULL, '2020-01-17 16:08:45', '2020-05-06 04:34:39', NULL),
('0ac41846-a548-4365-8e6b-504f8ca0bd63', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '314', 'زیبا طلا', 'z-b-tl-1', 8.400, 0.00, 93000.000, 0.00, 0.000, 1, NULL, '2019-12-31 04:49:53', NULL, '2019-12-31 06:30:07', '2020-01-06 08:37:53', NULL),
('0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', 'a5d5e403-1865-4c54-9561-519e3192249d', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2601', 'المیرا', 'lm-r', 2.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-04 06:42:20', NULL, '2020-04-30 10:24:53', '2020-05-06 04:35:25', NULL),
('0e5f7567-d73b-4890-b150-374ee6ec2701', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3203', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-1', 13.910, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 07:38:39', NULL, '2020-05-10 07:19:48', '2020-05-10 07:40:41', NULL),
('0f774a44-d83a-4bc2-91b1-0665cf28c2b7', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9817', 'فیوژن', 'f-o-n-14', 3.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 06:16:49', '2021-04-30 06:16:49', '2020-04-30 07:17:12', '2020-05-06 04:35:18', NULL),
('1001f69c-4a71-4c4b-93cb-696ee1128862', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '760', 'ساغر', 's-ghr', 5.000, 0.00, 47000.000, 0.00, 0.000, 0, NULL, '2020-01-05 21:42:34', NULL, '2020-01-02 05:57:47', '2020-05-19 06:18:56', NULL),
('108ff5ec-e075-435a-b2ea-95180559ca31', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3202', 'حلقه آویز', 'hlkh-o-z-1', 3.900, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 10:43:02', NULL, '2020-05-03 09:30:18', '2020-05-03 10:44:35', NULL),
('1188bbd8-9244-4060-9ab9-8cf1aef0b08d', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '703', 'ساغر', 's-ghr-1', 5.200, 0.00, 47000.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-01-02 05:59:57', '2020-05-07 08:53:33', '2020-05-07 08:53:33'),
('13c256a2-bf89-4990-933d-452199aff4b9', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '5801', 'نیک- کندویی', 'n-ndo', 4.400, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:3/980\nسایز دو : 4/300\nسایز سه :4/560\nسایز چهار :4/740', '2020-05-10 06:35:49', NULL, '2020-05-09 06:34:31', '2020-05-09 06:37:29', NULL),
('1401db66-2179-4f1b-8245-6a456aa67eb3', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '153', 'شیدا', 'sh-d', 6.500, 0.00, 30000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:46:19', NULL, '2020-01-06 13:04:46', '2020-01-06 13:16:29', NULL),
('1649d07a-1251-41b0-a305-11f3a0f42df3', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1409', 'نلسون', 'nlson-7', 0.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:27:56', NULL, '2020-01-17 15:28:34', '2020-05-06 04:35:09', NULL),
('169116c8-38d8-4b38-83a9-ab0a688cd893', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '5802', 'نیک-یاس', 'n-s', 4.740, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:4/080\nسایز دو : 4/260\nسایز سه :4/350\nسایز چهار :4/750', '2020-05-10 06:37:23', NULL, '2020-05-09 06:39:22', '2020-05-09 06:46:38', NULL),
('16be941f-137e-48a4-8d0b-2137bc883ab2', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3303', 'دستبند المیرا', 'dstbnd-lm-r-2', 14.500, 7.00, 0.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.', '2020-05-06 15:12:39', NULL, '2020-05-06 09:14:00', '2020-05-07 06:43:35', NULL),
('196ede6b-d2dc-466a-b606-8f51c5837af9', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '2704', 'انگشتر سیاه قلم', 's-h-klm-3', 4.900, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 22:19:16', NULL, '2020-05-02 11:50:43', '2020-05-10 05:12:59', NULL),
('19b422b7-3f57-4914-967d-3c939a44eaaf', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '94c22b0c-75ad-47b9-99e0-704e4de3e812', NULL, '1655', 'دستبند پرتراش', 'dstbnd-s-h-klm-rtr-sh-6', 29.900, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .', '2020-05-10 19:15:09', NULL, '2020-05-10 04:16:57', '2020-05-11 04:17:04', NULL),
('1a994a5d-cc8d-46cd-b30a-6f166c91e47b', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '94c22b0c-75ad-47b9-99e0-704e4de3e812', NULL, '2803', 'سرویس ریخته', 'sro-s-r-khth-1', 29.210, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن گردنی  :  18/310\nوزن گوشواره : 3/800\nوزن دستبند : 7/100', '2020-05-17 22:49:42', NULL, '2020-05-17 03:22:49', '2020-05-17 03:30:04', NULL),
('1a9c2401-f226-4ed0-89d5-c554790538b9', '22520968-1a57-4f80-afee-a2cda5ca7c92', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '9aedd83d-8fbf-481c-ad28-d3cba59cb7db', NULL, '2601', 'سرویس شانل', 'sro-s-sh-nl', 35.180, 0.00, 190000.000, 0.00, 0.000, 1, 'سرویس شانل \nوزن حدودی :\nدستبند : (10/280گرم) گوشواره :(3/700گرم) \nزنجیر :(21/150گرم)\nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-06 08:38:52', NULL, '2020-05-05 13:11:48', '2020-05-06 04:30:37', NULL),
('1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2101', 'دستبند والنتینا', 'o-lnt-n', 8.340, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند سیاه قلم والنتاینا در سایز 2 عرضه میشود', '2020-05-17 23:21:20', NULL, '2020-05-14 08:06:09', '2020-05-17 03:56:25', NULL),
('1bec155a-4e94-4028-97fc-6a0aad0efa1b', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3325', 'دستبند  آریان', 'dstbnd-r-n-12', 8.300, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 03:33:27', NULL, '2020-05-07 08:04:19', '2020-05-09 08:16:41', NULL),
('1c1d96b8-9a9f-432a-87bb-65b4f48610f0', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2701', 'انگشتر سیاه قلم', 's-h-klm', 2.250, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 22:11:47', NULL, '2020-05-02 11:29:00', '2020-05-10 05:12:39', NULL),
('1c8d6194-3537-49a6-b3cd-4b48535d8fef', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '5052', 'مروارید', 'mro-r-d', 4.200, 0.00, 42000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:37:26', NULL, '2020-01-06 13:08:50', '2020-01-06 13:15:33', NULL),
('1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1402', 'نلسون', 'nlson-1', 7.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:46:59', NULL, '2020-01-17 11:47:47', '2020-05-06 04:36:15', NULL),
('1ee26549-f1f1-49b5-ac17-c8201275da91', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9824', 'فیوژن', 'f-o-n-24', 3.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 07:27:23', NULL, '2020-04-30 08:27:44', '2020-05-06 04:36:45', NULL),
('2031d27e-7b02-4114-b0e0-4269848f93ab', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1407', 'گوشواره نرمال', 'osho-rh-nrm-l-4', 4.500, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:15:57', NULL, '2020-05-05 07:17:22', '2020-05-05 07:18:11', NULL),
('2192fb3f-4e78-49a5-8de2-3fa883b067da', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1704', 'آوا', 'o-3', 2.500, 0.00, 200000.000, 0.00, 30000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 06:47:48', NULL, '2020-01-17 21:48:28', '2020-05-06 04:36:35', NULL),
('21bf5879-06fb-4757-99b6-b2fac3925162', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1602', 'دیوا', 'd-o-1', 2.700, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:38:23', NULL, '2020-01-17 16:31:45', '2020-05-06 04:36:27', NULL),
('21d6c0fb-99e0-4eab-a76e-959a17a98d98', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3207', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-5', 15.470, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 07:48:28', NULL, '2020-05-10 07:49:48', '2020-05-10 07:51:28', NULL),
('22af49bb-9f8f-43c8-befd-0eec6dfe723a', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7030', 'منتخب', 'mntkhb', 3.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 3/380  \nسایز دو :  3/560\nسایز سه:  3/800\nسایز چهار : 4/010', '2020-05-07 23:47:01', NULL, '2020-05-07 04:02:44', '2020-05-07 08:19:38', NULL),
('231c8799-a609-4698-a8e6-f541b75c8689', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3201', 'حلقه آویز', 'hlkh-o-z', 3.500, 1.00, 70000.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:11:51', NULL, '2020-05-03 09:13:46', '2020-05-03 09:28:35', NULL),
('24867dec-71e4-4ac1-ac12-dd990d10c448', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '152', 'ترنم', 'trnm', 6.500, 0.00, 30000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:31:17', NULL, '2020-01-06 13:02:20', '2020-01-06 13:16:06', NULL),
('24e2c2d2-56c2-412b-9c99-b6ceed096ab2', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9820', 'فیوژن', 'f-o-n-20', 2.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 21:05:14', NULL, '2020-04-30 07:40:08', '2020-05-06 04:37:11', NULL),
('24f57dc3-83c6-45dd-beeb-dc3444917568', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1509', 'دنیز', 'dn-z-9', 4.000, 0.00, 150000.000, NULL, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 21:51:56', NULL, '2020-01-17 16:22:31', '2020-05-06 04:37:04', NULL),
('253544d5-288d-4042-82f9-29f4bed59ddd', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1406', 'نلسون', 'nlson-4', 5.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:22:14', NULL, '2020-01-17 15:22:52', '2020-05-06 04:36:56', NULL),
('25401bc4-4727-4c9b-8eb7-93d6291c1703', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '3309', 'دستبند  آریان', 'dstbnd-r-n-6', 7.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:52:06', NULL, '2020-05-07 07:23:29', '2020-05-07 07:55:41', NULL),
('2640e641-b243-485c-b702-f0b772b351d6', '5012ea55-4e47-4b0d-8ba3-ba1086928810', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '2090', 'النگو سیاه قلم', 's-h-klm-8', 7.000, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .\nوزن حدودی هر سایز :\nسایز یک : (6/600گرم)\nسایز دو :(6/700گرم)\nسایز سه :( 7/800گرم)', '2020-05-05 12:08:06', NULL, '2020-05-05 06:09:33', '2020-05-15 04:44:11', NULL),
('28d17fc8-c28c-44b2-9065-7c2bbb1a46cf', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1317', 'چلسی', 'ls-2', 3.200, 4.00, 0.000, 0.00, 0.000, 1, NULL, '2020-01-17 00:09:04', NULL, '2020-01-17 11:39:50', '2020-05-07 08:53:49', '2020-05-07 08:53:49'),
('2938b24b-2eef-4bdd-acfd-ce17219621d4', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3327', 'دستبند  آریان', 'dstbnd-r-n-14', 8.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 08:07:45', NULL, '2020-05-07 08:08:38', '2020-05-07 08:10:19', NULL),
('2ae34c8d-8b3e-4638-a7f0-5580326064f1', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2105', 'دستبند والنتینا', 'dstbnd-o-lnt-n-4', 9.000, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند والنتینا در سایز 2 عرضه میشود.', '2020-05-18 04:05:24', NULL, '2020-05-17 04:06:53', '2020-05-17 04:08:09', NULL),
('2bf442bf-0f17-4c25-82eb-9ccf9755e384', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1703', 'آوا', 'o-2', 2.000, 0.00, 200000.000, 0.00, 30000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 06:45:42', NULL, '2020-01-17 21:46:23', '2020-05-06 04:37:32', NULL),
('2e4d5acc-b558-4042-bcc8-7d8efa25c704', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1210', 'داماس', 'd-m-s-3', 5.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:26:04', NULL, '2020-01-02 10:17:23', '2020-05-06 04:37:21', NULL),
('2f01ac23-1cfa-436a-8e76-051e6ce244df', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '5751', 'باران', 'b-r-n', 4.000, 0.00, 42000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2019-12-29 10:30:06', NULL, '2019-12-29 13:59:22', '2020-05-06 04:38:21', NULL),
('2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9801', 'فیوژن', 'f-o-n', 3.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 04:52:13', '2021-04-30 04:52:13', '2020-04-30 05:55:38', '2020-05-06 04:39:22', NULL),
('2f5137ad-4997-41c0-b5f3-30af945a8860', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '720', 'برج', 'brg-5', 5.500, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 4/700  \nسایز دو :  5/100\nسایز سه:  5/500\nسایز چهار : 5/800', '2020-05-13 06:21:15', NULL, '2020-05-12 06:23:29', '2020-05-12 06:28:38', NULL),
('303dde82-68d5-4b0e-91a6-c762ca87ee8a', 'bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2201', 'حلقه هندسی', 'hlkh-hnds', 2.100, 0.00, 80000.000, 0.00, 0.000, 1, NULL, '2020-05-04 10:45:33', NULL, '2020-05-03 10:47:09', '2020-05-03 10:50:42', NULL),
('31b75241-9251-4385-ba22-be17c0759e53', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '1303', 'عروسکی', 'aaros-2', 2.100, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:05:00', NULL, '2020-05-03 09:06:37', '2020-05-03 09:07:11', NULL),
('31cee6e1-7b69-4a85-b244-ecea1649d3d2', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'd54da9f1-18bf-443d-8a52-1a569d8a8641', NULL, '1255', 'دستبند پرتراش', 'dstbnd-s-h-klm-rtr-sh-1', 18.520, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .', '2020-05-10 14:31:14', NULL, '2020-05-10 04:03:01', '2020-05-11 04:17:37', NULL),
('32121dc8-251c-4fe7-a23c-a17d4ee5d47a', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3313', 'دستبند  آریان', 'dstbnd-r-n-8', 9.250, 4.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-08 03:21:22', NULL, '2020-05-07 07:52:50', '2020-05-07 07:55:32', NULL),
('337f7dd9-349a-4a26-ab4d-bbb97c6a0758', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1603', 'دیوا', 'd-o-3', 3.500, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:33:00', NULL, '2020-01-17 16:33:31', '2020-05-06 04:38:52', NULL),
('33a46083-d08e-40c1-aeb4-5f233410505b', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1215', 'داماس', 'd-m-s-5', 5.400, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:27:39', NULL, '2020-01-17 11:28:24', '2020-05-06 04:38:37', NULL),
('3412c6bc-40f8-4a99-b1c1-57f9bff942ce', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3203', 'حلقه آویز', 'hlkh-o-z-2', 3.900, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:46:22', NULL, '2020-05-03 09:37:33', '2020-05-03 09:47:45', NULL),
('344e488a-3f4a-4bb1-8d61-ef61754bbce8', '80ab8449-363a-46ce-9f29-f68ec7d86c5e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1703', 'انگشتر گل', 'n-shtr-l-2', 3.200, 2.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 03:27:45', NULL, '2020-05-05 07:58:47', '2020-05-06 04:39:49', NULL),
('34f870c8-ca51-4ec5-98ba-34241a46a923', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '710', 'تابان', 't-b-n', 6.000, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2019-12-26 00:18:56', NULL, '2019-12-26 18:51:14', '2020-05-07 09:39:47', NULL),
('36739c31-df65-4074-8702-25e2ed4fdc96', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '3328', 'دستبند  آریان', 'dstbnd-r-n-15', 7.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 08:09:51', NULL, '2020-05-07 08:10:46', '2020-05-07 08:12:18', NULL),
('36f4031a-9325-41f6-9731-67391796527f', '80ab8449-363a-46ce-9f29-f68ec7d86c5e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1702', 'انگشتر گل', 'n-shtr-l-1', 3.200, 2.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 03:25:53', NULL, '2020-05-05 07:57:13', '2020-05-06 04:39:32', NULL),
('3763857e-5c54-482b-b047-069e4de044b4', '7758181b-ae0e-4ca5-81e7-446aa94ba51c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '627', 'پارس', 'rs', 7.000, 0.00, 51000.000, 0.00, 0.000, 1, NULL, '2020-01-20 13:30:00', NULL, '2019-12-29 13:49:04', '2020-05-12 08:19:04', NULL),
('379cf01d-f340-4f98-b1f3-9a20d3839a4f', '2044ca25-3192-4f40-ab51-f2f2aaa6cc73', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '755', 'بنیمی', 'bn-m', 5.500, 0.00, 60000.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-01-02 05:49:02', '2020-05-07 08:53:59', '2020-05-07 08:53:59'),
('38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3306', 'دستبند المیرا', 'dstbnd-lm-r-5', 12.000, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد', '2020-05-07 06:02:40', NULL, '2020-05-06 09:35:46', '2020-05-07 06:41:37', NULL),
('3935dd8a-36da-4aed-b1e5-09bea808d97b', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2103', 'دستبند والنتینا', 'dstbnd-o-lnt-n-1', 9.000, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند والنتینا در سایز 2 عرضه میشود.', '2020-05-18 03:59:14', NULL, '2020-05-17 04:01:02', '2020-05-17 04:01:55', NULL),
('399867e8-c99e-4e72-969a-d93fccb1c886', '8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1800', 'آرا', 'r-2', 6.500, 0.00, 63000.000, 0.00, 0.000, 1, NULL, '2019-12-31 04:54:01', NULL, '2019-12-31 06:39:34', '2019-12-31 17:13:39', NULL),
('3b1226e6-e4bb-42b4-a6ea-7680412c72e5', '80e09169-c0f0-46a6-b42b-cb0b55084035', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2008', 'النگو سیاه قلم', 'ln-o-s-h-klm-1', 9.250, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nسایز یک (8/250 گرم)\nسایز دو (9/16گرم )\nسایز سه ( 10/340گرم )', '2020-05-19 10:06:05', NULL, '2020-05-18 10:08:11', '2020-05-18 10:10:54', NULL),
('3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', 'a5d5e403-1865-4c54-9561-519e3192249d', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2602', 'المیرا', 'lm-r-1', 3.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 00:30:50', NULL, '2020-04-30 10:25:53', '2020-05-06 04:40:28', NULL),
('3ea034e9-2c01-4824-95aa-d33709d05201', '5012ea55-4e47-4b0d-8ba3-ba1086928810', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '2000', 'النگو سیاه قلم', 's-h-klm-7', 5.600, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .\nوزن حدودی هر سایز :\nسایز یک : (4/750گرم)\nسایز دو :(5/320گرم)\nسایز سه :( 5/650گرم)', '2020-05-05 07:35:35', NULL, '2020-05-05 06:07:02', '2020-05-15 04:44:27', NULL),
('3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2801', 'سرویس', 'sro-s', 32.580, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 20/470\nدستبند : 8/210\nگوشواره : 3/900', '2020-05-18 03:29:46', NULL, '2020-05-16 08:57:26', '2020-05-17 03:31:18', NULL),
('3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9815', 'فیوژن', 'f-o-n-12', 3.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 06:10:15', '2021-04-30 06:10:15', '2020-04-30 07:13:37', '2020-05-06 04:40:17', NULL),
('406479ec-9fea-49d4-8f1b-34eacc848352', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3303', 'دستبند  آریان', 'dstbnd-r-n-2', 8.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:41:05', NULL, '2020-05-07 07:12:21', '2020-05-07 07:55:54', NULL),
('40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'e970c2ab-2938-4291-bcea-6ee784c25f0f', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1010', 'محنا', 'mhn-1', 6.500, 0.00, 42000.000, 0.00, 0.000, 1, NULL, '2020-01-04 02:26:21', NULL, '2020-01-04 20:58:01', '2020-05-12 08:46:19', NULL),
('40fbf77a-2aa0-4d74-b3f4-eebe720d0291', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1402', 'گوشواره نرمال', 'osho-rh-nrm-l-1', 3.250, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:08:51', NULL, '2020-05-05 07:10:19', '2020-05-05 07:11:05', NULL),
('41f6a861-2224-4573-9613-754dbb7b0383', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1408', 'نلسون', 'nlson-6', 7.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:26:20', NULL, '2020-01-17 15:26:52', '2020-05-06 04:39:58', NULL),
('43004407-53e6-4715-b817-bbe83afc6739', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3203', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-2', 15.210, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 03:10:21', NULL, '2020-05-10 07:41:38', '2020-05-10 07:46:26', NULL),
('46db1a49-a4b9-4c1e-bce9-0a245f7659bb', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '001', 'تابان', 't-b-n-3', 4.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 4/100  \nسایز دو :  4/200\nسایز سه:  4/500\nسایز چهار :4/700', '2020-05-07 10:49:48', NULL, '2020-05-07 04:51:12', '2020-05-07 09:39:00', NULL),
('4792875c-1ad5-4612-b71a-3c496de38397', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2702', 'انگشتر سیاه قلم', 's-h-klm-1', 4.300, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 17:42:49', NULL, '2020-05-02 11:43:47', '2020-05-10 05:14:11', NULL),
('485f739b-0979-4130-87b0-a5cefed3f515', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9802', 'فیوژن', 'f-o-n-1', 2.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 09:42:14', '2021-04-30 09:42:14', '2020-04-30 06:00:37', '2020-05-06 04:41:14', NULL),
('48ed294a-a55f-4456-add7-af55dc82ef1c', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1407', 'نلسون', 'nlson-5', 6.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:23:57', NULL, '2020-01-17 15:24:36', '2020-05-06 04:41:05', NULL),
('49c6d0cd-f075-4575-9b9a-17db940dc1f5', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9818', 'فیوژن', 'f-o-n-18', 3.800, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 02:39:09', NULL, '2020-04-30 07:28:30', '2020-05-06 04:40:59', NULL),
('4c4cb867-c912-46ce-9e1f-841212875509', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9811', 'فیوژن', 'f-o-n-8', 4.450, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 01:24:00', '2021-04-30 01:24:00', '2020-04-30 06:46:55', '2020-05-06 04:42:16', NULL),
('4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9841', 'فیوژن', 'f-o-n-17', 2.800, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 02:46:57', NULL, '2020-04-30 07:22:48', '2020-05-06 04:41:58', NULL),
('4f7d33dc-824e-48b1-9804-f8412c256f95', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '130', 'آمین', 'm-n', 4.600, 0.00, 63000.000, 0.00, 0.000, 1, NULL, '2019-12-31 04:56:22', NULL, '2019-12-31 06:48:55', '2020-01-01 13:20:09', NULL),
('4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '202', 'تابان', 't-b-n-1', 4.000, 0.00, 65000.000, 0.00, NULL, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2019-12-31 01:30:00', NULL, '2019-12-27 18:47:05', '2020-05-07 09:39:26', NULL),
('50e6e1e8-3ace-4174-8bd6-407771c89ade', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3204', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-3', 14.360, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 03:12:33', NULL, '2020-05-10 07:43:57', '2020-05-10 07:46:45', NULL),
('52726cbf-bd2f-4bf4-89e4-d7aa9e3bf281', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1601', 'دیوا', 'd-o', 3.600, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:28:35', NULL, '2020-01-17 16:29:51', '2020-05-06 04:42:49', NULL),
('534f104f-0087-4cdf-93c7-814cb7e7c6f4', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2108', 'دستبند والنتینا', 'dstbnd-o-lnt-n-3', 9.000, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند والنتینا در سایز 2 عرضه میشود.', '2020-05-17 23:33:23', NULL, '2020-05-17 04:05:01', '2020-05-17 04:09:13', NULL),
('53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7010', 'منتخب', 'mntkhb-4', 3.800, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود .\nوزن سایزها =\nسایز یک : 3/380\nسایز دو : 3/700\nسایز سه : 3/900\nسایز چهار : 4/200', '2020-05-13 06:11:56', NULL, '2020-05-12 06:16:06', '2020-05-12 06:17:01', NULL),
('547469dd-fe72-422f-b420-cd8b8e3ecb23', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1605', 'دیوا', 'd-o-5', 3.100, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:40:00', NULL, '2020-01-17 16:40:37', '2020-05-06 04:42:39', NULL),
('54dee241-c3bd-46b5-8a42-46dacfd56353', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '151', 'فرشته', 'frshth', 6.500, 0.00, 30000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:27:35', NULL, '2020-01-06 13:00:00', '2020-01-06 13:01:05', NULL),
('556f8d8e-a34b-4e6c-8f8b-a6f59b770d7d', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1506', 'دنیز', 'dn-z-6', 6.000, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:17:25', NULL, '2020-01-17 16:17:57', '2020-05-06 04:42:30', NULL),
('5762df61-60b7-4196-9964-11caac2c2340', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1312', 'خورشیدی', 'khorsh-d', 2.000, 1.00, 40000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 02:25:29', NULL, '2020-05-05 06:57:05', '2020-05-06 05:33:04', NULL),
('57797f8b-9c61-45a7-b7aa-ea7a42dd4b5d', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1401', 'نلسون', 'nlson', 7.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:44:54', NULL, '2020-01-17 11:46:16', '2020-05-06 04:43:00', NULL),
('58199611-dc27-4035-add1-1a064cdce703', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1403', 'نلسون', 'nlson-8', 5.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:29:47', NULL, '2020-01-17 15:30:24', '2020-05-06 04:43:46', NULL),
('586024e5-bc50-40b0-a08b-219ef8849798', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '1302', 'عروسکی', 'aaros-1', 1.850, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:04:18', NULL, '2020-05-03 08:27:06', '2020-05-03 09:05:24', NULL),
('58d15493-a5d9-46e5-be28-9d3957355719', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '9830', 'فیوژن', 'f-o-n-28', 0.000, 0.00, 0.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-04-30 08:36:26', '2020-04-30 08:37:29', '2020-04-30 08:37:29'),
('59fbd339-1c79-400c-bc3f-5f50c5b4b065', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9812', 'فیوژن', 'f-o-n-9', 2.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 05:55:15', '2021-04-30 05:55:15', '2020-04-30 06:55:42', '2020-05-06 04:43:37', NULL),
('5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', '8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '900', 'آرا', 'r-3', 6.000, 0.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-07 23:28:11', NULL, '2020-05-07 03:59:37', '2020-05-07 08:58:57', NULL),
('5b6fc59a-87df-4541-86ea-936494495353', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1355', 'دستبند  پرتراش', 'dstbnd-s-h-klm-rtr-sh-2', 12.570, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-10 14:33:40', NULL, '2020-05-10 04:05:07', '2020-05-11 04:19:07', NULL),
('5dd1be56-5433-412f-8b38-328aec628ff1', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '532', 'گیلدا', 'ld', 8.000, 0.00, 93000.000, 0.00, 0.000, 1, NULL, '2019-12-31 08:43:00', NULL, '2019-12-29 13:39:23', '2020-01-06 08:40:22', NULL),
('5dfda432-4a74-4849-9778-0bbd0898e76d', 'bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '2204', 'حلقه هندسی', 'hlkh-hnds-3', 1.900, 0.00, 80000.000, 0.00, 0.000, 1, NULL, '2020-05-04 10:54:24', NULL, '2020-05-03 10:55:43', '2020-05-03 10:56:57', NULL),
('5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2705', 'انگشتر سیاه قلم', 's-h-klm-4', 3.800, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 22:21:10', NULL, '2020-05-02 11:52:27', '2020-05-10 05:13:31', NULL),
('5ffcb152-8438-4694-91d7-68cdff44b004', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '560', 'یاس', 's', 4.000, 0.00, 63000.000, 0.00, 0.000, 1, NULL, '2019-12-31 05:03:08', NULL, '2019-12-31 06:51:46', '2019-12-31 16:34:58', NULL),
('625d2c37-6349-4be4-a849-322adb06b956', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1505', 'دنیز', 'dn-z-4', 7.100, 0.00, 150000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:14:02', NULL, '2020-01-17 16:14:30', '2020-05-06 04:44:37', NULL),
('636ceb9d-74b2-4f71-befa-41289b12ffbd', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1311', 'چلسی', 'ls', 3.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:34:45', NULL, '2020-01-17 11:36:01', '2020-05-06 04:44:13', NULL),
('641fbfc4-8390-498f-ae3c-29a357ffdcb3', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9813', 'فیوژن', 'f-o-n-10', 3.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 05:56:50', '2021-04-30 05:56:50', '2020-04-30 06:57:17', '2020-05-06 04:43:56', NULL),
('64b3848e-b2d4-47dc-b645-60115524dbb0', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1604', 'دیوا', 'd-o-4', 2.000, 0.00, 150000.000, 0.00, 35000.000, 0, NULL, NULL, NULL, '2020-01-17 16:36:37', '2020-01-17 16:52:19', '2020-01-17 16:52:19'),
('653e67b4-f507-46f2-8f2f-b2f24db878bb', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1412', 'نلسون', 'nlson-12', 9.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:39:19', NULL, '2020-01-17 15:39:59', '2020-05-06 04:45:07', NULL),
('665d0a19-884e-441a-a372-453a37781a7f', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1313', 'خورشیدی', 'khorsh-d-1', 2.150, 1.00, 40000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 02:27:23', NULL, '2020-05-05 06:58:51', '2020-05-06 05:32:56', NULL),
('6735748a-0ba8-4506-a5c1-52e45804cfba', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2806', 'سرویس ریخته', 'sro-s-r-khth-4', 34.620, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 22/00\nدستبند : 8/00\nگوشواره : 4/650', '2020-05-18 03:42:31', NULL, '2020-05-17 03:44:24', '2020-05-17 03:48:42', NULL),
('69a1aa46-5d33-4451-bb02-2f5eccb39c99', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1401', 'گوشواره نرمال', 'osho-rh-nrm-l', 4.200, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:06:17', NULL, '2020-05-05 07:08:17', '2020-05-05 07:09:17', NULL),
('6ca8e3b9-2d77-42a8-8193-edcb075d4743', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3324', 'دستبند  آریان', 'dstbnd-r-n-11', 8.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 03:32:21', NULL, '2020-05-07 08:03:11', '2020-05-09 08:17:42', NULL),
('6d6319ba-5e1d-411a-b601-43dc056d923a', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '702', 'ساغر', 's-ghr-6', 4.700, 0.00, 47000.000, 0.00, 0.000, 0, NULL, '2020-01-05 21:54:46', NULL, '2020-01-06 12:56:36', '2020-05-19 06:18:48', NULL),
('712b1be0-4a11-4a3b-9706-eb23ad444a26', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '9823', 'فیوژن', 'f-o-n-23', 5.120, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 02:55:15', NULL, '2020-04-30 07:53:15', '2020-05-06 04:45:18', NULL),
('72d04364-f4ad-4b4a-b0fc-6366f16a68d8', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3306', 'دستبند المیرا', 'dstbnd-lm-r-4', 12.000, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-07 05:03:47', NULL, '2020-05-06 09:19:51', '2020-05-07 06:44:20', NULL),
('74a977bc-7f9c-4362-9b47-b347940485a5', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '9829', 'فیوژن', 'f-o-n-30', 6.250, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 19:15:46', NULL, '2020-05-02 08:15:15', '2020-05-06 04:45:26', NULL),
('76ca15a1-d1c2-4980-b632-50b3155710ae', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3211', 'گوشواره لیندا', 'osho-rh-l-nd', 2.690, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .', '2020-05-11 03:47:16', NULL, '2020-05-10 03:49:18', '2020-05-10 03:49:54', NULL),
('79e20b1a-804f-49b1-93ec-d1debd3bb711', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '577', 'گیلدا', 'ld-2', 6.000, 0.00, 93000.000, 0.00, 0.000, 1, NULL, '2020-01-01 06:42:56', NULL, '2019-12-31 06:43:15', '2020-01-01 18:14:09', NULL),
('7a2fc705-dcc8-401d-a71a-f222789811c6', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '9816', 'فیوژن', 'f-o-n-13', 5.100, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 01:44:44', '2021-04-30 01:44:44', '2020-04-30 07:15:03', '2020-05-06 04:45:38', NULL),
('7a7126a3-bb86-4aba-b345-916a6138f9fd', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '9821', 'فیوژن', 'f-o-n-21', 0.000, 0.00, 0.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-04-30 07:42:11', '2020-04-30 07:51:14', '2020-04-30 07:51:14'),
('7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1210', 'داماس', 'd-m-s-1', 5.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:20:09', NULL, '2020-01-02 10:13:31', '2020-05-06 04:46:05', NULL),
('7c240973-69c1-44ee-ad7b-8ddb36384aa0', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2801', 'سریوس ریخته', 'sr-os-r-khth', 32.580, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 20/470\nدستبند : 8/210\nگوشواره : 3/900', '2020-05-17 09:07:20', NULL, '2020-05-16 09:08:58', '2020-05-17 03:31:28', '2020-05-17 03:31:28'),
('7c2dcd69-c461-4671-8202-b1c00ff71703', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1211', 'داماس', 'd-m-s-2', 4.700, 4.00, 0.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-01-02 10:16:05', '2020-01-02 10:22:28', '2020-01-02 10:22:28'),
('7c895e53-fadd-4114-8da9-9014af54fe3b', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1201', 'نیم ست آریانا', 'n-m-st-r-n', 12.630, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-10 23:04:11', NULL, '2020-05-10 08:07:23', '2020-05-10 08:09:18', NULL),
('7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'fd928ed5-008b-4a20-8493-b26d6f7ed29e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1503', 'انگشتر گوی سه رج', 'o-sh-rg', 5.150, 8.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 02:24:18', NULL, '2020-05-02 11:25:30', '2020-05-07 08:52:05', NULL),
('7ff9deac-b994-43dd-99cc-597e9a606029', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1504', 'دنیز', 'dn-z-3', 5.500, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:11:45', NULL, '2020-01-17 16:12:48', '2020-05-06 04:45:53', NULL),
('80bcc297-5f8f-4e6c-ad09-e69a40683746', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '2706', 'انگشتر سیاه قلم', 's-h-klm-6', 5.150, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 22:24:43', NULL, '2020-05-02 11:55:52', '2020-05-10 05:14:36', NULL),
('810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'd54da9f1-18bf-443d-8a52-1a569d8a8641', NULL, '1155', 'دستبند پرتراش', 'dstbnd-s-h-klm-rtr-sh', 19.370, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-10 18:57:51', NULL, '2020-05-10 04:00:27', '2020-05-11 04:17:55', NULL),
('81f43560-99ae-4400-b0b0-90e56821e24d', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3201', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh', 14.830, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 07:13:00', NULL, '2020-05-10 07:14:58', '2020-05-10 07:18:01', NULL),
('82177eb9-7ed0-4d7a-b205-7c84cf234cd5', '5012ea55-4e47-4b0d-8ba3-ba1086928810', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1080', 'النگو سیاه قلم', 's-h-klm-9', 8.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .\nوزن حدودی هر سایز :\nسایز یک : (8/00گرم)\nسایز دو :(8/800گرم)\nسایز سه :( 9/500گرم)', '2020-05-05 16:40:13', NULL, '2020-05-05 06:11:36', '2020-05-10 04:26:30', NULL),
('83637ae6-0cbf-4c5d-9027-0c511e088f19', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1701', 'اوا', 'o', 2.000, 0.00, 200000.000, NULL, 30000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 06:41:42', NULL, '2020-01-17 21:42:53', '2020-05-06 04:46:21', NULL),
('83d9fc75-d190-4f33-8992-4ce45db55a3d', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3378', 'دستبند المیرا', 'dstbnd-lm-r-7', 12.700, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 06:57:35', NULL, '2020-05-07 06:58:57', '2020-05-07 07:00:06', NULL),
('841450e2-7690-48c8-b983-b2b91b4c6bfe', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3215', 'گوشواره لیندا', 'osho-rh-l-nd-4', 2.670, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.', '2020-05-11 03:56:11', NULL, '2020-05-10 03:57:38', '2020-05-10 03:58:16', NULL),
('864280c6-39db-4f3f-a13e-1315510b175d', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1204', 'نیم ست آریانا', 'n-m-st-r-n-3', 10.530, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:12:09', NULL, '2020-05-10 08:13:23', '2020-05-10 08:14:30', NULL),
('86a4805d-1ffe-40b3-a4ae-5c9eb3404957', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '1304', 'عروسکی', 'aaros-3', 1.500, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:07:57', NULL, '2020-05-03 09:09:05', '2020-05-03 09:10:49', NULL),
('86f0dce9-c45c-48da-8146-fcda8de122b3', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, NULL, 'فیوژن', 'f-o-n-16', 4.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 05:09:47', NULL, '2020-04-30 07:21:20', '2020-05-06 04:46:14', NULL);
INSERT INTO `products` (`id`, `producer_id`, `category_id`, `subcategory_id`, `weight_range_id`, `wage_range_id`, `code`, `name`, `slug`, `weight`, `wage_percent`, `wage_rial`, `site_profit_percent`, `site_profit_rial`, `is_published`, `description`, `published_at`, `expires_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
('8794050b-68ea-4825-b5da-022646a0ea99', '58a267b8-80d9-43fe-8d95-29b1267b7dd1', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '94c22b0c-75ad-47b9-99e0-704e4de3e812', NULL, '3402', 'سرویس شانل', 'sro-s-sh-nl-2', 26.500, 0.00, 60000.000, 0.00, 0.000, 1, 'سرویس شانل \nوزن حدودی :\nدستبند : (7/900گرم) گوشواره :(4/700گرم) \nزنجیر :(14/100گرم)\nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-06 04:19:03', NULL, '2020-05-05 13:20:34', '2020-05-06 04:30:57', NULL),
('8884d091-8a7d-4639-82a3-f9a4986b809b', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3388', 'دستبند المیرا', 'dstbnd-lm-r-8', 13.480, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 06:59:44', NULL, '2020-05-07 07:00:51', '2020-05-07 07:02:16', NULL),
('89b65d28-fdef-4a78-9241-a9062c3492ce', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '820', 'ساغر', 's-ghr-4', 6.500, 0.00, 47000.000, 0.00, 0.000, 0, NULL, '2020-01-05 22:17:19', NULL, '2020-01-06 12:51:45', '2020-05-19 06:18:41', NULL),
('8bd59859-d7a9-4591-abae-99221f3d395e', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '9834', 'فیوژن', 'f-o-n-35', 6.600, 0.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-03 08:42:27', NULL, '2020-05-02 08:43:14', '2020-05-02 08:46:07', '2020-05-02 08:46:07'),
('8c0f6122-ca11-4263-bd35-e772e5732b7f', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1210', 'داماس', 'd-m-s', 5.700, 5.50, NULL, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:24:54', NULL, '2020-01-02 10:09:57', '2020-05-06 04:46:48', NULL),
('8cb8dab1-57d1-493c-805e-c18aee9ed8a8', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '94c22b0c-75ad-47b9-99e0-704e4de3e812', NULL, '2804', 'سرویس ریخته', 'sro-s-r-khth-2', 26.620, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 16/650\nدستبند : 6/770\nگوشواره :3/200', '2020-05-18 03:34:34', NULL, '2020-05-17 03:36:27', '2020-05-17 03:38:54', NULL),
('8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1205', 'نیم ست آریانا', 'n-m-st-r-n-4', 12.660, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:14:00', NULL, '2020-05-10 08:15:15', '2020-05-10 08:17:08', NULL),
('8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', '8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '856', 'آرا', 'r', 6.000, 0.00, 63000.000, 0.00, 0.000, 1, NULL, '2020-01-01 06:47:11', NULL, '2019-12-31 06:33:28', '2020-01-01 18:18:43', NULL),
('906b16db-0fe9-4631-9f28-d763225aa70a', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'd54da9f1-18bf-443d-8a52-1a569d8a8641', NULL, '3206', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-4', 16.920, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 07:46:21', NULL, '2020-05-10 07:47:42', '2020-05-10 07:48:53', NULL),
('90c8880b-cb0d-4aeb-b9d0-18d0d8e20a28', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2101', 'والنتینا', 'o-lnt-n-1', 8.340, 4.00, 0.000, 0.00, 0.000, 0, 'دستبند سیاه قلم والنتینا سایز بندی نداشه فقظ در  سایز دو موجود میباشد .', NULL, NULL, '2020-05-14 08:13:46', '2020-05-17 04:08:48', '2020-05-17 04:08:48'),
('9148de9e-73f2-42f8-aad8-98f1d469c566', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2703', 'انگشتر سیاه قلم', 's-h-klm-2', 2.900, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 22:15:53', NULL, '2020-05-02 11:46:54', '2020-05-10 05:15:13', NULL),
('91a6cce0-3037-4514-ae0b-462daa8c9391', '745059d1-feea-4ac9-99bb-62de7602a7f6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '520', 'تابان', 't-b-n-2', 5.000, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-21 01:30:00', NULL, '2019-12-27 18:50:23', '2020-05-06 04:46:58', NULL),
('947fecec-159c-4621-b460-7f302adc9c88', '80ab8449-363a-46ce-9f29-f68ec7d86c5e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1701', 'انگشتر گل', 'n-shtr-l', 3.200, 2.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 02:49:46', NULL, '2020-05-05 07:54:53', '2020-05-06 04:47:26', NULL),
('95575496-a835-4d48-abb8-ade595a274fb', 'e970c2ab-2938-4291-bcea-6ee784c25f0f', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1010', 'محنا', 'mhn', 6.500, 0.00, 42000.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-01-04 20:55:48', '2020-01-04 20:55:48', NULL),
('957372ca-bc82-4db4-8ab0-37a94a5d33b6', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, 'd54da9f1-18bf-443d-8a52-1a569d8a8641', NULL, '1555', 'دستبند پرتراش', 'dstbnd-s-h-klm-rtr-sh-4', 19.860, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .', '2020-05-10 10:09:15', NULL, '2020-05-10 04:10:42', '2020-05-11 04:18:18', NULL),
('95b8f5d2-3285-4ebf-90dc-970ba96f1b69', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '9830', 'فیوژن', 'f-o-n-31', 4.750, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 23:20:36', NULL, '2020-05-02 08:22:30', '2020-05-06 04:47:18', NULL),
('977f3b8a-862c-413d-89a6-8817b7143ac7', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3304', 'دستبند المیرا', 'dstbnd-lm-r-3', 12.500, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-07 04:45:22', NULL, '2020-05-06 09:16:46', '2020-05-07 06:50:37', NULL),
('98131462-ad96-475b-a2a2-91bd316f1cf8', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1210', 'نیم ست آریانا', 'n-m-st-r-n-7', 11.740, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:21:45', NULL, '2020-05-10 08:22:57', '2020-05-10 08:24:29', NULL),
('98ca7723-06d1-4fc5-ab6b-d7d102330afb', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1404', 'نلسون', 'nlson-2', 6.000, 3.00, NULL, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:49:11', NULL, '2020-01-17 11:50:10', '2020-05-06 04:47:11', NULL),
('99af2b1e-7a53-406f-a319-6cfefb628e77', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3302', 'دستبند المیرا', 'dstbnd-lm-r', 13.500, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-07 04:40:40', NULL, '2020-05-06 08:50:43', '2020-05-07 06:52:49', NULL),
('99c75ce5-d433-40a0-acc9-b894e296b494', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1508', 'دنیز', 'dn-z-8', 2.000, 0.00, 150000.000, 0.00, 35000.000, 1, NULL, '2020-01-17 04:51:09', NULL, '2020-01-17 16:21:43', '2020-01-17 16:27:39', '2020-01-17 16:27:39'),
('9a539382-86dd-4ae8-96ba-23a582c339b6', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '5803', 'نیک-مرجان', 'n-mrg-n', 3.400, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:3/120\nسایز دو : 3/320\nسایز سه :3/540\nسایز چهار :3/810', '2020-05-10 06:46:25', NULL, '2020-05-09 06:48:23', '2020-05-09 06:49:55', NULL),
('9b587046-06df-4e91-919e-1046817db97f', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9826', 'فیوژن', 'f-o-n-26', 3.100, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 07:31:54', NULL, '2020-04-30 08:32:14', '2020-05-06 04:50:08', NULL),
('9b981cf0-9581-4dfe-bcd3-88f7356be7a4', 'fd928ed5-008b-4a20-8493-b26d6f7ed29e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1501', 'گوی یک رج', 'o-rg', 2.200, 8.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-07 04:47:09', NULL, '2020-05-02 10:38:11', '2020-05-07 08:51:34', '2020-05-07 08:51:34'),
('9dea5f1e-3240-4065-89bb-a76be78c6fbc', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1510', 'دنیز', 'dn-z-10', 2.000, 0.00, 150000.000, 0.00, 35000.000, 1, NULL, '2020-01-17 04:53:16', NULL, '2020-01-17 16:23:44', '2020-01-17 16:27:47', '2020-01-17 16:27:47'),
('9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1404', 'نلسون', 'nlson-9', 9.300, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:32:58', NULL, '2020-01-17 15:33:29', '2020-05-06 04:47:34', NULL),
('9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1502', 'دنیز', 'dn-z-5', 6.800, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:15:31', NULL, '2020-01-17 16:16:14', '2020-05-06 04:50:51', NULL),
('9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '940', 'برج', 'brg', 6.500, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 6/300  \nسایز دو :  6/680\nسایز سه:  7/090\nسایز چهار : 7/400', '2020-05-07 23:55:05', NULL, '2020-05-07 04:27:19', '2020-05-07 08:40:28', NULL),
('a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2807', 'سرویس ریخته', 'sro-s-r-khth-5', 34.000, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 20/470\nدستبند : 8/210\nگوشواره : 3/900', '2020-05-18 03:48:10', NULL, '2020-05-17 03:49:32', '2020-05-17 03:51:05', NULL),
('a23c96f7-b2ee-4564-9420-a8fb1d880e8a', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '5813', 'نیک-مرجان', 'n-mrg-n-1', 3.400, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:3/120\nسایز دو : 3/320\nسایز سه :3/540\nسایز چهار :3/810', '2020-05-10 06:58:17', NULL, '2020-05-09 06:59:47', '2020-05-09 07:01:11', NULL),
('a244bd9f-50a3-47c3-a1d8-74d110683e16', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1410', 'نلسون', 'nlson-10', 9.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:35:11', NULL, '2020-01-17 15:35:58', '2020-05-06 04:50:34', NULL),
('a255b993-f990-4c78-b529-94551adae6be', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3323', 'دستبند  آریان', 'dstbnd-r-n-10', 8.500, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 03:30:36', NULL, '2020-05-07 08:01:34', '2020-05-09 08:18:44', NULL),
('a4509384-44ec-40d7-ad6d-4c86fc167bb3', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '5812', 'نیک-یاس', 'n-s-1', 4.400, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:4/080\nسایز دو : 4/260\nسایز سه :4/350\nسایز چهار :4/750', '2020-05-10 06:55:18', NULL, '2020-05-09 06:56:55', '2020-05-09 06:58:08', NULL),
('a528490c-773c-4579-af7c-aadf943c7964', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2806', 'سرویس ریخته', 'sro-s-r-khth-3', 33.000, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 22/220\nدستبند : 7/460\nگوشواره : 3/310', '2020-05-18 03:39:21', NULL, '2020-05-17 03:41:18', '2020-05-17 03:42:52', NULL),
('a5df16b6-24b1-4fc3-838a-955679b5d993', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '860', 'ساغر', 's-ghr-3', 6.000, 0.00, 47000.000, 0.00, 0.000, 0, NULL, '2020-01-05 21:45:01', NULL, '2020-01-02 06:08:36', '2020-05-19 06:19:10', NULL),
('a60e4e0f-1445-432c-a027-667a6a0b5093', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1702', 'آوا', 'o-1', 3.000, 0.00, 200000.000, 0.00, 30000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 06:43:38', NULL, '2020-01-17 21:44:19', '2020-05-06 04:50:22', NULL),
('a634d123-c706-4e49-9141-6cff640d182c', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1507', 'دنیز', 'dn-z-7', 2.000, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:19:25', NULL, '2020-01-17 16:20:11', '2020-05-06 04:51:12', NULL),
('a6759f65-8d0a-473b-8493-975bb824f960', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1216', 'داماس', 'd-m-s-6', 5.400, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:29:19', NULL, '2020-01-17 11:30:05', '2020-05-06 04:51:48', NULL),
('a72a1b51-a094-4e31-9cf8-3050c70721dd', 'bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '2203', 'حلقه هندسی', 'hlkh-hnds-2', 1.800, 0.00, 80000.000, 0.00, 0.000, 1, NULL, '2020-05-04 10:52:27', NULL, '2020-05-03 10:53:51', '2020-05-03 10:54:40', NULL),
('a8124b69-7dc5-4617-870e-d6bc4b8833b9', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9827', 'فیوژن', 'f-o-n-28', 3.180, 0.00, 0.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-05-02 05:52:17', '2020-05-02 05:52:17', NULL),
('a81714e1-2a04-4789-b50a-98334817019a', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9818', 'فیوژن', 'f-o-n-15', 3.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 06:18:49', '2021-04-30 06:18:49', '2020-04-30 07:19:33', '2020-05-06 04:51:34', NULL),
('a85f48ec-fe2b-431b-9df5-62b40683819c', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, NULL, NULL, '2104', 'دستبند والنتینا', 'dstbnd-o-lnt-n-2', 10.000, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند والنتینا در سایز 2 عرضه میشود.', '2020-05-18 04:01:20', NULL, '2020-05-17 04:02:42', '2020-05-17 04:03:58', NULL),
('a9375cce-6096-4f7e-a50b-a28b80708692', '80e09169-c0f0-46a6-b42b-cb0b55084035', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2706', 'انگشتر سیاه قلم', 's-h-klm-5', 2.600, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 17:52:49', NULL, '2020-05-02 11:54:04', '2020-05-10 05:18:36', NULL),
('a9e235c4-4b2c-45e6-8434-1d00b050b751', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3322', 'دستبند  آریان', 'dstbnd-r-n-9', 9.770, 4.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-08 07:56:57', NULL, '2020-05-07 07:58:18', '2020-05-07 08:00:10', NULL),
('aafdf292-67c9-48ab-8bdf-873854e5fc80', '8c4b7982-8c0f-40ab-8c46-bcb4a0dbfb1b', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '866', 'آرا', 'r-1', 6.000, 0.00, 63000.000, 0.00, 0.000, 1, NULL, '2020-01-01 06:44:19', NULL, '2019-12-31 06:37:44', '2020-01-01 18:16:53', NULL),
('b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1602', 'دیوا', 'd-o-2', 2.000, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:51:08', NULL, '2020-01-17 16:31:45', '2020-05-06 04:52:05', NULL),
('b4f8d4a9-eaed-4398-8c07-58b97b49744c', '1b1831da-88d5-43de-8354-6e9cdca8a03b', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '1202', 'سرویس یزدان', 'sro-s-zd-n-1', 8.800, 6.50, 0.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد', '2020-05-15 06:00:49', NULL, '2020-05-14 05:42:53', '2020-05-14 06:02:43', NULL),
('b5422006-a8ff-4f7e-87d0-7f4639a335bc', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7055', 'منتخب', 'mntkhb-5', 3.510, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 3/100\nسایز دو :  3/430\nسایز سه:  3/660\nسایز چهار : 3/800', '2020-05-13 06:17:20', NULL, '2020-05-12 06:19:59', '2020-05-12 06:21:38', '2020-05-12 06:21:38'),
('b5c27513-9044-4dd8-91fb-79ff7863dff8', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '9aedd83d-8fbf-481c-ad28-d3cba59cb7db', NULL, '1655', 'دستبند  پرتراش', 'dstbnd-s-h-klm-rtr-sh-5', 20.810, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها بع صورت تقریبی میباشد .', '2020-05-10 14:41:31', NULL, '2020-05-10 04:13:09', '2020-05-11 04:18:33', NULL),
('b6ec513b-35f3-4dd0-a408-81a0a4778304', '58a267b8-80d9-43fe-8d95-29b1267b7dd1', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '94c22b0c-75ad-47b9-99e0-704e4de3e812', NULL, '3401', 'سرویس شانل', 'sro-s-sh-nl-1', 28.000, 0.00, 60000.000, 0.00, 0.000, 1, 'سرویس شانل \nوزن حدودی :\nدستبند : (7/600گرم) گوشواره :(5/00گرم) \nزنجیر :(15/600گرم)\nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-05 23:45:13', NULL, '2020-05-05 13:16:44', '2020-05-11 05:46:17', NULL),
('b7bc4bcd-d9fe-4c68-b8b8-a727da75b480', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1411', 'نلسون', 'nlson-11', 5.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:45:03', NULL, '2020-01-17 15:37:33', '2020-05-06 04:52:52', NULL),
('b7ec9849-9d99-493d-b98c-8508cb2647fd', 'f57e2094-03e2-4187-b072-76ac47679751', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '2102', 'دستبند والنتینا', 'dstbnd-o-lnt-n', 9.000, 4.00, 0.000, 0.00, 0.000, 1, 'دستبند والنتاینا در سایز 2 عرضه  میشود .', '2020-05-18 03:56:23', NULL, '2020-05-17 03:58:29', '2020-05-17 03:59:34', NULL),
('b830b3da-e5ee-406e-bef1-360f2b196f45', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3304', 'دستبند  آریان', 'dstbnd-r-n-3', 13.700, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:43:49', NULL, '2020-05-07 07:15:08', '2020-05-07 07:56:46', NULL),
('baff621b-fa22-42a1-a53c-7b6f0f3cc072', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '960', 'برج', 'brg-2', 6.700, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 6/400  \nسایز دو :  6/800\nسایز سه:  7/00\nسایز چهار : 7/300', '2020-05-07 19:39:33', NULL, '2020-05-07 04:41:09', '2020-05-07 08:39:24', NULL),
('bb140c4f-24fd-44fa-9ab5-948993b76ddd', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1206', 'نیم ست آریانا', 'n-m-st-r-n-5', 11.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:16:41', NULL, '2020-05-10 08:17:50', '2020-05-10 08:19:47', NULL),
('c15a090a-40eb-4b43-bce1-7f97c93701e7', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '1301', 'عروسکی', 'aaros', 1.400, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-03 23:21:21', NULL, '2020-05-03 08:22:23', '2020-05-03 09:04:36', NULL),
('c3479a2c-90b5-4a82-88f7-a110c6c647ec', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1208', 'نیم ست آریانا', 'n-m-st-r-n-6', 12.090, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:19:16', NULL, '2020-05-10 08:20:30', '2020-05-10 08:22:01', NULL),
('c4b24811-34ce-48ec-85a7-10f572cdeada', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1705', 'آوا', 'o-4', 2.500, 0.00, 200000.000, 0.00, 30000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 06:49:24', NULL, '2020-01-17 21:50:01', '2020-05-06 04:52:34', NULL),
('c4e691e4-0b8a-48e3-8e49-53c9170070f6', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3209', 'دستبند یه رو تراش', 'dstbnd-h-ro-tr-sh-6', 15.510, 3.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد. \nوزن دقیق زمان فاکتور مشخص میشود.', '2020-05-11 07:51:02', NULL, '2020-05-10 07:52:08', '2020-05-10 07:53:14', NULL),
('c502f0bd-5200-491c-ba49-655b747a436f', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7055', 'منتخب', 'mntkhb-2', 3.700, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 3/280  \nسایز دو :  3/560\nسایز سه:  3/80\nسایز چهار : 4/00', '2020-05-07 23:50:40', NULL, '2020-05-07 04:22:10', '2020-05-07 08:24:34', NULL),
('c50904d6-3561-47ff-96ed-f2b5f64a28b1', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3302', 'دستبند آریان', 'dstbnd-r-n-1', 8.200, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:37:38', NULL, '2020-05-07 07:09:00', '2020-05-07 07:56:29', NULL),
('c6e55782-52a9-43ca-bc50-b3db46feec27', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9809', 'فیوژن', 'f-o-n-7', 3.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 10:14:53', '2021-04-30 10:14:53', '2020-04-30 06:19:25', '2020-05-06 04:52:24', NULL),
('c82d508e-a8aa-4b92-96e0-217ba3c5b17d', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '9837', 'فیوژن', 'f-o-n-36', 0.000, 0.00, 0.000, 0.00, 0.000, 0, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-07 04:52:29', NULL, '2020-05-02 08:51:05', '2020-05-07 09:00:08', '2020-05-07 09:00:08'),
('c9540286-873d-43e1-a079-13ce643c2919', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9828', 'فیوژن', 'f-o-n-29', 4.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 23:12:10', NULL, '2020-05-02 08:09:04', '2020-05-06 04:53:41', NULL),
('c9cca7ed-e714-4966-bdd2-186aa79d2843', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9826', 'فیوژن', 'f-o-n-27', 4.350, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-28 22:33:24', NULL, '2020-04-30 08:33:47', '2020-05-06 04:53:33', NULL),
('c9dbf748-7ea1-4673-b420-94f855ef3b74', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '1212', 'داماس', 'd-m-s-4', 5.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:22:10', NULL, '2020-01-02 10:19:34', '2020-05-06 04:53:25', NULL),
('ca3af4ca-4eb0-417e-a4cf-5f9a2ea7b378', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '820', 'ساغر', 's-ghr-2', 6.000, 0.00, 47000.000, 0.00, 0.000, 0, NULL, NULL, NULL, '2020-01-02 06:04:19', '2020-05-07 09:00:14', '2020-05-07 09:00:14'),
('ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1311', 'گوشواره خورشیدی', 'osho-rh-khorsh-d', 2.150, 1.00, 40000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-06 02:05:31', NULL, '2020-05-05 06:38:07', '2020-05-06 05:32:48', NULL),
('cafacd4d-5282-4329-af62-2c065273c620', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7080', 'منتخب', 'mntkhb-3', 3.700, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 3/230\nسایز دو :  3/390\nسایز سه:  3/43\nسایز چهار : 3/800', '2020-05-07 23:52:51', NULL, '2020-05-07 04:24:13', '2020-05-07 08:25:42', NULL),
('caff10dd-5218-4c18-8355-9d977965aa8b', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3311', 'دستبند  آریان', 'dstbnd-r-n-7', 8.100, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:56:23', NULL, '2020-05-07 07:48:02', '2020-05-07 07:56:09', NULL),
('cb38f089-9e70-4a59-8234-3bea83c738b5', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1404', 'گوشواره نرمال', 'osho-rh-nrm-l-3', 7.000, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:12:59', NULL, '2020-05-05 07:14:14', '2020-05-05 07:15:16', NULL),
('cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '3307', 'دستبند المیرا', 'dstbnd-lm-r-6', 16.500, 7.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-07 06:02:58', NULL, '2020-05-06 10:22:05', '2020-05-07 06:54:49', NULL),
('cd8261f8-30e0-46dc-9182-dc28d4ff1471', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '316', 'زیبا طلا', 'z-b-tl', 8.000, 0.00, 93000.000, 0.00, 0.000, 1, NULL, '2020-01-01 06:48:52', NULL, '2019-12-31 06:27:08', '2020-01-06 08:41:30', NULL),
('ce6d56dc-85b8-4fce-acd8-6c8197523ed5', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9833', 'فیوژن', 'f-o-n-34', 4.250, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 23:39:43', NULL, '2020-05-02 08:40:41', '2020-05-06 04:54:05', NULL),
('d0c45dfc-d648-463c-af7a-e3419067ba2a', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '7ec683c1-3fe6-4b19-8521-30563d0a4aeb', NULL, '1305', 'عروسکی', 'aaros-4', 1.200, 2.50, 0.000, 0.00, 0.000, 1, NULL, '2020-05-04 09:10:27', NULL, '2020-05-03 09:11:42', '2020-05-03 09:12:11', NULL),
('d17fe7eb-1e53-41d3-93f3-2852c09dd131', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1203', 'نیم ست آریانا', 'n-m-st-r-n-2', 12.400, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:10:26', NULL, '2020-05-10 08:11:39', '2020-05-10 08:12:37', NULL),
('d293e5c7-e53f-4790-8ea8-ab00fc81c48c', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '5054', 'مژده', 'm-dh', 4.200, 0.00, 42000.000, 0.00, 0.000, 1, NULL, '2020-01-18 11:23:59', NULL, '2020-01-06 13:22:05', '2020-01-18 11:24:25', NULL),
('d50ce435-9198-471d-98b2-fe0fc0d336f9', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1310', 'چلسی', 'm-r-l', 3.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:32:20', NULL, '2020-01-17 11:33:38', '2020-05-06 04:53:57', NULL),
('d54e9d0c-d4ff-4c78-a805-ebabdd8571ca', '0b474b5d-40ff-4683-a656-41fded2d2bcb', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '920', 'برج', 'brg-4', 6.500, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 6/300  \nسایز دو :  6/600\nسایز سه:  6/600\nسایز چهار :7/00', '2020-05-08 00:15:26', NULL, '2020-05-07 04:47:04', '2020-05-07 08:36:09', NULL),
('d65d7783-4f14-47a6-b19c-03ec4625c84d', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9807', 'فیوژن', 'f-o-n-5', 3.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 09:42:36', '2021-04-30 09:42:36', '2020-04-30 06:13:32', '2020-05-06 04:53:49', NULL),
('d776b0b0-72b6-4d2a-9392-1344a3c632e5', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9822', 'فیوژن', 'f-o-n-22', 3.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-28 21:51:21', NULL, '2020-04-30 07:50:27', '2020-05-11 05:47:18', NULL),
('d7af749d-385d-493b-b774-21429929b44d', '54276dce-d785-48bc-bb86-95dd6f6e2170', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '7035', 'منتخب', 'mntkhb-1', 3.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 3/420  \nسایز دو :  3/360\nسایز سه:  3/380\nسایز چهار : 3/390', '2020-05-07 23:48:01', NULL, '2020-05-07 04:19:42', '2020-05-07 08:27:39', NULL),
('d822e8ed-3c4f-4055-892d-b5b407162076', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9806', 'فیوژن', 'f-o-n-4', 3.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 05:08:15', '2021-04-30 05:08:15', '2020-04-30 06:09:05', '2020-05-06 04:54:30', NULL),
('d9643276-2df4-4ae2-9c3b-44b9e2a8425a', 'a5d5e403-1865-4c54-9561-519e3192249d', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2604', 'المیرا', 'lm-r-3', 2.500, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-04 06:41:56', NULL, '2020-04-30 10:28:01', '2020-05-06 04:54:14', NULL),
('daaf0d20-6b1c-4f43-a887-b145976c7ad9', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3212', 'گوشواره لیندا', 'osho-rh-l-nd-1', 2.950, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.', '2020-05-11 03:50:17', NULL, '2020-05-10 03:51:46', '2020-05-10 03:52:49', NULL),
('dade8b74-1f20-4cb9-a42f-dfbf4140f080', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1408', 'گوشواره نرمال', 'osho-rh-nrm-l-5', 2.800, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:17:44', NULL, '2020-05-05 07:19:06', '2020-05-05 07:20:00', NULL),
('daf86b6e-50b3-4f8a-8b10-10690d045e7a', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '9814', 'فیوژن', 'f-o-n-11', 0.000, 3.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-03 09:43:35', NULL, '2020-04-30 06:59:29', '2020-05-02 09:45:05', '2020-05-02 09:45:05'),
('db4ff38a-fff2-47b3-bae7-8caa29787516', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1606', 'دیوا', 'd-o-6', 3.300, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:42:17', NULL, '2020-01-17 16:42:51', '2020-05-06 04:54:46', NULL),
('db813db7-a04c-4ad1-859e-da46327a7154', 'fd928ed5-008b-4a20-8493-b26d6f7ed29e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1502', 'انگشتر گوی دو رج', 'o-do-rg', 3.700, 8.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 02:22:01', NULL, '2020-05-02 11:23:05', '2020-05-07 08:52:32', NULL),
('dc7545b7-1956-4ad4-9ccd-5999617e8514', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9835', 'فیوژن', 'f-o-n-35', 3.600, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 23:46:55', NULL, '2020-05-02 08:47:42', '2020-05-06 04:55:07', NULL),
('dc7a897f-0d73-4ef4-8067-381dde3cf705', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '5052', 'سناتور', 'sn-tor', 4.200, 0.00, 42000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:40:55', NULL, '2020-01-06 13:12:52', '2020-01-06 13:14:24', NULL),
('def21a03-6188-4ac8-8335-0dc1879e73cd', '28776704-f959-4977-ac05-6851cad290f9', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2101', 'گوشواره براق', 'osho-rh-br-k', 2.000, 0.00, 75000.000, 0.00, 0.000, 1, NULL, '2020-05-06 03:53:23', NULL, '2020-05-05 12:56:11', '2020-05-05 13:08:51', NULL),
('e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '710', 'برج', 'brg-1', 5.500, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 4/970  \nسایز دو :  5/300\nسایز سه:  5/800\nسایز چهار : 6/020', '2020-05-07 23:59:18', NULL, '2020-05-07 04:30:43', '2020-05-07 08:45:02', NULL),
('e0979005-1c1d-4f6e-af4e-751197311a4f', '28776704-f959-4977-ac05-6851cad290f9', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2102', 'گوشواره براق', 'osho-rh-br-k-1', 3.000, 0.00, 75000.000, 0.00, 0.000, 1, NULL, '2020-05-06 08:29:44', NULL, '2020-05-05 13:01:21', '2020-05-05 13:08:15', NULL),
('e1493eee-f61a-4653-9a81-d067f4df91bb', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9832', 'فیوژن', 'f-o-n-33', 3.300, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-02 23:32:00', NULL, '2020-05-02 08:32:55', '2020-05-06 04:54:59', NULL),
('e1826524-9bba-4cf2-bd9e-0bcea1d4417d', '7e2777cc-f7d1-4cbd-af6d-42d19f6efe05', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '601', 'یکتا', 't', 5.200, 0.00, 68000.000, 0.00, 0.000, 1, NULL, '2020-01-04 09:15:57', NULL, '2020-01-02 05:51:56', '2020-01-04 20:46:54', NULL),
('e1c1a230-8360-49e0-97d3-cfa6cb979301', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9805', 'فیوژن', 'f-o-n-3', 3.200, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 09:35:34', '2021-04-30 09:35:34', '2020-04-30 06:06:26', '2020-05-06 04:55:41', NULL),
('e2f73fe1-a8a0-4b3b-bac3-39b6fc2156cf', 'fd928ed5-008b-4a20-8493-b26d6f7ed29e', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1501', 'انگشتر گویی یک رج', 'o-rg-1', 2.200, 8.50, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 02:20:06', NULL, '2020-05-02 11:21:21', '2020-05-07 08:52:53', NULL),
('e3c4181b-dbc3-4972-8190-09dff13a6624', 'e64a0e18-f97a-4879-99d4-7dfae0c09da6', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1503', 'دنیز', 'dn-z-2', 7.500, 0.00, 150000.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:09:37', NULL, '2020-01-17 16:10:32', '2020-05-06 04:55:23', NULL),
('e601b6c4-64e4-4b04-9ea3-c844783e4b07', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '13113', 'چلسی', 'ls-1', 3.200, 4.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-16 20:36:46', NULL, '2020-01-17 11:37:40', '2020-05-06 04:56:07', NULL),
('e6944953-df21-4ae6-b319-7451ab12b65c', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9803', 'فیوژن', 'f-o-n-2', 3.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 05:02:54', '2021-04-30 05:02:54', '2020-04-30 06:03:43', '2020-05-06 04:55:58', NULL),
('e7c061f2-bd6c-409a-a8a4-38e50af531ea', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3214', 'گوشواره لیندا', 'osho-rh-l-nd-3', 2.840, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.', '2020-05-11 03:54:37', NULL, '2020-05-10 03:56:00', '2020-05-10 03:56:41', NULL),
('e9762cf9-802b-4c6e-89c6-0d45feace4a7', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3308', 'دستبند آریان', 'dstbnd-r-n-5', 9.000, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:48:14', NULL, '2020-05-07 07:19:30', '2020-05-07 07:57:07', NULL),
('ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', 'bdc9f4e5-4696-4aa7-8532-dad5fc7c4e99', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2202', 'حلقه هندسی', 'hlkh-hnds-1', 2.400, 0.00, 80000.000, 0.00, 0.000, 1, NULL, '2020-05-04 10:50:31', NULL, '2020-05-03 10:52:03', '2020-05-03 10:52:51', NULL),
('ed43e26c-4da4-4fc6-92da-bb3bb65df779', '1b1831da-88d5-43de-8354-6e9cdca8a03b', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '12003', 'سرویس یزدان', 'sro-s-zd-n-2', 10.990, 6.50, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-15 06:02:12', NULL, '2020-05-14 05:54:07', '2020-05-14 06:06:53', NULL),
('ee3bf526-44ef-4b13-bb8e-40cb451fd461', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '3213', 'گوشواره لیندا', 'osho-rh-l-nd-2', 2.760, 0.00, 65000.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد .', '2020-05-11 03:52:34', NULL, '2020-05-10 03:54:05', '2020-05-10 03:54:58', NULL),
('ef83749a-624f-4fdf-b6ae-37e6c3a9212f', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '69d341df-3580-4d75-ab5f-7336d6fa9650', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1202', 'نیم ست آریانا', 'n-m-st-r-n-1', 11.770, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .\nوزن دقیق در فاکتور درج میشود .', '2020-05-11 08:08:49', NULL, '2020-05-10 08:09:55', '2020-05-10 08:10:56', NULL),
('efa2ff31-d489-4eca-b25a-f3ef3e9188a7', '80e09169-c0f0-46a6-b42b-cb0b55084035', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1455', 'دستبند پرتراش', 'dstbnd-s-h-klm-rtr-sh-3', 14.280, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد .', '2020-05-10 10:05:44', NULL, '2020-05-10 04:07:31', '2020-05-11 04:18:49', NULL),
('f0924131-fda6-41f2-b2d0-157f1cbff499', 'a54f5085-6a4a-406d-b6cc-2d7c6c2679b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1212', 'اطلس', 'tls', 4.200, 0.00, 42000.000, 0.00, 0.000, 1, NULL, '2020-01-06 01:16:48', NULL, '2020-01-02 05:42:51', '2020-01-06 12:49:30', NULL),
('f1064890-3825-48ac-84cb-b1e52cc7123e', '1e89f107-0288-4bbf-8c07-eac69c81cede', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '820', 'ساغر', 's-ghr-5', 6.500, 0.00, 47000.000, 0.00, 0.000, 0, NULL, '2020-05-08 04:30:13', NULL, '2020-01-06 12:53:34', '2020-05-19 06:19:03', NULL),
('f3a343d3-bb22-4119-a5de-090142fef9ee', '26ad40ab-5122-42c9-b591-2e50bc00cd8c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '558', 'گیلدا', 'ld-1', 8.000, 0.00, 93000.000, 0.00, 0.000, 1, NULL, '2019-12-30 19:04:48', NULL, '2019-12-29 13:41:58', '2020-01-06 08:42:06', NULL),
('f4328b31-c11e-4555-9a2f-6de2524f0089', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9825', 'فیوژن', 'f-o-n-25', 4.000, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 02:59:42', NULL, '2020-04-30 08:30:04', '2020-05-06 04:55:50', NULL),
('f75245c1-7bdb-4ebc-b894-715795b4d3e3', '1b1831da-88d5-43de-8354-6e9cdca8a03b', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '27ffc4c7-7e1b-431a-9579-223b6540cd74', NULL, '1201', 'سرویس یزدان', 'sro-s-zd-n', 11.390, 6.50, 0.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.', '2020-05-15 05:38:59', NULL, '2020-05-14 05:40:37', '2020-05-14 05:41:44', NULL),
('fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9819', 'فیوژن', 'f-o-n-19', 3.400, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-03 05:17:00', NULL, '2020-04-30 07:38:37', '2020-05-06 04:56:16', NULL),
('fa5a7843-ae14-444e-a90a-79c410ee1361', '4d1ae1e4-1ca0-43b1-8b45-a17ab0f669b6', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '715', 'برج', 'brg-3', 6.700, 1.30, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.\nحدود وزن هر سایز:\nسایز یک : 4/490 \nسایز دو :  5/340\nسایز سه:  5/750\nسایز چهار : 6/030', '2020-05-08 00:12:42', NULL, '2020-05-07 04:44:15', '2020-05-07 08:43:55', NULL),
('fa85d981-9928-4e04-b7e3-f71b28813ae1', 'b1c9d18f-b169-4cd3-88e2-4f09d9e5aff4', '8bf1fcac-b185-430a-84d3-860b9b6b3388', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '1403', 'گوشواره نرمال', 'osho-rh-nrm-l-2', 4.000, 0.00, 60000.000, 0.00, 0.000, 1, NULL, '2020-05-06 07:10:51', NULL, '2020-05-05 07:12:09', '2020-05-05 07:13:09', NULL),
('fccb6c4f-de2d-42a9-b076-a3a3a1e32319', '80e09169-c0f0-46a6-b42b-cb0b55084035', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'a3189c62-d7e0-46c8-8790-ab20a833c6ff', NULL, '1001', 'النگو سیاه قلم', 'ln-o-s-h-klm', 7.800, 3.00, 0.000, 0.00, 0.000, 1, 'وزن به صورت تقریبی میباشد.\nسایز یک ( 6/600گرم)\nسایز دو (8 گرم)\nسایز سه (9 گرم )', '2020-05-19 05:24:54', NULL, '2020-05-18 09:58:05', '2020-05-18 10:11:50', NULL),
('fd975715-d4e6-49e1-abc8-d4d2be527216', '367e7a0d-e912-4ad6-ae68-af8ee1538596', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '9808', 'فیوژن', 'f-o-n-6', 2.500, 3.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-04-29 09:44:41', '2021-04-30 09:44:41', '2020-04-30 06:15:34', '2020-05-06 04:56:41', NULL),
('fdd96c86-2239-424a-b464-9fea61adb143', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3301', 'دستبند  آریان', 'dstbnd-r-n', 9.120, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:34:18', NULL, '2020-05-07 07:06:27', '2020-05-07 07:56:57', NULL),
('fe57ee1c-a067-4a7b-b74d-bb594aed62b9', 'a5d5e403-1865-4c54-9561-519e3192249d', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3301', 'دستبند المیرا', 'dstbnd-lm-r-1', 10.300, 7.00, 0.000, 0.00, 0.000, 1, NULL, '2020-05-07 00:06:06', NULL, '2020-05-06 09:07:25', '2020-05-07 06:56:39', NULL),
('fe6c6375-3285-4b72-a548-b4f1bd88be25', '9ced61c0-44d2-4a92-9df0-11a48d3477b2', '39aef691-ed7d-4fcb-9bc6-77fc38166774', NULL, '3406a637-6f99-4b62-ab8a-8270927e5e4b', NULL, '3306', 'دستبند  آریان', 'dstbnd-r-n-4', 8.350, 4.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد.', '2020-05-08 02:45:59', NULL, '2020-05-07 07:17:36', '2020-05-07 07:57:20', NULL),
('fe95615a-ee34-4c2a-9869-fb251145a611', 'a5d5e403-1865-4c54-9561-519e3192249d', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, '681978cc-27cc-4e66-b96f-7f0360322af9', NULL, '2603', 'المیرا', 'lm-r-2', 3.000, 0.00, 0.000, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-05-04 06:42:53', NULL, '2020-04-30 10:27:05', '2020-05-06 04:56:34', NULL),
('fec9600e-4451-4f9f-b115-71b96a99e2b7', '3a5e7fa2-984e-4104-bbfa-93eececaf081', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1405', 'نلسون', 'nlson-3', 5.000, 3.00, NULL, 0.00, 0.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 00:17:31', NULL, '2020-01-17 15:18:27', '2020-05-06 04:56:27', NULL),
('fec96300-2b21-46b1-b776-ab6391f0c38a', 'e970c2ab-2938-4291-bcea-6ee784c25f0f', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', NULL, NULL, NULL, '1511', 'دنیز', 'dn-z-11', 2.000, 0.00, 150000.000, 0.00, 35000.000, 1, 'وزن حدودی میباشد و وزن دقیق زمان فاکاتور مشخص میشود .', '2020-01-17 01:23:58', NULL, '2020-01-17 16:24:44', '2020-05-06 04:56:49', NULL),
('ff7bd542-be25-4d55-a8e0-fd833906ed5d', 'fc58e877-c689-4fd8-b1dd-dfb068215b1c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', NULL, 'c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', NULL, '5811', 'نیک- کندویی', 'n-ndo-1', 4.400, 0.00, 0.000, 0.00, 0.000, 1, 'وزن محصولات تقریبی میباشد .\nسایز یک:3/980\nسایز دو : 4/300\nسایز سه :4/560\nسایز چهار :4/740', '2020-05-10 02:19:29', NULL, '2020-05-09 06:51:24', '2020-05-09 06:55:30', NULL),
('ffc96b35-417c-48b7-9edc-d17de49ff64b', '457f494d-70ad-40ff-b044-0f14fa596156', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', NULL, '668e2b28-eadc-4c74-8389-cfa92fa470a6', NULL, '2802', 'سرویس ریخته', 'sro-s-r-khth', 32.930, 6.00, 0.000, 0.00, 0.000, 1, 'وزن ها به صورت تقریبی میباشد . \nگردنی : 20/730\nدستبند : 7/370\nگوشواره : 3/800', '2020-05-17 18:31:04', NULL, '2020-05-16 09:13:51', '2020-05-17 03:39:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_path` varchar(191) NOT NULL,
  `disk` varchar(191) NOT NULL,
  `order_column` int(10) NOT NULL,
  `mime_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `file_name`, `file_size`, `file_path`, `disk`, `order_column`, `mime_type`, `created_at`, `updated_at`) VALUES
('004340d1-340f-4210-943e-6c4c4433564f', 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'd2aad425-4b8a-4729-aae3-32a611482ad9', 1359562, 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'products', 1, 'image/jpeg', '2020-05-10 07:52:34', '2020-05-10 07:52:34'),
('0044249c-54e3-4fd0-97ed-923cea719f05', 'f0924131-fda6-41f2-b2d0-157f1cbff499', 'ada1fe93-be54-4272-b12e-bac39806f37d', 213480, 'f0924131-fda6-41f2-b2d0-157f1cbff499', 'products', 3, 'image/jpeg', '2020-01-06 12:48:51', '2020-01-06 12:48:51'),
('00468593-4d5f-4245-926b-1b78e624d470', 'e6944953-df21-4ae6-b319-7451ab12b65c', '37b4b053-3ba2-4d44-b8fe-26e95588edc7', 195722, 'e6944953-df21-4ae6-b319-7451ab12b65c', 'products', 2, 'image/jpeg', '2020-04-30 06:04:42', '2020-04-30 06:04:42'),
('00966f3e-681f-4bb2-a0f4-0e80846e512e', '54dee241-c3bd-46b5-8a42-46dacfd56353', '536b2ff3-c3e4-46d5-aa6f-270df35193f8', 141327, '54dee241-c3bd-46b5-8a42-46dacfd56353', 'products', 3, 'image/jpeg', '2020-01-06 13:00:52', '2020-01-06 13:00:52'),
('00a38b22-0557-4235-8898-9072f083cf36', '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'a37a6bc0-f37c-4076-9009-9944ce5de086', 882741, '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'products', 3, 'image/jpeg', '2020-05-10 08:17:01', '2020-05-10 08:17:01'),
('0131259f-84a5-4a96-ba02-5fa17cb4a312', '1c8d6194-3537-49a6-b3cd-4b48535d8fef', '250bcc00-5b38-460e-a5f5-a11d6e8a7939', 373851, '1c8d6194-3537-49a6-b3cd-4b48535d8fef', 'products', 2, 'image/jpeg', '2020-01-06 13:09:50', '2020-01-06 13:09:50'),
('013e2cea-f0f2-4d2b-9872-df6b9a4fecf3', 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', 'a0457650-e25e-487d-bcf4-b9c903d76364', 1127153, 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', 'products', 3, 'image/jpeg', '2020-05-07 08:38:34', '2020-05-07 08:38:34'),
('019af89d-4f5b-49c5-b66b-bad13aa1a939', '196ede6b-d2dc-466a-b606-8f51c5837af9', 'd86a773d-0700-4e81-a47b-3b1feb378fdd', 872783, '196ede6b-d2dc-466a-b606-8f51c5837af9', 'products', 2, 'image/jpeg', '2020-05-02 11:51:24', '2020-05-02 11:51:24'),
('01acb216-864b-46c7-b8c2-1f2683eca770', '253544d5-288d-4042-82f9-29f4bed59ddd', 'f4a17948-960e-4fab-8c07-57e541de8373', 72941, '253544d5-288d-4042-82f9-29f4bed59ddd', 'products', 3, 'image/jpeg', '2020-01-17 15:23:35', '2020-01-17 15:23:35'),
('01cc76a2-95ba-4187-a951-0bdd7f4fb347', '7c240973-69c1-44ee-ad7b-8ddb36384aa0', '4ff6bd54-628d-47a7-96ef-e82a22f69609', 693443, '7c240973-69c1-44ee-ad7b-8ddb36384aa0', 'products', 3, 'image/jpeg', '2020-05-16 09:10:18', '2020-05-16 09:10:18'),
('024ad78f-9a95-439d-80a4-7e82ae0b0ce9', 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', '1774bfe0-522c-42ca-a79e-7ea729bbe61c', 725677, 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', 'products', 1, 'image/jpeg', '2020-05-10 08:11:58', '2020-05-10 08:11:58'),
('026559ed-93c3-499b-9afc-89d34a989679', 'e1c1a230-8360-49e0-97d3-cfa6cb979301', '6762dc4f-7572-40ab-a561-be32880b55fd', 123804, 'e1c1a230-8360-49e0-97d3-cfa6cb979301', 'products', 2, 'image/jpeg', '2020-04-30 06:07:55', '2020-04-30 06:07:55'),
('02afa762-40d8-45d3-a346-d822b29da4d3', 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', '42b0252c-4c9b-4f97-8062-3cc0d6f6c066', 716887, 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', 'products', 2, 'image/jpeg', '2020-05-07 08:35:48', '2020-05-07 08:35:48'),
('02f4e068-c2be-4ffe-8f4d-6babde35da53', '21bf5879-06fb-4757-99b6-b2fac3925162', '42ffad9b-0aba-48b0-86f0-c4f4e548c5a8', 68425, '21bf5879-06fb-4757-99b6-b2fac3925162', 'products', 2, 'image/jpeg', '2020-01-17 16:39:00', '2020-01-17 16:39:00'),
('02f92e2c-68d5-45ec-b256-20427bae7d51', '50e6e1e8-3ace-4174-8bd6-407771c89ade', '87fe58f6-687f-4c43-a681-42b9e2c7c11c', 1329192, '50e6e1e8-3ace-4174-8bd6-407771c89ade', 'products', 1, 'image/jpeg', '2020-05-10 07:44:27', '2020-05-10 07:44:27'),
('02fa20f0-ca42-4c32-9e9e-045ef41fb961', 'c9dbf748-7ea1-4673-b420-94f855ef3b74', '0380d9f3-69da-44e4-a923-1f8963847759', 116093, 'c9dbf748-7ea1-4673-b420-94f855ef3b74', 'products', 4, 'image/jpeg', '2020-01-17 11:23:38', '2020-01-17 11:23:38'),
('032559fb-f623-49b5-9ce2-346afabe062d', 'fa5a7843-ae14-444e-a90a-79c410ee1361', '994ab118-0207-4d29-97fb-c96821cdd7fe', 1192390, 'fa5a7843-ae14-444e-a90a-79c410ee1361', 'products', 1, 'image/jpeg', '2020-05-07 08:43:13', '2020-05-07 08:43:13'),
('03293cfd-f0f7-4365-9149-e4914a637cd6', '231c8799-a609-4698-a8e6-f541b75c8689', 'df339e73-562f-47dc-b8cd-bfe47a707f45', 387216, '231c8799-a609-4698-a8e6-f541b75c8689', 'products', 2, 'image/jpeg', '2020-05-03 09:28:27', '2020-05-03 09:28:27'),
('03aaa440-ecf9-47f1-9a0d-2faa626aa3d7', '06ee348e-365d-43ad-a6ee-8af13fe098cc', '75193c0c-80a8-460b-9872-2caeb93d715b', 120752, '06ee348e-365d-43ad-a6ee-8af13fe098cc', 'products', 1, 'image/jpeg', '2020-01-17 15:49:09', '2020-01-17 15:49:09'),
('03dd65f3-475e-4d28-98fb-f78249e1b7fd', '7ff9deac-b994-43dd-99cc-597e9a606029', '35a0a803-2084-4d6e-96d4-48a49ef752a0', 113160, '7ff9deac-b994-43dd-99cc-597e9a606029', 'products', 3, 'image/jpeg', '2020-01-17 16:13:53', '2020-01-17 16:13:53'),
('04440db2-3c84-49b6-afd5-25b6470c9868', 'ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', '59154f8d-fb1a-48a1-84db-dd54630662f7', 192128, 'ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', 'products', 2, 'image/jpeg', '2020-05-05 06:38:52', '2020-05-05 06:38:52'),
('047d1229-3c1b-4232-8ae9-0a891b4c55bf', '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', '0f3c847b-3521-4a1e-a0b6-98d803d4c102', 245222, '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', 'products', 1, 'image/jpeg', '2020-04-30 07:17:33', '2020-04-30 07:17:33'),
('04f1783e-dba0-45c5-8148-eead0ec67786', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', '7886ddcb-1d8f-4667-b275-69350dfc1d47', 346695, 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'products', 4, 'image/jpeg', '2020-01-01 18:16:40', '2020-01-01 18:16:40'),
('04f931d0-451f-4d76-815b-a48701a554aa', '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'f9db4795-5e8f-48ef-8454-381950e97c46', 943637, '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'products', 1, 'image/jpeg', '2020-05-07 08:55:13', '2020-05-07 08:55:13'),
('054a2974-f7c9-4219-bdaf-a7b48d25157d', 'efa2ff31-d489-4eca-b25a-f3ef3e9188a7', '978e63b7-8959-4f25-abc2-5aab2a598b8c', 1537782, 'efa2ff31-d489-4eca-b25a-f3ef3e9188a7', 'products', 2, 'image/jpeg', '2020-05-10 04:09:37', '2020-05-10 04:09:37'),
('07329602-1c1a-4f12-95fe-9b0522017a6c', '54dee241-c3bd-46b5-8a42-46dacfd56353', 'a62d47c1-3f80-43fa-a0c6-21a3b1afe117', 179843, '54dee241-c3bd-46b5-8a42-46dacfd56353', 'products', 2, 'image/jpeg', '2020-01-06 13:00:42', '2020-01-06 13:00:42'),
('075b7472-f467-4e98-8f19-ec26baa944d1', '6ca8e3b9-2d77-42a8-8193-edcb075d4743', 'c8c605f7-4306-4d76-8644-12284c63966f', 1093022, '6ca8e3b9-2d77-42a8-8193-edcb075d4743', 'products', 1, 'image/jpeg', '2020-05-07 08:03:33', '2020-05-07 08:03:33'),
('07652b83-367d-4c14-8c79-360a18e2fc1d', '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', 'c26a7f14-2fc0-404d-8645-279ed9558829', 130776, '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', 'products', 2, 'image/jpeg', '2020-01-17 11:21:09', '2020-01-17 11:21:09'),
('081ed2b5-af39-4e53-a7cd-c29aafa022c6', '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', 'b06766aa-061e-4c8b-9703-2d4ecd441726', 120233, '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', 'products', 3, 'image/jpeg', '2020-04-30 07:41:38', '2020-04-30 07:41:38'),
('092c8cb8-8650-4dca-9ecc-1fd932b6de01', '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'd4dadf17-2b06-44bf-a674-6219b05a2b19', 812850, '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'products', 3, 'image/jpeg', '2020-05-07 08:55:42', '2020-05-07 08:55:42'),
('0a1b2e1a-5395-4f21-ac1f-211bd321f7c5', 'f4328b31-c11e-4555-9a2f-6de2524f0089', '9ce06e55-2022-46e2-84ab-4e502ca9b5d8', 207019, 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'products', 2, 'image/jpeg', '2020-04-30 08:30:59', '2020-04-30 08:30:59'),
('0b135403-273a-460b-8325-29777823b3cf', 'daaf0d20-6b1c-4f43-a887-b145976c7ad9', '1ab7f864-9335-41ae-87ed-bcb2cb0300ce', 575903, 'daaf0d20-6b1c-4f43-a887-b145976c7ad9', 'products', 1, 'image/jpeg', '2020-05-10 03:52:23', '2020-05-10 03:52:23'),
('0b1a6c89-8e65-451c-8745-04d1a4aee259', 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', 'fa3063a1-567d-453a-ba9c-38bc97386855', 87828, 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', 'products', 1, 'image/jpeg', '2020-01-17 16:31:58', '2020-01-17 16:31:58'),
('0b560847-26e2-41b9-adc0-be9e807a397c', '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', 'e8d3d744-a2cc-4c9f-b78a-a9981ac33a9f', 1152196, '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', 'products', 2, 'image/jpeg', '2020-05-12 06:16:44', '2020-05-12 06:16:44'),
('0bec7e20-a41e-4335-b08d-6bb468b5abcc', '712b1be0-4a11-4a3b-9706-eb23ad444a26', 'b38de7bc-f9da-4831-82f9-37ac509b00db', 130243, '712b1be0-4a11-4a3b-9706-eb23ad444a26', 'products', 3, 'image/jpeg', '2020-04-30 08:26:49', '2020-04-30 08:26:49'),
('0cc54492-65e0-4e4b-ac87-a0ba7f1f8c1a', 'b7bc4bcd-d9fe-4c68-b8b8-a727da75b480', '10deeb96-159b-4c23-8f85-3aa21ccfb2ce', 73420, 'b7bc4bcd-d9fe-4c68-b8b8-a727da75b480', 'products', 1, 'image/jpeg', '2020-01-17 15:37:57', '2020-01-17 15:37:57'),
('0d46b102-1015-4462-8f30-353c3d48466a', 'caff10dd-5218-4c18-8355-9d977965aa8b', '4d98378b-98f4-4f26-95ad-a9ace1d077aa', 512058, 'caff10dd-5218-4c18-8355-9d977965aa8b', 'products', 2, 'image/jpeg', '2020-05-07 07:50:39', '2020-05-07 07:50:39'),
('0d74c569-70bf-4a11-af23-355a171ca625', '090b4afc-e646-4e02-8750-7dd52a83a406', '349269e9-64c8-4457-8e2f-d06d0a617c11', 203358, '090b4afc-e646-4e02-8750-7dd52a83a406', 'products', 1, 'image/jpeg', '2020-05-02 08:25:52', '2020-05-02 08:25:52'),
('0de9d3cd-0255-4253-bdff-e1a569dafffd', '33a46083-d08e-40c1-aeb4-5f233410505b', 'd9b0fbb0-cf57-4211-9729-3b0d6075f705', 141135, '33a46083-d08e-40c1-aeb4-5f233410505b', 'products', 1, 'image/jpeg', '2020-01-17 11:28:41', '2020-01-17 11:28:41'),
('0e187b70-7236-4662-9957-1880425ce8d8', '5ffcb152-8438-4694-91d7-68cdff44b004', '19f7e615-452c-4e72-81c0-e5d976557e7e', 407304, '5ffcb152-8438-4694-91d7-68cdff44b004', 'products', 1, 'image/jpeg', '2020-01-01 18:11:04', '2020-01-01 18:11:04'),
('0e3b0e3d-4335-4636-b9ca-77355b61f797', 'db813db7-a04c-4ad1-859e-da46327a7154', '373171d8-8ce1-4538-acaf-96b84c385400', 243722, 'db813db7-a04c-4ad1-859e-da46327a7154', 'products', 2, 'image/jpeg', '2020-05-02 11:23:53', '2020-05-02 11:23:53'),
('0eb06ec1-9531-42cb-9294-86ba13289124', '6ca8e3b9-2d77-42a8-8193-edcb075d4743', 'bcf53bc1-0ba0-4519-83b1-f27a01a49230', 651087, '6ca8e3b9-2d77-42a8-8193-edcb075d4743', 'products', 2, 'image/jpeg', '2020-05-07 08:03:50', '2020-05-07 08:03:50'),
('0f0d1ea2-5a62-43ee-aea5-12abc9382c2d', '3ea034e9-2c01-4824-95aa-d33709d05201', '85412678-1662-46a8-bad3-6bc6dc060dd9', 994369, '3ea034e9-2c01-4824-95aa-d33709d05201', 'products', 3, 'image/jpeg', '2020-05-05 06:08:16', '2020-05-05 06:08:16'),
('0f1a6da3-f920-4793-960a-47a1e82806b8', '8bd59859-d7a9-4591-abae-99221f3d395e', '8a89e952-4991-4fdb-a88d-4df5b59b4237', 326718, '8bd59859-d7a9-4591-abae-99221f3d395e', 'products', 3, 'image/jpeg', '2020-05-02 08:44:43', '2020-05-02 08:44:43'),
('0f42714e-1dbc-4b04-8811-efcd5f3ab8a4', '1c1d96b8-9a9f-432a-87bb-65b4f48610f0', 'c5b27009-62cd-4aa2-bec5-f568b1c85691', 506796, '1c1d96b8-9a9f-432a-87bb-65b4f48610f0', 'products', 1, 'image/jpeg', '2020-05-02 11:30:31', '2020-05-02 11:30:31'),
('0fde2300-0d10-4d96-b07c-51666ea84e86', '9a539382-86dd-4ae8-96ba-23a582c339b6', 'd864b948-7e82-4e2f-af0b-590736eff1b2', 1603640, '9a539382-86dd-4ae8-96ba-23a582c339b6', 'products', 3, 'image/jpeg', '2020-05-09 06:49:52', '2020-05-09 06:49:52'),
('100ddcd8-ff14-4905-9487-0b7828d2e83f', '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', '89cba12a-f056-4cda-ada9-19dc6ccafba6', 1054102, '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', 'products', 1, 'image/jpeg', '2020-05-05 06:12:05', '2020-05-05 06:12:05'),
('1032fa3f-bbd5-47f0-8905-7458e4dacbe1', '89b65d28-fdef-4a78-9241-a9062c3492ce', 'e414989e-d351-42cf-9678-43ef993b7e6c', 47094, '89b65d28-fdef-4a78-9241-a9062c3492ce', 'products', 1, 'image/jpeg', '2020-01-06 13:17:41', '2020-01-06 13:17:41'),
('10be45db-fdb0-4e60-b019-50e4ea096ce8', 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'd6425c93-82e2-40fc-b5e1-6a61140d23d7', 1100001, 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'products', 3, 'image/jpeg', '2020-05-10 08:21:58', '2020-05-10 08:21:58'),
('11664e03-460a-4a44-9174-cc481ffa38bb', '586024e5-bc50-40b0-a08b-219ef8849798', '917b7838-fe53-464e-a49b-aebe5ceabe2a', 724568, '586024e5-bc50-40b0-a08b-219ef8849798', 'products', 1, 'image/jpeg', '2020-05-03 09:05:13', '2020-05-03 09:05:13'),
('1187e062-4ff8-4d1c-88b6-f72ecfc48877', '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', 'a83b6ec1-fe47-426d-a480-352f1f29d64a', 1402314, '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', 'products', 2, 'image/jpeg', '2020-05-17 03:38:16', '2020-05-17 03:38:16'),
('1191f1cf-cf6a-43da-8c73-62e3fccbd82c', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'f26f184c-702a-4419-a39f-87e91325ace3', 421475, 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'products', 2, 'image/jpeg', '2020-01-01 18:15:51', '2020-01-01 18:15:51'),
('11ba8304-d540-499f-ba47-e518051600fd', '9148de9e-73f2-42f8-aad8-98f1d469c566', '842d98cf-65fb-4fdd-af8f-b7fbc9a19800', 438316, '9148de9e-73f2-42f8-aad8-98f1d469c566', 'products', 2, 'image/jpeg', '2020-05-02 11:48:56', '2020-05-02 11:48:56'),
('1313b74a-352a-4df8-8a99-394eaf31f0d0', '24f57dc3-83c6-45dd-beeb-dc3444917568', '9fe490c7-5c7d-40b6-a149-78e3a918884a', 70462, '24f57dc3-83c6-45dd-beeb-dc3444917568', 'products', 1, 'image/jpeg', '2020-01-17 16:22:43', '2020-01-17 16:22:43'),
('13964d9b-ec57-4d52-b4fb-ff6416f9a164', '547469dd-fe72-422f-b420-cd8b8e3ecb23', '1dd00adf-3d14-4fda-a7ca-f384a8f3fd8b', 61697, '547469dd-fe72-422f-b420-cd8b8e3ecb23', 'products', 3, 'image/jpeg', '2020-01-17 16:41:53', '2020-01-17 16:41:53'),
('14080856-de26-4b0d-9779-bc65042b5186', '7a2fc705-dcc8-401d-a71a-f222789811c6', 'e2ad0b91-9fe9-4135-8417-998be81ee10d', 295186, '7a2fc705-dcc8-401d-a71a-f222789811c6', 'products', 1, 'image/jpeg', '2020-04-30 07:16:09', '2020-04-30 07:16:09'),
('1441fbee-f553-4768-92e1-52aff5088f58', 'a634d123-c706-4e49-9141-6cff640d182c', '56e1c7ec-14e3-4c8b-9254-81e160422791', 114430, 'a634d123-c706-4e49-9141-6cff640d182c', 'products', 2, 'image/jpeg', '2020-01-17 16:20:34', '2020-01-17 16:20:34'),
('14cbe766-9afc-4f89-9a9c-92dcf445e4a9', 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'e05bf5e9-ff2e-488d-8b7c-9a4c9f7d28b4', 1194352, 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'products', 3, 'image/jpeg', '2020-05-07 06:56:04', '2020-05-07 06:56:04'),
('15c6c795-69b9-4761-b406-e927375fdccc', '16be941f-137e-48a4-8d0b-2137bc883ab2', 'ed02c092-d042-4b6d-a512-810a3fe485bf', 1286408, '16be941f-137e-48a4-8d0b-2137bc883ab2', 'products', 2, 'image/jpeg', '2020-05-07 06:43:30', '2020-05-07 06:43:30'),
('1657709b-a1d6-4573-b8b7-35f545d2123c', 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'b82cb1ff-3d8b-4db6-a0f4-1d9fc348de61', 1261152, 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'products', 3, 'image/jpeg', '2020-05-17 03:51:03', '2020-05-17 03:51:03'),
('1677f02b-dab1-4fc8-b531-d91136653923', '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', '597b7c89-5d90-409d-b44e-3f6f5d1be1e4', 267690, '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', 'products', 1, 'image/jpeg', '2020-04-30 10:26:11', '2020-04-30 10:26:11'),
('1691a2c8-afe8-4379-8924-ae417f266479', 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', '0c272b61-bcc8-4473-b5a5-501b6089346d', 1087223, 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', 'products', 2, 'image/jpeg', '2020-05-14 05:41:26', '2020-05-14 05:41:26'),
('16fde59d-99af-42f2-a62b-2d1beccaa06b', 'a528490c-773c-4579-af7c-aadf943c7964', '3bc7b2cd-75be-4b2a-b922-4319f05e6e7f', 638801, 'a528490c-773c-4579-af7c-aadf943c7964', 'products', 3, 'image/jpeg', '2020-05-17 03:42:42', '2020-05-17 03:42:42'),
('1716f103-77c0-44f8-9196-53146452702d', '25401bc4-4727-4c9b-8eb7-93d6291c1703', '72a66964-31e5-4f61-95d9-1fa433b40054', 1071736, '25401bc4-4727-4c9b-8eb7-93d6291c1703', 'products', 1, 'image/jpeg', '2020-05-07 07:25:47', '2020-05-07 07:25:47'),
('188254c5-3439-4e88-b7f1-3b542af9a17f', '169116c8-38d8-4b38-83a9-ab0a688cd893', '1f2d3203-4bc6-4041-8e16-b05c9a3b233c', 733809, '169116c8-38d8-4b38-83a9-ab0a688cd893', 'products', 2, 'image/jpeg', '2020-05-09 06:40:10', '2020-05-09 06:40:10'),
('19d54b51-c12f-4895-84a9-a6ca0a195080', 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'f81edbb9-cba5-4677-85dc-677ba4752a61', 748199, 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'products', 2, 'image/jpeg', '2020-05-10 07:52:47', '2020-05-10 07:52:47'),
('19efbb5c-202c-4d05-860d-e1834f38e4ee', '34f870c8-ca51-4ec5-98ba-34241a46a923', 'df47a8da-f72f-4132-ba81-0eab5fe052eb', 86420, '34f870c8-ca51-4ec5-98ba-34241a46a923', 'products', 3, 'image/jpeg', '2020-01-06 09:25:53', '2020-01-06 09:25:53'),
('1a90494c-2abc-4ed8-8567-c74a90950c25', 'a81714e1-2a04-4789-b50a-98334817019a', '83aa5d6b-d33e-42fd-bb64-709323d611d4', 178278, 'a81714e1-2a04-4789-b50a-98334817019a', 'products', 2, 'image/jpeg', '2020-04-30 07:20:12', '2020-04-30 07:20:12'),
('1ae7b003-4b1c-432f-833f-d0a979a35e29', '0995c9ce-0b28-4233-9c1f-69c4a90fd6c9', '63c2ee4a-f753-4b68-b9f4-497a19a2977d', 89971, '0995c9ce-0b28-4233-9c1f-69c4a90fd6c9', 'products', 2, 'image/jpeg', '2020-01-17 16:09:04', '2020-01-17 16:09:04'),
('1bbb8490-d7c9-44ec-860c-2cc9aba28a21', '957372ca-bc82-4db4-8ab0-37a94a5d33b6', 'fcdf2d37-fbaf-4196-88a1-7de0574c113d', 1683472, '957372ca-bc82-4db4-8ab0-37a94a5d33b6', 'products', 2, 'image/jpeg', '2020-05-10 04:11:25', '2020-05-10 04:11:25'),
('1bfcd5ac-e60f-4d10-a9a5-0dc3e9d1e342', 'db813db7-a04c-4ad1-859e-da46327a7154', '761d934f-7f7d-4f86-8bf0-6d29c9b62b7f', 326131, 'db813db7-a04c-4ad1-859e-da46327a7154', 'products', 1, 'image/jpeg', '2020-05-02 11:23:39', '2020-05-02 11:23:39'),
('1c47cb2e-0add-4073-b98b-6b47d2a0d483', '344e488a-3f4a-4bb1-8d61-ef61754bbce8', 'f071de18-c309-4f40-a5b2-de6067e462a0', 552861, '344e488a-3f4a-4bb1-8d61-ef61754bbce8', 'products', 2, 'image/jpeg', '2020-05-05 07:59:22', '2020-05-05 07:59:22'),
('1c5ec9f4-bd71-4e9e-8a3d-5f5492b8acb4', 'f3a343d3-bb22-4119-a5de-090142fef9ee', '455f2ce8-0819-49a8-a30b-1429ca000058', 524687, 'f3a343d3-bb22-4119-a5de-090142fef9ee', 'products', 2, 'image/jpeg', '2020-01-01 18:21:05', '2020-01-01 18:21:05'),
('1c790f05-0d2a-4e09-ac0a-a1cd21e95976', '2640e641-b243-485c-b702-f0b772b351d6', '8fd9c12d-5c72-4f06-9fdc-7cedcd9c95c9', 935851, '2640e641-b243-485c-b702-f0b772b351d6', 'products', 1, 'image/jpeg', '2020-05-05 06:09:58', '2020-05-05 06:09:58'),
('1d5df2a3-0473-4dbb-baad-4e21dcaf18b4', '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', 'e551d237-7568-4b46-aabe-cabd07203524', 296917, '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', 'products', 1, 'image/jpeg', '2020-04-30 07:13:55', '2020-04-30 07:13:55'),
('1d7a3863-9c19-42c5-aa87-6fdeccb54c31', 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'ebc9b5e7-9de8-4e3d-bde0-b5c1c0182f11', 1324184, 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', 'products', 3, 'image/jpeg', '2020-05-10 07:53:09', '2020-05-10 07:53:09'),
('1fcd8dde-7faf-4ef6-8e1f-a552e4114dd6', 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', '11418cba-9204-4a39-b18d-d6319eb17db4', 118990, 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', 'products', 3, 'image/jpeg', '2020-01-04 20:46:37', '2020-01-04 20:46:37'),
('1ff9f687-fb6b-4c4a-bcdc-8c76f80f6f23', '4f7d33dc-824e-48b1-9804-f8412c256f95', '3126df79-dc65-426a-933b-fb4fc2e2362a', 255041, '4f7d33dc-824e-48b1-9804-f8412c256f95', 'products', 1, 'image/jpeg', '2019-12-31 16:26:49', '2019-12-31 16:26:49'),
('20b31976-bc73-449d-b604-c312a756bef9', '108ff5ec-e075-435a-b2ea-95180559ca31', '9fe0630e-0e8d-44cf-be7a-88e38113c921', 714834, '108ff5ec-e075-435a-b2ea-95180559ca31', 'products', 1, 'image/jpeg', '2020-05-03 10:43:59', '2020-05-03 10:43:59'),
('2214576d-6fc4-4017-87d6-d902a66e566a', 'c502f0bd-5200-491c-ba49-655b747a436f', 'ddb87781-9c7f-4908-a211-93f3810d2bc7', 418775, 'c502f0bd-5200-491c-ba49-655b747a436f', 'products', 3, 'image/jpeg', '2020-05-07 08:24:31', '2020-05-07 08:24:31'),
('2242bd54-5fb7-4efd-bb20-4ac198def3fd', 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', 'adb39ae4-f45c-4d7c-9bcc-27e56d9214b5', 65873, 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', 'products', 1, 'image/jpeg', '2020-01-04 20:46:11', '2020-01-04 20:46:11'),
('23142b1b-d625-4629-b3ff-68f58486a15e', '1649d07a-1251-41b0-a305-11f3a0f42df3', '6c43e159-de7e-487d-81d5-64d87f782671', 91922, '1649d07a-1251-41b0-a305-11f3a0f42df3', 'products', 2, 'image/jpeg', '2020-01-17 15:29:16', '2020-01-17 15:29:16'),
('23886293-90dc-46de-85de-0190f553a9b0', 'db4ff38a-fff2-47b3-bae7-8caa29787516', '2d1709a6-abe9-4965-94cd-0c38d06d6ff5', 86052, 'db4ff38a-fff2-47b3-bae7-8caa29787516', 'products', 2, 'image/jpeg', '2020-01-17 16:43:26', '2020-01-17 16:43:26'),
('239d9ff2-80be-4c44-bb9f-ac081bdd82e6', '641fbfc4-8390-498f-ae3c-29a357ffdcb3', '973f6dc9-4cf7-4253-ba13-bfe17befc6d7', 124101, '641fbfc4-8390-498f-ae3c-29a357ffdcb3', 'products', 2, 'image/jpeg', '2020-04-30 06:58:27', '2020-04-30 06:58:27'),
('23dc356d-da09-479a-ad19-0d6e9af67aae', '625d2c37-6349-4be4-a849-322adb06b956', '49e39826-637c-4e09-9a33-b3976e604c79', 78292, '625d2c37-6349-4be4-a849-322adb06b956', 'products', 1, 'image/jpeg', '2020-01-17 16:14:38', '2020-01-17 16:14:38'),
('23e0df40-3e03-4b79-afda-77367726dcb5', '337f7dd9-349a-4a26-ab4d-bbb97c6a0758', 'f54cc872-615e-422c-881c-3de88218214c', 96816, '337f7dd9-349a-4a26-ab4d-bbb97c6a0758', 'products', 1, 'image/jpeg', '2020-01-17 16:33:43', '2020-01-17 16:33:43'),
('2401ca68-115b-4697-99c3-b44cabba9d41', '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'b5172ebb-3d76-494c-83b8-412ad51bce6e', 85754, '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'products', 2, 'image/jpeg', '2020-01-17 11:50:25', '2020-01-17 11:50:25'),
('241ba0da-24ba-4208-bee8-04f144f4d0e3', 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', '1f11133f-9d42-4714-b033-84659bb9b363', 776784, 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', 'products', 2, 'image/jpeg', '2020-05-14 05:55:40', '2020-05-14 05:55:40'),
('2453619d-e6e6-482b-a28e-c0d7eb7b77e5', '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', '6b1ac3fe-d7d7-46e8-b135-aebc1231e212', 273081, '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', 'products', 1, 'image/jpeg', '2020-05-02 08:23:01', '2020-05-02 08:23:01'),
('246a709f-6835-4a29-9ace-9996a1579cd3', '38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', 'cdb09179-e0b2-4c40-9f9c-f68645c2970d', 1071411, '38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', 'products', 1, 'image/jpeg', '2020-05-07 06:40:57', '2020-05-07 06:40:57'),
('250e1c03-3320-4cb5-9631-ab228c381a7b', 'fd975715-d4e6-49e1-abc8-d4d2be527216', '9f30f94c-6fd2-4820-829f-be8ab4749881', 166659, 'fd975715-d4e6-49e1-abc8-d4d2be527216', 'products', 1, 'image/jpeg', '2020-04-30 06:16:46', '2020-04-30 06:16:46'),
('253925c3-58d5-46fe-a726-6d9e36f83b7f', '48ed294a-a55f-4456-add7-af55dc82ef1c', '7e95c6dc-4ac0-4472-9985-4337f49bb42f', 80983, '48ed294a-a55f-4456-add7-af55dc82ef1c', 'products', 1, 'image/jpeg', '2020-01-17 15:24:58', '2020-01-17 15:24:58'),
('25ad3cbd-189f-4068-8720-a6c8393846dc', '59fbd339-1c79-400c-bc3f-5f50c5b4b065', '6a97dba2-7e0d-4a2d-8a44-4babe818948c', 197334, '59fbd339-1c79-400c-bc3f-5f50c5b4b065', 'products', 1, 'image/jpeg', '2020-04-30 06:56:08', '2020-04-30 06:56:08'),
('2652106a-ebd0-4bc9-9fc0-78b3a39ede13', '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', '69130367-3a89-4d26-94c3-677382db9286', 644522, '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', 'products', 2, 'image/jpeg', '2020-05-17 03:27:13', '2020-05-17 03:27:13'),
('26a2da6e-6c43-4aa0-8142-f71cb8566ea7', '86f0dce9-c45c-48da-8146-fcda8de122b3', '4ee596d7-2846-4d58-8660-a62f48182858', 148793, '86f0dce9-c45c-48da-8146-fcda8de122b3', 'products', 3, 'image/jpeg', '2020-04-30 07:22:26', '2020-04-30 07:22:26'),
('271e8e3d-5f57-4de2-8a7e-f2c98884a8ae', '864280c6-39db-4f3f-a13e-1315510b175d', 'f52964cf-6b85-4575-9e3b-96d8abd92e04', 704603, '864280c6-39db-4f3f-a13e-1315510b175d', 'products', 3, 'image/jpeg', '2020-05-10 08:14:18', '2020-05-10 08:14:18'),
('27856ad3-ab5a-4417-ac00-2799f7db04f9', 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', '63c070d4-bf95-46e1-a0e1-0cd9bf91014a', 942551, 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', 'products', 1, 'image/jpeg', '2020-05-07 08:45:36', '2020-05-07 08:45:36'),
('27e71061-07db-4f6a-b327-bc826f3cf12b', '2e4d5acc-b558-4042-bcc8-7d8efa25c704', '322c0525-cdf4-4330-af96-06f5accba94e', 78844, '2e4d5acc-b558-4042-bcc8-7d8efa25c704', 'products', 2, 'image/jpeg', '2020-01-17 11:24:34', '2020-01-17 11:24:34'),
('27e8a534-4780-4dbf-a28d-e99e9308a215', '6d6319ba-5e1d-411a-b601-43dc056d923a', '080048a4-67ea-4532-9fb9-e14c36ac1c86', 41299, '6d6319ba-5e1d-411a-b601-43dc056d923a', 'products', 3, 'image/jpeg', '2020-01-06 12:57:14', '2020-01-06 12:57:14'),
('27f52b7c-c073-46c5-99cc-a310f456796c', '665d0a19-884e-441a-a372-453a37781a7f', '18e7d1d0-3335-4a80-9358-77ff2558dbd4', 398774, '665d0a19-884e-441a-a372-453a37781a7f', 'products', 2, 'image/jpeg', '2020-05-05 06:59:40', '2020-05-05 06:59:40'),
('281f5fe4-7240-4383-a1af-471f20483933', '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', '8b7d8fff-32a4-4422-8843-d9198c520076', 71152, '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'products', 1, 'image/jpeg', '2020-01-17 16:16:26', '2020-01-17 16:16:26'),
('2864f0b7-1428-4ab7-bd00-0459d17509c7', '36739c31-df65-4074-8702-25e2ed4fdc96', '04cdd0d1-ff0d-4c81-8f5e-0c2510d5efb6', 701650, '36739c31-df65-4074-8702-25e2ed4fdc96', 'products', 1, 'image/jpeg', '2020-05-07 08:11:15', '2020-05-07 08:11:15'),
('28d5a2b3-e713-45ca-9959-6e4d6a2aa4cd', '25401bc4-4727-4c9b-8eb7-93d6291c1703', 'a70130b0-2b88-4f03-94b5-fd0a649032fd', 962185, '25401bc4-4727-4c9b-8eb7-93d6291c1703', 'products', 2, 'image/jpeg', '2020-05-07 07:26:44', '2020-05-07 07:26:44'),
('291b562d-e06a-4ac8-8bd1-0a34570d344a', '2e4d5acc-b558-4042-bcc8-7d8efa25c704', '20f35a5e-b16d-4372-8fbb-a005d9c4b948', 88196, '2e4d5acc-b558-4042-bcc8-7d8efa25c704', 'products', 1, 'image/jpeg', '2020-01-17 11:24:26', '2020-01-17 11:24:26'),
('29294091-79ff-4779-87ed-3a9f10f9c24d', 'dade8b74-1f20-4cb9-a42f-dfbf4140f080', 'ea74276b-b6f5-4663-b750-314d95155899', 1095544, 'dade8b74-1f20-4cb9-a42f-dfbf4140f080', 'products', 1, 'image/jpeg', '2020-05-05 07:19:31', '2020-05-05 07:19:31'),
('2a477f66-78b2-4b62-a8d8-4d8715cb6b88', 'db813db7-a04c-4ad1-859e-da46327a7154', '45668158-be97-4f0a-939c-5a6a3d53515f', 196890, 'db813db7-a04c-4ad1-859e-da46327a7154', 'products', 3, 'image/jpeg', '2020-05-02 11:24:15', '2020-05-02 11:24:15'),
('2a4edd1f-0a5e-4352-8de8-fe3584dd44d2', 'caff10dd-5218-4c18-8355-9d977965aa8b', '184720c9-c7ce-4564-97f7-721ad2928a95', 534198, 'caff10dd-5218-4c18-8355-9d977965aa8b', 'products', 3, 'image/jpeg', '2020-05-07 07:51:17', '2020-05-07 07:51:17'),
('2ad5b259-7b6f-4c91-b576-58559d491e10', 'fe95615a-ee34-4c2a-9869-fb251145a611', '20ae3782-570b-45d2-8fd1-973a0a78d7c6', 246724, 'fe95615a-ee34-4c2a-9869-fb251145a611', 'products', 1, 'image/jpeg', '2020-04-30 10:27:14', '2020-04-30 10:27:14'),
('2b097fe5-5ea1-41f9-888b-a16686ac0577', '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'bb64907a-35c9-4d11-bf20-cdd921e32506', 809835, '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'products', 2, 'image/jpeg', '2020-05-07 08:20:29', '2020-05-07 08:20:29'),
('2b163802-8c97-4d7f-9e3e-fb6a0e663a95', '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'b2f092a0-608e-43bf-ac68-17e9e706a57f', 757621, '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'products', 1, 'image/jpeg', '2020-05-07 08:20:14', '2020-05-07 08:20:14'),
('2bb8137a-f5ee-4353-bc51-a88b5781052e', '5b6fc59a-87df-4541-86ea-936494495353', '2ac99be3-a8f3-45f6-9f27-f14705397b8b', 881537, '5b6fc59a-87df-4541-86ea-936494495353', 'products', 2, 'image/jpeg', '2020-05-10 04:05:47', '2020-05-10 04:05:47'),
('2cc8a195-65c4-4d47-98cb-5851616ce5e2', 'cafacd4d-5282-4329-af62-2c065273c620', '9780b958-1519-4175-93d2-3bf422fa5d23', 812405, 'cafacd4d-5282-4329-af62-2c065273c620', 'products', 2, 'image/jpeg', '2020-05-07 08:26:35', '2020-05-07 08:26:35'),
('2d001d8b-570a-474b-86e5-6e84de509f2f', 'a5df16b6-24b1-4fc3-838a-955679b5d993', 'd076a35c-cf1a-47c6-bb3c-b51b01a1bcd5', 48945, 'a5df16b6-24b1-4fc3-838a-955679b5d993', 'products', 2, 'image/jpeg', '2020-01-06 12:46:09', '2020-01-06 12:46:09'),
('2dbd5fa7-4f31-4005-9d95-b25e65b33040', '7c240973-69c1-44ee-ad7b-8ddb36384aa0', '3ec015a8-4393-4e4b-b43f-60714da3990d', 1564202, '7c240973-69c1-44ee-ad7b-8ddb36384aa0', 'products', 1, 'image/jpeg', '2020-05-16 09:09:28', '2020-05-16 09:09:28'),
('2e165c4f-e1b5-4617-b509-ce440da3e9b3', '7a7126a3-bb86-4aba-b345-916a6138f9fd', '20568946-08ac-4c5a-be4d-f3c1556f1f29', 238648, '7a7126a3-bb86-4aba-b345-916a6138f9fd', 'products', 1, 'image/jpeg', '2020-04-30 07:42:29', '2020-04-30 07:42:29'),
('2eadbe07-6c9b-4743-90e5-687462c931ee', 'a9e235c4-4b2c-45e6-8434-1d00b050b751', 'd7625c56-9b01-4077-8d42-5fb1312ddd8c', 1119352, 'a9e235c4-4b2c-45e6-8434-1d00b050b751', 'products', 1, 'image/jpeg', '2020-05-07 07:59:05', '2020-05-07 07:59:05'),
('2f34a3ea-bff1-4b85-9c99-d7c86e992c7c', 'd822e8ed-3c4f-4055-892d-b5b407162076', 'd48ec034-809e-4c24-b1fd-f58780423177', 327606, 'd822e8ed-3c4f-4055-892d-b5b407162076', 'products', 2, 'image/jpeg', '2020-04-30 06:10:33', '2020-04-30 06:10:33'),
('2f70e916-ef87-40d5-9acf-070ae9f956ba', '2640e641-b243-485c-b702-f0b772b351d6', '4fe066be-0f69-45d2-9f46-544b70701433', 1149734, '2640e641-b243-485c-b702-f0b772b351d6', 'products', 3, 'image/jpeg', '2020-05-05 06:10:34', '2020-05-05 06:10:34'),
('2f858c06-df28-49bd-a008-64efd71474d2', '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', '7dc0c6b1-e04a-4c95-a458-9c89de11af46', 891706, '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', 'products', 1, 'image/jpeg', '2020-05-16 08:58:34', '2020-05-16 08:58:34'),
('303d955c-3764-4728-8e50-2eda823e284d', '2bf442bf-0f17-4c25-82eb-9ccf9755e384', '59b59825-39e3-4785-909f-ce8bd007086d', 51041, '2bf442bf-0f17-4c25-82eb-9ccf9755e384', 'products', 3, 'image/jpeg', '2020-01-17 21:47:05', '2020-01-17 21:47:05'),
('31677976-1da2-47d1-bd04-6a2dcbdc18cf', 'a60e4e0f-1445-432c-a027-667a6a0b5093', '0de54fe0-afbd-44d7-83bd-d4bd83b09b45', 80216, 'a60e4e0f-1445-432c-a027-667a6a0b5093', 'products', 1, 'image/jpeg', '2020-01-17 21:44:26', '2020-01-17 21:44:26'),
('31cef061-f237-47fe-a98f-1eee28aab767', 'f3a343d3-bb22-4119-a5de-090142fef9ee', 'e69e3a1c-8e52-458f-9931-ab5d2490cf4e', 553568, 'f3a343d3-bb22-4119-a5de-090142fef9ee', 'products', 1, 'image/jpeg', '2020-01-01 18:20:48', '2020-01-01 18:20:48'),
('31d30ab3-b495-49fe-9b65-58bf1b77ae4b', 'fec9600e-4451-4f9f-b115-71b96a99e2b7', '8cd887af-9593-4ed9-bf06-504f89637f57', 49675, 'fec9600e-4451-4f9f-b115-71b96a99e2b7', 'products', 2, 'image/jpeg', '2020-01-17 15:21:12', '2020-01-17 15:21:12'),
('32fd38eb-78e3-4ac9-b59b-2e533876a8a1', '841450e2-7690-48c8-b983-b2b91b4c6bfe', '809f7e87-9ae6-42ff-a140-a0627b43cabc', 864787, '841450e2-7690-48c8-b983-b2b91b4c6bfe', 'products', 2, 'image/jpeg', '2020-05-10 03:58:10', '2020-05-10 03:58:10'),
('334984b3-fa4e-4c0a-833f-2388e826dc4f', '547469dd-fe72-422f-b420-cd8b8e3ecb23', '0a5428fc-f65f-4cd3-ae35-f8e7dc86c906', 58047, '547469dd-fe72-422f-b420-cd8b8e3ecb23', 'products', 2, 'image/jpeg', '2020-01-17 16:41:34', '2020-01-17 16:41:34'),
('33b85595-b0ab-48a2-9353-c9a6ded0637d', '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '3d994f27-5cc0-4e97-8574-fbaf64837759', 158241, '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', 'products', 3, 'image/jpeg', '2020-01-06 09:27:18', '2020-01-06 09:27:18'),
('341dd0ea-1cd5-40e7-ab40-3c6f51160c32', 'fec96300-2b21-46b1-b776-ab6391f0c38a', '88cb8737-7727-465b-b4f6-fa8c2be882b2', 91904, 'fec96300-2b21-46b1-b776-ab6391f0c38a', 'products', 3, 'image/jpeg', '2020-01-17 16:25:17', '2020-01-17 16:25:17'),
('34d1b993-43f7-45f6-8b2f-bd4862bfe507', '406479ec-9fea-49d4-8f1b-34eacc848352', '256f0400-913f-46e1-97c8-c72440f2c118', 1102999, '406479ec-9fea-49d4-8f1b-34eacc848352', 'products', 1, 'image/jpeg', '2020-05-07 07:12:44', '2020-05-07 07:12:44'),
('350738ba-f083-4ce8-89b8-49b5c6218d27', 'c4b24811-34ce-48ec-85a7-10f572cdeada', '6e7f8f39-1a7b-4be4-8a31-cfcdb67dc823', 76679, 'c4b24811-34ce-48ec-85a7-10f572cdeada', 'products', 1, 'image/jpeg', '2020-01-17 21:50:16', '2020-01-17 21:50:16'),
('355412b5-9a69-446a-a506-a093949a47a1', 'a4509384-44ec-40d7-ad6d-4c86fc167bb3', 'f6742ab1-d1c3-465b-b9f4-442578298720', 2118144, 'a4509384-44ec-40d7-ad6d-4c86fc167bb3', 'products', 2, 'image/jpeg', '2020-05-09 06:58:00', '2020-05-09 06:58:00'),
('35861a22-b7fb-4555-81e1-d7427c410efe', '864280c6-39db-4f3f-a13e-1315510b175d', '6c589fdd-c701-4fee-8c00-78ac2af5d531', 848844, '864280c6-39db-4f3f-a13e-1315510b175d', 'products', 4, 'image/jpeg', '2020-05-10 08:14:26', '2020-05-10 08:14:26'),
('36d3e8bb-cd2f-494b-b92b-46b48e0b1a73', '36f4031a-9325-41f6-9731-67391796527f', '0fb8dcba-7c99-4af9-b478-7b1cfd47b408', 634256, '36f4031a-9325-41f6-9731-67391796527f', 'products', 2, 'image/jpeg', '2020-05-05 07:57:49', '2020-05-05 07:57:49'),
('38380413-3878-4dbe-ade8-c49454159375', '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', '0698c066-62ea-4053-aed2-b8bfdf08ec93', 1231793, '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', 'products', 3, 'image/jpeg', '2020-05-18 10:09:25', '2020-05-18 10:09:25'),
('38fad151-bf59-4c11-947d-8c7efb141853', '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'db5676fe-074b-4b2f-8055-3a3dabd0bb4d', 65832, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 4, 'image/jpeg', '2020-05-31 15:00:22', '2020-05-31 15:00:22'),
('392b66d6-73bd-4397-bd6b-25aa55b5ef1d', '2ae34c8d-8b3e-4638-a7f0-5580326064f1', 'a8be79f6-6a3f-4663-ae0d-7b2ee843a02c', 1159323, '2ae34c8d-8b3e-4638-a7f0-5580326064f1', 'products', 1, 'image/jpeg', '2020-05-17 04:07:17', '2020-05-17 04:07:17'),
('3973d521-c704-4201-b045-2d005b4df1c2', '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', '1678b6bf-e44c-4dd1-8fc5-88ca1fc4305b', 1086956, '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', 'products', 3, 'image/jpeg', '2020-05-07 06:45:24', '2020-05-07 06:45:24'),
('39c520f6-56f2-4823-8f81-759cec674cfd', '406479ec-9fea-49d4-8f1b-34eacc848352', 'e8a9508c-98c1-4ab5-b5a4-e9c80df4e2c5', 1143548, '406479ec-9fea-49d4-8f1b-34eacc848352', 'products', 2, 'image/jpeg', '2020-05-07 07:13:35', '2020-05-07 07:13:35'),
('39e6ff9a-2abb-4797-b81d-71f589b1a053', '841450e2-7690-48c8-b983-b2b91b4c6bfe', '6e0df5a4-42c6-4418-8486-f893e69f4512', 401797, '841450e2-7690-48c8-b983-b2b91b4c6bfe', 'products', 1, 'image/jpeg', '2020-05-10 03:57:56', '2020-05-10 03:57:56'),
('3abe7558-cdcd-4c98-9fa3-bc4592dc9d8a', 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', '9d08c4b3-121d-46f6-9b9c-4fe2979d0cc0', 1101738, 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', 'products', 3, 'image/jpeg', '2020-05-10 08:12:32', '2020-05-10 08:12:32'),
('3acf2f27-f3a7-4feb-bc2a-959ecf774185', '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'a426aab6-0bb9-47df-9eba-7a63beae7a46', 81317, '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'products', 2, 'image/jpeg', '2020-01-17 16:16:36', '2020-01-17 16:16:36'),
('3b52371a-8799-4cfb-b0ea-10353978baeb', '947fecec-159c-4621-b460-7f302adc9c88', '2760b536-3714-41e3-9846-693e6bc816bb', 588351, '947fecec-159c-4621-b460-7f302adc9c88', 'products', 2, 'image/jpeg', '2020-05-05 07:56:01', '2020-05-05 07:56:01'),
('3b6796eb-3ed1-4d09-936b-63f1c32202f9', 'a244bd9f-50a3-47c3-a1d8-74d110683e16', 'dc16e406-9189-4e38-ae78-171bd947c994', 80833, 'a244bd9f-50a3-47c3-a1d8-74d110683e16', 'products', 3, 'image/jpeg', '2020-01-17 15:36:47', '2020-01-17 15:36:47'),
('3b8817d1-aa26-42d4-8a5f-adb4c28e3be1', 'a244bd9f-50a3-47c3-a1d8-74d110683e16', '42866071-3d1e-42f9-aba7-0b9374504523', 70713, 'a244bd9f-50a3-47c3-a1d8-74d110683e16', 'products', 2, 'image/jpeg', '2020-01-17 15:36:28', '2020-01-17 15:36:28'),
('3ccc3e8b-15a6-4935-ae30-cc7e6b0f5343', '36f4031a-9325-41f6-9731-67391796527f', '48facc65-8361-4ea0-a5b0-3fe3f6628abc', 757784, '36f4031a-9325-41f6-9731-67391796527f', 'products', 1, 'image/jpeg', '2020-05-05 07:57:29', '2020-05-05 07:57:29'),
('3d37aa1e-1b8f-4425-b03e-84f7249f1989', '57797f8b-9c61-45a7-b7aa-ea7a42dd4b5d', 'f37988df-4314-4a6a-8840-ac24180b9e2d', 94508, '57797f8b-9c61-45a7-b7aa-ea7a42dd4b5d', 'products', 1, 'image/jpeg', '2020-01-17 11:46:32', '2020-01-17 11:46:32'),
('3d522290-7be3-433c-8ae6-3514518b332a', '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', '8cb38648-781d-430b-bd3f-80117c780507', 998612, '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', 'products', 1, 'image/jpeg', '2020-05-18 10:08:44', '2020-05-18 10:08:44'),
('3dcd7103-b291-45c5-bee7-11ad1d9317f9', '8884d091-8a7d-4639-82a3-f9a4986b809b', '4ad29d5c-84d1-4be4-a932-b54955c1105b', 1415777, '8884d091-8a7d-4639-82a3-f9a4986b809b', 'products', 1, 'image/jpeg', '2020-05-07 07:01:31', '2020-05-07 07:01:31'),
('3e498456-9ba2-43fd-b5c5-8d478d57966c', '399867e8-c99e-4e72-969a-d93fccb1c886', '3561d89f-a527-4933-8fcf-d9780c11c55e', 36627, '399867e8-c99e-4e72-969a-d93fccb1c886', 'products', 3, 'image/jpeg', '2020-01-06 08:34:50', '2020-01-06 08:34:50'),
('3e941244-b036-4fb1-aee0-75bd845ff340', '1c1d96b8-9a9f-432a-87bb-65b4f48610f0', 'a413ec24-ed60-4ec2-8905-32edc4a960d2', 452650, '1c1d96b8-9a9f-432a-87bb-65b4f48610f0', 'products', 2, 'image/jpeg', '2020-05-02 11:42:33', '2020-05-02 11:42:33'),
('3ecf4fdf-0359-43ae-82b7-ef56e78f1f6d', '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', '37c82d5a-89ca-4ecd-8bc0-145dda8ac972', 278794, '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', 'products', 3, 'image/jpeg', '2020-05-06 04:49:36', '2020-05-06 04:49:36'),
('3ede10c9-2324-429e-b881-3ca414b5e1f7', '59fbd339-1c79-400c-bc3f-5f50c5b4b065', '7c636525-1a9c-4686-bcc4-ad30794c8bfd', 144222, '59fbd339-1c79-400c-bc3f-5f50c5b4b065', 'products', 2, 'image/jpeg', '2020-04-30 06:56:21', '2020-04-30 06:56:21'),
('3ef32a5d-e9dd-478b-a624-c1e963595149', '8bd59859-d7a9-4591-abae-99221f3d395e', '7e9a8baf-965c-401f-b0b0-ebc51d2e36ff', 262472, '8bd59859-d7a9-4591-abae-99221f3d395e', 'products', 1, 'image/jpeg', '2020-05-02 08:44:02', '2020-05-02 08:44:02'),
('3f38140b-f77a-4c1d-8839-bc20ffb76849', '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', '9493421c-cc4a-4927-8555-0aad12446e3e', 1298040, '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', 'products', 1, 'image/jpeg', '2020-05-07 08:58:03', '2020-05-07 08:58:03'),
('3f6ac898-b848-4596-af53-331198de785e', 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', '29635e7e-bfce-4b38-8d21-e63c2b1af4ce', 1076847, 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', 'products', 2, 'image/jpeg', '2020-05-10 08:18:42', '2020-05-10 08:18:42'),
('3f8ccd29-4a10-4a2e-91af-ba96caeade91', 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', 'c4beac0d-4656-4ffb-9a32-4af0bc450857', 862571, 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', 'products', 2, 'image/jpeg', '2020-05-07 08:45:55', '2020-05-07 08:45:55'),
('402b694d-1601-43f3-a35b-50fb7a8d6b3a', 'a60e4e0f-1445-432c-a027-667a6a0b5093', '1871d13c-1c59-485f-b669-66531e4011be', 52352, 'a60e4e0f-1445-432c-a027-667a6a0b5093', 'products', 2, 'image/jpeg', '2020-01-17 21:44:32', '2020-01-17 21:44:32'),
('40d3523f-8c2f-4c55-b141-68777cb31111', '59fbd339-1c79-400c-bc3f-5f50c5b4b065', 'b48a6443-fa7f-41ff-b253-b14015aad57c', 109468, '59fbd339-1c79-400c-bc3f-5f50c5b4b065', 'products', 3, 'image/jpeg', '2020-04-30 06:56:35', '2020-04-30 06:56:35'),
('410217ca-1ad7-4318-8da9-410402117ca4', 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', 'd9dd788d-dd42-4b73-b230-5dfd2390be76', 272889, 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', 'products', 2, 'image/jpeg', '2020-01-06 13:23:19', '2020-01-06 13:23:19'),
('41060142-7576-4c57-a43f-76574d509066', '0776b2ba-ccc8-4250-b086-e1b194c952e9', 'e00f0a7d-0c22-43c4-865c-75229bb86e49', 126825, '0776b2ba-ccc8-4250-b086-e1b194c952e9', 'products', 3, 'image/jpeg', '2020-01-04 20:44:23', '2020-01-04 20:44:23'),
('41a7d09d-d8e5-481e-a351-fd1cf37aefb1', '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', '00fbb2f6-4218-45cd-953d-6fdc3bb7bab6', 803519, '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', 'products', 1, 'image/jpeg', '2020-05-07 06:44:48', '2020-05-07 06:44:48'),
('41eb1fb6-06f0-4e70-a3f0-7ccf8ba40af2', 'fec9600e-4451-4f9f-b115-71b96a99e2b7', '606bbcd4-0695-498a-8540-352727bc97c4', 64812, 'fec9600e-4451-4f9f-b115-71b96a99e2b7', 'products', 1, 'image/jpeg', '2020-01-17 15:20:51', '2020-01-17 15:20:51'),
('42361717-71dd-44e9-8561-d7d0f7ca86ad', '2e4d5acc-b558-4042-bcc8-7d8efa25c704', '3cea882d-3d77-423d-9d36-4efd4267a28e', 115916, '2e4d5acc-b558-4042-bcc8-7d8efa25c704', 'products', 3, 'image/jpeg', '2020-01-17 11:24:41', '2020-01-17 11:24:41'),
('42923cfd-f000-40ac-b0d9-495af125796b', '98131462-ad96-475b-a2a2-91bd316f1cf8', 'f22318ed-55ac-4628-9c8c-19e13aba5c36', 1175268, '98131462-ad96-475b-a2a2-91bd316f1cf8', 'products', 1, 'image/jpeg', '2020-05-10 08:23:45', '2020-05-10 08:23:45'),
('42bf071d-4073-46a6-92b7-94ff137c803c', 'a60e4e0f-1445-432c-a027-667a6a0b5093', 'fd86311f-f07d-448a-b334-39662e2a9a86', 48675, 'a60e4e0f-1445-432c-a027-667a6a0b5093', 'products', 3, 'image/jpeg', '2020-01-17 21:45:12', '2020-01-17 21:45:12'),
('42e3249e-b45d-49be-95b0-3a25161f4b4b', 'f1064890-3825-48ac-84cb-b1e52cc7123e', '48e99701-1383-4552-b790-8dd878f85d11', 41482, 'f1064890-3825-48ac-84cb-b1e52cc7123e', 'products', 2, 'image/jpeg', '2020-01-06 12:54:27', '2020-01-06 12:54:27'),
('4331ce17-d023-4bf0-b28d-119a4ad6fc65', 'cd8261f8-30e0-46dc-9182-dc28d4ff1471', '30d561f9-433a-4bdc-b708-986bb6ab3ccd', 671654, 'cd8261f8-30e0-46dc-9182-dc28d4ff1471', 'products', 1, 'image/jpeg', '2020-01-01 18:19:19', '2020-01-01 18:19:19'),
('438bbef0-f82d-497a-ac95-29cb19c87753', '8794050b-68ea-4825-b5da-022646a0ea99', 'fafd9a40-7a3e-4797-afae-4b2ecb274b63', 1677914, '8794050b-68ea-4825-b5da-022646a0ea99', 'products', 1, 'image/jpeg', '2020-05-05 13:22:12', '2020-05-05 13:22:12'),
('43cbc2b5-837d-4c4f-8692-bac513dcf4f1', 'a81714e1-2a04-4789-b50a-98334817019a', '82ae1b50-0ffb-4afe-bb39-ef9ec9cd76d1', 139806, 'a81714e1-2a04-4789-b50a-98334817019a', 'products', 3, 'image/jpeg', '2020-04-30 07:20:38', '2020-04-30 07:20:38'),
('43d7663b-54d9-4be4-bc6e-b6a1fd75a60c', 'cb38f089-9e70-4a59-8234-3bea83c738b5', 'e7a2fcf1-e1be-4949-9b89-2d305a029a1e', 755848, 'cb38f089-9e70-4a59-8234-3bea83c738b5', 'products', 2, 'image/jpeg', '2020-05-05 07:15:11', '2020-05-05 07:15:11'),
('43fd38e4-ec3d-4fa8-98ab-e9e682ec33a9', '636ceb9d-74b2-4f71-befa-41289b12ffbd', '2befcdcd-90e8-433b-90f7-fd672bb4b995', 77828, '636ceb9d-74b2-4f71-befa-41289b12ffbd', 'products', 1, 'image/jpeg', '2020-01-17 11:36:13', '2020-01-17 11:36:13'),
('440a266f-6050-4a2f-9daa-c225b324b183', '0ac41846-a548-4365-8e6b-504f8ca0bd63', 'a38f4072-2d99-47cd-b6cc-2278e4ebd625', 2679617, '0ac41846-a548-4365-8e6b-504f8ca0bd63', 'products', 2, 'image/jpeg', '2019-12-31 16:21:16', '2019-12-31 16:21:16'),
('44184d26-c668-4b75-b211-f4034c6632c1', '9b587046-06df-4e91-919e-1046817db97f', '64753842-33c2-478d-8a44-2958231ae133', 233152, '9b587046-06df-4e91-919e-1046817db97f', 'products', 2, 'image/jpeg', '2020-04-30 08:32:54', '2020-04-30 08:32:54'),
('4428335d-1f4c-4cd3-b9db-e11f51edac9e', 'fdd96c86-2239-424a-b464-9fea61adb143', 'f434608b-49b3-4d7b-b3c5-263d6fd67c5d', 984372, 'fdd96c86-2239-424a-b464-9fea61adb143', 'products', 1, 'image/jpeg', '2020-05-07 07:07:08', '2020-05-07 07:07:08'),
('44a0888e-77bc-4f7f-a877-f83010fdd6ce', 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', '9f126411-be13-4bf0-84c8-90f04656e682', 174223, 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', 'products', 1, 'image/jpeg', '2020-04-30 07:50:56', '2020-04-30 07:50:56'),
('44fa1db2-93d5-45e9-b8cb-3e1562b2264c', 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', '3f4c567b-258c-4f6a-a77e-e93a1f58612c', 622110, 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', 'products', 2, 'image/jpeg', '2020-05-07 08:38:15', '2020-05-07 08:38:15'),
('4539c323-53df-407c-9671-9621b9494f92', 'caff10dd-5218-4c18-8355-9d977965aa8b', '2676d68d-861f-4f2f-989d-b23f28034225', 890420, 'caff10dd-5218-4c18-8355-9d977965aa8b', 'products', 1, 'image/jpeg', '2020-05-07 07:50:12', '2020-05-07 07:50:12'),
('45984ea9-c559-4ddf-904e-9d4be69ca835', '49c6d0cd-f075-4575-9b9a-17db940dc1f5', 'c79b0291-376c-49aa-a768-edb3f3ac8f24', 180052, '49c6d0cd-f075-4575-9b9a-17db940dc1f5', 'products', 2, 'image/jpeg', '2020-04-30 08:11:13', '2020-04-30 08:11:13'),
('45a5e51f-684a-42bf-8b72-8bd4d880760b', 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', '956e10e1-e449-4384-8e37-395e6f6d0e1a', 1165574, 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', 'products', 2, 'image/jpeg', '2020-05-09 07:00:41', '2020-05-09 07:00:41'),
('45b7a229-0ec3-4e33-89f0-c9467ef8cc45', 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', '14f4bb36-89c5-479f-8502-a4b002dbc0cb', 98046, 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', 'products', 2, 'image/jpeg', '2020-01-17 16:32:37', '2020-01-17 16:32:37'),
('466279f7-021b-4d1a-be9f-fc0aa5d08672', '74a977bc-7f9c-4362-9b47-b347940485a5', 'cdeb3949-c9c9-4152-b44a-153c8ee51fb4', 311181, '74a977bc-7f9c-4362-9b47-b347940485a5', 'products', 1, 'image/jpeg', '2020-05-02 08:15:47', '2020-05-02 08:15:47'),
('46d3169f-a450-4d99-8dd9-b1a784f5e278', 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', '6a3cf00a-9c1d-40d0-aa08-28ab85f2f70b', 773194, 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', 'products', 1, 'image/jpeg', '2020-05-14 05:55:04', '2020-05-14 05:55:04'),
('4721c080-d2fb-42e2-b397-8dcfd09dd461', '2f01ac23-1cfa-436a-8e76-051e6ce244df', 'a0b6e333-ad00-4f0b-8f1d-8d3082242d59', 284753, '2f01ac23-1cfa-436a-8e76-051e6ce244df', 'products', 2, 'image/jpeg', '2020-01-06 13:06:50', '2020-01-06 13:06:50'),
('47d59900-934c-4513-8b34-835cb754e236', '76ca15a1-d1c2-4980-b632-50b3155710ae', '44f4a867-a9a2-4ff0-9ed3-bbd5b4ff1c4e', 933763, '76ca15a1-d1c2-4980-b632-50b3155710ae', 'products', 1, 'image/jpeg', '2020-05-10 03:49:46', '2020-05-10 03:49:46'),
('47fa9ceb-cec8-45ef-b525-c5d0481600f5', '1401db66-2179-4f1b-8245-6a456aa67eb3', 'a9f76197-e650-469d-8f43-8b9076c2d19c', 288983, '1401db66-2179-4f1b-8245-6a456aa67eb3', 'products', 1, 'image/jpeg', '2020-01-06 13:05:11', '2020-01-06 13:05:11'),
('48839787-1b48-4a7d-af91-b379e53c45e0', '99af2b1e-7a53-406f-a319-6cfefb628e77', 'a0571e03-8ee1-42d7-a2c9-ec2f701906ca', 928166, '99af2b1e-7a53-406f-a319-6cfefb628e77', 'products', 2, 'image/jpeg', '2020-05-07 06:54:02', '2020-05-07 06:54:02'),
('493e970f-e286-446e-91d9-2a9bc33e53da', '653e67b4-f507-46f2-8f2f-b2f24db878bb', 'e3dda8dd-4129-4215-b5dc-58a8227cd49a', 66016, '653e67b4-f507-46f2-8f2f-b2f24db878bb', 'products', 2, 'image/jpeg', '2020-01-17 15:40:42', '2020-01-17 15:40:42'),
('49d54214-56b9-4638-9eb1-02ebe03fba9b', '3412c6bc-40f8-4a99-b1c1-57f9bff942ce', '5cc43789-94d3-461b-bd88-2618d3cd847d', 603097, '3412c6bc-40f8-4a99-b1c1-57f9bff942ce', 'products', 2, 'image/jpeg', '2020-05-03 09:47:39', '2020-05-03 09:47:39'),
('4a21e6d8-0a8c-417a-a8d5-54399073caf5', 'e7c061f2-bd6c-409a-a8a4-38e50af531ea', 'b287da9f-5b81-4f09-a05a-c175da1b5ca2', 874699, 'e7c061f2-bd6c-409a-a8a4-38e50af531ea', 'products', 1, 'image/jpeg', '2020-05-10 03:56:20', '2020-05-10 03:56:20'),
('4bc0fd61-01cb-4f4c-8265-ed989d5f41b5', 'b5422006-a8ff-4f7e-87d0-7f4639a335bc', 'c58be974-fbfa-43f4-882a-3e75d5b20c42', 1081984, 'b5422006-a8ff-4f7e-87d0-7f4639a335bc', 'products', 2, 'image/jpeg', '2020-05-12 06:21:06', '2020-05-12 06:21:06'),
('4bcce05a-2783-4a92-a329-4dc355d85b26', '89b65d28-fdef-4a78-9241-a9062c3492ce', '77df7c46-74d4-4320-a373-04c4e0d0a869', 35355, '89b65d28-fdef-4a78-9241-a9062c3492ce', 'products', 2, 'image/jpeg', '2020-01-06 13:17:56', '2020-01-06 13:17:56'),
('4bf56eea-8802-436a-af8b-13abe31f8eaa', 'b7ec9849-9d99-493d-b98c-8508cb2647fd', 'da0dd71e-afd0-4e64-9a91-f344ee474e43', 815368, 'b7ec9849-9d99-493d-b98c-8508cb2647fd', 'products', 3, 'image/jpeg', '2020-05-17 03:59:32', '2020-05-17 03:59:32'),
('4c285eac-2e80-4a99-8634-0aaeb20a22ce', 'f3a343d3-bb22-4119-a5de-090142fef9ee', 'efe06ab0-f2b9-448c-a57b-3990f9aff25b', 427851, 'f3a343d3-bb22-4119-a5de-090142fef9ee', 'products', 3, 'image/jpeg', '2020-01-01 18:21:26', '2020-01-01 18:21:26'),
('4c680f37-b71f-4ef9-ac62-0dc4fc77e43a', '5dfda432-4a74-4849-9778-0bbd0898e76d', 'e92bc875-86b7-4f53-958d-03d4d962dcd5', 1136736, '5dfda432-4a74-4849-9778-0bbd0898e76d', 'products', 3, 'image/jpeg', '2020-05-03 10:56:48', '2020-05-03 10:56:48'),
('4cf141a7-407d-427c-83ce-e08d557fcc92', '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', '5736ef05-0cc9-4aee-904d-5463ec2040e9', 1177955, '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', 'products', 1, 'image/jpeg', '2020-05-12 06:16:29', '2020-05-12 06:16:29'),
('4d286580-44ba-42f9-89e3-9190f3504bc0', 'c502f0bd-5200-491c-ba49-655b747a436f', '5cbd0831-70a1-497b-bec0-08c7163ed7a9', 700583, 'c502f0bd-5200-491c-ba49-655b747a436f', 'products', 1, 'image/jpeg', '2020-05-07 08:23:47', '2020-05-07 08:23:47'),
('4dbdf12b-24f7-45ec-9283-ce2bd1c23ccc', '303dde82-68d5-4b0e-91a6-c762ca87ee8a', '71acbb7f-3168-4b55-8a3c-d29b778e78aa', 1055008, '303dde82-68d5-4b0e-91a6-c762ca87ee8a', 'products', 1, 'image/jpeg', '2020-05-03 10:49:54', '2020-05-03 10:49:54'),
('4e139ea4-81b4-4443-9c09-34b4bf9f1816', '9b587046-06df-4e91-919e-1046817db97f', '4db3f3de-22eb-41f6-8a94-e6ae9c03900d', 117534, '9b587046-06df-4e91-919e-1046817db97f', 'products', 3, 'image/jpeg', '2020-04-30 08:33:15', '2020-04-30 08:33:15'),
('4e23a9bd-de92-432b-b820-c24911675902', '83d9fc75-d190-4f33-8992-4ce45db55a3d', '575bcb05-64ef-4850-a1c9-2a4d9f978dde', 1132571, '83d9fc75-d190-4f33-8992-4ce45db55a3d', 'products', 1, 'image/jpeg', '2020-05-07 06:59:21', '2020-05-07 06:59:21'),
('4e489185-b9c7-4a02-99d2-2cbe155603f5', 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', '7a881d7b-4375-44e1-ae36-de9cb1d9462f', 201553, 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', 'products', 2, 'image/jpeg', '2020-01-04 20:46:26', '2020-01-04 20:46:26'),
('4ec7110b-231b-4ae4-a06b-67bba626ddef', '534f104f-0087-4cdf-93c7-814cb7e7c6f4', 'dd938a64-d0a6-455b-860a-0c2d97e6285c', 720361, '534f104f-0087-4cdf-93c7-814cb7e7c6f4', 'products', 2, 'image/jpeg', '2020-05-17 04:05:33', '2020-05-17 04:05:33'),
('4f019b71-ad65-4943-9e88-3e2a51b74a6b', '5dd1be56-5433-412f-8b38-328aec628ff1', '17912a70-2dbd-4d17-8518-262dab51bdaa', 486912, '5dd1be56-5433-412f-8b38-328aec628ff1', 'products', 3, 'image/jpeg', '2019-12-31 16:31:43', '2019-12-31 16:31:43'),
('4f0de89a-b301-49ab-8662-e65bb674e8e6', '24f57dc3-83c6-45dd-beeb-dc3444917568', 'e87d6947-fb0c-48f8-bcd8-66edbd271eed', 72056, '24f57dc3-83c6-45dd-beeb-dc3444917568', 'products', 2, 'image/jpeg', '2020-01-17 16:22:53', '2020-01-17 16:22:53'),
('4f0f6b57-e1b7-4781-ae2e-82d2dbf0c94a', 'b830b3da-e5ee-406e-bef1-360f2b196f45', 'dae8e9b6-dd56-4d3d-94af-09c8d065d328', 613170, 'b830b3da-e5ee-406e-bef1-360f2b196f45', 'products', 2, 'image/jpeg', '2020-05-07 07:15:52', '2020-05-07 07:15:52'),
('4f6c4d59-c764-4de2-90d0-cb3b06c42ae8', '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', '2117089c-6c64-4779-92e2-4cda7a6a70b1', 722823, '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', 'products', 3, 'image/jpeg', '2020-05-17 03:27:32', '2020-05-17 03:27:32'),
('4f99be20-970f-42fe-96df-d7ac8ea30715', 'a634d123-c706-4e49-9141-6cff640d182c', '40f016e1-4e3e-4d32-8888-9d18d16bd33e', 109848, 'a634d123-c706-4e49-9141-6cff640d182c', 'products', 3, 'image/jpeg', '2020-01-17 16:20:50', '2020-01-17 16:20:50');
INSERT INTO `product_images` (`id`, `product_id`, `file_name`, `file_size`, `file_path`, `disk`, `order_column`, `mime_type`, `created_at`, `updated_at`) VALUES
('4fad6d64-d2d7-478f-ae9a-a6b08120961c', '556f8d8e-a34b-4e6c-8f8b-a6f59b770d7d', '3dcc6177-ac04-4246-96b4-26985df6a0a0', 98807, '556f8d8e-a34b-4e6c-8f8b-a6f59b770d7d', 'products', 2, 'image/jpeg', '2020-01-17 16:18:17', '2020-01-17 16:18:17'),
('4fdb4700-f056-4bb0-b685-96cbda49d36e', 'b5c27513-9044-4dd8-91fb-79ff7863dff8', 'e4335179-d93b-4d56-b4a8-f03660ba675c', 1203733, 'b5c27513-9044-4dd8-91fb-79ff7863dff8', 'products', 1, 'image/jpeg', '2020-05-10 04:14:11', '2020-05-10 04:14:11'),
('500bc6da-e617-490c-8ee6-de5a7581dbdd', 'd50ce435-9198-471d-98b2-fe0fc0d336f9', 'caab4dce-58bf-4057-b3cd-75aa04f49eb3', 90512, 'd50ce435-9198-471d-98b2-fe0fc0d336f9', 'products', 2, 'image/jpeg', '2020-01-17 11:34:25', '2020-01-17 11:34:25'),
('507311e1-4a47-4b4b-a46d-bfd41cd79c8f', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'f8db2ae9-4ae9-4612-abb0-5ed1a96e7c58', 159154, '91a6cce0-3037-4514-ae0b-462daa8c9391', 'products', 1, 'image/jpeg', '2020-01-06 13:19:05', '2020-01-06 13:19:05'),
('5088e516-6ab7-4562-9533-58c5a2ed9863', '0776b2ba-ccc8-4250-b086-e1b194c952e9', '7157f8ce-e0c3-4918-98ae-f45dde424eb0', 102812, '0776b2ba-ccc8-4250-b086-e1b194c952e9', 'products', 1, 'image/jpeg', '2020-01-04 20:43:38', '2020-01-04 20:43:38'),
('50c91be9-d49f-46a5-bb5b-71c4c628a362', '253544d5-288d-4042-82f9-29f4bed59ddd', 'b393618e-5e54-4766-80d5-6a97ca546aa5', 66015, '253544d5-288d-4042-82f9-29f4bed59ddd', 'products', 1, 'image/jpeg', '2020-01-17 15:23:06', '2020-01-17 15:23:06'),
('5152a0c3-e4fe-4f62-9984-9d25e92e83cf', '196ede6b-d2dc-466a-b606-8f51c5837af9', '35541b64-ec62-472f-aa4c-9d0a90bf63e1', 448642, '196ede6b-d2dc-466a-b606-8f51c5837af9', 'products', 1, 'image/jpeg', '2020-05-02 11:51:04', '2020-05-02 11:51:04'),
('51b6c1f6-a61c-4eb8-befa-4dd86f19f440', '2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', 'd0d9adfc-d707-4f38-aa97-f538df526ca3', 196934, '2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', 'products', 3, 'image/jpeg', '2020-04-30 05:58:05', '2020-04-30 05:58:05'),
('5294ba78-11bd-4927-bc0d-f5e443d8f427', '86a4805d-1ffe-40b3-a4ae-5c9eb3404957', 'ff865830-7c24-47e4-86ac-e4f998212908', 727223, '86a4805d-1ffe-40b3-a4ae-5c9eb3404957', 'products', 1, 'image/jpeg', '2020-05-03 09:10:32', '2020-05-03 09:10:32'),
('52b17138-fdd6-48a2-aa1d-27d790dbfb34', '74a977bc-7f9c-4362-9b47-b347940485a5', 'e5869474-d2ef-4fc2-9dd3-0803cdc8e9eb', 320092, '74a977bc-7f9c-4362-9b47-b347940485a5', 'products', 2, 'image/jpeg', '2020-05-02 08:46:41', '2020-05-02 08:46:41'),
('52fd05ef-00b1-4904-bf5f-9242b9a7fcb6', '83637ae6-0cbf-4c5d-9027-0c511e088f19', '9d55481c-490f-4819-bf21-cf0688745a74', 98798, '83637ae6-0cbf-4c5d-9027-0c511e088f19', 'products', 2, 'image/jpeg', '2020-01-17 21:43:17', '2020-01-17 21:43:17'),
('54881447-b2eb-47fe-826d-7ad7dc39fe9e', 'daaf0d20-6b1c-4f43-a887-b145976c7ad9', 'fdbb8e96-c033-4f27-8207-ff00eb0bd0bb', 930406, 'daaf0d20-6b1c-4f43-a887-b145976c7ad9', 'products', 2, 'image/jpeg', '2020-05-10 03:52:43', '2020-05-10 03:52:43'),
('54f397af-e274-4e86-b761-761b6d93ae75', '906b16db-0fe9-4631-9f28-d763225aa70a', '521f94a7-e14a-4895-8be9-96d2a7c873a0', 1311314, '906b16db-0fe9-4631-9f28-d763225aa70a', 'products', 2, 'image/jpeg', '2020-05-10 07:48:29', '2020-05-10 07:48:29'),
('55553a63-a64b-44f7-8632-2f9b596a79c0', '8c0f6122-ca11-4263-bd35-e772e5732b7f', '4ed2a71b-5dd9-4f4e-87aa-ce26345c89f6', 113344, '8c0f6122-ca11-4263-bd35-e772e5732b7f', 'products', 2, 'image/jpeg', '2020-01-17 11:25:15', '2020-01-17 11:25:15'),
('557dbeae-a4c3-4050-adfc-9b818d27d737', '5ffcb152-8438-4694-91d7-68cdff44b004', '113a1601-20e6-49ed-be5b-f6eeb4e198a8', 319701, '5ffcb152-8438-4694-91d7-68cdff44b004', 'products', 4, 'image/jpeg', '2020-01-01 18:12:11', '2020-01-01 18:12:11'),
('5598681c-11c2-4e59-af99-70a072c01b19', '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'b6459e0e-e9da-4e0a-a45e-b5e52773bc19', 78358, '9f684c5f-6a50-4f5e-8b1e-c56f9097c97a', 'products', 3, 'image/jpeg', '2020-01-17 16:16:47', '2020-01-17 16:16:47'),
('55dbc697-9021-446d-acb2-aed44436156a', '52726cbf-bd2f-4bf4-89e4-d7aa9e3bf281', '38b295a5-9500-4b82-8a78-8a5a8d5a80a3', 89741, '52726cbf-bd2f-4bf4-89e4-d7aa9e3bf281', 'products', 2, 'image/jpeg', '2020-01-17 16:30:28', '2020-01-17 16:30:28'),
('563be5f9-d550-45fe-b31e-3e384dcb1425', '48ed294a-a55f-4456-add7-af55dc82ef1c', 'ea9a76d9-893f-4b16-95c3-dcf169cabc1b', 81793, '48ed294a-a55f-4456-add7-af55dc82ef1c', 'products', 2, 'image/jpeg', '2020-01-17 15:25:13', '2020-01-17 15:25:13'),
('56a81dac-9b28-47bb-93ab-eebe29aaae2a', '1a9c2401-f226-4ed0-89d5-c554790538b9', 'c957514a-0bb7-4858-aa55-b3a7757f7981', 1275237, '1a9c2401-f226-4ed0-89d5-c554790538b9', 'products', 1, 'image/jpeg', '2020-05-05 13:12:10', '2020-05-05 13:12:10'),
('56e13e06-35f8-4498-a7ee-a838a40f3911', 'e2f73fe1-a8a0-4b3b-bac3-39b6fc2156cf', '26e013ef-cc74-4cf5-a9c6-43c6ae09ea96', 220107, 'e2f73fe1-a8a0-4b3b-bac3-39b6fc2156cf', 'products', 2, 'image/jpeg', '2020-05-02 11:22:17', '2020-05-02 11:22:17'),
('5723ac08-e966-44c0-ba05-111aaf4976de', 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', '9f380b8e-2917-41c8-81d3-7eb238cf3ffd', 1131288, 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', 'products', 1, 'image/jpeg', '2020-05-09 06:51:45', '2020-05-09 06:51:45'),
('572d8a86-cd7b-4448-9367-410d91ee7211', '33a46083-d08e-40c1-aeb4-5f233410505b', '3fcda2b8-9957-4835-9e6d-08fac3a84b06', 111907, '33a46083-d08e-40c1-aeb4-5f233410505b', 'products', 3, 'image/jpeg', '2020-01-17 11:29:01', '2020-01-17 11:29:01'),
('579c15cf-6a3d-448a-8995-5f3af9cf3984', 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', '92da329c-a376-49ea-bd44-dbca2972806b', 176942, 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', 'products', 3, 'image/jpeg', '2020-05-02 08:41:50', '2020-05-02 08:41:50'),
('580bc53f-5110-46e7-851e-1b4ddbebb0cc', '1a9c2401-f226-4ed0-89d5-c554790538b9', '51b78b51-c0d4-4044-89df-81317ab148c9', 2063047, '1a9c2401-f226-4ed0-89d5-c554790538b9', 'products', 4, 'image/jpeg', '2020-05-05 13:13:26', '2020-05-05 13:13:26'),
('5822d770-6a40-429d-986c-45786995b1f6', 'a255b993-f990-4c78-b529-94551adae6be', 'd45f48db-7ecb-4a53-81c9-c11820dbd87d', 1161672, 'a255b993-f990-4c78-b529-94551adae6be', 'products', 1, 'image/jpeg', '2020-05-07 08:01:58', '2020-05-07 08:01:58'),
('587fed5d-0200-4372-8679-f6e9ae818a90', '5762df61-60b7-4196-9964-11caac2c2340', '098256bf-04ea-4717-affe-94f64a1b6651', 317690, '5762df61-60b7-4196-9964-11caac2c2340', 'products', 2, 'image/jpeg', '2020-05-05 06:57:44', '2020-05-05 06:57:44'),
('598a5a1d-0f9e-428d-93bd-9fef5121f090', '5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', '1970632d-da83-409e-9559-3efef141c466', 876702, '5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', 'products', 1, 'image/jpeg', '2020-05-02 11:52:45', '2020-05-02 11:52:45'),
('5a21c743-cbc7-4a99-be42-7c1da4a7c24c', 'a244bd9f-50a3-47c3-a1d8-74d110683e16', '5e042cc2-36be-49db-928b-5a6eefc18f95', 108155, 'a244bd9f-50a3-47c3-a1d8-74d110683e16', 'products', 1, 'image/jpeg', '2020-01-17 15:36:14', '2020-01-17 15:36:14'),
('5b055a0e-9f73-4ce0-a6c3-cacf74286f39', 'dc7a897f-0d73-4ef4-8067-381dde3cf705', '2038eea1-f66c-42f4-8b33-b3f4d01c3433', 160015, 'dc7a897f-0d73-4ef4-8067-381dde3cf705', 'products', 3, 'image/jpeg', '2020-01-06 13:14:13', '2020-01-06 13:14:13'),
('5b070642-f77c-45ef-b303-f00b305e9408', '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', '5b5673ab-75a7-4cab-a521-34b3990a4726', 279122, '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', 'products', 2, 'image/jpeg', '2020-04-30 10:26:21', '2020-04-30 10:26:21'),
('5b31785f-0f49-4f8f-8cd6-270da90d8c22', '2bf442bf-0f17-4c25-82eb-9ccf9755e384', '239ff361-3893-4e1f-ae03-429adbca28a7', 74340, '2bf442bf-0f17-4c25-82eb-9ccf9755e384', 'products', 2, 'image/jpeg', '2020-01-17 21:46:52', '2020-01-17 21:46:52'),
('5c12dd5d-439b-4f13-a8cd-51ec3ad67a24', '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'e0ea4b17-59df-446b-9123-8df6c2334ea6', 1678879, '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'products', 1, 'image/jpeg', '2020-05-10 04:00:56', '2020-05-10 04:00:56'),
('5c368f3e-a8be-4937-8a37-e9b90243633d', '2192fb3f-4e78-49a5-8de2-3fa883b067da', '544245b4-67d7-4a9f-989b-356755744465', 98559, '2192fb3f-4e78-49a5-8de2-3fa883b067da', 'products', 2, 'image/jpeg', '2020-01-17 21:48:59', '2020-01-17 21:48:59'),
('5c6be05a-3260-4866-846e-3c28a75359c3', '7f2d00ba-2599-4f94-a4df-abd97e6618e8', '1c19e575-9123-4529-8896-5d1c59a8c9ff', 330098, '7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'products', 2, 'image/jpeg', '2020-05-02 11:27:16', '2020-05-02 11:27:16'),
('5cfa64dc-69a6-4af1-bfd0-5b47138d1711', '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', 'd630d637-48f6-4abe-8b8f-d5baecda8087', 42624, '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', 'products', 3, 'image/jpeg', '2020-01-17 11:48:55', '2020-01-17 11:48:55'),
('5e5cca25-eafe-41bf-a0f6-cf39de7650ab', '4c4cb867-c912-46ce-9e1f-841212875509', '30df4b2a-7f99-42f1-914d-11175bd6d0fd', 175404, '4c4cb867-c912-46ce-9e1f-841212875509', 'products', 3, 'image/jpeg', '2020-04-30 06:54:59', '2020-04-30 06:54:59'),
('5e6c0b24-913d-4e86-bd08-2e1e14952a7f', '05289ec9-bd78-4106-921b-f4ca2b75b11c', '1428bba2-cd19-496b-8ea1-2ab5c2e884cf', 65832, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 7, 'image/jpeg', '2020-05-31 15:00:41', '2020-05-31 15:00:41'),
('5f3cac0b-f84e-4dee-b4b0-f0bba513db8d', '1bec155a-4e94-4028-97fc-6a0aad0efa1b', '8f3f26d2-58d0-4666-9b1a-41b674ecf3ba', 982242, '1bec155a-4e94-4028-97fc-6a0aad0efa1b', 'products', 1, 'image/jpeg', '2020-05-07 08:04:44', '2020-05-07 08:04:44'),
('5f51bf10-3fdf-4da0-90db-f23393826ff9', '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', 'cb5601f1-d710-435c-aa27-cb05e4e18984', 1089766, '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', 'products', 3, 'image/jpeg', '2020-05-07 08:41:33', '2020-05-07 08:41:33'),
('5fb6e2f1-4112-4503-8882-3c8c1e7ba9e3', 'ffc96b35-417c-48b7-9edc-d17de49ff64b', 'd3801122-d788-4e28-aceb-e3c1a649741f', 1409361, 'ffc96b35-417c-48b7-9edc-d17de49ff64b', 'products', 1, 'image/jpeg', '2020-05-17 03:33:04', '2020-05-17 03:33:04'),
('60278f57-cb09-4a12-bae7-ea6da7a1b69c', 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', '55fba96b-5360-4072-856a-7cb528519cd8', 760483, 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', 'products', 3, 'image/jpeg', '2020-05-07 08:36:05', '2020-05-07 08:36:05'),
('60917070-08b0-45f8-9ca6-d31154cd68f5', '485f739b-0979-4130-87b0-a5cefed3f515', 'afb227a5-9188-49de-a905-e13c4f161b38', 207971, '485f739b-0979-4130-87b0-a5cefed3f515', 'products', 1, 'image/jpeg', '2020-04-30 06:01:34', '2020-04-30 06:01:34'),
('611723e9-7247-4441-8fd4-8c497a17d2ab', '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', 'e98b3c26-526b-4d6e-bea3-2e7e82b8b3fa', 1125724, '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', 'products', 3, 'image/jpeg', '2020-05-12 06:16:57', '2020-05-12 06:16:57'),
('620efade-54bb-4be9-9382-b40a03b74b4d', '36739c31-df65-4074-8702-25e2ed4fdc96', 'ac83260b-6a40-4ca1-9c15-03f4639cef7a', 1036741, '36739c31-df65-4074-8702-25e2ed4fdc96', 'products', 3, 'image/jpeg', '2020-05-07 08:12:03', '2020-05-07 08:12:03'),
('62218f71-45ec-4319-86a4-5b3c1dd43195', '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', 'ec0e8cc1-22a4-45a7-85c9-04aadf1701bc', 708546, '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', 'products', 4, 'image/jpeg', '2020-05-17 03:31:05', '2020-05-17 03:31:05'),
('62900455-b4a9-40da-8821-c201d0cbd223', '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'f59593f6-f596-49b4-a048-a63e2a2f3ad4', 1257608, '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'products', 1, 'image/jpeg', '2020-05-10 08:16:27', '2020-05-10 08:16:27'),
('63750f2f-ddf1-4d91-880c-a1f6fdd80f45', 'c15a090a-40eb-4b43-bce1-7f97c93701e7', 'c0bf87f7-d559-4e54-864d-a7b90ef130bb', 620217, 'c15a090a-40eb-4b43-bce1-7f97c93701e7', 'products', 1, 'image/jpeg', '2020-05-03 09:04:11', '2020-05-03 09:04:11'),
('6444fb05-2f59-4f12-9f72-3911338677bb', '4792875c-1ad5-4612-b71a-3c496de38397', '19266cbc-2ed0-40bd-8281-1494f1f1c20c', 758980, '4792875c-1ad5-4612-b71a-3c496de38397', 'products', 2, 'image/jpeg', '2020-05-02 11:44:30', '2020-05-02 11:44:30'),
('64990cab-93c1-4409-9e84-046aee98c731', '19b422b7-3f57-4914-967d-3c939a44eaaf', '03e5b29d-4d9a-43d7-89b9-a39bfde103ca', 1439550, '19b422b7-3f57-4914-967d-3c939a44eaaf', 'products', 1, 'image/jpeg', '2020-05-10 04:17:22', '2020-05-10 04:17:22'),
('64b7d22b-b3d3-47d0-83f4-aea828f43cf5', '34f870c8-ca51-4ec5-98ba-34241a46a923', '0d80a794-1c93-4ba3-b0d8-d01f99664c79', 167369, '34f870c8-ca51-4ec5-98ba-34241a46a923', 'products', 2, 'image/jpeg', '2020-01-06 09:25:44', '2020-01-06 09:25:44'),
('64c4ea74-3971-4acf-a245-485727d33a30', '625d2c37-6349-4be4-a849-322adb06b956', 'fcd3e60c-5f37-4990-ad73-2e8d63ba396b', 70422, '625d2c37-6349-4be4-a849-322adb06b956', 'products', 2, 'image/jpeg', '2020-01-17 16:14:51', '2020-01-17 16:14:51'),
('650a488e-df00-4c52-8f94-c8dc2e07906f', '31cee6e1-7b69-4a85-b244-ecea1649d3d2', '4d54240c-e43c-4cb1-b05d-c76b933ebf7a', 1059280, '31cee6e1-7b69-4a85-b244-ecea1649d3d2', 'products', 2, 'image/jpeg', '2020-05-10 04:03:35', '2020-05-10 04:03:35'),
('65cf1db1-7bf1-41a1-a445-93cb8d09b30c', 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', 'a8843de4-a5b5-4c13-81df-b27a9d8f528e', 179281, 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', 'products', 1, 'image/jpeg', '2020-04-30 07:38:57', '2020-04-30 07:38:57'),
('6689d299-91b6-4d66-a49b-67db2e717135', '41f6a861-2224-4573-9613-754dbb7b0383', 'c8404a7a-46cf-4bce-bc28-b13fd9a188f7', 102958, '41f6a861-2224-4573-9613-754dbb7b0383', 'products', 2, 'image/jpeg', '2020-01-17 15:27:28', '2020-01-17 15:27:28'),
('66c8bfbc-c26e-4cb1-a062-5e4b85b76e71', 'b7ec9849-9d99-493d-b98c-8508cb2647fd', '19252cb9-aad8-4f51-9a54-4c12cd1d72ba', 932719, 'b7ec9849-9d99-493d-b98c-8508cb2647fd', 'products', 1, 'image/jpeg', '2020-05-17 03:58:56', '2020-05-17 03:58:56'),
('670ac061-545d-40ef-80b4-54df4a29f16f', '50e6e1e8-3ace-4174-8bd6-407771c89ade', '43984789-35cd-4934-8786-2982501bbee1', 1338244, '50e6e1e8-3ace-4174-8bd6-407771c89ade', 'products', 2, 'image/jpeg', '2020-05-10 07:44:50', '2020-05-10 07:44:50'),
('6733d318-52d5-433d-83dd-191000416165', '641fbfc4-8390-498f-ae3c-29a357ffdcb3', 'e4e0e6fd-0338-4b3f-a308-0cc0b74e1354', 117616, '641fbfc4-8390-498f-ae3c-29a357ffdcb3', 'products', 3, 'image/jpeg', '2020-04-30 06:58:46', '2020-04-30 06:58:46'),
('678b116f-4288-42fe-87f0-9d323bde6f93', '81f43560-99ae-4400-b0b0-90e56821e24d', '92bad562-5434-4afa-996c-4591e18f8085', 1220717, '81f43560-99ae-4400-b0b0-90e56821e24d', 'products', 3, 'image/jpeg', '2020-05-10 07:17:32', '2020-05-10 07:17:32'),
('67aec5fe-2779-48f7-b1aa-8a805a9e0be6', 'e1493eee-f61a-4653-9a81-d067f4df91bb', 'b23dffd5-8e24-401c-9f43-10078546c8c8', 180535, 'e1493eee-f61a-4653-9a81-d067f4df91bb', 'products', 3, 'image/jpeg', '2020-05-02 08:34:13', '2020-05-02 08:34:13'),
('67f7304d-ee63-4948-9169-3c6f52b0f1ad', 'a528490c-773c-4579-af7c-aadf943c7964', 'aa6a31a5-d4dc-480b-b68c-c02e8508b66a', 1303000, 'a528490c-773c-4579-af7c-aadf943c7964', 'products', 1, 'image/jpeg', '2020-05-17 03:41:45', '2020-05-17 03:41:45'),
('68b424e4-84a4-47b0-80f0-d9fedb3f804f', 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', '087117a4-d785-4863-82ef-bdab3909f21c', 263268, 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', 'products', 1, 'image/jpeg', '2020-05-02 08:41:11', '2020-05-02 08:41:11'),
('69865359-2804-403e-b4e9-eaceccbe8dfa', '957372ca-bc82-4db4-8ab0-37a94a5d33b6', '80bc04d8-a162-4feb-8793-b4e7e5dbfa3f', 1635121, '957372ca-bc82-4db4-8ab0-37a94a5d33b6', 'products', 1, 'image/jpeg', '2020-05-10 04:11:06', '2020-05-10 04:11:06'),
('699cf78b-038a-4d5a-b1b8-da7a1d72fcb2', '3935dd8a-36da-4aed-b1e5-09bea808d97b', '80908c6f-cf60-4021-80df-e947790f7eed', 878444, '3935dd8a-36da-4aed-b1e5-09bea808d97b', 'products', 1, 'image/jpeg', '2020-05-17 04:01:22', '2020-05-17 04:01:22'),
('69b03e12-8a8c-47fe-868f-38b1d6870a6d', 'f1064890-3825-48ac-84cb-b1e52cc7123e', 'ea678ba7-02bd-4117-988c-7e03ee7c9911', 47094, 'f1064890-3825-48ac-84cb-b1e52cc7123e', 'products', 1, 'image/jpeg', '2020-01-06 12:53:58', '2020-01-06 12:53:58'),
('69f4cb2c-e00c-40c5-a367-03ac9574c683', '1649d07a-1251-41b0-a305-11f3a0f42df3', 'd0a5de08-7a5c-4190-8282-0ec794d78efd', 91689, '1649d07a-1251-41b0-a305-11f3a0f42df3', 'products', 1, 'image/jpeg', '2020-01-17 15:28:53', '2020-01-17 15:28:53'),
('6a27afd7-be42-48cc-9062-0ade71b09f0e', 'c9540286-873d-43e1-a079-13ce643c2919', '960bc2c0-03b1-48d7-9a53-3b2e6c097cff', 177133, 'c9540286-873d-43e1-a079-13ce643c2919', 'products', 2, 'image/jpeg', '2020-05-02 08:09:50', '2020-05-02 08:09:50'),
('6a666ef0-f381-4eab-baf4-931542d392b0', '547469dd-fe72-422f-b420-cd8b8e3ecb23', '9a09c1c9-add9-4a61-bc81-7c18341c7228', 51071, '547469dd-fe72-422f-b420-cd8b8e3ecb23', 'products', 1, 'image/jpeg', '2020-01-17 16:40:57', '2020-01-17 16:40:57'),
('6ba667a2-1b9e-44f1-b2b4-740b7c9d31e1', '4c4cb867-c912-46ce-9e1f-841212875509', '7794b77e-ff31-435b-a5f4-10ea2190ada9', 144655, '4c4cb867-c912-46ce-9e1f-841212875509', 'products', 1, 'image/jpeg', '2020-04-30 06:54:33', '2020-04-30 06:54:33'),
('6bbd43f0-c9f4-4f2d-aae9-dfeedb1fa993', '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', '97f6cf8e-aa43-4611-bb56-086c3f893b99', 70834, '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', 'products', 1, 'image/jpeg', '2020-01-17 11:47:57', '2020-01-17 11:47:57'),
('6bc6dc6e-aff7-417c-8f25-a77231c61b86', '8794050b-68ea-4825-b5da-022646a0ea99', '0925aad3-af33-4606-84f6-d9deddd82516', 997073, '8794050b-68ea-4825-b5da-022646a0ea99', 'products', 2, 'image/jpeg', '2020-05-05 13:22:35', '2020-05-05 13:22:35'),
('6bcb5bea-1f36-4227-982e-3557fc39d940', 'c9cca7ed-e714-4966-bdd2-186aa79d2843', 'f853d57d-f6dd-4b9e-b8c8-1f0b2e6be511', 253275, 'c9cca7ed-e714-4966-bdd2-186aa79d2843', 'products', 2, 'image/jpeg', '2020-04-30 08:35:22', '2020-04-30 08:35:22'),
('6c1cebf3-fb40-4231-b23f-20ac07a68001', '79e20b1a-804f-49b1-93ec-d1debd3bb711', '8ce967fb-540a-4187-8b2f-e70e31ea98ef', 482347, '79e20b1a-804f-49b1-93ec-d1debd3bb711', 'products', 2, 'image/jpeg', '2020-01-01 18:13:40', '2020-01-01 18:13:40'),
('6c4822f6-6ed6-4148-a379-403278082a7a', 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', '8457796a-dcfc-426b-b25a-f942e7f240c7', 1211471, 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', 'products', 3, 'image/jpeg', '2020-05-07 07:22:28', '2020-05-07 07:22:28'),
('6d98a38f-ae2d-485e-bded-61fcb9326118', '48ed294a-a55f-4456-add7-af55dc82ef1c', '1885c708-6a0f-4a8c-a03f-5ebd87ea27b0', 112820, '48ed294a-a55f-4456-add7-af55dc82ef1c', 'products', 3, 'image/jpeg', '2020-01-17 15:25:29', '2020-01-17 15:25:29'),
('6db7d75e-5e86-4884-8bb4-dd2e8219ac00', 'fa5a7843-ae14-444e-a90a-79c410ee1361', '0d819d4c-4de3-4f8d-b7b9-f3dc7faaf8a7', 1147136, 'fa5a7843-ae14-444e-a90a-79c410ee1361', 'products', 2, 'image/jpeg', '2020-05-07 08:43:51', '2020-05-07 08:43:51'),
('6e9f2541-e950-4eb9-a237-1350ba90b988', '977f3b8a-862c-413d-89a6-8817b7143ac7', '7e90398c-5ca0-4084-b085-cfbe7135d0f8', 1054396, '977f3b8a-862c-413d-89a6-8817b7143ac7', 'products', 3, 'image/jpeg', '2020-05-07 06:52:02', '2020-05-07 06:52:02'),
('6eacb1d3-8991-46fd-aa46-de3a2e0661f0', '43004407-53e6-4715-b817-bbe83afc6739', '4acf45c6-6773-4525-a2a9-f28b1928e29b', 723718, '43004407-53e6-4715-b817-bbe83afc6739', 'products', 1, 'image/jpeg', '2020-05-10 07:42:03', '2020-05-10 07:42:03'),
('6ee29110-54f0-4e34-bb79-0a894ffd40db', 'e2f73fe1-a8a0-4b3b-bac3-39b6fc2156cf', '5ac51a96-18d7-4677-82dc-8cb54093ad51', 281438, 'e2f73fe1-a8a0-4b3b-bac3-39b6fc2156cf', 'products', 1, 'image/jpeg', '2020-05-02 11:21:55', '2020-05-02 11:21:55'),
('6f4708ba-3498-4cd6-adb6-3f2fc9026e36', 'e6944953-df21-4ae6-b319-7451ab12b65c', 'b8cc243d-b7e5-414c-928d-9dc33b4a3420', 113308, 'e6944953-df21-4ae6-b319-7451ab12b65c', 'products', 3, 'image/jpeg', '2020-04-30 06:05:08', '2020-04-30 06:05:08'),
('7001edc7-775b-42c7-b408-71b4df7fed91', 'd50ce435-9198-471d-98b2-fe0fc0d336f9', 'ec2f16a4-e664-437e-9b7b-21175611394e', 76941, 'd50ce435-9198-471d-98b2-fe0fc0d336f9', 'products', 1, 'image/jpeg', '2020-01-17 11:34:04', '2020-01-17 11:34:04'),
('7098bde4-9caa-4ad9-9bf6-2734b6007e80', '24867dec-71e4-4ac1-ac12-dd990d10c448', '011497ba-2020-4e42-9d6e-b0777659f343', 267031, '24867dec-71e4-4ac1-ac12-dd990d10c448', 'products', 2, 'image/jpeg', '2020-01-06 13:03:26', '2020-01-06 13:03:26'),
('71467302-2a4d-4df2-8e01-2dac31bde2df', '2938b24b-2eef-4bdd-acfd-ce17219621d4', '5dddc701-8829-4798-a79a-3b2b77d88ecb', 660370, '2938b24b-2eef-4bdd-acfd-ce17219621d4', 'products', 2, 'image/jpeg', '2020-05-07 08:09:46', '2020-05-07 08:09:46'),
('71707e85-3d68-4530-84a4-1aa497533c6b', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', '02fe4b6d-ebbc-4fed-b66d-3481548965e1', 1189200, '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'products', 7, 'image/jpeg', '2020-05-12 08:45:09', '2020-05-12 08:45:09'),
('71a580c2-495e-4a4d-8592-e057e9955292', '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'a22b4ee1-e2d8-4142-ad41-02c8090c47a8', 619665, '22af49bb-9f8f-43c8-befd-0eec6dfe723a', 'products', 3, 'image/jpeg', '2020-05-07 08:20:45', '2020-05-07 08:20:45'),
('72155333-c55b-49cf-b60f-7ae009b1bb80', '6735748a-0ba8-4506-a5c1-52e45804cfba', 'a8693093-999c-45c8-b0e2-f35cebae6fa1', 2439853, '6735748a-0ba8-4506-a5c1-52e45804cfba', 'products', 2, 'image/jpeg', '2020-05-17 03:47:41', '2020-05-17 03:47:41'),
('725e8b3f-3722-4a97-8c5c-8d6ba8a771b1', '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', '63a47807-4799-4a07-aa3b-e954f6bea376', 159678, '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', 'products', 3, 'image/jpeg', '2020-05-02 08:23:46', '2020-05-02 08:23:46'),
('72846232-2f40-48a8-8434-5efc05ca8453', 'dc7545b7-1956-4ad4-9ccd-5999617e8514', '87a879c3-d475-486b-bc92-452442b6bbea', 291122, 'dc7545b7-1956-4ad4-9ccd-5999617e8514', 'products', 1, 'image/jpeg', '2020-05-02 08:48:04', '2020-05-02 08:48:04'),
('7370a692-5a7b-4d32-bdc8-ddc06dad8b9a', '80bcc297-5f8f-4e6c-ad09-e69a40683746', 'cac5f572-abe2-48cc-8772-69676c1b7ec9', 821381, '80bcc297-5f8f-4e6c-ad09-e69a40683746', 'products', 1, 'image/jpeg', '2020-05-02 11:57:09', '2020-05-02 11:57:09'),
('73a22e8d-24fe-4a32-bb04-06dc05f43065', '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'd627cc6f-4057-4efe-a5f0-4f862d5e99ea', 785151, '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'products', 3, 'image/jpeg', '2020-05-17 03:54:35', '2020-05-17 03:54:35'),
('73c10b7e-0639-4bb3-941d-7c2d72e10863', 'fa85d981-9928-4e04-b7e3-f71b28813ae1', 'c8896973-8c14-4b98-90a0-b93b6ee4e38b', 1026010, 'fa85d981-9928-4e04-b7e3-f71b28813ae1', 'products', 2, 'image/jpeg', '2020-05-05 07:13:03', '2020-05-05 07:13:03'),
('73cc5664-fd81-44d3-99ef-70a5f967aed8', 'a72a1b51-a094-4e31-9cf8-3050c70721dd', '2bc546f4-9196-4ff1-af64-88c712f3cac8', 530186, 'a72a1b51-a094-4e31-9cf8-3050c70721dd', 'products', 1, 'image/jpeg', '2020-05-03 10:54:12', '2020-05-03 10:54:12'),
('744345c1-9bed-416c-b8a6-c9361b0676ce', 'a528490c-773c-4579-af7c-aadf943c7964', 'aff9d7a4-0f91-4dc9-b13d-c6e942d4c0ba', 688202, 'a528490c-773c-4579-af7c-aadf943c7964', 'products', 2, 'image/jpeg', '2020-05-17 03:42:12', '2020-05-17 03:42:12'),
('7582cf2c-fc3c-44ff-bf86-7d3e4a10ebbf', 'a255b993-f990-4c78-b529-94551adae6be', '07015780-d279-487d-87b4-34ff983fb07d', 1126364, 'a255b993-f990-4c78-b529-94551adae6be', 'products', 3, 'image/jpeg', '2020-05-07 08:02:42', '2020-05-07 08:02:42'),
('760295d6-d1aa-4b00-a9df-d7aa175b7c5b', 'b6ec513b-35f3-4dd0-a408-81a0a4778304', '52b69e33-d39a-4aeb-9510-372075a171e0', 591268, 'b6ec513b-35f3-4dd0-a408-81a0a4778304', 'products', 2, 'image/jpeg', '2020-05-05 13:19:20', '2020-05-05 13:19:20'),
('76105fb4-14c4-47cf-9d33-6e20ba7df7da', 'def21a03-6188-4ac8-8335-0dc1879e73cd', '771efe1e-5852-42ce-94fd-7e048b6d514d', 489694, 'def21a03-6188-4ac8-8335-0dc1879e73cd', 'products', 3, 'image/jpeg', '2020-05-05 12:58:21', '2020-05-05 12:58:21'),
('7658062d-5e3e-460d-902a-8bb161a71fda', 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', '53beeb14-7b6f-4ade-81e7-7ece7a77c4bc', 752341, 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', 'products', 2, 'image/jpeg', '2020-05-10 08:12:12', '2020-05-10 08:12:12'),
('76b86df9-47c4-452b-9fc5-360bc7990c57', '653e67b4-f507-46f2-8f2f-b2f24db878bb', '8a80308f-f78b-431a-b5a8-7ec216273408', 66923, '653e67b4-f507-46f2-8f2f-b2f24db878bb', 'products', 3, 'image/jpeg', '2020-01-17 15:41:04', '2020-01-17 15:41:04'),
('76c97f30-b018-41ae-b26b-084acd680e21', 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', 'e8d9a1a3-1c62-44bb-be34-71485734dcd5', 295736, 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', 'products', 1, 'image/jpeg', '2020-01-06 13:22:40', '2020-01-06 13:22:40'),
('7720c7cb-cef3-46de-ba2c-de2c9bac1b1e', 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', '51e8590a-8cbc-4d6a-af37-77f30b7c7117', 874514, 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', 'products', 2, 'image/jpeg', '2020-05-14 06:01:50', '2020-05-14 06:01:50'),
('774bc52b-fa09-4bdd-8ac9-dcab688f8ef8', 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', 'dbae0b81-5713-4898-82b8-2866345b7dcd', 76121, 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', 'products', 1, 'image/jpeg', '2020-04-30 10:28:11', '2020-04-30 10:28:11'),
('776bf56a-dc1a-41ff-8195-3941764dc11d', 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', 'a28fd93d-83c5-4baf-8335-67edd52c4e93', 269663, 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', 'products', 2, 'image/jpeg', '2020-04-30 07:51:55', '2020-04-30 07:51:55'),
('77c9645f-f436-49fc-bd61-24ff3a24abeb', '16be941f-137e-48a4-8d0b-2137bc883ab2', 'caae9363-d2ce-41a1-b930-b1638ddaa479', 1078586, '16be941f-137e-48a4-8d0b-2137bc883ab2', 'products', 1, 'image/jpeg', '2020-05-07 06:43:06', '2020-05-07 06:43:06'),
('783b5cbb-7c6e-47d5-bb17-ed6b060a4e9e', '485f739b-0979-4130-87b0-a5cefed3f515', 'a237865b-5d4d-4337-ae9e-19cf2cac282f', 268773, '485f739b-0979-4130-87b0-a5cefed3f515', 'products', 2, 'image/jpeg', '2020-04-30 06:01:59', '2020-04-30 06:01:59'),
('78b41489-5c64-42a8-b2bf-f225e29743f7', '108ff5ec-e075-435a-b2ea-95180559ca31', '47a55bff-0541-454b-ba6f-433341b95de9', 971489, '108ff5ec-e075-435a-b2ea-95180559ca31', 'products', 2, 'image/jpeg', '2020-05-03 10:44:32', '2020-05-03 10:44:32'),
('79e5633b-61fd-441b-93f0-4a37754e2e18', 'd50ce435-9198-471d-98b2-fe0fc0d336f9', '473b7dff-5d5f-4f45-a35e-bd13f42d0395', 70955, 'd50ce435-9198-471d-98b2-fe0fc0d336f9', 'products', 3, 'image/jpeg', '2020-01-17 11:34:31', '2020-01-17 11:34:31'),
('7a14685e-1991-4dc4-b3f1-17233e71f427', 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', '118bf309-afc5-41b6-8c38-90bc599fe715', 1248582, 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'products', 2, 'image/jpeg', '2020-05-07 06:55:45', '2020-05-07 06:55:45'),
('7a276b95-4fb3-447a-b22c-2313164c3600', '1001f69c-4a71-4c4b-93cb-696ee1128862', 'e9e45c1e-a77c-4107-b42d-c11ea4460f0f', 30932, '1001f69c-4a71-4c4b-93cb-696ee1128862', 'products', 1, 'image/jpeg', '2020-01-06 12:43:14', '2020-01-06 12:43:14'),
('7a9266bc-be75-4f83-85da-2a1ed0c2b22e', '5dfda432-4a74-4849-9778-0bbd0898e76d', '9f107247-c4f3-47c6-b828-5a1f77d2d718', 615230, '5dfda432-4a74-4849-9778-0bbd0898e76d', 'products', 1, 'image/jpeg', '2020-05-03 10:55:59', '2020-05-03 10:55:59'),
('7a92f61f-e899-4876-80a5-fce7f850ea8f', '83d9fc75-d190-4f33-8992-4ce45db55a3d', 'c508fca5-46e9-42b1-9ac1-18e1627c6d08', 1148890, '83d9fc75-d190-4f33-8992-4ce45db55a3d', 'products', 3, 'image/jpeg', '2020-05-07 06:59:58', '2020-05-07 06:59:58'),
('7b1e7eaa-7aaf-4473-9bd7-b7c935fa6f9f', '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', 'd88c0d82-6fc5-4cc3-9762-13ecd3421b5c', 1393374, '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', 'products', 2, 'image/jpeg', '2020-05-18 10:09:12', '2020-05-18 10:09:12'),
('7b32b2f7-f1ec-4e1d-aedb-ba631a14b215', 'fd975715-d4e6-49e1-abc8-d4d2be527216', 'a8dfc6ee-40b8-4a8e-96f5-660269f179a6', 109902, 'fd975715-d4e6-49e1-abc8-d4d2be527216', 'products', 3, 'image/jpeg', '2020-04-30 06:18:12', '2020-04-30 06:18:12'),
('7be88916-f5c0-414b-8bb2-5e36ac2d8b95', '13c256a2-bf89-4990-933d-452199aff4b9', '1bc62b86-73f4-482f-af83-4efb089a2b44', 730486, '13c256a2-bf89-4990-933d-452199aff4b9', 'products', 2, 'image/jpeg', '2020-05-09 06:36:53', '2020-05-09 06:36:53'),
('7c171614-4452-4013-8f97-ced312d1b962', 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', '13c4c3b0-5e7d-4ae2-a514-30856713424b', 730723, 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', 'products', 3, 'image/jpeg', '2020-05-14 05:41:39', '2020-05-14 05:41:39'),
('7c3dd762-f9a5-4f24-b17a-b4c72cedfbf5', '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', '5c6cfa66-8c71-4eb8-b091-24fe631f8c7c', 1078651, '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'products', 2, 'image/jpeg', '2020-05-10 08:16:46', '2020-05-10 08:16:46'),
('7c514cdf-861c-4418-98ac-948734b7c8a1', '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', '187a9bdb-2e48-44c5-a455-963805035bec', 130726, '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', 'products', 3, 'image/jpeg', '2020-04-30 08:19:16', '2020-04-30 08:19:16'),
('7e159ad0-38e8-4ab8-acd6-b5560b94ffe4', 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', '8b8a2ada-bf36-4fe9-836f-2318944d328a', 883753, 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'products', 1, 'image/jpeg', '2020-05-18 10:04:33', '2020-05-18 10:04:33'),
('7ee1612a-c097-4be9-b425-5dcacc3e6e31', '6735748a-0ba8-4506-a5c1-52e45804cfba', 'c2b0265e-a438-4a89-a637-f8b6c7063b53', 1222877, '6735748a-0ba8-4506-a5c1-52e45804cfba', 'products', 1, 'image/jpeg', '2020-05-17 03:47:06', '2020-05-17 03:47:06'),
('7f7c85d2-36c1-427a-ab21-313035e59a65', 'a255b993-f990-4c78-b529-94551adae6be', '864a9835-aff2-407c-9765-b84e1498eecb', 1150858, 'a255b993-f990-4c78-b529-94551adae6be', 'products', 2, 'image/jpeg', '2020-05-07 08:02:19', '2020-05-07 08:02:19'),
('8026e7a1-a00c-47c9-ad28-97cea3ef59c9', 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', '6a839183-ce35-4e2d-80a0-a2d97d940c21', 1009914, 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'products', 3, 'image/jpeg', '2020-05-10 08:10:54', '2020-05-10 08:10:54'),
('80d444d7-f4e8-45a9-9d57-78a712485f91', '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', '4ca4c751-050e-4d6a-a96d-ea52d22bdaed', 632787, '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', 'products', 3, 'image/jpeg', '2020-05-07 07:53:49', '2020-05-07 07:53:49'),
('810eadd5-bf4c-424e-bff9-9130a2814a97', '74a977bc-7f9c-4362-9b47-b347940485a5', '892453e3-cce0-479f-a8d0-2c78217782cd', 267802, '74a977bc-7f9c-4362-9b47-b347940485a5', 'products', 3, 'image/jpeg', '2020-05-02 08:47:06', '2020-05-02 08:47:06'),
('814e3107-f0a8-4eff-bd16-7f1a0c414296', '906b16db-0fe9-4631-9f28-d763225aa70a', '2e64fba6-6ccc-497b-8ce6-97f6cd7987ae', 857769, '906b16db-0fe9-4631-9f28-d763225aa70a', 'products', 3, 'image/jpeg', '2020-05-10 07:48:45', '2020-05-10 07:48:45'),
('8178e6ca-8dba-46e2-8ba8-6be45d3fad01', '977f3b8a-862c-413d-89a6-8817b7143ac7', '83a72b6a-3367-4183-ac57-a41e79973f9a', 1056871, '977f3b8a-862c-413d-89a6-8817b7143ac7', 'products', 2, 'image/jpeg', '2020-05-07 06:51:40', '2020-05-07 06:51:40'),
('817e9db8-f8c3-42d3-96b1-08b74103e6fa', 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', 'cda867bf-5f64-40d6-8906-c2878e8b49ae', 1022189, 'ed43e26c-4da4-4fc6-92da-bb3bb65df779', 'products', 3, 'image/jpeg', '2020-05-14 06:03:27', '2020-05-14 06:03:27'),
('81d7dc77-bed0-48a7-9efb-26aaa0d42b95', '636ceb9d-74b2-4f71-befa-41289b12ffbd', 'd3b277ec-2513-4f3c-ae62-1fb43d61e519', 76347, '636ceb9d-74b2-4f71-befa-41289b12ffbd', 'products', 2, 'image/jpeg', '2020-01-17 11:36:22', '2020-01-17 11:36:22'),
('81ee5379-0e02-4719-9fac-94599196fc57', 'd7af749d-385d-493b-b774-21429929b44d', '902eba2a-b7bf-4e47-819b-973d1f6dc34d', 1277339, 'd7af749d-385d-493b-b774-21429929b44d', 'products', 3, 'image/jpeg', '2020-05-07 08:28:52', '2020-05-07 08:28:52'),
('8369081b-c938-4a11-bcd4-14e8129a1dc3', 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'c427cd7a-6efc-4a53-b3bf-7ea9c1853d68', 780643, 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'products', 3, 'image/jpeg', '2020-05-18 10:05:11', '2020-05-18 10:05:11'),
('843a0084-44d0-4d42-9832-3738d0787cb6', '6d6319ba-5e1d-411a-b601-43dc056d923a', '1a95336e-1f29-403e-a8dc-6c3f6d587798', 119432, '6d6319ba-5e1d-411a-b601-43dc056d923a', 'products', 1, 'image/jpeg', '2020-01-06 12:56:48', '2020-01-06 12:56:48'),
('853441e0-46ec-44fe-81e1-69afe1545457', '169116c8-38d8-4b38-83a9-ab0a688cd893', '378e18d3-a5ef-4424-8b8e-5761dafbb79b', 1117438, '169116c8-38d8-4b38-83a9-ab0a688cd893', 'products', 1, 'image/jpeg', '2020-05-09 06:39:43', '2020-05-09 06:39:43'),
('867776fb-714d-4b4f-b3cb-b5e42ca49c4b', 'e601b6c4-64e4-4b04-9ea3-c844783e4b07', '018a55c8-3404-4c69-bcce-e03acec3ed6c', 60184, 'e601b6c4-64e4-4b04-9ea3-c844783e4b07', 'products', 1, 'image/jpeg', '2020-01-17 11:38:17', '2020-01-17 11:38:17'),
('86eadeb7-84bb-4d1a-840e-6843b1ee0e50', 'dc7545b7-1956-4ad4-9ccd-5999617e8514', 'f9e85536-0916-482b-8800-894d1198d047', 205021, 'dc7545b7-1956-4ad4-9ccd-5999617e8514', 'products', 2, 'image/jpeg', '2020-05-02 08:48:22', '2020-05-02 08:48:22'),
('8710ad53-df31-4586-857a-4793d8e37a32', 'c6e55782-52a9-43ca-bc50-b3db46feec27', '81960128-4741-4bfd-b967-3cc99dc8d3e7', 157695, 'c6e55782-52a9-43ca-bc50-b3db46feec27', 'products', 2, 'image/jpeg', '2020-04-30 06:45:36', '2020-04-30 06:45:36'),
('872094f2-f70c-48f1-977a-46f55a500bd2', 'd65d7783-4f14-47a6-b19c-03ec4625c84d', 'df646823-7980-4163-ab4a-69a51d5a92ad', 246517, 'd65d7783-4f14-47a6-b19c-03ec4625c84d', 'products', 2, 'image/jpeg', '2020-04-30 06:14:02', '2020-04-30 06:14:02'),
('878230e0-c837-4477-aad9-c7ed1b8ca8ab', '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'c44560bb-de76-427a-9b81-459155470138', 627313, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 2, 'image/jpeg', '2020-05-07 08:07:05', '2020-05-07 08:07:05'),
('87c389e7-3aea-40e6-bb3a-959b71e9c5b1', 'e0979005-1c1d-4f6e-af4e-751197311a4f', 'a460a1a2-4a02-40ef-918c-4311b7b50ae2', 591778, 'e0979005-1c1d-4f6e-af4e-751197311a4f', 'products', 2, 'image/jpeg', '2020-05-05 13:03:03', '2020-05-05 13:03:03'),
('87d791f2-0f01-4ff7-9668-c3a5e31a6209', '4792875c-1ad5-4612-b71a-3c496de38397', '93942f72-1844-40d3-8783-0a1f773d9022', 875814, '4792875c-1ad5-4612-b71a-3c496de38397', 'products', 1, 'image/jpeg', '2020-05-02 11:44:03', '2020-05-02 11:44:03'),
('8808b546-4046-4dfa-b458-bf8a6369f7e2', '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', '336f99ee-47d4-4d7d-9872-af1a35fe98ab', 1196963, '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', 'products', 3, 'image/jpeg', '2020-05-17 03:30:46', '2020-05-17 03:30:46'),
('887f43d5-345b-4820-91d9-eabe88f228a5', '1a9c2401-f226-4ed0-89d5-c554790538b9', 'aab7be95-b4e0-427e-a200-3ccc469aac8e', 1011472, '1a9c2401-f226-4ed0-89d5-c554790538b9', 'products', 3, 'image/jpeg', '2020-05-05 13:13:05', '2020-05-05 13:13:05'),
('88a709e4-a95e-48f5-94fd-0fe3eb035bc7', '79e20b1a-804f-49b1-93ec-d1debd3bb711', 'b0d5a8dc-0d12-4204-941e-7fc113e213d1', 583789, '79e20b1a-804f-49b1-93ec-d1debd3bb711', 'products', 1, 'image/jpeg', '2020-01-01 18:13:22', '2020-01-01 18:13:22'),
('891fdd05-baba-4900-93cc-e05c8a0738dd', '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', '1a2b232e-511a-4618-a465-eb3ab98873b5', 208223, '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', 'products', 2, 'image/jpeg', '2020-04-30 07:14:12', '2020-04-30 07:14:12'),
('8960ca6d-fb48-43e7-9049-cea18941df26', '24867dec-71e4-4ac1-ac12-dd990d10c448', '4bc14673-be72-412d-b709-ec2262ab06f5', 281597, '24867dec-71e4-4ac1-ac12-dd990d10c448', 'products', 1, 'image/jpeg', '2020-01-06 13:02:54', '2020-01-06 13:02:54'),
('898864ac-06aa-419c-ae5a-33c6ca671512', '2640e641-b243-485c-b702-f0b772b351d6', '1699ba89-88e4-410a-b49f-898e5e7e1e7d', 813090, '2640e641-b243-485c-b702-f0b772b351d6', 'products', 2, 'image/jpeg', '2020-05-05 06:10:14', '2020-05-05 06:10:14'),
('89bad531-1e3e-412d-8f03-73256b45574c', '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', 'c3254e49-d3a6-439b-9fd5-f048aed22555', 255368, '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', 'products', 1, 'image/jpeg', '2020-04-30 08:17:33', '2020-04-30 08:17:33'),
('8a60e657-0a23-48c5-8260-967b192bc710', '58199611-dc27-4035-add1-1a064cdce703', 'eb23655a-bbe2-48ec-aa66-414ce82d9610', 88400, '58199611-dc27-4035-add1-1a064cdce703', 'products', 3, 'image/jpeg', '2020-01-17 15:31:24', '2020-01-17 15:31:24'),
('8a9417e2-0ce1-4007-90ac-3dd4bba10c92', '303dde82-68d5-4b0e-91a6-c762ca87ee8a', '940b2803-b720-489f-9795-e6b3e2d20244', 936130, '303dde82-68d5-4b0e-91a6-c762ca87ee8a', 'products', 2, 'image/jpeg', '2020-05-03 10:50:33', '2020-05-03 10:50:33'),
('8aaedaa4-2869-403d-83be-55eef7f2f44e', 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'a3ce973c-173d-4f35-8420-7e0c282ed82b', 750140, 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'products', 2, 'image/jpeg', '2020-05-17 03:50:37', '2020-05-17 03:50:37'),
('8af8c739-d163-4018-b741-ef26badc5a10', '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', '0f2a8525-a378-47ea-be14-74a3507a2759', 929110, '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', 'products', 2, 'image/jpeg', '2020-05-16 08:59:07', '2020-05-16 08:59:07'),
('8aff451b-f350-4e00-b70e-96490e873551', 'c9cca7ed-e714-4966-bdd2-186aa79d2843', 'c4a0abb3-5b93-4495-a2dc-9177d232d397', 158550, 'c9cca7ed-e714-4966-bdd2-186aa79d2843', 'products', 1, 'image/jpeg', '2020-04-30 08:35:00', '2020-04-30 08:35:00'),
('8b1d0531-1e00-4823-8830-85463d10a627', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'cc89b292-99f6-4878-8962-e37c5a0ae5e4', 627213, 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'products', 1, 'image/jpeg', '2020-01-01 18:15:09', '2020-01-01 18:15:09'),
('8b354b82-0fe3-476c-a21d-bb733770025d', 'ffc96b35-417c-48b7-9edc-d17de49ff64b', '897c7d62-6d59-43f7-9484-a1404f47aa64', 601321, 'ffc96b35-417c-48b7-9edc-d17de49ff64b', 'products', 3, 'image/jpeg', '2020-05-17 03:39:38', '2020-05-17 03:39:38'),
('8bb4b4ca-0c0d-4240-a25b-0ced412edf47', '52726cbf-bd2f-4bf4-89e4-d7aa9e3bf281', 'a692185e-f474-462b-8e6d-36730ff74d8c', 64550, '52726cbf-bd2f-4bf4-89e4-d7aa9e3bf281', 'products', 1, 'image/jpeg', '2020-01-17 16:30:19', '2020-01-17 16:30:19'),
('8bdde768-8140-4eec-b1c3-b464becb6204', '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', '1f441385-9e06-496f-b7ca-d3364333eec3', 958752, '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', 'products', 3, 'image/jpeg', '2020-05-05 06:12:37', '2020-05-05 06:12:37'),
('8c23bb0d-b31e-4500-8580-606d3738f96f', '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'fa5e4e2e-586d-4b37-92be-01649ad0d75e', 1146699, '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'products', 1, 'image/jpeg', '2020-05-17 03:54:14', '2020-05-17 03:54:14'),
('8c23c7be-7847-42d9-81bd-97a90fc406b1', '0995c9ce-0b28-4233-9c1f-69c4a90fd6c9', '90dd7568-4108-479b-a06e-ff4285f71199', 104373, '0995c9ce-0b28-4233-9c1f-69c4a90fd6c9', 'products', 1, 'image/jpeg', '2020-01-17 16:08:54', '2020-01-17 16:08:54'),
('8c6e7304-140a-463d-a855-1112dc46fb3c', 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', '4a60ea41-c7db-4cdd-aa77-770e1d99c755', 2185114, 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', 'products', 3, 'image/jpeg', '2020-05-09 06:54:35', '2020-05-09 06:54:35'),
('8c7b0bb4-0a7c-4417-b375-d2fccdff721b', '9a539382-86dd-4ae8-96ba-23a582c339b6', 'a7cdb37e-d439-41ab-aee6-52f958c37bcf', 1368136, '9a539382-86dd-4ae8-96ba-23a582c339b6', 'products', 1, 'image/jpeg', '2020-05-09 06:48:49', '2020-05-09 06:48:49'),
('8c7ef436-abf7-4037-9faa-7d32b2237cbb', '81f43560-99ae-4400-b0b0-90e56821e24d', 'fff53b7a-a81f-4273-8c8f-798964c5d194', 1173546, '81f43560-99ae-4400-b0b0-90e56821e24d', 'products', 1, 'image/jpeg', '2020-05-10 07:15:54', '2020-05-10 07:15:54'),
('8d163bf6-e513-403b-b79a-70045357230d', '50e6e1e8-3ace-4174-8bd6-407771c89ade', '9f5ff935-c535-4f9f-8a58-d9dccac90fcc', 1370315, '50e6e1e8-3ace-4174-8bd6-407771c89ade', 'products', 3, 'image/jpeg', '2020-05-10 07:45:19', '2020-05-10 07:45:19'),
('8d618af6-7e8b-4309-bbda-38106a387fcf', '1c8d6194-3537-49a6-b3cd-4b48535d8fef', '867399be-2bdc-430f-8616-d460e4f4f3c9', 254049, '1c8d6194-3537-49a6-b3cd-4b48535d8fef', 'products', 3, 'image/jpeg', '2020-01-06 13:10:16', '2020-01-06 13:10:16'),
('8e19b36b-41c0-43b5-aa94-e57cd708edf4', '9a539382-86dd-4ae8-96ba-23a582c339b6', '315b2f36-bd93-4db9-99f2-7ee50f76a5bd', 1064041, '9a539382-86dd-4ae8-96ba-23a582c339b6', 'products', 2, 'image/jpeg', '2020-05-09 06:49:25', '2020-05-09 06:49:25'),
('8ed89da5-dc36-42fd-9958-b0dbcc1020de', '33a46083-d08e-40c1-aeb4-5f233410505b', '90645d34-43ae-4712-a948-c1e4f2f5c8ac', 110196, '33a46083-d08e-40c1-aeb4-5f233410505b', 'products', 2, 'image/jpeg', '2020-01-17 11:28:51', '2020-01-17 11:28:51'),
('8f145c2a-5c5e-414d-ba39-a7906e17f00c', 'a9e235c4-4b2c-45e6-8434-1d00b050b751', 'ecae10d6-464c-4aed-ae9d-589116b1f36b', 1211789, 'a9e235c4-4b2c-45e6-8434-1d00b050b751', 'products', 2, 'image/jpeg', '2020-05-07 08:00:07', '2020-05-07 08:00:07'),
('8f5cfaf8-c45e-451d-8de8-2c2e69c02973', '5b6fc59a-87df-4541-86ea-936494495353', '442b0f93-4e80-403f-b3a6-3ae337df2816', 818982, '5b6fc59a-87df-4541-86ea-936494495353', 'products', 1, 'image/jpeg', '2020-05-10 04:05:29', '2020-05-10 04:05:29'),
('8f6fe99b-266f-4fc4-9bc8-37701c9fcdd0', '3763857e-5c54-482b-b047-069e4de044b4', 'aaf3effb-e76d-4ce2-82ec-5e5a847a6684', 687318, '3763857e-5c54-482b-b047-069e4de044b4', 'products', 6, 'image/jpeg', '2020-05-12 08:17:59', '2020-05-12 08:17:59'),
('9025abca-a53d-47a6-81fa-88c50ab50125', '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', 'b535db99-e76b-476c-8155-5fe1b8bb6983', 199024, '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', 'products', 2, 'image/jpeg', '2020-04-30 08:18:55', '2020-04-30 08:18:55'),
('9166ae61-1f0d-4fca-b4b8-3c59538e39ca', 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', 'a4930c62-c984-468d-9a37-e08cb28d7d44', 1105776, 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', 'products', 1, 'image/jpeg', '2020-05-07 07:20:38', '2020-05-07 07:20:38'),
('92002699-0c88-4600-a670-465f3e1c6f41', '31b75241-9251-4385-ba22-be17c0759e53', '2b13f19e-ec50-4860-b746-02136e2ae4c5', 714335, '31b75241-9251-4385-ba22-be17c0759e53', 'products', 1, 'image/jpeg', '2020-05-03 09:06:58', '2020-05-03 09:06:58'),
('921fb554-02ed-445a-b01d-d03eb5cd758f', 'e1c1a230-8360-49e0-97d3-cfa6cb979301', 'a7017115-6de4-426a-b657-9c34fb141d71', 149071, 'e1c1a230-8360-49e0-97d3-cfa6cb979301', 'products', 1, 'image/jpeg', '2020-04-30 06:07:25', '2020-04-30 06:07:25'),
('928f830d-9044-4d41-9f84-5a3c8c4dc787', 'c502f0bd-5200-491c-ba49-655b747a436f', '0d4aeaa4-81a6-4042-99e2-605624454f48', 696398, 'c502f0bd-5200-491c-ba49-655b747a436f', 'products', 2, 'image/jpeg', '2020-05-07 08:24:09', '2020-05-07 08:24:09'),
('92afc671-576a-40f2-a77c-a4b59c3e1389', '8884d091-8a7d-4639-82a3-f9a4986b809b', 'c0cf80d6-d8cb-4ddf-951a-045165a5ad87', 1337814, '8884d091-8a7d-4639-82a3-f9a4986b809b', 'products', 2, 'image/jpeg', '2020-05-07 07:01:56', '2020-05-07 07:01:56'),
('9381edc9-fd1b-44e1-a58a-cf667a0b325d', '636ceb9d-74b2-4f71-befa-41289b12ffbd', 'ce063df3-ec4d-441f-a5e7-cfbe58542f1a', 66800, '636ceb9d-74b2-4f71-befa-41289b12ffbd', 'products', 3, 'image/jpeg', '2020-01-17 11:36:30', '2020-01-17 11:36:30'),
('93c984e3-7cc7-49d9-8410-58f55362cea2', '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', '85f9d26f-4c39-47e2-a5b6-7a72d0b6a98f', 794105, '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', 'products', 3, 'image/jpeg', '2020-05-07 08:58:54', '2020-05-07 08:58:54'),
('94a8cc8a-db87-41dc-b6ee-bc7e0b6b52b3', 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', '8ed7267e-13cb-4562-89e5-567287c07cc4', 646025, 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'products', 2, 'image/jpeg', '2020-05-10 08:21:23', '2020-05-10 08:21:23'),
('94d6b016-0540-4e1a-b907-be93ec03ebb5', '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', '5967b325-0ae2-4811-aac6-f7b8f817d90a', 132066, '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', 'products', 1, 'image/jpeg', '2020-01-17 15:34:07', '2020-01-17 15:34:07'),
('95896cbe-4d9b-4a4a-a428-efa99eacb14b', '36739c31-df65-4074-8702-25e2ed4fdc96', '27534bb2-ee76-420a-888b-f91281568ced', 1120877, '36739c31-df65-4074-8702-25e2ed4fdc96', 'products', 2, 'image/jpeg', '2020-05-07 08:11:39', '2020-05-07 08:11:39'),
('95ef0657-5c84-4325-9e20-0d1218242f7f', '1ee26549-f1f1-49b5-ac17-c8201275da91', '832e3d3e-b8d0-4c34-bc5b-bd711767a580', 127150, '1ee26549-f1f1-49b5-ac17-c8201275da91', 'products', 3, 'image/jpeg', '2020-04-30 08:29:15', '2020-04-30 08:29:15'),
('965e3e83-db84-4dcb-9f0b-fb251612b62e', '4f7d33dc-824e-48b1-9804-f8412c256f95', 'd35a31ea-60bc-47b7-a544-fecf5836f9f4', 301727, '4f7d33dc-824e-48b1-9804-f8412c256f95', 'products', 2, 'image/jpeg', '2019-12-31 16:27:07', '2019-12-31 16:27:07'),
('96b65d87-8d25-4360-b060-aeb6c01feb23', '3935dd8a-36da-4aed-b1e5-09bea808d97b', '55c12e05-a2d0-4a83-8290-d0ba53531376', 857805, '3935dd8a-36da-4aed-b1e5-09bea808d97b', 'products', 2, 'image/jpeg', '2020-05-17 04:01:39', '2020-05-17 04:01:39'),
('9735e7d4-404e-4261-8290-428847596112', 'a4509384-44ec-40d7-ad6d-4c86fc167bb3', 'dbda7740-3790-46e6-9b33-c3bbdaca4726', 1324065, 'a4509384-44ec-40d7-ad6d-4c86fc167bb3', 'products', 1, 'image/jpeg', '2020-05-09 06:57:23', '2020-05-09 06:57:23'),
('9776433f-52ba-4fb4-beee-4d787ab0fb88', '7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'a1506385-879e-4cdf-ac4e-6cdc01840dbd', 348503, '7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'products', 3, 'image/jpeg', '2020-05-02 11:27:35', '2020-05-02 11:27:35'),
('9a46e4a0-4834-4d8e-9c97-6e7b6057608e', 'fd975715-d4e6-49e1-abc8-d4d2be527216', '11b7647c-3962-4f9e-bc53-6e55eb615efa', 166714, 'fd975715-d4e6-49e1-abc8-d4d2be527216', 'products', 2, 'image/jpeg', '2020-04-30 06:17:27', '2020-04-30 06:17:27'),
('9a73a7d7-68c7-4ea4-9bae-829b454eaac2', '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', '03e78d6f-a754-493d-9ef6-bb619134e873', 196472, '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', 'products', 3, 'image/jpeg', '2020-04-30 10:26:27', '2020-04-30 10:26:27'),
('9a9426d1-3e1e-4717-b00f-c89c5babc217', 'cd8261f8-30e0-46dc-9182-dc28d4ff1471', 'bfecc359-6d30-4489-88d6-c3c22d63ca67', 493330, 'cd8261f8-30e0-46dc-9182-dc28d4ff1471', 'products', 2, 'image/jpeg', '2020-01-01 18:19:44', '2020-01-01 18:19:44'),
('9afb41c3-6ac0-4b9e-a2e1-fda8b2daefb3', '98131462-ad96-475b-a2a2-91bd316f1cf8', '1e76153d-77a0-45a8-9971-7f0f02a27ffd', 736649, '98131462-ad96-475b-a2a2-91bd316f1cf8', 'products', 3, 'image/jpeg', '2020-05-10 08:24:22', '2020-05-10 08:24:22'),
('9b402f04-c499-43a8-b0ce-7eaed870fa42', '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', '2049b0ed-e1ed-48d5-ad6c-c2a55f24f3b2', 105384, '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', 'products', 4, 'image/jpeg', '2020-01-17 11:21:32', '2020-01-17 11:21:32'),
('9bad0b8e-d2b6-40eb-b4a5-32c35aae4580', '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', 'e3b6b1cd-a6d4-4f79-8983-f2002b29623a', 607121, '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', 'products', 2, 'image/jpeg', '2020-05-07 07:53:32', '2020-05-07 07:53:32'),
('9c6149ec-23ad-4353-b370-e56f0468f7af', '0ac41846-a548-4365-8e6b-504f8ca0bd63', 'eb0e9417-7feb-4534-90e6-908c387670be', 2102225, '0ac41846-a548-4365-8e6b-504f8ca0bd63', 'products', 1, 'image/jpeg', '2019-12-31 16:20:35', '2019-12-31 16:20:35'),
('9cfda2d6-a540-4ad7-92d6-db8e32ba7bef', 'c9540286-873d-43e1-a079-13ce643c2919', '9bfee87d-078c-47be-9ea2-10e18b03a798', 201353, 'c9540286-873d-43e1-a079-13ce643c2919', 'products', 1, 'image/jpeg', '2020-05-02 08:09:36', '2020-05-02 08:09:36'),
('9d1ec08b-903f-409d-9a8f-43b99c0acc2b', '5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', '16c02d98-13e4-4ad2-96da-b93309c9e5d3', 504425, '5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', 'products', 2, 'image/jpeg', '2020-05-02 11:53:04', '2020-05-02 11:53:04'),
('9daeca8f-fa23-4721-85bf-c069067f2edb', '7ff9deac-b994-43dd-99cc-597e9a606029', 'ccc3ccd6-7523-43c0-a48a-3053fe307051', 109958, '7ff9deac-b994-43dd-99cc-597e9a606029', 'products', 2, 'image/jpeg', '2020-01-17 16:13:41', '2020-01-17 16:13:41'),
('9e13bf88-52f2-451e-a13c-6930bf3c0497', 'c6e55782-52a9-43ca-bc50-b3db46feec27', '8ee3b64e-9974-48da-b314-fbb1ad599aa0', 95828, 'c6e55782-52a9-43ca-bc50-b3db46feec27', 'products', 1, 'image/jpeg', '2020-04-30 06:45:24', '2020-04-30 06:45:24'),
('9e959786-1595-41a5-ad6c-79109e1afc8d', 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', '331f7a5f-961f-45aa-8644-bc8672c0d520', 68829, 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', 'products', 2, 'image/jpeg', '2020-04-30 10:28:17', '2020-04-30 10:28:17'),
('9ef02923-afd9-4ee7-9986-21e1633cd236', '19b422b7-3f57-4914-967d-3c939a44eaaf', 'b833338a-d593-4a63-ad24-5feb8102b35d', 1487227, '19b422b7-3f57-4914-967d-3c939a44eaaf', 'products', 2, 'image/jpeg', '2020-05-10 04:17:41', '2020-05-10 04:17:41'),
('9f7513ae-c85f-44fd-b30c-c428cdcc1aa4', 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', 'b1aac5e9-cd23-4844-b463-60b586b9205b', 1257137, 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', 'products', 4, 'image/jpeg', '2020-05-07 08:39:19', '2020-05-07 08:39:19'),
('9f8cab84-62e6-4502-bc7f-1c36c80f91ad', '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', 'dd86ac5a-79b0-41e2-b545-215e3f7f6d91', 87741, '1e3dcb7a-299b-4ef7-97ad-fb497d2c0d9f', 'products', 2, 'image/jpeg', '2020-01-17 11:48:12', '2020-01-17 11:48:12'),
('9ff5ed2f-e265-4725-a27d-c3d1fafc9928', 'e3c4181b-dbc3-4972-8190-09dff13a6624', '4a0a259d-f52e-4c36-a487-e8307bf0af52', 88031, 'e3c4181b-dbc3-4972-8190-09dff13a6624', 'products', 1, 'image/jpeg', '2020-01-17 16:10:43', '2020-01-17 16:10:43'),
('a0725536-9f67-4c65-a490-73b8a0acf944', '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', '66291cc6-480d-4ea9-b3f7-2cdefb544a45', 99352, '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', 'products', 2, 'image/jpeg', '2020-01-17 15:34:26', '2020-01-17 15:34:26'),
('a115e3fc-8318-4543-a4d1-cb5b39504062', 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', '52e48cd6-5de3-4e64-afa3-426822946577', 73763, 'b1e54f79-5fa6-49d1-9aba-8daae2ef70b9', 'products', 3, 'image/jpeg', '2020-01-17 16:32:57', '2020-01-17 16:32:57'),
('a167b9c5-ff0b-48c0-8a48-009d5642b2a5', 'c9540286-873d-43e1-a079-13ce643c2919', 'a3576957-c93c-4cc2-aed3-e24068da2d1d', 155475, 'c9540286-873d-43e1-a079-13ce643c2919', 'products', 3, 'image/jpeg', '2020-05-02 08:13:23', '2020-05-02 08:13:23'),
('a224adea-b073-44d1-bdd7-d47ceceb8c54', '2ae34c8d-8b3e-4638-a7f0-5580326064f1', '7a103382-e3bd-406e-9f27-32e69151d9db', 790771, '2ae34c8d-8b3e-4638-a7f0-5580326064f1', 'products', 2, 'image/jpeg', '2020-05-17 04:07:37', '2020-05-17 04:07:37'),
('a2495a0a-551e-4960-93b9-73366e42e914', 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'c72b0ccb-d6ef-4d41-98e6-2e32eba0d105', 780643, 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'products', 4, 'image/jpeg', '2020-05-18 10:05:13', '2020-05-18 10:05:13'),
('a262f42f-aefa-4ad8-99b9-5f17790a68f9', 'e1493eee-f61a-4653-9a81-d067f4df91bb', '36bde76b-c071-44c9-969f-8bf6318647dc', 327334, 'e1493eee-f61a-4653-9a81-d067f4df91bb', 'products', 2, 'image/jpeg', '2020-05-02 08:33:53', '2020-05-02 08:33:53'),
('a2cd9094-2660-43b6-994f-bca696d662b9', '957372ca-bc82-4db4-8ab0-37a94a5d33b6', '74e8fc70-ec38-4d8e-8752-6ae52d6c6cfd', 2305297, '957372ca-bc82-4db4-8ab0-37a94a5d33b6', 'products', 3, 'image/jpeg', '2020-05-10 04:11:54', '2020-05-10 04:11:54'),
('a30d5f06-a0fc-4ba9-8e5e-dd5400d62757', '49c6d0cd-f075-4575-9b9a-17db940dc1f5', '6b3b3d94-62de-4a8f-9069-587f06ab0f7c', 189470, '49c6d0cd-f075-4575-9b9a-17db940dc1f5', 'products', 1, 'image/jpeg', '2020-04-30 08:09:38', '2020-04-30 08:09:38'),
('a34e32f6-1bbc-47b8-91c5-0a7258a77341', '665d0a19-884e-441a-a372-453a37781a7f', 'c7df1bf3-8b6b-4e72-8064-7638205b677a', 739647, '665d0a19-884e-441a-a372-453a37781a7f', 'products', 1, 'image/jpeg', '2020-05-05 06:59:14', '2020-05-05 06:59:14');
INSERT INTO `product_images` (`id`, `product_id`, `file_name`, `file_size`, `file_path`, `disk`, `order_column`, `mime_type`, `created_at`, `updated_at`) VALUES
('a38dbe7f-5b43-4142-b93b-1684dec6f1bc', '947fecec-159c-4621-b460-7f302adc9c88', 'cc1e0879-48c0-4306-a3b2-7a741d2389ae', 352659, '947fecec-159c-4621-b460-7f302adc9c88', 'products', 1, 'image/jpeg', '2020-05-05 07:55:17', '2020-05-05 07:55:17'),
('a40210a4-5644-48ab-94a0-6b04f7a6649f', '1a9c2401-f226-4ed0-89d5-c554790538b9', 'e314502f-72d8-4c20-9556-10969dae2866', 2331298, '1a9c2401-f226-4ed0-89d5-c554790538b9', 'products', 2, 'image/jpeg', '2020-05-05 13:12:34', '2020-05-05 13:12:34'),
('a435b885-dece-417e-b3db-96f11acf7e74', 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', '2f126035-2cb8-4641-afb6-320870a8c18b', 184896, 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', 'products', 2, 'image/jpeg', '2020-05-02 08:41:32', '2020-05-02 08:41:32'),
('a488abfe-de11-4a32-b68f-f7a5fc2f23c6', '0ac41846-a548-4365-8e6b-504f8ca0bd63', '53dd2535-36da-4ffc-bec6-247aef4bc786', 1785752, '0ac41846-a548-4365-8e6b-504f8ca0bd63', 'products', 3, 'image/jpeg', '2019-12-31 16:21:39', '2019-12-31 16:21:39'),
('a4e69103-8663-45ff-8035-0d917337d828', '31cee6e1-7b69-4a85-b244-ecea1649d3d2', 'd734f969-f35b-41fe-9192-03f31e6a0382', 1633142, '31cee6e1-7b69-4a85-b244-ecea1649d3d2', 'products', 3, 'image/jpeg', '2020-05-10 04:03:51', '2020-05-10 04:03:51'),
('a63af78f-db8f-496b-84c5-78e46b4ab485', 'b830b3da-e5ee-406e-bef1-360f2b196f45', 'cbd373da-b638-4a6d-b55c-7ae41fc6dc80', 1262989, 'b830b3da-e5ee-406e-bef1-360f2b196f45', 'products', 3, 'image/jpeg', '2020-05-07 07:16:22', '2020-05-07 07:16:22'),
('a68b8372-4134-41ff-86a1-4b6e3ff2d3c5', '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', 'c51f846d-f941-413a-b3ff-f57c76ba06ad', 412375, '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', 'products', 1, 'image/jpeg', '2020-05-06 04:49:03', '2020-05-06 04:49:03'),
('a6f46569-1210-4adb-8747-2478233e7fc0', 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', '46c22bd7-535f-4c7b-896e-d5c6bf2ddc1f', 151142, 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', 'products', 2, 'image/jpeg', '2020-04-30 07:39:14', '2020-04-30 07:39:14'),
('a712f401-5091-452e-8907-ae75250de930', '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', '894701a9-db39-44ab-8c15-eb5aff1ce9de', 115084, '9e563fdc-9e3b-488e-a97f-f0a96d1e83f9', 'products', 3, 'image/jpeg', '2020-01-17 15:34:39', '2020-01-17 15:34:39'),
('a7547935-765a-4b04-a0b8-d85de9cdfb96', 'e1493eee-f61a-4653-9a81-d067f4df91bb', '3dbd4fc5-ab70-49f1-8697-ab566014ea91', 391041, 'e1493eee-f61a-4653-9a81-d067f4df91bb', 'products', 1, 'image/jpeg', '2020-05-02 08:33:27', '2020-05-02 08:33:27'),
('a8962d64-e2cc-48a5-94c8-4af4a9e243cf', '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', '0d2f819c-fb3b-4216-8ba0-1af069667d18', 201301, '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', 'products', 3, 'image/jpeg', '2020-04-30 07:14:29', '2020-04-30 07:14:29'),
('a8f82fe8-8aba-467d-86a0-8e5f2572f3ba', 'a85f48ec-fe2b-431b-9df5-62b40683819c', '85c8f1bb-4f67-4522-8c2b-f9e100d2771c', 1025819, 'a85f48ec-fe2b-431b-9df5-62b40683819c', 'products', 3, 'image/jpeg', '2020-05-17 04:03:55', '2020-05-17 04:03:55'),
('a907f2e0-b6d5-4990-8b6f-a3ccc1b35c62', 'c4b24811-34ce-48ec-85a7-10f572cdeada', 'ec0e1529-d339-4c09-849b-37f0bb2e7b61', 89914, 'c4b24811-34ce-48ec-85a7-10f572cdeada', 'products', 2, 'image/jpeg', '2020-01-17 21:50:26', '2020-01-17 21:50:26'),
('a952c15d-a535-4500-bd89-051163987fc3', 'a5df16b6-24b1-4fc3-838a-955679b5d993', 'cd63e012-5024-44bd-b460-60593f728487', 45129, 'a5df16b6-24b1-4fc3-838a-955679b5d993', 'products', 1, 'image/jpeg', '2020-01-06 12:45:50', '2020-01-06 12:45:50'),
('aa2c3a4d-de35-41ca-bc32-35d41d1516ec', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'ed5244bc-7560-4acd-8d9f-62bd5c153608', 1193761, '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'products', 5, 'image/jpeg', '2020-05-12 08:21:10', '2020-05-12 08:21:10'),
('aa6f12a9-48ab-4f59-8963-aec6c3260833', '05289ec9-bd78-4106-921b-f4ca2b75b11c', '2ba9cc4f-fb2b-4121-81a0-6ccf87e2ae92', 679817, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 3, 'image/jpeg', '2020-05-07 08:08:07', '2020-05-07 08:08:07'),
('aa950f82-a8bc-4ea9-a818-efe1217b2be2', '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', '8fd79718-c820-4ff2-94f0-24e77f1c04e0', 736686, '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', 'products', 3, 'image/jpeg', '2020-05-17 03:38:43', '2020-05-17 03:38:43'),
('ab9f43d2-48b8-478a-af28-b2a718d6270c', '69a1aa46-5d33-4451-bb02-2f5eccb39c99', '706e7b7c-c883-4a8e-a124-424a069528c7', 764887, '69a1aa46-5d33-4451-bb02-2f5eccb39c99', 'products', 1, 'image/jpeg', '2020-05-05 07:08:53', '2020-05-05 07:08:53'),
('ac897e81-5953-4deb-9e0a-f6b2241affc3', '34f870c8-ca51-4ec5-98ba-34241a46a923', '41f8d5ac-0c4e-4e0e-a4d8-2d27e55f5344', 79771, '34f870c8-ca51-4ec5-98ba-34241a46a923', 'products', 1, 'image/jpeg', '2020-01-06 09:25:28', '2020-01-06 09:25:28'),
('acaf75ed-6abe-48a8-a989-9e87da609e07', 'b6ec513b-35f3-4dd0-a408-81a0a4778304', 'fd62d16c-2337-4c1f-b64b-5d949e9627a5', 1449939, 'b6ec513b-35f3-4dd0-a408-81a0a4778304', 'products', 1, 'image/jpeg', '2020-05-05 13:18:50', '2020-05-05 13:18:50'),
('acddbba1-0d43-4aa2-a8e2-993c599b29b1', '169116c8-38d8-4b38-83a9-ab0a688cd893', '68c51dc8-77e0-430e-b650-5d8ac16b2881', 2137320, '169116c8-38d8-4b38-83a9-ab0a688cd893', 'products', 3, 'image/jpeg', '2020-05-09 06:44:01', '2020-05-09 06:44:01'),
('ad1ac6a3-821c-4a5f-bcf9-926300c57dfb', '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', '068e8cac-7eeb-4194-9bff-e3f2743ede26', 779842, '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', 'products', 2, 'image/jpeg', '2020-01-01 18:18:13', '2020-01-01 18:18:13'),
('ad299f32-2734-43c9-9b46-919054d4513c', '090b4afc-e646-4e02-8750-7dd52a83a406', 'c673c2b4-977d-4f8d-b2ec-3b8f911c10c3', 191602, '090b4afc-e646-4e02-8750-7dd52a83a406', 'products', 2, 'image/jpeg', '2020-05-02 08:26:12', '2020-05-02 08:26:12'),
('ad829e4d-5976-4d91-bae8-e619f9d6b798', 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', 'fcdff0d6-4fb6-493b-b0f0-9cdf95c12640', 806830, 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', 'products', 3, 'image/jpeg', '2020-05-14 06:02:30', '2020-05-14 06:02:30'),
('adadd840-de66-4dc0-a258-8bccad0d64cd', 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', 'f8cf81ce-a1b7-4766-a54d-51bc05343091', 1599949, 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', 'products', 3, 'image/jpeg', '2020-05-09 07:01:05', '2020-05-09 07:01:05'),
('addb7996-cb8f-4ce9-863c-a125fa7f7509', '98131462-ad96-475b-a2a2-91bd316f1cf8', 'e7cbca07-3b3b-4f77-b1a6-fbd3e39315e2', 936433, '98131462-ad96-475b-a2a2-91bd316f1cf8', 'products', 2, 'image/jpeg', '2020-05-10 08:24:06', '2020-05-10 08:24:06'),
('ae0da281-6cd4-4386-88ca-a88b07f4934b', '864280c6-39db-4f3f-a13e-1315510b175d', '3b4b8dcf-d5b6-4f37-8da7-59cf227afc22', 1116795, '864280c6-39db-4f3f-a13e-1315510b175d', 'products', 2, 'image/jpeg', '2020-05-10 08:14:10', '2020-05-10 08:14:10'),
('aec5f723-9ff7-490a-8499-155f3893a5cf', 'e3c4181b-dbc3-4972-8190-09dff13a6624', '5e9e1141-954a-4720-aa08-6965170a862c', 76751, 'e3c4181b-dbc3-4972-8190-09dff13a6624', 'products', 3, 'image/jpeg', '2020-01-17 16:11:00', '2020-01-17 16:11:00'),
('af09f073-8844-4fcb-90ae-e0796a1b762c', '40fbf77a-2aa0-4d74-b3f4-eebe720d0291', '7553bc28-ab27-46e3-b215-e67c8edf5e96', 423352, '40fbf77a-2aa0-4d74-b3f4-eebe720d0291', 'products', 1, 'image/jpeg', '2020-05-05 07:10:42', '2020-05-05 07:10:42'),
('af53277a-2319-4a1c-8833-166682020428', '1bec155a-4e94-4028-97fc-6a0aad0efa1b', '24903b1b-ba8e-4a57-b4b6-beb95d93aabb', 921437, '1bec155a-4e94-4028-97fc-6a0aad0efa1b', 'products', 2, 'image/jpeg', '2020-05-07 08:05:08', '2020-05-07 08:05:08'),
('afee1241-5f33-4ebc-a925-a2bb63c822f3', 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'b7c6fb9d-350c-4be2-8870-9159acc0b46a', 1526580, 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'products', 1, 'image/jpeg', '2020-05-17 03:49:55', '2020-05-17 03:49:55'),
('b01a771c-1223-40a6-80db-c43ee48e035d', '556f8d8e-a34b-4e6c-8f8b-a6f59b770d7d', '3fc0aac4-9ca9-4768-9e75-04af5a412073', 90342, '556f8d8e-a34b-4e6c-8f8b-a6f59b770d7d', 'products', 1, 'image/jpeg', '2020-01-17 16:18:07', '2020-01-17 16:18:07'),
('b02f4de3-33b9-4e35-b00a-8c91c2b51b25', '5b6fc59a-87df-4541-86ea-936494495353', 'ad9454e6-98f7-448c-a4e5-f0e6e722da40', 1430353, '5b6fc59a-87df-4541-86ea-936494495353', 'products', 3, 'image/jpeg', '2020-05-10 04:06:06', '2020-05-10 04:06:06'),
('b102c31a-bc7a-4b9f-ade7-e9f72a32da24', '8c0f6122-ca11-4263-bd35-e772e5732b7f', 'ce970618-af0a-4301-ba77-b8da36f8fa95', 133571, '8c0f6122-ca11-4263-bd35-e772e5732b7f', 'products', 1, 'image/jpeg', '2020-01-17 11:25:07', '2020-01-17 11:25:07'),
('b1d7c0bf-3264-4001-a982-de9c63ab4ffa', '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', '7e95824c-7158-4490-ba56-ef2e7c672392', 1173822, '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', 'products', 2, 'image/jpeg', '2020-05-07 06:45:06', '2020-05-07 06:45:06'),
('b29782dc-4e48-4dcb-a832-de4db45bfd6e', '38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', '569034b9-9c24-4ce9-8729-8885978b963b', 732376, '38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', 'products', 2, 'image/jpeg', '2020-05-07 06:41:22', '2020-05-07 06:41:22'),
('b3556738-e3b1-4103-b5e0-97f93014bdca', '5762df61-60b7-4196-9964-11caac2c2340', '115faeae-7f6f-441a-93dc-7b57c17bf07a', 494606, '5762df61-60b7-4196-9964-11caac2c2340', 'products', 1, 'image/jpeg', '2020-05-05 06:57:28', '2020-05-05 06:57:28'),
('b389be0a-e670-4fe9-a538-25ed47092320', '58199611-dc27-4035-add1-1a064cdce703', '853c61f3-27e0-4495-bc3a-2b937db62bf2', 89966, '58199611-dc27-4035-add1-1a064cdce703', 'products', 4, 'image/jpeg', '2020-01-17 15:31:46', '2020-01-17 15:31:46'),
('b3aa077a-a803-4822-88d7-d2e48d83d28d', '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'd1622877-beb4-4c87-b1b5-2af12b2866a4', 72935, '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'products', 3, 'image/jpeg', '2020-01-17 11:50:49', '2020-01-17 11:50:49'),
('b458da6f-3752-4236-94fd-e36bf9fb742b', 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'c486f4e5-6944-4ce2-a126-3d961633b7ad', 231316, 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'products', 1, 'image/jpeg', '2020-04-30 08:30:35', '2020-04-30 08:30:35'),
('b4963caa-1fa8-4c03-84cf-60ba7954c1c9', 'c6e55782-52a9-43ca-bc50-b3db46feec27', '944ab67e-e022-4145-a5cf-37842b6672f0', 77143, 'c6e55782-52a9-43ca-bc50-b3db46feec27', 'products', 3, 'image/jpeg', '2020-04-30 06:45:53', '2020-04-30 06:45:53'),
('b498f0d4-44d0-49ba-b12f-5a053e581222', 'ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', '1ffe1d80-5cac-4c8a-b962-f71ac6ab6d97', 903543, 'ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', 'products', 1, 'image/jpeg', '2020-05-03 10:52:25', '2020-05-03 10:52:25'),
('b49a0363-530a-4673-a9f9-2b9b45e26978', '2bf442bf-0f17-4c25-82eb-9ccf9755e384', '17bb3c7a-49af-4a7e-9344-d774df4a5b76', 71495, '2bf442bf-0f17-4c25-82eb-9ccf9755e384', 'products', 1, 'image/jpeg', '2020-01-17 21:46:40', '2020-01-17 21:46:40'),
('b5750236-980d-4bb6-9ac3-be613dc0fbc1', '4c4cb867-c912-46ce-9e1f-841212875509', 'cfaca96a-bba8-47b4-a031-6f7da0effb01', 147506, '4c4cb867-c912-46ce-9e1f-841212875509', 'products', 2, 'image/jpeg', '2020-04-30 06:54:44', '2020-04-30 06:54:44'),
('b58e47f8-05f2-489e-a8ce-458e69ba7a8e', 'b7bc4bcd-d9fe-4c68-b8b8-a727da75b480', '67bb7b05-d2f8-4916-8cef-d932b23fe714', 96616, 'b7bc4bcd-d9fe-4c68-b8b8-a727da75b480', 'products', 2, 'image/jpeg', '2020-01-17 15:38:38', '2020-01-17 15:38:38'),
('b5ddecfa-b369-4da1-9d77-528a2f6b9f67', 'fe95615a-ee34-4c2a-9869-fb251145a611', 'cd6b0fe6-e96d-4355-a810-40af33952c07', 159397, 'fe95615a-ee34-4c2a-9869-fb251145a611', 'products', 2, 'image/jpeg', '2020-04-30 10:27:20', '2020-04-30 10:27:20'),
('b646dcd0-1c49-4fdb-9913-54062ad05304', 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'b6709d94-ce51-449e-a691-ae66646c99fd', 824977, 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'products', 2, 'image/jpeg', '2020-05-10 08:10:33', '2020-05-10 08:10:33'),
('b666ed02-4d95-4327-8ade-d15cfb7ef6b3', '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'f27daef7-6434-4230-9407-094a254eebf7', 1818003, '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'products', 3, 'image/jpeg', '2020-05-10 04:01:27', '2020-05-10 04:01:27'),
('b6e8684f-ef78-49fb-8edd-39358d864239', 'a9375cce-6096-4f7e-a50b-a28b80708692', 'd0a210bd-2e46-4137-b79e-995c70f64370', 442806, 'a9375cce-6096-4f7e-a50b-a28b80708692', 'products', 2, 'image/jpeg', '2020-05-02 11:54:41', '2020-05-02 11:54:41'),
('b6f54981-fd88-4cf9-a7c4-196694f45313', '54dee241-c3bd-46b5-8a42-46dacfd56353', 'c7eb57dd-d3fc-4a21-9d43-aef58c3f3db8', 247777, '54dee241-c3bd-46b5-8a42-46dacfd56353', 'products', 1, 'image/jpeg', '2020-01-06 13:00:31', '2020-01-06 13:00:31'),
('b70efe8b-1d91-4ba5-a760-8d7a0754fa77', '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', '7b3a46b9-3405-4385-a904-c32f600d2743', 711696, '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', 'products', 1, 'image/jpeg', '2020-05-07 08:41:01', '2020-05-07 08:41:01'),
('b72e4edb-286d-4798-9320-0699b8f0166e', 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'f591048f-4363-4f69-a068-80b584ba5871', 723120, 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', 'products', 1, 'image/jpeg', '2020-05-07 06:55:24', '2020-05-07 06:55:24'),
('b7d3fa02-78b6-47d2-9913-b20cba709746', '2f01ac23-1cfa-436a-8e76-051e6ce244df', 'cd44c5b0-8401-49f9-a8b0-4c4c56ec44ab', 233371, '2f01ac23-1cfa-436a-8e76-051e6ce244df', 'products', 1, 'image/jpeg', '2020-01-06 13:06:05', '2020-01-06 13:06:05'),
('b7f6b8f3-a489-4bc9-8729-2a99d3c5a7c3', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'f000eb73-7c74-487c-9560-50aef2b37677', 202936, '91a6cce0-3037-4514-ae0b-462daa8c9391', 'products', 3, 'image/jpeg', '2020-01-06 13:19:38', '2020-01-06 13:19:38'),
('b8864b09-e4ac-466c-b970-fd248c0b13fe', 'f0924131-fda6-41f2-b2d0-157f1cbff499', 'a5b61782-769b-4d97-96fd-bb184c68f81f', 166686, 'f0924131-fda6-41f2-b2d0-157f1cbff499', 'products', 2, 'image/jpeg', '2020-01-06 12:48:23', '2020-01-06 12:48:23'),
('ba1c6a16-7dc6-41d6-8afb-3bdb3dfe0a00', 'ee3bf526-44ef-4b13-bb8e-40cb451fd461', '008f3478-c594-47eb-a10b-50152da5cfa6', 988620, 'ee3bf526-44ef-4b13-bb8e-40cb451fd461', 'products', 1, 'image/jpeg', '2020-05-10 03:54:49', '2020-05-10 03:54:49'),
('ba68dd26-4691-47eb-9030-3c8c00e8d81c', '1ee26549-f1f1-49b5-ac17-c8201275da91', '3892b523-ecec-4c11-a95d-d3ccbd469bdb', 152965, '1ee26549-f1f1-49b5-ac17-c8201275da91', 'products', 2, 'image/jpeg', '2020-04-30 08:28:49', '2020-04-30 08:28:49'),
('bae94d0e-7f0f-4aaa-bb67-79c3f3b30fde', 'a85f48ec-fe2b-431b-9df5-62b40683819c', 'ed83b0f5-16f5-4dff-bd89-3a9ece51ca38', 643437, 'a85f48ec-fe2b-431b-9df5-62b40683819c', 'products', 1, 'image/jpeg', '2020-05-17 04:03:11', '2020-05-17 04:03:11'),
('baf283a1-d70b-4677-b79c-177c46ab0632', '7c895e53-fadd-4114-8da9-9014af54fe3b', 'e342c8e6-6849-4625-85bb-90dbc962ca4e', 1036036, '7c895e53-fadd-4114-8da9-9014af54fe3b', 'products', 2, 'image/jpeg', '2020-05-10 08:08:10', '2020-05-10 08:08:10'),
('bb110199-4311-4a61-988e-a3a8f1e74961', 'fdd96c86-2239-424a-b464-9fea61adb143', '440ec198-478c-4022-9097-3c7faaf02606', 984701, 'fdd96c86-2239-424a-b464-9fea61adb143', 'products', 2, 'image/jpeg', '2020-05-07 07:07:31', '2020-05-07 07:07:31'),
('bb943bd0-6a5f-4b6b-90e1-ecc0acdda1a9', '5ffcb152-8438-4694-91d7-68cdff44b004', '07164f75-1c6c-4bc3-addf-e8564299d792', 349625, '5ffcb152-8438-4694-91d7-68cdff44b004', 'products', 3, 'image/jpeg', '2020-01-01 18:11:51', '2020-01-01 18:11:51'),
('bbc64a51-0999-4291-a42f-93fe28a82d65', '7ff9deac-b994-43dd-99cc-597e9a606029', '44e60616-87b3-47a7-911f-2eec56b4e1ab', 106180, '7ff9deac-b994-43dd-99cc-597e9a606029', 'products', 1, 'image/jpeg', '2020-01-17 16:13:06', '2020-01-17 16:13:06'),
('bbdd71db-85f6-4cb4-a7e1-ee7893513bb3', 'c9dbf748-7ea1-4673-b420-94f855ef3b74', '60112a3e-886b-44d0-8d40-f711d6a4ee34', 103160, 'c9dbf748-7ea1-4673-b420-94f855ef3b74', 'products', 2, 'image/jpeg', '2020-01-17 11:22:36', '2020-01-17 11:22:36'),
('bbec3d8b-b01b-41d3-8b61-b837cdac26e2', '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', '6587d415-b454-4976-9ecc-efa972568455', 1240378, '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', 'products', 2, 'image/jpeg', '2020-05-07 08:58:16', '2020-05-07 08:58:16'),
('bbec9cde-d20c-4dc2-920b-9ecb890003cb', 'efa2ff31-d489-4eca-b25a-f3ef3e9188a7', '964ff080-4fd8-4972-b6ea-072b4d425ade', 1687682, 'efa2ff31-d489-4eca-b25a-f3ef3e9188a7', 'products', 1, 'image/jpeg', '2020-05-10 04:07:59', '2020-05-10 04:07:59'),
('bd478cdb-f6d8-4408-93b5-9d26f9b9a158', '2031d27e-7b02-4114-b0e0-4269848f93ab', '4036f0db-67ab-4621-9719-7caaf44e2a2d', 421988, '2031d27e-7b02-4114-b0e0-4269848f93ab', 'products', 2, 'image/jpeg', '2020-05-05 07:18:05', '2020-05-05 07:18:05'),
('bd6fa978-42cc-47ca-ad08-3873ba6b04ca', '3935dd8a-36da-4aed-b1e5-09bea808d97b', 'a6b20243-248a-42f8-a7f1-363a9e9d2771', 849829, '3935dd8a-36da-4aed-b1e5-09bea808d97b', 'products', 3, 'image/jpeg', '2020-05-17 04:01:52', '2020-05-17 04:01:52'),
('bddf5899-3ce9-4e07-8d4a-e4edba942bf7', '99af2b1e-7a53-406f-a319-6cfefb628e77', '87cefba3-255e-417b-8134-341b70ce33d6', 1288597, '99af2b1e-7a53-406f-a319-6cfefb628e77', 'products', 1, 'image/jpeg', '2020-05-07 06:53:44', '2020-05-07 06:53:44'),
('be0acb6c-1bf2-4609-9871-877a59b4e251', '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', 'f7a9319d-70c8-44be-b13c-f0268309128f', 803070, '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', 'products', 1, 'image/jpeg', '2020-01-01 18:17:38', '2020-01-01 18:17:38'),
('be4b16fa-4ab4-46b9-8baf-3f5792f71067', 'a6759f65-8d0a-473b-8493-975bb824f960', 'cde67bb2-7d66-44f4-8859-f54ef2822c5d', 149358, 'a6759f65-8d0a-473b-8493-975bb824f960', 'products', 2, 'image/jpeg', '2020-01-17 11:31:34', '2020-01-17 11:31:34'),
('be601992-03fa-45e5-ab4a-5794ecafa6a9', '05289ec9-bd78-4106-921b-f4ca2b75b11c', '4ea2595b-1c0b-41d7-ad97-946706aec4c9', 70395, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 8, 'image/jpeg', '2020-05-31 15:00:49', '2020-05-31 15:00:49'),
('be7b0913-49fa-4149-b6da-5a75e3272493', '13c256a2-bf89-4990-933d-452199aff4b9', '5c5e7ad1-b907-4173-8f5c-aeb55e858ab3', 1217888, '13c256a2-bf89-4990-933d-452199aff4b9', 'products', 1, 'image/jpeg', '2020-05-09 06:35:05', '2020-05-09 06:35:05'),
('be9502d4-fc16-4add-b274-9d4a6a05e670', '21d6c0fb-99e0-4eab-a76e-959a17a98d98', 'dcd3df20-7ef8-402c-95b0-80a6c9ee25d1', 815622, '21d6c0fb-99e0-4eab-a76e-959a17a98d98', 'products', 2, 'image/jpeg', '2020-05-10 07:50:43', '2020-05-10 07:50:43'),
('be9c6b9e-8426-4351-807f-956f36980971', '91a6cce0-3037-4514-ae0b-462daa8c9391', '68654f44-efaf-4cb3-96f5-1aa26a64626b', 267108, '91a6cce0-3037-4514-ae0b-462daa8c9391', 'products', 4, 'image/jpeg', '2020-01-06 13:19:52', '2020-01-06 13:19:52'),
('bed81bc3-3980-4d07-9136-7756326eafcb', '9148de9e-73f2-42f8-aad8-98f1d469c566', '7c387193-c542-4349-ba90-943a0864d767', 489662, '9148de9e-73f2-42f8-aad8-98f1d469c566', 'products', 1, 'image/jpeg', '2020-05-02 11:47:12', '2020-05-02 11:47:12'),
('bf50cc25-4fe2-4717-b740-e4f3c635f80f', '83d9fc75-d190-4f33-8992-4ce45db55a3d', '80a77028-cd34-488b-b19e-7eb4c7732c04', 1372808, '83d9fc75-d190-4f33-8992-4ce45db55a3d', 'products', 2, 'image/jpeg', '2020-05-07 06:59:40', '2020-05-07 06:59:40'),
('bfa67d1c-de69-4a50-9eec-b83f240945cd', 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'ed49592e-afb8-411f-a0f0-97ba34eeeb5c', 141796, 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'products', 4, 'image/jpeg', '2020-04-30 08:31:44', '2020-04-30 08:31:44'),
('bfdef589-0359-48a4-bada-fe98e00613bf', '977f3b8a-862c-413d-89a6-8817b7143ac7', '59322f1b-05f2-472c-af01-98f21f331482', 1228979, '977f3b8a-862c-413d-89a6-8817b7143ac7', 'products', 1, 'image/jpeg', '2020-05-07 06:51:20', '2020-05-07 06:51:20'),
('c01a7e64-2499-458b-955e-1cdadb42055a', '5ffcb152-8438-4694-91d7-68cdff44b004', 'bad14414-9be6-4eb0-a748-ed0f9ebbdff5', 517770, '5ffcb152-8438-4694-91d7-68cdff44b004', 'products', 2, 'image/jpeg', '2020-01-01 18:11:30', '2020-01-01 18:11:30'),
('c09395bd-60cd-424a-af6f-da7f27c71836', 'a85f48ec-fe2b-431b-9df5-62b40683819c', '296aadf6-3ce8-431a-9203-1a9397121962', 536180, 'a85f48ec-fe2b-431b-9df5-62b40683819c', 'products', 2, 'image/jpeg', '2020-05-17 04:03:34', '2020-05-17 04:03:34'),
('c0d727bd-f697-4c24-b359-76baada948ad', 'fe57ee1c-a067-4a7b-b74d-bb594aed62b9', '5fc6be4c-ecb7-43b2-9596-415c8f8092dc', 1056428, 'fe57ee1c-a067-4a7b-b74d-bb594aed62b9', 'products', 1, 'image/jpeg', '2020-05-07 06:57:10', '2020-05-07 06:57:10'),
('c1a95f4f-7c54-48ce-aba8-c8c8adddfa0e', '21bf5879-06fb-4757-99b6-b2fac3925162', '8d3fe159-1aba-420f-bab8-7896bdbd63ea', 88352, '21bf5879-06fb-4757-99b6-b2fac3925162', 'products', 3, 'image/jpeg', '2020-01-17 16:39:14', '2020-01-17 16:39:14'),
('c1dd2080-1544-4077-851f-60cfde4925a7', 'dade8b74-1f20-4cb9-a42f-dfbf4140f080', 'a3a88b25-8a4a-4f87-87dd-325593756eda', 491185, 'dade8b74-1f20-4cb9-a42f-dfbf4140f080', 'products', 2, 'image/jpeg', '2020-05-05 07:19:54', '2020-05-05 07:19:54'),
('c21e7596-80d4-4ad4-9892-d417697cacd9', '485f739b-0979-4130-87b0-a5cefed3f515', '5d6f7725-4fb4-4555-aab5-244fb928308d', 127690, '485f739b-0979-4130-87b0-a5cefed3f515', 'products', 3, 'image/jpeg', '2020-04-30 06:02:29', '2020-04-30 06:02:29'),
('c247effe-7c11-45db-a87b-5fda0e2ff48a', 'd65d7783-4f14-47a6-b19c-03ec4625c84d', '12916134-e15c-4a04-ae4c-730541b7a4c3', 142003, 'd65d7783-4f14-47a6-b19c-03ec4625c84d', 'products', 3, 'image/jpeg', '2020-04-30 06:14:27', '2020-04-30 06:14:27'),
('c3083c6e-a8fe-49b0-82af-47eff01ea256', 'e601b6c4-64e4-4b04-9ea3-c844783e4b07', 'd501cb51-fd52-4109-b9df-1ac4a0da969a', 91332, 'e601b6c4-64e4-4b04-9ea3-c844783e4b07', 'products', 2, 'image/jpeg', '2020-01-17 11:38:26', '2020-01-17 11:38:26'),
('c3974e84-a452-4deb-a904-92079d7ddb1a', '2938b24b-2eef-4bdd-acfd-ce17219621d4', '2942d50a-875f-4a83-b69a-8dd2cbadec90', 1027718, '2938b24b-2eef-4bdd-acfd-ce17219621d4', 'products', 1, 'image/jpeg', '2020-05-07 08:09:12', '2020-05-07 08:09:12'),
('c3a158cf-862b-404d-82db-893f86056c78', '43004407-53e6-4715-b817-bbe83afc6739', '6b5ad16e-9b37-4980-bbe5-954a08de7a35', 698713, '43004407-53e6-4715-b817-bbe83afc6739', 'products', 2, 'image/jpeg', '2020-05-10 07:42:29', '2020-05-10 07:42:29'),
('c3b3e90d-0616-4d23-96de-a57bd9094341', '337f7dd9-349a-4a26-ab4d-bbb97c6a0758', 'df1d5b03-cdaf-456e-aeaf-0f25e31ed1d7', 81086, '337f7dd9-349a-4a26-ab4d-bbb97c6a0758', 'products', 2, 'image/jpeg', '2020-01-17 16:33:53', '2020-01-17 16:33:53'),
('c471fd3f-1229-4a2e-8f46-9db546234780', '344e488a-3f4a-4bb1-8d61-ef61754bbce8', '1d3330d9-1146-4440-8589-43be2bff1bc6', 605070, '344e488a-3f4a-4bb1-8d61-ef61754bbce8', 'products', 1, 'image/jpeg', '2020-05-05 07:59:04', '2020-05-05 07:59:04'),
('c47d13c3-dd57-4c51-a208-79614b5de3fe', 'ffc96b35-417c-48b7-9edc-d17de49ff64b', '55bfabce-c9ee-4a96-8ca1-19c16898b4ff', 1164222, 'ffc96b35-417c-48b7-9edc-d17de49ff64b', 'products', 2, 'image/jpeg', '2020-05-17 03:33:40', '2020-05-17 03:33:40'),
('c49bd1f1-31fd-46fc-9341-7bf34e752d6c', 'e6944953-df21-4ae6-b319-7451ab12b65c', 'b073c0be-cc9d-4403-ab03-b2c1db85d8f2', 266157, 'e6944953-df21-4ae6-b319-7451ab12b65c', 'products', 1, 'image/jpeg', '2020-04-30 06:04:22', '2020-04-30 06:04:22'),
('c4c7c8d7-0666-4e22-a722-8ad3231dd798', 'ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', 'd21e7d05-b40f-4c92-bd49-c92509f4a70a', 532759, 'ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', 'products', 2, 'image/jpeg', '2020-05-03 10:52:44', '2020-05-03 10:52:44'),
('c4ea934e-34d9-4a67-a13c-e593e4e7c05e', '0e5f7567-d73b-4890-b150-374ee6ec2701', '290f7055-7445-4e41-b008-7fb4faceb3a3', 692605, '0e5f7567-d73b-4890-b150-374ee6ec2701', 'products', 1, 'image/jpeg', '2020-05-10 07:39:47', '2020-05-10 07:39:47'),
('c554c725-bd28-4e63-a359-7a1e66c2295b', '1c8d6194-3537-49a6-b3cd-4b48535d8fef', 'b7363c3f-1d93-45cd-bec4-1adefb84f84c', 212452, '1c8d6194-3537-49a6-b3cd-4b48535d8fef', 'products', 4, 'image/jpeg', '2020-01-06 13:10:35', '2020-01-06 13:10:35'),
('c5edb485-d554-4435-979b-6e327b219266', 'fec96300-2b21-46b1-b776-ab6391f0c38a', 'f380a967-6074-4347-9925-cccb55f1d9d1', 80248, 'fec96300-2b21-46b1-b776-ab6391f0c38a', 'products', 1, 'image/jpeg', '2020-01-17 16:24:55', '2020-01-17 16:24:55'),
('c61eb7db-ca6b-4879-b8f8-4688dea24d8e', '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', 'de33a0fa-37d7-4f63-aec6-cac78f346d2b', 195861, '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', 'products', 2, 'image/jpeg', '2020-04-30 07:17:55', '2020-04-30 07:17:55'),
('c65d5019-4661-479a-a547-9c27a37199e7', '653e67b4-f507-46f2-8f2f-b2f24db878bb', '93406a0e-fc52-4dfa-93d2-8c3c73294f2e', 89618, '653e67b4-f507-46f2-8f2f-b2f24db878bb', 'products', 1, 'image/jpeg', '2020-01-17 15:40:25', '2020-01-17 15:40:25'),
('c6fe3ead-3cff-4d78-b3c7-d1bdae14436a', 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'dcfc2776-a659-4e0d-870f-a4a933dcef3a', 165272, 'f4328b31-c11e-4555-9a2f-6de2524f0089', 'products', 3, 'image/jpeg', '2020-04-30 08:31:22', '2020-04-30 08:31:22'),
('c7347dce-8d9d-4d50-b9dc-5297c100796d', '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '4613fc7b-a322-4d2b-918d-9caafd2734ba', 182689, '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', 'products', 2, 'image/jpeg', '2020-01-06 09:27:05', '2020-01-06 09:27:05'),
('c78e32de-6e4d-40aa-aac0-dcb46905779c', '7c240973-69c1-44ee-ad7b-8ddb36384aa0', 'cd95d666-5e6b-4087-8ced-b6b37ab3d1f9', 1226665, '7c240973-69c1-44ee-ad7b-8ddb36384aa0', 'products', 2, 'image/jpeg', '2020-05-16 09:09:54', '2020-05-16 09:09:54'),
('c7b348ff-b879-4f8b-a39c-029143b8f108', '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', '773179a8-4201-4be0-97ec-a1937a3f62dc', 438813, '9b981cf0-9581-4dfe-bcd3-88f7356be7a4', 'products', 2, 'image/jpeg', '2020-05-06 04:49:22', '2020-05-06 04:49:22'),
('c7ce7bb5-a008-474d-a137-4c88b305b855', '641fbfc4-8390-498f-ae3c-29a357ffdcb3', '24559ff0-d6fa-40e8-bcf5-80a27410fd87', 190380, '641fbfc4-8390-498f-ae3c-29a357ffdcb3', 'products', 1, 'image/jpeg', '2020-04-30 06:57:33', '2020-04-30 06:57:33'),
('c86c5ba7-23a9-49b8-bda3-224be55da46f', '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', '97619ef1-4e84-4395-af85-1e37cc311794', 150062, '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', 'products', 2, 'image/jpeg', '2020-04-30 07:41:19', '2020-04-30 07:41:19'),
('c894175e-1f23-402c-93cc-d8e3efb5bb62', 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', '07b04a17-5af2-4cb0-9a3a-4a8defe06568', 607652, 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', 'products', 2, 'image/jpeg', '2020-05-07 07:11:01', '2020-05-07 07:11:01'),
('c9185e1b-8533-4bba-87d3-158128f9b9f8', '05289ec9-bd78-4106-921b-f4ca2b75b11c', '2ece41db-6859-4222-8442-d3c7676be4cd', 47621, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 6, 'image/jpeg', '2020-05-31 15:00:34', '2020-05-31 15:00:34'),
('ca4ea8ab-ccae-468f-a875-11cf5a6fdfb6', '21bf5879-06fb-4757-99b6-b2fac3925162', '955c3dc5-7eeb-4fc6-8be1-01c7d9bacedc', 92169, '21bf5879-06fb-4757-99b6-b2fac3925162', 'products', 1, 'image/jpeg', '2020-01-17 16:38:43', '2020-01-17 16:38:43'),
('caaf0860-953f-4811-b559-1ac36217f17c', '31cee6e1-7b69-4a85-b244-ecea1649d3d2', '54959f88-e2ea-475a-9180-feb11682a687', 1689234, '31cee6e1-7b69-4a85-b244-ecea1649d3d2', 'products', 1, 'image/jpeg', '2020-05-10 04:03:17', '2020-05-10 04:03:17'),
('cad1496a-2289-4917-b3e3-6970909802a9', '5dd1be56-5433-412f-8b38-328aec628ff1', 'bbda4474-42d7-4f5d-92cd-d1c732f7d944', 529629, '5dd1be56-5433-412f-8b38-328aec628ff1', 'products', 1, 'image/jpeg', '2019-12-31 16:30:56', '2019-12-31 16:30:56'),
('cb32beb8-614e-48bc-93eb-12dbea456d3f', '534f104f-0087-4cdf-93c7-814cb7e7c6f4', '71477e61-9299-4505-9c85-d09f7c12f5f9', 772775, '534f104f-0087-4cdf-93c7-814cb7e7c6f4', 'products', 1, 'image/jpeg', '2020-05-17 04:05:20', '2020-05-17 04:05:20'),
('cb74e910-703b-4b0b-9c41-d28db3900bf1', 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', 'f478a137-8db5-4d48-b62f-d38f2be63e57', 886641, 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', 'products', 3, 'image/jpeg', '2020-05-07 07:11:23', '2020-05-07 07:11:23'),
('cba9ccc4-fab5-49f0-a02b-365ed470a543', 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', 'd0c49881-1ae0-4127-a85c-62cfb14b8e0f', 1060919, 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', 'products', 2, 'image/jpeg', '2020-05-09 06:54:09', '2020-05-09 06:54:09'),
('cbd9ca44-caa7-4932-a1ac-d0bf540fefe4', '9b587046-06df-4e91-919e-1046817db97f', '0e042a73-e20b-4064-9cfd-8c8c52872b8e', 251765, '9b587046-06df-4e91-919e-1046817db97f', 'products', 1, 'image/jpeg', '2020-04-30 08:32:33', '2020-04-30 08:32:33'),
('cc155c1a-9f1f-46d3-a08b-cf5f52e96a02', '58199611-dc27-4035-add1-1a064cdce703', '3f575047-8e7a-4a63-972a-ad55857e545a', 80699, '58199611-dc27-4035-add1-1a064cdce703', 'products', 2, 'image/jpeg', '2020-01-17 15:31:01', '2020-01-17 15:31:01'),
('cc4f8f1f-efe0-45dc-9a35-717e7674b2a5', '21d6c0fb-99e0-4eab-a76e-959a17a98d98', '8a2b7c94-c06b-4e38-9842-769701a798e4', 1231455, '21d6c0fb-99e0-4eab-a76e-959a17a98d98', 'products', 3, 'image/jpeg', '2020-05-10 07:51:22', '2020-05-10 07:51:22'),
('cd23f83f-a6af-4025-b27a-49ed8b4fd1ee', '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', 'c16e8f97-93ba-4e51-a0ff-48bb7ca5000a', 1844430, '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', 'products', 1, 'image/jpeg', '2020-05-17 03:37:44', '2020-05-17 03:37:44'),
('cd6638ce-666b-492d-939e-747a2674711d', '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', 'e1e33ff5-9062-4f1f-8b5b-6881ed7b11f4', 258704, '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', 'products', 3, 'image/jpeg', '2020-04-30 10:25:17', '2020-04-30 10:25:17'),
('cda49b33-84a1-458f-b6e4-b85f630c47b8', 'fdd96c86-2239-424a-b464-9fea61adb143', '422076f4-e57b-4745-a888-0bf2a140e9d6', 655954, 'fdd96c86-2239-424a-b464-9fea61adb143', 'products', 3, 'image/jpeg', '2020-05-07 07:08:00', '2020-05-07 07:08:00'),
('ce69563c-a681-4df5-98fa-33fc79d45e56', 'cb38f089-9e70-4a59-8234-3bea83c738b5', '1faaf64f-b9bd-4c10-b0dd-78aacf8707ba', 464385, 'cb38f089-9e70-4a59-8234-3bea83c738b5', 'products', 1, 'image/jpeg', '2020-05-05 07:14:36', '2020-05-05 07:14:36'),
('cedf483c-0732-4296-b570-d36548118975', 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', '222262e5-25bf-4002-9c22-0fe166f1d72d', 1000694, 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', 'products', 1, 'image/jpeg', '2020-05-07 07:10:10', '2020-05-07 07:10:10'),
('cee89f5c-4f54-4d34-96a8-c12c547d8344', '4f7d33dc-824e-48b1-9804-f8412c256f95', '1ef6239f-57a0-4032-864b-143a012f8043', 551049, '4f7d33dc-824e-48b1-9804-f8412c256f95', 'products', 3, 'image/jpeg', '2019-12-31 16:27:30', '2019-12-31 16:27:30'),
('cf44fde2-47e0-4a6b-95c8-ef20ea355690', 'dc7a897f-0d73-4ef4-8067-381dde3cf705', 'f35efa73-27e0-41e7-a45c-0a42003801f5', 176649, 'dc7a897f-0d73-4ef4-8067-381dde3cf705', 'products', 1, 'image/jpeg', '2020-01-06 13:13:27', '2020-01-06 13:13:27'),
('cf7d262d-6ef7-4b29-9abc-cdff9b3570e1', '80bcc297-5f8f-4e6c-ad09-e69a40683746', 'cd0d630a-e3e4-4a1c-9020-bde1bf537cb9', 824204, '80bcc297-5f8f-4e6c-ad09-e69a40683746', 'products', 2, 'image/jpeg', '2020-05-02 11:59:09', '2020-05-02 11:59:09'),
('d02ffd34-687d-4b8e-99b1-889aed608a17', 'a6759f65-8d0a-473b-8493-975bb824f960', '4664ebd2-0222-4bd0-9973-f30355c3addf', 147506, 'a6759f65-8d0a-473b-8493-975bb824f960', 'products', 3, 'image/jpeg', '2020-01-17 11:31:46', '2020-01-17 11:31:46'),
('d08f6c8d-c012-40d5-bfcf-c15850b3bdf6', '906b16db-0fe9-4631-9f28-d763225aa70a', '528d7fc6-b08c-4c1f-a937-0385502c1461', 1360000, '906b16db-0fe9-4631-9f28-d763225aa70a', 'products', 1, 'image/jpeg', '2020-05-10 07:48:10', '2020-05-10 07:48:10'),
('d0f0d1e6-b4a0-4de7-bdfe-aff427f51c1e', '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', 'b10e3e52-c4a4-43df-9512-689487859edc', 228691, '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', 'products', 1, 'image/jpeg', '2020-04-30 07:41:02', '2020-04-30 07:41:02'),
('d17b1d99-2433-4833-8f7c-ac021bba9851', '2ae34c8d-8b3e-4638-a7f0-5580326064f1', '790fb0ca-ac85-4033-bbfa-7e5b158ddce1', 740944, '2ae34c8d-8b3e-4638-a7f0-5580326064f1', 'products', 3, 'image/jpeg', '2020-05-17 04:08:05', '2020-05-17 04:08:05'),
('d1c7255c-fe70-43ad-8603-fa1bfc4d73ef', '5dfda432-4a74-4849-9778-0bbd0898e76d', '3d6310de-5fc3-4a91-83a6-127f2949c39e', 446256, '5dfda432-4a74-4849-9778-0bbd0898e76d', 'products', 2, 'image/jpeg', '2020-05-03 10:56:22', '2020-05-03 10:56:22'),
('d224624d-b43c-4fb3-bfe4-f41a6b02249b', 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', 'fa7d4818-b263-482d-830c-9d04227a6a43', 1265051, 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', 'products', 2, 'image/jpeg', '2020-05-07 07:22:07', '2020-05-07 07:22:07'),
('d2bdbede-9ef1-4217-b50e-09ecb5fdb234', '21d6c0fb-99e0-4eab-a76e-959a17a98d98', '31ccb07a-d2b3-484b-b7f3-c77c4bf2b5ef', 1253646, '21d6c0fb-99e0-4eab-a76e-959a17a98d98', 'products', 1, 'image/jpeg', '2020-05-10 07:50:18', '2020-05-10 07:50:18'),
('d2df791a-1cb6-4ea7-92b3-77370bd47520', 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', 'f27c2230-e8c5-4d06-b29d-1cc7d355b07d', 1250437, 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', 'products', 3, 'image/jpeg', '2020-05-07 08:46:16', '2020-05-07 08:46:16'),
('d2ece9f2-d9ff-4ccc-a796-d9f45f8157c1', 'a634d123-c706-4e49-9141-6cff640d182c', 'f4ac2c51-a40e-4dd3-b01f-f2fd315404fc', 89696, 'a634d123-c706-4e49-9141-6cff640d182c', 'products', 1, 'image/jpeg', '2020-01-17 16:20:24', '2020-01-17 16:20:24'),
('d2f5be19-ecfc-4c37-8381-ab8d025b3a08', 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'fc586b96-9208-40fc-a194-d848dc5a27a6', 639177, 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'products', 1, 'image/jpeg', '2020-05-10 08:20:58', '2020-05-10 08:20:58'),
('d354afa9-fe02-45f3-b974-d55ddfbf2a77', '86f0dce9-c45c-48da-8146-fcda8de122b3', '46deafc1-f56d-4172-9587-3d8629964765', 182443, '86f0dce9-c45c-48da-8146-fcda8de122b3', 'products', 1, 'image/jpeg', '2020-04-30 07:21:40', '2020-04-30 07:21:40'),
('d36d25d2-c753-4a2e-944f-bb125b81e854', '231c8799-a609-4698-a8e6-f541b75c8689', 'fc753a62-7151-42b5-a9b3-80d32448784a', 1011627, '231c8799-a609-4698-a8e6-f541b75c8689', 'products', 1, 'image/jpeg', '2020-05-03 09:14:16', '2020-05-03 09:14:16'),
('d38e19e4-ac66-4d74-a45f-a61cc3926876', '1ee26549-f1f1-49b5-ac17-c8201275da91', 'c8d59b49-af6f-4987-b3d6-eaea77b49fcd', 247390, '1ee26549-f1f1-49b5-ac17-c8201275da91', 'products', 1, 'image/jpeg', '2020-04-30 08:28:20', '2020-04-30 08:28:20'),
('d3ad6e40-56a3-40c8-97e2-269ecd7678db', '399867e8-c99e-4e72-969a-d93fccb1c886', 'b8f746f0-b82d-48d5-aecf-69682f0d5538', 74321, '399867e8-c99e-4e72-969a-d93fccb1c886', 'products', 4, 'image/jpeg', '2020-01-06 08:34:59', '2020-01-06 08:34:59'),
('d3b2c429-f6b1-4f24-97d4-d504af37fe9e', '864280c6-39db-4f3f-a13e-1315510b175d', 'fb0b69a6-3cca-48dc-877d-3b1875c77d94', 1156772, '864280c6-39db-4f3f-a13e-1315510b175d', 'products', 1, 'image/jpeg', '2020-05-10 08:13:53', '2020-05-10 08:13:53'),
('d43df0a0-1261-4fee-b1e3-6a36faf1014e', 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', '75c37b9e-70cc-4fe9-8525-39fea923468d', 109321, 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', 'products', 3, 'image/jpeg', '2020-04-30 07:52:18', '2020-04-30 07:52:18'),
('d4836a43-adf2-404d-96a6-2fe06cb2f520', 'cafacd4d-5282-4329-af62-2c065273c620', '5ce4c6a1-e54e-4cf5-9c02-c96a2c56abdd', 1433961, 'cafacd4d-5282-4329-af62-2c065273c620', 'products', 1, 'image/jpeg', '2020-05-07 08:26:17', '2020-05-07 08:26:17'),
('d4bdc57f-369e-4cf4-8c4f-0bb022e9ff3b', '1bec155a-4e94-4028-97fc-6a0aad0efa1b', '56e8b4e9-8357-4527-9554-fd729e303d6d', 575007, '1bec155a-4e94-4028-97fc-6a0aad0efa1b', 'products', 3, 'image/jpeg', '2020-05-07 08:05:42', '2020-05-07 08:05:42'),
('d4cc5eff-6418-41d5-8f9a-1f12d613e049', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'e401d760-a513-477b-993b-2ffbf815c163', 417487, 'aafdf292-67c9-48ab-8bdf-873854e5fc80', 'products', 3, 'image/jpeg', '2020-01-01 18:16:13', '2020-01-01 18:16:13'),
('d50d9639-c349-466e-a3c1-33c61db921a9', '81f43560-99ae-4400-b0b0-90e56821e24d', 'a0c2ebfc-1054-4eaf-b5a5-0b00272becee', 1077036, '81f43560-99ae-4400-b0b0-90e56821e24d', 'products', 2, 'image/jpeg', '2020-05-10 07:16:37', '2020-05-10 07:16:37'),
('d52af86e-7f84-4dd8-8ebf-ebff4c8887b4', '91a6cce0-3037-4514-ae0b-462daa8c9391', 'accac984-ea5d-40e2-92f1-da5836dfd6d1', 188891, '91a6cce0-3037-4514-ae0b-462daa8c9391', 'products', 2, 'image/jpeg', '2020-01-06 13:19:18', '2020-01-06 13:19:18'),
('d558ccc4-182e-44db-a783-b60c24dabb92', '7a2fc705-dcc8-401d-a71a-f222789811c6', 'f638eaad-5b65-4d72-9772-f00d07a1b528', 176532, '7a2fc705-dcc8-401d-a71a-f222789811c6', 'products', 2, 'image/jpeg', '2020-04-30 07:16:36', '2020-04-30 07:16:36'),
('d5663a05-21cd-4c56-a541-1e9282e51430', 'e0979005-1c1d-4f6e-af4e-751197311a4f', '208697ec-ac85-4141-800f-5d19ed0accc9', 637019, 'e0979005-1c1d-4f6e-af4e-751197311a4f', 'products', 1, 'image/jpeg', '2020-05-05 13:02:43', '2020-05-05 13:02:43'),
('d5c380ac-812c-41c9-8e00-eab226e406a1', '06ee348e-365d-43ad-a6ee-8af13fe098cc', 'ec6b955c-5000-461f-8ab5-0209d81cf595', 89393, '06ee348e-365d-43ad-a6ee-8af13fe098cc', 'products', 2, 'image/jpeg', '2020-01-17 15:49:23', '2020-01-17 15:49:23'),
('d62d4345-1f33-4a06-b29d-76dbe2ef7cc7', 'ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', 'e1e0e225-b436-45e4-a328-c00dcd22bf0c', 641048, 'ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', 'products', 1, 'image/jpeg', '2020-05-05 06:38:39', '2020-05-05 06:38:39'),
('d7624bba-fa3b-46c2-a075-607738f7144d', '253544d5-288d-4042-82f9-29f4bed59ddd', '11c7b2b6-2d98-49f9-ad54-8eaf04e7e8d8', 59439, '253544d5-288d-4042-82f9-29f4bed59ddd', 'products', 2, 'image/jpeg', '2020-01-17 15:23:22', '2020-01-17 15:23:22'),
('d791a98b-710f-4d51-babc-1a9435c5e9f2', '7c895e53-fadd-4114-8da9-9014af54fe3b', '108bb3af-d81a-47f6-94e5-05fec8bb2caa', 713988, '7c895e53-fadd-4114-8da9-9014af54fe3b', 'products', 1, 'image/jpeg', '2020-05-10 08:07:51', '2020-05-10 08:07:51'),
('d7c33b6d-b293-4a1b-9aa0-5b94b6d225fd', 'c9cca7ed-e714-4966-bdd2-186aa79d2843', '24b259c9-883b-459f-bb7f-93c91a592535', 135919, 'c9cca7ed-e714-4966-bdd2-186aa79d2843', 'products', 3, 'image/jpeg', '2020-04-30 08:35:48', '2020-04-30 08:35:48'),
('d7da4daf-9570-4f6d-a477-1d5c0162ece4', '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'e0d1242d-fd4b-436d-9990-128f253fe135', 532323, '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', 'products', 2, 'image/jpeg', '2020-05-07 08:55:28', '2020-05-07 08:55:28'),
('d7f79e2b-2f99-4e81-b0b9-bc6edc8c6739', 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', '198ed895-e3a7-40d5-ab86-a6338f8506b6', 1232917, 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', 'products', 1, 'image/jpeg', '2020-05-10 08:18:12', '2020-05-10 08:18:12'),
('d80d30cc-51e1-4a51-bdb4-cc6487808720', 'def21a03-6188-4ac8-8335-0dc1879e73cd', 'be0ef056-cfa5-47ee-b990-e3eb858582ae', 540463, 'def21a03-6188-4ac8-8335-0dc1879e73cd', 'products', 2, 'image/jpeg', '2020-05-05 12:57:40', '2020-05-05 12:57:40'),
('d85548a1-12d0-4990-ac86-d1e4e17e967f', '712b1be0-4a11-4a3b-9706-eb23ad444a26', 'd4b17e70-f130-4328-993b-29ef23b9790e', 194375, '712b1be0-4a11-4a3b-9706-eb23ad444a26', 'products', 2, 'image/jpeg', '2020-04-30 08:26:31', '2020-04-30 08:26:31'),
('d86080ff-d434-4a6b-83fa-4afe5bd4da8f', 'a9375cce-6096-4f7e-a50b-a28b80708692', '9f91c7a7-b621-4789-97d0-a4c02ad842f9', 748000, 'a9375cce-6096-4f7e-a50b-a28b80708692', 'products', 1, 'image/jpeg', '2020-05-02 11:54:23', '2020-05-02 11:54:23'),
('d9ce87ad-5541-4cb6-9760-94fe12aa2ea0', '6735748a-0ba8-4506-a5c1-52e45804cfba', 'f3b3fcac-0a66-4d5d-94b6-6f48e12f554f', 715436, '6735748a-0ba8-4506-a5c1-52e45804cfba', 'products', 3, 'image/jpeg', '2020-05-17 03:47:57', '2020-05-17 03:47:57'),
('dbefca23-bb42-4661-ab74-a62d2d293839', '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', '13b20b79-81cf-4014-9c9f-2a879b429649', 92258, '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', 'products', 3, 'image/jpeg', '2020-01-17 11:21:22', '2020-01-17 11:21:22'),
('dc07b3f7-f6b9-4cbe-a085-f9624f193a70', 'd7af749d-385d-493b-b774-21429929b44d', '81dcf6d7-c8bb-4bbb-b8e5-2fcee918f46b', 571184, 'd7af749d-385d-493b-b774-21429929b44d', 'products', 2, 'image/jpeg', '2020-05-07 08:28:25', '2020-05-07 08:28:25'),
('dc315b06-a5f8-4bbd-ab06-1f35fef42e00', '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', '22ef1177-c736-4780-96b9-45de34eb1f31', 998099, '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', 'products', 2, 'image/jpeg', '2020-05-05 06:12:21', '2020-05-05 06:12:21'),
('dc34ad67-dc0b-48c6-9ff0-91594d60823e', '49c6d0cd-f075-4575-9b9a-17db940dc1f5', '8cff3ed3-e3c6-4263-8fa8-fa42907e8b26', 143892, '49c6d0cd-f075-4575-9b9a-17db940dc1f5', 'products', 3, 'image/jpeg', '2020-04-30 08:11:26', '2020-04-30 08:11:26'),
('dd492fcb-1b45-426b-8a39-df3807ddc11e', '41f6a861-2224-4573-9613-754dbb7b0383', 'bd7b8f69-4668-4ea4-acbc-71c9d4a975e3', 79725, '41f6a861-2224-4573-9613-754dbb7b0383', 'products', 1, 'image/jpeg', '2020-01-17 15:27:10', '2020-01-17 15:27:10'),
('ddead7ec-727b-45e1-8f3a-f4da42d8ab1a', '3ea034e9-2c01-4824-95aa-d33709d05201', '14b99251-670f-48b9-b43a-81aba3c0ce2a', 603516, '3ea034e9-2c01-4824-95aa-d33709d05201', 'products', 2, 'image/jpeg', '2020-05-05 06:07:57', '2020-05-05 06:07:57'),
('de129b21-bec2-4e89-b2f8-04851b24ec38', 'e0979005-1c1d-4f6e-af4e-751197311a4f', 'a8df892f-ab3e-4a1d-9148-7c3981204c61', 452700, 'e0979005-1c1d-4f6e-af4e-751197311a4f', 'products', 3, 'image/jpeg', '2020-05-05 13:03:38', '2020-05-05 13:03:38'),
('de439251-37f8-461a-935f-d38bc9d98556', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', '09bc7b8b-11b5-4f70-9284-d596128c00d4', 1275015, '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'products', 4, 'image/jpeg', '2020-05-12 08:20:43', '2020-05-12 08:20:43'),
('df5878df-cc00-461b-aa64-ec810d3f7659', '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '00f887d8-ecd8-4630-a2e9-a0762183aeb1', 173343, '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', 'products', 1, 'image/jpeg', '2020-01-06 09:26:51', '2020-01-06 09:26:51'),
('df5d5474-1928-4455-97db-b79e1c4c492f', '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', '680a8f84-1ef2-4f23-9b5e-130333cf12dc', 710275, '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', 'products', 1, 'image/jpeg', '2020-05-17 03:26:53', '2020-05-17 03:26:53'),
('df94f642-9cf0-43b8-b274-d7ecb36bd90e', '6d6319ba-5e1d-411a-b601-43dc056d923a', '6bcbcc3c-006e-4f2c-bdad-a11e12f809d7', 39825, '6d6319ba-5e1d-411a-b601-43dc056d923a', 'products', 2, 'image/jpeg', '2020-01-06 12:57:04', '2020-01-06 12:57:04'),
('dfacbfcd-f1bd-4b87-98b5-fcefadb8faeb', 'd0c45dfc-d648-463c-af7a-e3419067ba2a', 'd96fb5ad-4690-42a9-a2b1-2c9e44e95544', 579471, 'd0c45dfc-d648-463c-af7a-e3419067ba2a', 'products', 1, 'image/jpeg', '2020-05-03 09:12:04', '2020-05-03 09:12:04'),
('e02225cc-e598-45fc-b1e0-6ee01ff84a69', 'd7af749d-385d-493b-b774-21429929b44d', '4580a517-62d2-4d3b-bbac-d8ed5860deb0', 724601, 'd7af749d-385d-493b-b774-21429929b44d', 'products', 1, 'image/jpeg', '2020-05-07 08:28:10', '2020-05-07 08:28:10'),
('e0b65fab-fed5-4dab-8dde-22043ca82cbe', '0e5f7567-d73b-4890-b150-374ee6ec2701', 'e8d82d74-36b7-4572-975a-9b9cbdffab91', 756647, '0e5f7567-d73b-4890-b150-374ee6ec2701', 'products', 2, 'image/jpeg', '2020-05-10 07:40:11', '2020-05-10 07:40:11'),
('e119b5f5-9820-4752-9858-0f884fed682c', 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', '600370ad-1549-4a06-8169-e84536cf8659', 666460, 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', 'products', 2, 'image/jpeg', '2020-05-18 10:05:10', '2020-05-18 10:05:10'),
('e18e84f9-0e6e-402c-8eb5-ebb9de3f14b6', 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', '5841d84a-183e-4ea0-aab2-a829087c9b1e', 1066266, 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', 'products', 3, 'image/jpeg', '2020-05-10 08:19:43', '2020-05-10 08:19:43'),
('e1eddd3f-c116-400c-8e12-ea9490630fe1', 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', 'caaa9956-0fa9-4c6f-8622-5cada9535c68', 746992, 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', 'products', 1, 'image/jpeg', '2020-05-07 08:35:25', '2020-05-07 08:35:25'),
('e20a4b9e-3d10-4bd6-aa5f-f6689c16a438', 'd822e8ed-3c4f-4055-892d-b5b407162076', '7e85ac0d-6ec8-4f31-bc19-3985d1ba15c7', 160714, 'd822e8ed-3c4f-4055-892d-b5b407162076', 'products', 3, 'image/jpeg', '2020-04-30 06:10:46', '2020-04-30 06:10:46'),
('e2aa3f7a-cf90-4204-9adb-a32c6885166d', '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', '23503014-e729-47ab-9bd9-4e4c4ca51aaf', 222692, '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', 'products', 2, 'image/jpeg', '2020-04-30 10:25:11', '2020-04-30 10:25:11'),
('e33aed70-476a-4001-9806-b8d14df49180', 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'e92354d8-b7c6-4396-b27e-c4f819b1071a', 1235093, 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'products', 1, 'image/jpeg', '2020-05-10 08:10:11', '2020-05-10 08:10:11'),
('e47a7b4a-8658-4e5d-a124-1471e72adb36', '3763857e-5c54-482b-b047-069e4de044b4', '837dbc0e-ef61-4f93-83b9-eee60e9b910e', 1105654, '3763857e-5c54-482b-b047-069e4de044b4', 'products', 4, 'image/jpeg', '2020-05-12 06:36:52', '2020-05-12 06:36:52'),
('e48fe225-0dd5-4195-9006-d96f11e5d9e9', 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', '143d645a-6708-4388-8cbe-8b09ef2374ee', 80716, 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', 'products', 3, 'image/jpeg', '2020-04-30 10:28:23', '2020-04-30 10:28:23'),
('e4de9663-76d9-4e1e-bd87-8df2add4b070', '8bd59859-d7a9-4591-abae-99221f3d395e', '0a6eaee3-c822-4eb1-af77-18fcdcbf17dd', 273103, '8bd59859-d7a9-4591-abae-99221f3d395e', 'products', 2, 'image/jpeg', '2020-05-02 08:44:19', '2020-05-02 08:44:19'),
('e53dad04-7c03-4258-b4a9-f7067823e3fa', '69a1aa46-5d33-4451-bb02-2f5eccb39c99', '3caee315-b210-471c-a61e-f04a303358de', 441343, '69a1aa46-5d33-4451-bb02-2f5eccb39c99', 'products', 2, 'image/jpeg', '2020-05-05 07:09:10', '2020-05-05 07:09:10'),
('e53f2e61-a449-462e-8a60-e5922c12f0bc', 'fec96300-2b21-46b1-b776-ab6391f0c38a', 'f132f5cf-28ab-4fe1-9047-2bc68e8d2b67', 80103, 'fec96300-2b21-46b1-b776-ab6391f0c38a', 'products', 2, 'image/jpeg', '2020-01-17 16:25:09', '2020-01-17 16:25:09'),
('e64ca021-8b1c-46ab-9ca5-1e4f36d709fe', '2031d27e-7b02-4114-b0e0-4269848f93ab', 'b325ea29-a769-4897-b62a-2fad5ce555ef', 442058, '2031d27e-7b02-4114-b0e0-4269848f93ab', 'products', 1, 'image/jpeg', '2020-05-05 07:17:47', '2020-05-05 07:17:47'),
('e6836342-4312-4e15-a119-ac3ab9ec80d5', '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', '787e6f2a-63aa-4d04-bde6-e587e744e48c', 187112, '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', 'products', 1, 'image/jpeg', '2020-04-30 10:25:03', '2020-04-30 10:25:03'),
('e6e1c3d0-9d3d-4740-aed4-652b910bace2', '3ea034e9-2c01-4824-95aa-d33709d05201', '12074344-cd95-4de9-91c8-6faadb85b395', 635201, '3ea034e9-2c01-4824-95aa-d33709d05201', 'products', 1, 'image/jpeg', '2020-05-05 06:07:34', '2020-05-05 06:07:34'),
('e74147af-c5f8-4cd7-b498-6815edce7676', 'fe6c6375-3285-4b72-a548-b4f1bd88be25', 'd537c4e7-1c68-4c76-981d-b37c335a5e9e', 709132, 'fe6c6375-3285-4b72-a548-b4f1bd88be25', 'products', 2, 'image/jpeg', '2020-05-07 07:18:36', '2020-05-07 07:18:36'),
('e7923731-3769-4df9-ab5c-11c62ee5e310', 'b7ec9849-9d99-493d-b98c-8508cb2647fd', '86d14f27-a03d-4ae6-a06d-99cf7a30f8b8', 845009, 'b7ec9849-9d99-493d-b98c-8508cb2647fd', 'products', 2, 'image/jpeg', '2020-05-17 03:59:11', '2020-05-17 03:59:11'),
('e7d7d51f-0d8d-4f57-8324-997f879abc5e', 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', 'b40b2740-6e89-49b8-a093-c48fc7c6847f', 2037635, 'b4f8d4a9-eaed-4398-8c07-58b97b49744c', 'products', 1, 'image/jpeg', '2020-05-14 05:43:35', '2020-05-14 05:43:35'),
('e89fd996-c100-41fe-b2e3-7469a1788514', '6735748a-0ba8-4506-a5c1-52e45804cfba', 'be84beb6-e51f-442c-a606-42eda9ec83ac', 586523, '6735748a-0ba8-4506-a5c1-52e45804cfba', 'products', 4, 'image/jpeg', '2020-05-17 03:48:24', '2020-05-17 03:48:24'),
('e8ea5b51-bd10-48f2-b563-81a5ff776b59', 'f0924131-fda6-41f2-b2d0-157f1cbff499', '16cde000-30e9-4f11-bd92-7de8af91d81c', 247699, 'f0924131-fda6-41f2-b2d0-157f1cbff499', 'products', 4, 'image/jpeg', '2020-01-06 12:49:14', '2020-01-06 12:49:14'),
('e94149a3-4b22-404a-8e3b-560f7f65a760', '3412c6bc-40f8-4a99-b1c1-57f9bff942ce', 'cd3c24dd-8ad3-466f-9401-75b9c130f662', 1012712, '3412c6bc-40f8-4a99-b1c1-57f9bff942ce', 'products', 1, 'image/jpeg', '2020-05-03 09:47:14', '2020-05-03 09:47:14'),
('e9ba0760-8054-461f-bd9c-be12edd31467', 'dc7a897f-0d73-4ef4-8067-381dde3cf705', '5a6bb906-44d3-48fd-a2b1-decb5b323bd9', 198153, 'dc7a897f-0d73-4ef4-8067-381dde3cf705', 'products', 2, 'image/jpeg', '2020-01-06 13:13:49', '2020-01-06 13:13:49'),
('e9c3c462-f759-4402-b9a8-bf6336472348', 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', 'c7ea2dd8-5abd-4318-b72d-01a6d1aef48d', 1452257, 'f75245c1-7bdb-4ebc-b894-715795b4d3e3', 'products', 1, 'image/jpeg', '2020-05-14 05:41:15', '2020-05-14 05:41:15'),
('e9f836ac-40be-4ca4-a36d-864c99ec85af', 'def21a03-6188-4ac8-8335-0dc1879e73cd', '7904f11d-0a79-4322-86fd-05d2560c670a', 1730577, 'def21a03-6188-4ac8-8335-0dc1879e73cd', 'products', 4, 'image/jpeg', '2020-05-05 12:59:07', '2020-05-05 12:59:07'),
('ed6c65ea-4d9a-4e64-b042-b0eddc60634e', '712b1be0-4a11-4a3b-9706-eb23ad444a26', '098b8601-10ab-4a46-ac0b-d2466fdf2f31', 295777, '712b1be0-4a11-4a3b-9706-eb23ad444a26', 'products', 1, 'image/jpeg', '2020-04-30 08:26:04', '2020-04-30 08:26:04'),
('ed749f5e-ba33-4dec-8818-c0e5443e58c6', 'd822e8ed-3c4f-4055-892d-b5b407162076', '5b428c07-7750-40bd-ae48-4b580058cbee', 170718, 'd822e8ed-3c4f-4055-892d-b5b407162076', 'products', 1, 'image/jpeg', '2020-04-30 06:10:18', '2020-04-30 06:10:18'),
('ee02fac5-417f-413d-96e1-919c51c99a9f', 'fe57ee1c-a067-4a7b-b74d-bb594aed62b9', '0df4f318-8110-4e04-8630-331d2cd606a2', 629495, 'fe57ee1c-a067-4a7b-b74d-bb594aed62b9', 'products', 2, 'image/jpeg', '2020-05-07 06:57:31', '2020-05-07 06:57:31'),
('ee14828c-90ff-4e16-a9f8-c5660854b43d', '7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'a7d9ece3-49b0-4092-9a23-0da82f89c1fe', 229901, '7f2d00ba-2599-4f94-a4df-abd97e6618e8', 'products', 1, 'image/jpeg', '2020-05-02 11:26:19', '2020-05-02 11:26:19'),
('eed7b8cf-9e97-4e18-86a9-6e0e10c61e60', '0776b2ba-ccc8-4250-b086-e1b194c952e9', 'd9ca3d31-20ca-4702-b20d-0079ee46fd64', 113725, '0776b2ba-ccc8-4250-b086-e1b194c952e9', 'products', 2, 'image/jpeg', '2020-01-04 20:44:06', '2020-01-04 20:44:06'),
('ef8a3d20-951e-4a32-bc30-bf0736b46cda', 'b830b3da-e5ee-406e-bef1-360f2b196f45', '329e8653-9c28-4626-bb45-1eb78695ebda', 1152827, 'b830b3da-e5ee-406e-bef1-360f2b196f45', 'products', 1, 'image/jpeg', '2020-05-07 07:15:30', '2020-05-07 07:15:30'),
('efa1475d-4419-4023-8869-3d0fc52b6af4', 'a6759f65-8d0a-473b-8493-975bb824f960', 'd1053b19-4617-44bc-8ce3-0d918eeb876c', 92196, 'a6759f65-8d0a-473b-8493-975bb824f960', 'products', 1, 'image/jpeg', '2020-01-17 11:31:16', '2020-01-17 11:31:16'),
('f0003891-3d5b-489b-8d62-79af42ea360d', '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'ecee9859-4203-4d9a-b1fd-a1d41d00174d', 61159, '98ca7723-06d1-4fc5-ab6b-d7d102330afb', 'products', 1, 'image/jpeg', '2020-01-17 11:50:18', '2020-01-17 11:50:18'),
('f10d0d12-e225-45c7-a82b-06e8a06b94e0', '090b4afc-e646-4e02-8750-7dd52a83a406', '66aa3061-a2f4-4728-b74c-7dbdfd4b6ee8', 246371, '090b4afc-e646-4e02-8750-7dd52a83a406', 'products', 3, 'image/jpeg', '2020-05-02 08:26:34', '2020-05-02 08:26:34'),
('f11418e0-12f1-4c11-9544-eeb323775b12', '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', '7b7859a2-4479-45c4-a13e-a553ff9bd3ce', 146558, '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', 'products', 2, 'image/jpeg', '2020-05-02 08:23:25', '2020-05-02 08:23:25'),
('f1266f28-4067-42e2-b4de-fd5d454b5530', 'b5422006-a8ff-4f7e-87d0-7f4639a335bc', '77d4de97-cc3a-44f3-b795-23058b4357e3', 1155178, 'b5422006-a8ff-4f7e-87d0-7f4639a335bc', 'products', 1, 'image/jpeg', '2020-05-12 06:20:41', '2020-05-12 06:20:41');
INSERT INTO `product_images` (`id`, `product_id`, `file_name`, `file_size`, `file_path`, `disk`, `order_column`, `mime_type`, `created_at`, `updated_at`) VALUES
('f12cf20a-d5cb-4c2f-9867-25cfdb8be6cd', '7c240973-69c1-44ee-ad7b-8ddb36384aa0', '7ca5dfb4-7c0a-45de-8c2b-5bcabeb8ed8c', 483459, '7c240973-69c1-44ee-ad7b-8ddb36384aa0', 'products', 4, 'image/jpeg', '2020-05-16 09:10:37', '2020-05-16 09:10:37'),
('f140814b-f6ca-43f3-b7d4-62d447627201', '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', '2bdfa37b-1f96-4285-995b-aa7f90f296df', 119168, '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', 'products', 3, 'image/jpeg', '2020-04-30 07:18:20', '2020-04-30 07:18:20'),
('f18f4180-4a1d-491d-bf10-67adeb12560d', '2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', '42550a90-a494-4270-815c-8327a0b733ca', 200151, '2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', 'products', 2, 'image/jpeg', '2020-04-30 05:57:37', '2020-04-30 05:57:37'),
('f210be69-5a88-474e-b1e5-2c8b36c44399', '40fbf77a-2aa0-4d74-b3f4-eebe720d0291', '8ef0ed48-244e-4565-8244-b6714e1535c1', 227621, '40fbf77a-2aa0-4d74-b3f4-eebe720d0291', 'products', 2, 'image/jpeg', '2020-05-05 07:10:58', '2020-05-05 07:10:58'),
('f2a1ac70-5f5a-4bc1-aa0d-8af00a906a69', '83637ae6-0cbf-4c5d-9027-0c511e088f19', 'cc53d26b-3a5a-4886-aa98-e0c6228434b0', 110648, '83637ae6-0cbf-4c5d-9027-0c511e088f19', 'products', 1, 'image/jpeg', '2020-01-17 21:43:10', '2020-01-17 21:43:10'),
('f370d058-10f8-4cf9-98bd-5f5798b8ae4f', 'd65d7783-4f14-47a6-b19c-03ec4625c84d', '8979a791-d3e2-4a3e-802e-8a0e98fcf7d9', 317076, 'd65d7783-4f14-47a6-b19c-03ec4625c84d', 'products', 1, 'image/jpeg', '2020-04-30 06:13:48', '2020-04-30 06:13:48'),
('f3d9bf80-e741-4009-a1e6-21a226ec690a', 'b5c27513-9044-4dd8-91fb-79ff7863dff8', '51105a88-4b53-4104-b041-f581dc1a6661', 1583628, 'b5c27513-9044-4dd8-91fb-79ff7863dff8', 'products', 2, 'image/jpeg', '2020-05-10 04:14:38', '2020-05-10 04:14:38'),
('f4429433-8197-4d02-b1c7-43a794d214d8', '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', '343dc82f-87a9-486c-b541-9c61909dee16', 648624, '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', 'products', 2, 'image/jpeg', '2020-05-07 08:41:15', '2020-05-07 08:41:15'),
('f4a0602a-4384-41e4-b3b8-5cca75201ab1', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'c986ce46-2278-40f7-9465-bc1fc1a831f2', 1227550, '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', 'products', 6, 'image/jpeg', '2020-05-12 08:21:46', '2020-05-12 08:21:46'),
('f4bf8389-d00f-4c80-ab64-b9818c081aae', 'c9dbf748-7ea1-4673-b420-94f855ef3b74', '8c64d2ea-3057-47b5-8b5e-381ab06c7c24', 83537, 'c9dbf748-7ea1-4673-b420-94f855ef3b74', 'products', 3, 'image/jpeg', '2020-01-17 11:23:17', '2020-01-17 11:23:17'),
('f5266b22-3d4d-40b2-bc2f-56cbdd6fdbd2', '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'ea8436f6-fa3a-47ad-b5be-cf5e26ee8320', 1052331, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 1, 'image/jpeg', '2020-05-07 08:06:42', '2020-05-07 08:06:42'),
('f5bf6e4b-080f-45c7-b3af-a94d4bc4a6eb', '399867e8-c99e-4e72-969a-d93fccb1c886', 'e44f9d2f-fba6-4c67-8441-f6d2d5eaa928', 52055, '399867e8-c99e-4e72-969a-d93fccb1c886', 'products', 2, 'image/jpeg', '2020-01-06 08:34:37', '2020-01-06 08:34:37'),
('f6501fdc-1564-41f3-957a-28523beed713', 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', '6bc08f18-0284-4a5f-aeff-be29eac8a5c6', 1182118, 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', 'products', 1, 'image/jpeg', '2020-05-09 07:00:17', '2020-05-09 07:00:17'),
('f7340332-ea6d-4b3e-b004-2b53f178427f', '57797f8b-9c61-45a7-b7aa-ea7a42dd4b5d', '76e43970-93d5-44c9-b483-d3bc244c5fd9', 98317, '57797f8b-9c61-45a7-b7aa-ea7a42dd4b5d', 'products', 2, 'image/jpeg', '2020-01-17 11:46:40', '2020-01-17 11:46:40'),
('f7fc3387-d44d-471c-8c42-867ccda11205', '2f01ac23-1cfa-436a-8e76-051e6ce244df', '65e6077f-f10d-4e0e-98f3-688bcae9c5af', 317785, '2f01ac23-1cfa-436a-8e76-051e6ce244df', 'products', 3, 'image/jpeg', '2020-01-06 13:07:07', '2020-01-06 13:07:07'),
('f80d7bc3-b81e-496c-a7be-97f40e7af50f', '2f5137ad-4997-41c0-b5f3-30af945a8860', 'b742019e-d6e3-4875-8a43-6ef4749d8650', 1131873, '2f5137ad-4997-41c0-b5f3-30af945a8860', 'products', 2, 'image/jpeg', '2020-05-12 06:27:09', '2020-05-12 06:27:09'),
('f84203b3-55a9-4e95-839b-0930f061dce0', '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'dfcef315-5d83-4a02-b3f3-e15e0d4c22c0', 965096, '1b9f7432-866c-4440-9d4a-158ebcd85fd2', 'products', 2, 'image/jpeg', '2020-05-17 03:54:28', '2020-05-17 03:54:28'),
('f89ea950-d3e6-47bf-b714-b6288b2e7024', '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', 'b4021d0d-f7de-4c82-9713-dddcfe2fb997', 505150, '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', 'products', 3, 'image/jpeg', '2020-01-01 18:18:32', '2020-01-01 18:18:32'),
('f8f40237-700e-4d41-b4c6-1631bcbd791f', '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'c3ec86d7-fb31-4904-a268-7b6fd7ecb64a', 1755405, '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', 'products', 2, 'image/jpeg', '2020-05-10 04:01:14', '2020-05-10 04:01:14'),
('f9c054aa-d9a1-44e4-afe2-ab6415dd98e5', '2192fb3f-4e78-49a5-8de2-3fa883b067da', 'da18b700-5661-40a8-8c8e-45f74784ed85', 49801, '2192fb3f-4e78-49a5-8de2-3fa883b067da', 'products', 1, 'image/jpeg', '2020-01-17 21:48:43', '2020-01-17 21:48:43'),
('fa45369a-a753-4299-8023-c8b7af34d959', '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'a4bc754a-71ed-420a-9b4f-906680428988', 70395, '05289ec9-bd78-4106-921b-f4ca2b75b11c', 'products', 5, 'image/jpeg', '2020-05-31 15:00:28', '2020-05-31 15:00:28'),
('fa544a73-6bc7-4a95-b8ad-b0d82d7317b0', '3763857e-5c54-482b-b047-069e4de044b4', 'e9926607-cbcb-4582-8c26-58c273a91d6c', 1090962, '3763857e-5c54-482b-b047-069e4de044b4', 'products', 5, 'image/jpeg', '2020-05-12 08:17:36', '2020-05-12 08:17:36'),
('fa60921e-ad9d-42b7-8faa-7523360666fa', '399867e8-c99e-4e72-969a-d93fccb1c886', '50d18e01-4b78-4c85-905d-bb95c594f016', 72227, '399867e8-c99e-4e72-969a-d93fccb1c886', 'products', 1, 'image/jpeg', '2020-01-06 08:34:19', '2020-01-06 08:34:19'),
('fad6d16a-925b-4505-83cb-7b482a4c0883', 'dc7545b7-1956-4ad4-9ccd-5999617e8514', 'b3e7091a-d40c-4caa-964b-60212b52d22a', 355991, 'dc7545b7-1956-4ad4-9ccd-5999617e8514', 'products', 3, 'image/jpeg', '2020-05-02 08:49:25', '2020-05-02 08:49:25'),
('fbb7d1f3-30e8-4b69-b9ce-e62946834761', '13c256a2-bf89-4990-933d-452199aff4b9', '76b87d82-e962-4526-a917-65986bef7995', 2166170, '13c256a2-bf89-4990-933d-452199aff4b9', 'products', 3, 'image/jpeg', '2020-05-09 06:37:22', '2020-05-09 06:37:22'),
('fbed73b8-e338-4940-9b99-c9e2895344dc', 'e3c4181b-dbc3-4972-8190-09dff13a6624', 'bf75f080-032d-42f8-808e-7e41a228a33d', 92769, 'e3c4181b-dbc3-4972-8190-09dff13a6624', 'products', 2, 'image/jpeg', '2020-01-17 16:10:51', '2020-01-17 16:10:51'),
('fca784d5-f3b9-40f3-8221-e97704216c67', '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', '13a6772e-7c91-4f9c-aeb6-cd3dd34ed8d2', 649952, '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', 'products', 1, 'image/jpeg', '2020-05-07 07:53:12', '2020-05-07 07:53:12'),
('fce45a25-dc24-4b3b-9a78-af48a0e69f8c', 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', '9ecda238-b3be-4517-b9b4-b1afef5fc05d', 213541, 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', 'products', 3, 'image/jpeg', '2020-04-30 07:39:38', '2020-04-30 07:39:38'),
('fd12e7a7-3fbc-475a-8f12-2dcee119f2d2', '534f104f-0087-4cdf-93c7-814cb7e7c6f4', '818e06ad-8321-4eaf-a2c0-6ef3b6143207', 945529, '534f104f-0087-4cdf-93c7-814cb7e7c6f4', 'products', 3, 'image/jpeg', '2020-05-17 04:05:57', '2020-05-17 04:05:57'),
('fe8576f2-ebaf-4337-8ac1-03bc8c3e8c68', 'db4ff38a-fff2-47b3-bae7-8caa29787516', 'aab09c7c-233e-4840-9b89-4ef29dfb19bf', 117009, 'db4ff38a-fff2-47b3-bae7-8caa29787516', 'products', 1, 'image/jpeg', '2020-01-17 16:43:03', '2020-01-17 16:43:03'),
('fea02222-a7c7-4ab3-8620-c53ffb4f7897', '2f5137ad-4997-41c0-b5f3-30af945a8860', 'e9390b40-ceda-4ca8-a051-49bfa7ebdd4d', 1238688, '2f5137ad-4997-41c0-b5f3-30af945a8860', 'products', 1, 'image/jpeg', '2020-05-12 06:24:05', '2020-05-12 06:24:05'),
('feabcb25-43c2-498c-a517-f5eea2f12cfa', '5dd1be56-5433-412f-8b38-328aec628ff1', '63a6d1bb-400b-436c-89e7-4c999f8605c7', 430166, '5dd1be56-5433-412f-8b38-328aec628ff1', 'products', 2, 'image/jpeg', '2019-12-31 16:31:17', '2019-12-31 16:31:17'),
('fee2feed-48c1-4ec2-b0d6-b07866bab96e', 'fa85d981-9928-4e04-b7e3-f71b28813ae1', '89eaa376-0d20-4c04-9a90-30fbce5456a8', 818409, 'fa85d981-9928-4e04-b7e3-f71b28813ae1', 'products', 1, 'image/jpeg', '2020-05-05 07:12:37', '2020-05-05 07:12:37'),
('ff16c652-ce47-452d-bceb-23c484258535', 'a81714e1-2a04-4789-b50a-98334817019a', '57a22295-c0ab-4cdb-9456-3fe239017388', 201129, 'a81714e1-2a04-4789-b50a-98334817019a', 'products', 1, 'image/jpeg', '2020-04-30 07:19:50', '2020-04-30 07:19:50'),
('ff2feb18-d537-4d2b-b4e2-08f778c1d35e', '99af2b1e-7a53-406f-a319-6cfefb628e77', '463f94d1-9136-4110-b2a1-79a0a0117914', 1111056, '99af2b1e-7a53-406f-a319-6cfefb628e77', 'products', 3, 'image/jpeg', '2020-05-07 06:54:24', '2020-05-07 06:54:24'),
('ff4bb2b6-9f01-4500-a082-0a8f6bd8e0d9', 'b5c27513-9044-4dd8-91fb-79ff7863dff8', '30229005-4d27-4031-915a-c0de23af0061', 1772376, 'b5c27513-9044-4dd8-91fb-79ff7863dff8', 'products', 3, 'image/jpeg', '2020-05-10 04:15:24', '2020-05-10 04:15:24'),
('ffafcb78-3054-4644-94f4-7fbb91aa01ea', 'fe6c6375-3285-4b72-a548-b4f1bd88be25', '80f66da3-560a-408d-934a-73f0d2edf369', 1011834, 'fe6c6375-3285-4b72-a548-b4f1bd88be25', 'products', 1, 'image/jpeg', '2020-05-07 07:18:08', '2020-05-07 07:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategories`
--

CREATE TABLE `product_subcategories` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `product_id` char(36) CHARACTER SET utf8 NOT NULL,
  `subcategory_id` char(36) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product_subcategories`
--

INSERT INTO `product_subcategories` (`id`, `product_id`, `subcategory_id`) VALUES
('00240ea9-d9f5-45e1-a012-d91622ee412d', '5dfda432-4a74-4849-9778-0bbd0898e76d', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('006c6010-b4e5-448f-b543-1c9a4d9a465b', '3f3c6eac-075c-406f-b3ec-7dc36a86b3b7', '58998f3e-b7cc-47d7-9214-dc621e0aff61'),
('01292c41-aebb-413c-ab07-6c3d30765d4d', '957372ca-bc82-4db4-8ab0-37a94a5d33b6', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('01851bf4-21c7-4abf-9539-2721dce36e8c', '36f4031a-9325-41f6-9731-67391796527f', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('03746e8d-ecb8-46a9-b267-1faa63261382', 'bb140c4f-24fd-44fa-9ab5-948993b76ddd', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('044baa74-4e4d-4bad-9822-21f6af3e0e81', 'ef83749a-624f-4fdf-b6ae-37e6c3a9212f', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('04addb22-d135-4c45-82f3-4d11077da0e2', 'cb38f089-9e70-4a59-8234-3bea83c738b5', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('0605d69f-74c8-4dbd-a728-0c7cd6f6c212', '1bec155a-4e94-4028-97fc-6a0aad0efa1b', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', 'f1064890-3825-48ac-84cb-b1e52cc7123e', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('0807accc-c0de-49e0-81c7-0566bc81d3b3', 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('08c7ff4d-b167-49ec-a414-0926c3c9326f', 'fe95615a-ee34-4c2a-9869-fb251145a611', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('0a26ffb7-655d-4698-8f07-c1e4b5b00946', '586024e5-bc50-40b0-a08b-219ef8849798', 'a578c456-2caf-4a38-9ea9-7f5279a80a1e'),
('0af8cdea-d34a-4432-ba19-afb59df16f14', 'ffc96b35-417c-48b7-9edc-d17de49ff64b', 'd4a81068-9aa5-45e7-8c3c-9fdccfcfa8ec'),
('0b37030f-ffc2-4378-bbe3-be0c05d070ec', '32121dc8-251c-4fe7-a23c-a17d4ee5d47a', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('0cf524e9-e527-4947-9983-715ce7180104', 'c9540286-873d-43e1-a079-13ce643c2919', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('0e5ecefc-6099-42d3-bdf1-97616f6bea6a', 'd65d7783-4f14-47a6-b19c-03ec4625c84d', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('155e0185-5dd6-416f-b072-7edfae2cf0fd', '24e2c2d2-56c2-412b-9c99-b6ceed096ab2', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('15ffa30a-7e38-4510-a14d-f0b201fd2002', 'a6759f65-8d0a-473b-8493-975bb824f960', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('18132fee-bb8f-45ec-a9db-fda15ad024a6', 'ee3bf526-44ef-4b13-bb8e-40cb451fd461', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', '95575496-a835-4d48-abb8-ade595a274fb', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('1928a94d-dda0-4705-85d0-6d89ee4b7509', '1c1d96b8-9a9f-432a-87bb-65b4f48610f0', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('19510abf-aa25-4fdf-82bd-f97446a295e6', '82177eb9-7ed0-4d7a-b205-7c84cf234cd5', '50e3c720-d232-4a86-84c0-c3bcea52eb70'),
('1953237e-402c-4adc-814d-24413a050741', 'ce6d56dc-85b8-4fce-acd8-6c8197523ed5', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('19639809-d735-4fbb-897c-5ba46ed815e8', '0e5f7567-d73b-4890-b150-374ee6ec2701', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', '95575496-a835-4d48-abb8-ade595a274fb', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('1a12aa19-3c49-4868-874e-8b4ea1de3bbc', '86f0dce9-c45c-48da-8146-fcda8de122b3', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('1b2cc7fc-f3e3-460f-9236-dabd397b9dec', '3f43546c-6ad3-4d37-bdca-f8c33e0f6be9', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('1d47a133-b8e6-400b-b18d-39767ba6b2af', 'c4e691e4-0b8a-48e3-8e49-53c9170070f6', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('1f5d4323-ecd4-42ca-a483-a05751069787', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('1f93d7cc-35a3-4ae1-b756-d57f37f87844', '74a977bc-7f9c-4362-9b47-b347940485a5', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('1f9ff089-571f-433f-bf0b-1ec8878d3458', '83637ae6-0cbf-4c5d-9027-0c511e088f19', '6cc68421-7af8-42ea-b57d-260d3ee35d38'),
('1fd1c77e-ccb5-447a-bacc-56bbe3fa2424', '49c6d0cd-f075-4575-9b9a-17db940dc1f5', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('2076b842-6d0e-4f83-a0ec-6bed5a6e5bcf', 'ca3af4ca-4eb0-417e-a4cf-5f9a2ea7b378', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('22ab27ad-4b07-4906-8ea0-081faf6e302b', 'c82d508e-a8aa-4b92-96e0-217ba3c5b17d', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('23759a0a-7e35-4098-8cec-069af421e360', '91a6cce0-3037-4514-ae0b-462daa8c9391', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('23ed863b-5545-4a90-aa44-949b8151526e', '303dde82-68d5-4b0e-91a6-c762ca87ee8a', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('25f85536-00ec-4502-a846-50511f8b8e99', 'd9643276-2df4-4ae2-9c3b-44b9e2a8425a', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('281494ee-f1b1-43c2-b60a-bc972d9f7b72', 'f0924131-fda6-41f2-b2d0-157f1cbff499', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('297b4ada-0574-4923-ae39-c465682fb6b3', '3412c6bc-40f8-4a99-b1c1-57f9bff942ce', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('2a8ac0cb-4e15-4ebf-adf7-22f0fd74fe1a', '534f104f-0087-4cdf-93c7-814cb7e7c6f4', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('2bc085f3-ecc9-4501-864f-97bf689e28b7', '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('2bf1e68f-d108-42ba-856b-1670ab884b41', '7a2fc705-dcc8-401d-a71a-f222789811c6', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('2cc58724-6616-43a7-9614-0bb4f5280879', '8cb8dab1-57d1-493c-805e-c18aee9ed8a8', '629c4dff-bca1-42ec-a49c-79f70be2dd6b'),
('2d1ab4aa-e9d6-4ce6-aabf-a2e3811c4b28', '8c0f6122-ca11-4263-bd35-e772e5732b7f', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('2dc17e7b-6c26-4739-a890-2fb494b8087b', '22af49bb-9f8f-43c8-befd-0eec6dfe723a', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('2e345805-5c0c-4f2f-a41e-a313a0a489d0', '399867e8-c99e-4e72-969a-d93fccb1c886', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('323182bd-8df4-4ea7-a685-91a079cf0091', '90c8880b-cb0d-4aeb-b9d0-18d0d8e20a28', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('3328e5a4-689e-4236-b339-5228e24d9139', '1b9f7432-866c-4440-9d4a-158ebcd85fd2', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('3467f7ef-ab07-45bb-966a-511946f66f96', 'f4328b31-c11e-4555-9a2f-6de2524f0089', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('36efa95b-1c37-44b0-9894-0d7fc986838d', 'cb4b2383-a95c-4aa6-9a59-ba4dc368605f', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('37ac51f4-7e09-44cc-bdf8-f0afd778c63f', '399867e8-c99e-4e72-969a-d93fccb1c886', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('3c289a5a-d29f-4fa2-82d5-3f6b6bacbb36', '4792875c-1ad5-4612-b71a-3c496de38397', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('3cb99c68-d8ab-48be-a37a-4cc4a680ae2e', '5dd1be56-5433-412f-8b38-328aec628ff1', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('3ceb77b9-1249-4ebf-b18b-c7c788fc69f3', 'fd975715-d4e6-49e1-abc8-d4d2be527216', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('3ed5cb36-5692-46c8-8f74-b9329a2c7e5c', 'a0fdf785-ecd2-4a7f-a050-7f12048c7f2f', 'd4a81068-9aa5-45e7-8c3c-9fdccfcfa8ec'),
('3f5fd19f-1856-43e1-a31a-19e47fc5598d', '8bd59859-d7a9-4591-abae-99221f3d395e', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('3fcc1daf-a573-4f31-ac74-b8c2681bb811', '108ff5ec-e075-435a-b2ea-95180559ca31', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('40a0117a-4d14-473c-98bf-7d606e165552', '4c4cb867-c912-46ce-9e1f-841212875509', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('40e27977-9a0f-4064-b034-fffcde0aaddb', '38191ac4-f4aa-42bd-8c60-b6a70e66dbe2', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('444df447-b4a1-4be3-a40a-5fcf00c7214a', 'a60e4e0f-1445-432c-a027-667a6a0b5093', '6cc68421-7af8-42ea-b57d-260d3ee35d38'),
('461b0747-496a-4791-955b-e887e5e50d60', 'fa5a7843-ae14-444e-a90a-79c410ee1361', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('467071d7-a30b-4b04-b903-c6329ca3b0b8', '7c2dcd69-c461-4671-8202-b1c00ff71703', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('49ae0c6f-91cd-453f-8ee7-638665236556', '196ede6b-d2dc-466a-b606-8f51c5837af9', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('4bfd539d-c90f-4267-bd3d-338eb5b0dfa4', 'dc7545b7-1956-4ad4-9ccd-5999617e8514', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('4db62c24-c541-4604-ae8d-c4bbafc3f829', '841450e2-7690-48c8-b983-b2b91b4c6bfe', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('4f7b253e-7110-439b-bdd6-b6c9c275af47', '6ca8e3b9-2d77-42a8-8193-edcb075d4743', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('503063f3-a822-4e36-8683-f7b2e34c328a', '58d15493-a5d9-46e5-be28-9d3957355719', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('5059f15b-49be-4f96-ba56-ac1776947cdd', '169116c8-38d8-4b38-83a9-ab0a688cd893', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('525f645e-ca81-43ab-b777-38024263d046', '8f7163a1-abd9-4ebf-af54-9f7b6400f2d6', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('540a3fee-0efa-45ae-adea-c1c8e8114726', 'caff10dd-5218-4c18-8355-9d977965aa8b', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('557ba64d-ad22-486b-8e31-d4b3687a1d98', '19b422b7-3f57-4914-967d-3c939a44eaaf', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('562a7e9b-6502-4db2-bc0a-860e5039c827', '91a6cce0-3037-4514-ae0b-462daa8c9391', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('57207ee6-dbc6-449a-92a8-27b3c85f6d54', '05289ec9-bd78-4106-921b-f4ca2b75b11c', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('57249a8a-40f3-44b0-bc32-ef610b3d2877', '2f01ac23-1cfa-436a-8e76-051e6ce244df', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('5973c551-3e05-40a3-a3d2-a65cde9b10b9', 'a85f48ec-fe2b-431b-9df5-62b40683819c', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('597801ab-5d9f-4e51-a9dd-dc2e129f14af', 'def21a03-6188-4ac8-8335-0dc1879e73cd', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('5fdd39c8-43f6-4116-ac61-05154dfc9f98', 'f3a343d3-bb22-4119-a5de-090142fef9ee', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('60891384-97fd-4bbc-a949-b9cc169c80c4', '1001f69c-4a71-4c4b-93cb-696ee1128862', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('610511cf-2f1d-452a-b793-cd0a07a7ab8a', '8884d091-8a7d-4639-82a3-f9a4986b809b', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('624229d1-6149-4f05-9ba1-1b2eea129bdb', '86a4805d-1ffe-40b3-a4ae-5c9eb3404957', 'a578c456-2caf-4a38-9ea9-7f5279a80a1e'),
('62519d88-b98e-4fb0-a7c3-d2f7234eba1f', '1001f69c-4a71-4c4b-93cb-696ee1128862', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('63acc326-7726-4791-8ba5-b80083ac5d33', 'd17fe7eb-1e53-41d3-93f3-2852c09dd131', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('65995841-a20a-4872-a8cb-3e044fed543f', '406479ec-9fea-49d4-8f1b-34eacc848352', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('66acc2d0-6d0f-47b4-9168-ca9bb5b10570', 'dc7a897f-0d73-4ef4-8067-381dde3cf705', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('66de84bb-82ba-46ab-bb9e-48bc260cba96', 'dc7a897f-0d73-4ef4-8067-381dde3cf705', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('67d755e1-921b-4211-966c-846cd3418085', 'd822e8ed-3c4f-4055-892d-b5b407162076', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('67efd3c0-c919-4175-9c28-728ef8fcd7cd', '344e488a-3f4a-4bb1-8d61-ef61754bbce8', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('69377324-7540-438c-a7c6-7c59cfb60e2a', 'a528490c-773c-4579-af7c-aadf943c7964', '58998f3e-b7cc-47d7-9214-dc621e0aff61'),
('69e89b6e-b26b-429d-88b2-35ec79987e04', 'e1493eee-f61a-4653-9a81-d067f4df91bb', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('6ba6175b-69e0-4359-96eb-761cda76c085', '379cf01d-f340-4f98-b1f3-9a20d3839a4f', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('6c5ce664-9924-4a03-be85-a00de4950c88', '31b75241-9251-4385-ba22-be17c0759e53', 'a578c456-2caf-4a38-9ea9-7f5279a80a1e'),
('6e3ac14c-9352-4eab-abf3-03dc5e69749f', 'f0924131-fda6-41f2-b2d0-157f1cbff499', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('6f25b6fa-ef7d-4271-ac8f-5e5451f9ebee', 'b5422006-a8ff-4f7e-87d0-7f4639a335bc', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('705281d7-4b05-4660-a1df-0f7be5439c10', '7b6bd7a7-6f04-4466-80f4-b83d4cf6d27a', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('71a594e9-b762-4943-a28d-6f8141e26137', '2f01ac23-1cfa-436a-8e76-051e6ce244df', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('72a5a91d-b049-4a33-b0b2-ca2d679c9ed4', '2640e641-b243-485c-b702-f0b772b351d6', '50e3c720-d232-4a86-84c0-c3bcea52eb70'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', '89b65d28-fdef-4a78-9241-a9062c3492ce', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('736c8b72-a721-448c-9abd-06c2b4d143f5', 'ca3af4ca-4eb0-417e-a4cf-5f9a2ea7b378', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('7389f3f9-70a2-4eb5-8aa6-784c9c5aacaf', 'ea9f39f8-d5b0-4926-a9af-a96b8e202e1f', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('745dc612-27be-4170-885d-10d38c5a7b56', 'd293e5c7-e53f-4790-8ea8-ab00fc81c48c', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('77af380e-6b12-4f9f-9b33-803130a0f84d', '2f2eb7e9-11db-4f58-b2da-7a8d6ae5df7c', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', 'e1826524-9bba-4cf2-bd9e-0bcea1d4417d', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('787b5977-ec86-4ba2-af68-399f30864681', '090b4afc-e646-4e02-8750-7dd52a83a406', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('78e08e8b-ac52-41a9-9174-27362aee23ac', '665d0a19-884e-441a-a372-453a37781a7f', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('7bd95a09-f2a1-4c82-99b6-acc0994ba0e1', 'efa2ff31-d489-4eca-b25a-f3ef3e9188a7', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('7c506e8e-9f5b-4b41-bae9-67caf6b64259', 'd7af749d-385d-493b-b774-21429929b44d', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('7d92dbf6-3085-4016-aec1-c93f7a835823', '2e4d5acc-b558-4042-bcc8-7d8efa25c704', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('7dc0f468-c0a4-4b86-ae15-fd024d50e7aa', 'daaf0d20-6b1c-4f43-a887-b145976c7ad9', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('7de8271d-dc39-498d-a786-667808fa034e', 'cafacd4d-5282-4329-af62-2c065273c620', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('7edafb94-72a4-4dba-b08b-79e35512ef9a', '5ffcb152-8438-4694-91d7-68cdff44b004', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('81173cb3-ea9a-486e-be1d-1b53780fd21b', 'ff7bd542-be25-4d55-a8e0-fd833906ed5d', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('8138ff1a-1eb2-45e6-baf9-9fcf580e9eae', 'a9375cce-6096-4f7e-a50b-a28b80708692', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('81aa3e9f-62f1-49ea-a0f1-abe1d2817eb6', 'a72a1b51-a094-4e31-9cf8-3050c70721dd', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('81e7cc0d-e19f-4af6-90e1-aae189cdfe37', '712b1be0-4a11-4a3b-9706-eb23ad444a26', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('8224831b-db40-4a90-b530-a935802d0df2', 'a23c96f7-b2ee-4564-9420-a8fb1d880e8a', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('83a3bce3-b0e4-4148-99c3-50eddf82e381', '3935dd8a-36da-4aed-b1e5-09bea808d97b', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('83dff755-9993-40d6-96fd-86713565a480', '379cf01d-f340-4f98-b1f3-9a20d3839a4f', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('8454701b-05dd-45d3-a054-391698aa3bc2', '1c8d6194-3537-49a6-b3cd-4b48535d8fef', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('85a32a89-3c16-40d1-a476-8c00d8f9e621', '2031d27e-7b02-4114-b0e0-4269848f93ab', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('865ae74e-1853-4dbe-9a52-170ecbd65ad0', '5b0ea2ac-a3d8-406a-a22d-c6662b8a9858', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('86a4f41b-dbeb-485a-a183-4a098c27b1f0', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('875a9266-1eae-4c97-a1ad-9e6133257e87', '1a994a5d-cc8d-46cd-b30a-6f166c91e47b', '58998f3e-b7cc-47d7-9214-dc621e0aff61'),
('87892e61-aaf7-4cab-a0e3-12a1fd51528b', '81f43560-99ae-4400-b0b0-90e56821e24d', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('884bfde0-4a25-4430-afd5-27afe86160a2', 'e046afb3-d5a8-4497-8ac3-6acdf6ad9cf2', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('8855b077-bbbe-4461-ab41-bdb628e78f78', 'b830b3da-e5ee-406e-bef1-360f2b196f45', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('8926dda5-8c13-4b4a-a65e-ad4103ce5b05', '98131462-ad96-475b-a2a2-91bd316f1cf8', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('895ed416-59f9-4e2a-b9d7-6db3ab0f9348', 'fe57ee1c-a067-4a7b-b74d-bb594aed62b9', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('89894099-85dd-43fe-9c0d-d5a2b9242337', 'b5c27513-9044-4dd8-91fb-79ff7863dff8', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('898e52ec-8ced-49bc-a04e-4feb5d950ff5', '7c240973-69c1-44ee-ad7b-8ddb36384aa0', '58998f3e-b7cc-47d7-9214-dc621e0aff61'),
('89dfb46b-3772-4a4a-a50b-106e37dde13c', 'c15a090a-40eb-4b43-bce1-7f97c93701e7', 'a578c456-2caf-4a38-9ea9-7f5279a80a1e'),
('8b742ae4-100f-4cc0-aa17-59ae6fa4d036', '9b587046-06df-4e91-919e-1046817db97f', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('8b937815-a81e-4e94-bc3d-cafa81676209', '34f870c8-ca51-4ec5-98ba-34241a46a923', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('8c6f46ea-c25c-4860-8ef6-992d893cec33', 'a9e235c4-4b2c-45e6-8434-1d00b050b751', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('8ddce4aa-def8-49c7-ac9f-3cae152e56f8', 'a255b993-f990-4c78-b529-94551adae6be', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('8df62821-21ea-44e3-ad71-3213249cc072', 'fe6c6375-3285-4b72-a548-b4f1bd88be25', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('8edff7f5-09c8-430e-9aa2-3201e996ccf9', '25401bc4-4727-4c9b-8eb7-93d6291c1703', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('8fb512f8-e4a3-4469-85d0-d700469c67de', '485f739b-0979-4130-87b0-a5cefed3f515', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('8fbd4d64-5405-4a6a-ac7d-903a1f301df0', 'e9762cf9-802b-4c6e-89c6-0d45feace4a7', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('911276d9-971a-49b5-b775-71dd2739a42b', '810e95aa-4f6d-4c8b-b4fd-4fe4feddf95a', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('9253cbfc-43b7-4b62-a12f-690d1fdd5cc0', '21d6c0fb-99e0-4eab-a76e-959a17a98d98', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('93f0b906-e41e-46ce-b472-82923018036a', 'e0979005-1c1d-4f6e-af4e-751197311a4f', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('9609a523-edc5-42fa-a837-300cc6c54d5c', '1ee26549-f1f1-49b5-ac17-c8201275da91', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', '6d6319ba-5e1d-411a-b601-43dc056d923a', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('9b6ed082-9e86-4d7c-a1a8-5954f6da81c5', 'cd8261f8-30e0-46dc-9182-dc28d4ff1471', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', 'f1064890-3825-48ac-84cb-b1e52cc7123e', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('9d58bf34-330c-4bc9-b17b-c3dbcd187bbb', '3763857e-5c54-482b-b047-069e4de044b4', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', '6d6319ba-5e1d-411a-b601-43dc056d923a', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('a039d713-cd3e-4374-b54e-443679c50959', '4f7d33dc-824e-48b1-9804-f8412c256f95', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('a1c490cd-be02-4831-9aa5-9f030dc412e5', 'b7ec9849-9d99-493d-b98c-8508cb2647fd', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('a1fb312a-653f-4cc1-8c22-507de32e187a', 'd776b0b0-72b6-4d2a-9392-1344a3c632e5', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('a256dafd-7f3e-45ad-b051-c88a8ac71905', '5efeac5d-4d7b-44aa-aa7a-2a42c02e75e9', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('a302e133-2fe3-4c4e-ab0e-ca2512113b0f', '864280c6-39db-4f3f-a13e-1315510b175d', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('a4507560-e153-49ad-8a48-f8c75ab9dbc9', '906b16db-0fe9-4631-9f28-d763225aa70a', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('a4772605-df63-4484-bef4-02e4cf78a866', '50e6e1e8-3ace-4174-8bd6-407771c89ade', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('a5809496-c73f-4503-9e32-4b369360e799', 'fa4e28da-aa67-4ee6-b64a-12d71e16c1eb', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', '0776b2ba-ccc8-4250-b086-e1b194c952e9', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('a6944a75-8ca4-4a33-906a-f66322783510', 'aafdf292-67c9-48ab-8bdf-873854e5fc80', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('a703aaca-2c84-406f-bf4d-73f06ddfbeee', '83d9fc75-d190-4f33-8992-4ce45db55a3d', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', '89b65d28-fdef-4a78-9241-a9062c3492ce', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('ab537b03-b361-48be-a88c-3fee9f00f4bd', '4ddcc4b4-b8cd-4b22-9757-3ae7df17ba85', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('ab616da3-3782-4876-b08a-dc47e5024b0d', '16be941f-137e-48a4-8d0b-2137bc883ab2', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('ad036c26-a9ae-4834-9101-9f090dfcd50c', '0f774a44-d83a-4bc2-91b1-0665cf28c2b7', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', '24867dec-71e4-4ac1-ac12-dd990d10c448', 'e2281c01-5eb5-4c4d-ab55-24c262a92c41'),
('aff7ec77-12f3-414a-a648-1a6e1dc904cb', '9a539382-86dd-4ae8-96ba-23a582c339b6', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('b0df805e-d35d-4836-af83-da7cb8487d81', 'daf86b6e-50b3-4f8a-8b10-10690d045e7a', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('b0fb2e13-46f5-469e-bbd5-d3eab48defe9', '231c8799-a609-4698-a8e6-f541b75c8689', '52553395-38d2-461e-a9df-dc0dda799dbe'),
('b1b0d2a5-6127-445c-9974-d87335c78925', '0ac41846-a548-4365-8e6b-504f8ca0bd63', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('b1de95c3-eb36-46d5-97f3-29a1d9621938', 'dade8b74-1f20-4cb9-a42f-dfbf4140f080', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('b1eca9bb-5acc-4578-8cbc-e0d68acaf6db', '5762df61-60b7-4196-9964-11caac2c2340', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('b3e6a8f0-23e5-4c96-9364-a167cf94c36d', 'ca4d3fb6-fd58-47f4-9ea9-d9a073f61c78', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('b7b26069-3437-47b2-a7a9-ae2ed52a4536', '9148de9e-73f2-42f8-aad8-98f1d469c566', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('b7b80d5e-0646-4aa0-8469-20aa48dd66c7', 'fa85d981-9928-4e04-b7e3-f71b28813ae1', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('b8a06f6f-6317-422f-9346-8011d71ada36', '6735748a-0ba8-4506-a5c1-52e45804cfba', '58998f3e-b7cc-47d7-9214-dc621e0aff61'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('bac91b7f-81e3-4b08-be4e-ca29ac8e9259', 'c9dbf748-7ea1-4673-b420-94f855ef3b74', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', 'd54e9d0c-d4ff-4c78-a805-ebabdd8571ca', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('be6e166c-5b8e-4bb2-85b9-9295a3073ab0', 'c502f0bd-5200-491c-ba49-655b747a436f', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('bf292a9d-2b0b-4bed-a640-664ee82ed96c', '5b6fc59a-87df-4541-86ea-936494495353', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('bffa49a3-c63a-4e76-8b5a-3aa7879d7468', 'e7c061f2-bd6c-409a-a8a4-38e50af531ea', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('bffecdf6-7a6f-426b-9d93-a5369f393973', '99af2b1e-7a53-406f-a319-6cfefb628e77', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('c03fc26a-5cfb-49dc-90bb-b3513f8efba1', '59fbd339-1c79-400c-bc3f-5f50c5b4b065', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('c099fb21-f5fd-4cdc-be83-9b166d9d662b', '7a7126a3-bb86-4aba-b345-916a6138f9fd', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', 'baff621b-fa22-42a1-a53c-7b6f0f3cc072', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('c40295c8-941c-46db-b13f-63ee7b97d770', '72d04364-f4ad-4b4a-b0fc-6366f16a68d8', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('c468d5df-c737-4acd-bab8-709cbc1e3bc9', 'a81714e1-2a04-4789-b50a-98334817019a', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('c81e19cf-8f89-4387-9617-ad9473d40428', '54dee241-c3bd-46b5-8a42-46dacfd56353', 'e2281c01-5eb5-4c4d-ab55-24c262a92c41'),
('c842358f-1759-4e83-b17f-063f7af26050', 'c3479a2c-90b5-4a82-88f7-a110c6c647ec', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('ccff6546-18cd-4a04-ab4a-c7f62709fbeb', 'a8124b69-7dc5-4617-870e-d6bc4b8833b9', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('cd452426-bd9a-4582-a172-8aef859d202c', '947fecec-159c-4621-b460-7f302adc9c88', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('ce35159b-6457-4879-a2a3-192ba321f87a', '76ca15a1-d1c2-4980-b632-50b3155710ae', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('ceb1e371-86e2-4d34-9ece-d1a1656a5e6a', '641fbfc4-8390-498f-ae3c-29a357ffdcb3', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('cf5704ac-566a-42d3-9945-2748ba94220d', 'e1c1a230-8360-49e0-97d3-cfa6cb979301', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('d07c8b33-cec5-47cb-82c4-59e6e1ff2c60', '1188bbd8-9244-4060-9ab9-8cf1aef0b08d', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('d130ec69-bbbf-4ed2-a4ac-f56f396ba7fc', '80bcc297-5f8f-4e6c-ad09-e69a40683746', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('d136c2ef-22f5-4199-8ea0-5cd231369f70', 'fdd96c86-2239-424a-b464-9fea61adb143', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', '2f5137ad-4997-41c0-b5f3-30af945a8860', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('d3b591e6-e03e-4eeb-972f-51da9b85d19e', 'a4509384-44ec-40d7-ad6d-4c86fc167bb3', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('d4991972-2721-4293-874d-d7fc65e33734', '4fb5bd2e-33f6-4e46-b25f-f9a932733e47', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('d5a1a6ae-0d54-41e0-bc84-73a103712eae', '3ea034e9-2c01-4824-95aa-d33709d05201', '50e3c720-d232-4a86-84c0-c3bcea52eb70'),
('d5b58c29-5ae5-440d-8b45-c2b2072d09f0', 'c6e55782-52a9-43ca-bc50-b3db46feec27', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('d5c97b78-9301-4f9e-ba15-8314e44f912b', '977f3b8a-862c-413d-89a6-8817b7143ac7', '7c98ed64-9ce9-4174-b66d-294405cfc8ed'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', '0776b2ba-ccc8-4250-b086-e1b194c952e9', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('d8564e05-c18c-4829-a6f1-0da639a30ef6', '636ceb9d-74b2-4f71-befa-41289b12ffbd', '6cc68421-7af8-42ea-b57d-260d3ee35d38'),
('dafb10d2-1022-452b-ac90-0a8f536d42c4', '43004407-53e6-4715-b817-bbe83afc6739', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('dc67bee6-a8a3-46de-a95c-77f209dee9cb', '95b8f5d2-3285-4ebf-90dc-970ba96f1b69', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('dcf7cad5-b19b-4d07-a8a3-6cd9027470f5', 'fa5a7843-ae14-444e-a90a-79c410ee1361', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('dde71316-0905-4f88-8a5e-c8019ee20066', '9fdb30e9-83b3-45f6-ba22-adcf8ec3ffe8', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('df2d1436-17ef-46e9-b491-b50395e87104', '40c2fa45-8c63-475f-b0ae-a834e2f4feb8', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('e070c601-2657-4e28-834a-db6fea808b9d', '0c0a1df1-310e-4c79-a61b-c8dcb7f00ded', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', '1401db66-2179-4f1b-8245-6a456aa67eb3', 'e2281c01-5eb5-4c4d-ab55-24c262a92c41'),
('e32d5cb4-039f-4b9a-bfca-a474691b6ef9', '13c256a2-bf89-4990-933d-452199aff4b9', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('e41eb748-52f9-4a94-a8a3-967408220c7b', '1188bbd8-9244-4060-9ab9-8cf1aef0b08d', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', 'a5df16b6-24b1-4fc3-838a-955679b5d993', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('e7b2a3ed-5f1d-4822-8df6-7feebc754e72', 'c9cca7ed-e714-4966-bdd2-186aa79d2843', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('ea25b0ec-c6e5-49ca-bd50-74b8f848ff79', '79e20b1a-804f-49b1-93ec-d1debd3bb711', '39fc7e8a-3707-495b-8da5-48eb1279d188'),
('eac7f95f-9772-42cb-86d8-60534e8d7dba', 'c50904d6-3561-47ff-96ed-f2b5f64a28b1', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('ebda1f84-b49f-49bf-8fa6-02f804c796ef', 'fccb6c4f-de2d-42a9-b076-a3a3a1e32319', '50e3c720-d232-4a86-84c0-c3bcea52eb70'),
('ec80d3fc-f4b5-4296-9ae8-3304e86a7b38', '53d46e6b-f9a6-4e82-8a3f-1ac2676149b1', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('ecf0fe96-882a-4bbd-b51d-7e708161be36', '36739c31-df65-4074-8702-25e2ed4fdc96', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('ed70936c-7da8-4ade-a49a-4d40a609d3e0', 'd0c45dfc-d648-463c-af7a-e3419067ba2a', 'a578c456-2caf-4a38-9ea9-7f5279a80a1e'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', '1c8d6194-3537-49a6-b3cd-4b48535d8fef', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('efd93e08-9090-456b-ab89-1f31c748ee6a', '69a1aa46-5d33-4451-bb02-2f5eccb39c99', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('f0d2a8e8-373f-4ece-9fba-c70a8d1bcf4e', '33a46083-d08e-40c1-aeb4-5f233410505b', '453de578-32d4-4f15-8fc3-debe7f5e846d'),
('f116048a-f28a-47d5-a015-b5a6c659b49c', '3ba19f10-43c0-4f79-9cd9-c61e81cdaac0', '280d47a2-a90d-4cfe-846d-56e0db6f496a'),
('f5b78a4f-d742-4740-a298-6d0b3221022a', 'd50ce435-9198-471d-98b2-fe0fc0d336f9', '6cc68421-7af8-42ea-b57d-260d3ee35d38'),
('f5eac95b-72ac-4e12-a315-d341ff68d779', '3b1226e6-e4bb-42b4-a6ea-7680412c72e5', '50e3c720-d232-4a86-84c0-c3bcea52eb70'),
('f6aa5821-cc6e-44db-84a0-d72520a3517b', '40fbf77a-2aa0-4d74-b3f4-eebe720d0291', '220d8fc4-f0f9-4044-af4d-468c0931096f'),
('f6d9e63e-82ca-4424-bd91-f10611791d6f', '5ffcb152-8438-4694-91d7-68cdff44b004', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('f75397d1-110f-45be-8fa1-76824f60876a', '8d0f5bd5-9dbf-44a1-80a2-d47a63ada705', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('f85ce511-b983-4c96-80c9-5164e7df3dd8', '4f7d33dc-824e-48b1-9804-f8412c256f95', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('f9d832a3-aa2b-4625-843d-0dfc64484fd9', '31cee6e1-7b69-4a85-b244-ecea1649d3d2', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('f9f2b380-458f-4294-9e73-fe67dd2afc1a', '2938b24b-2eef-4bdd-acfd-ce17219621d4', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('fafd2628-7f95-43a4-9a59-60bc33bae920', '2ae34c8d-8b3e-4638-a7f0-5580326064f1', '395c89fb-b782-4317-b8f0-c91d588179f5'),
('fb9deb21-bae3-4f86-bfe8-2651d5b4902a', '7c895e53-fadd-4114-8da9-9014af54fe3b', 'a9574f38-1180-4bd6-8d54-d799d14b6264'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', '1c8242b1-f3b1-4881-81a1-cdf13b691cb2'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', 'a5df16b6-24b1-4fc3-838a-955679b5d993', '8abb83b8-f31e-4506-b557-a63ffefcd78d'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', '46db1a49-a4b9-4c1e-bce9-0a245f7659bb', '8abb83b8-f31e-4506-b557-a63ffefcd78d');

-- --------------------------------------------------------

--
-- Table structure for table `product_subcategory_size`
--

CREATE TABLE `product_subcategory_size` (
  `product_subcategory_id` char(36) CHARACTER SET utf8 NOT NULL,
  `size_id` char(36) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product_subcategory_size`
--

INSERT INTO `product_subcategory_size` (`product_subcategory_id`, `size_id`) VALUES
('01292c41-aebb-413c-ab07-6c3d30765d4d', '0db81ad5-edb7-4269-8761-310e55518989'),
('01292c41-aebb-413c-ab07-6c3d30765d4d', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('01292c41-aebb-413c-ab07-6c3d30765d4d', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('06da1ea3-a074-4db6-b85c-65e6e77af409', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('0807accc-c0de-49e0-81c7-0566bc81d3b3', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('0807accc-c0de-49e0-81c7-0566bc81d3b3', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('0807accc-c0de-49e0-81c7-0566bc81d3b3', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('0807accc-c0de-49e0-81c7-0566bc81d3b3', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('08454c8b-6e81-45e5-a76c-56075353e9d2', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('18bca11c-f712-4efd-af19-a35ae9b8c647', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('19510abf-aa25-4fdf-82bd-f97446a295e6', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('19510abf-aa25-4fdf-82bd-f97446a295e6', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('19510abf-aa25-4fdf-82bd-f97446a295e6', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('19510abf-aa25-4fdf-82bd-f97446a295e6', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('19a4ce12-a972-4ca2-b9c4-707a8ca497ef', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('1f5d4323-ecd4-42ca-a483-a05751069787', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('1f5d4323-ecd4-42ca-a483-a05751069787', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('1f5d4323-ecd4-42ca-a483-a05751069787', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('1f5d4323-ecd4-42ca-a483-a05751069787', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('1f5d4323-ecd4-42ca-a483-a05751069787', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('2076b842-6d0e-4f83-a0ec-6bed5a6e5bcf', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('2076b842-6d0e-4f83-a0ec-6bed5a6e5bcf', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('2076b842-6d0e-4f83-a0ec-6bed5a6e5bcf', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('2076b842-6d0e-4f83-a0ec-6bed5a6e5bcf', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('23759a0a-7e35-4098-8cec-069af421e360', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('23759a0a-7e35-4098-8cec-069af421e360', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('23759a0a-7e35-4098-8cec-069af421e360', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('23759a0a-7e35-4098-8cec-069af421e360', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('281494ee-f1b1-43c2-b60a-bc972d9f7b72', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('281494ee-f1b1-43c2-b60a-bc972d9f7b72', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('281494ee-f1b1-43c2-b60a-bc972d9f7b72', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('281494ee-f1b1-43c2-b60a-bc972d9f7b72', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('2bc085f3-ecc9-4501-864f-97bf689e28b7', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('2bc085f3-ecc9-4501-864f-97bf689e28b7', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('2bc085f3-ecc9-4501-864f-97bf689e28b7', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('2bc085f3-ecc9-4501-864f-97bf689e28b7', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('2dc17e7b-6c26-4739-a890-2fb494b8087b', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('2dc17e7b-6c26-4739-a890-2fb494b8087b', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('2dc17e7b-6c26-4739-a890-2fb494b8087b', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('2dc17e7b-6c26-4739-a890-2fb494b8087b', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('2e345805-5c0c-4f2f-a41e-a313a0a489d0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('2e345805-5c0c-4f2f-a41e-a313a0a489d0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('2e345805-5c0c-4f2f-a41e-a313a0a489d0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('2e345805-5c0c-4f2f-a41e-a313a0a489d0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('36efa95b-1c37-44b0-9894-0d7fc986838d', '0db81ad5-edb7-4269-8761-310e55518989'),
('36efa95b-1c37-44b0-9894-0d7fc986838d', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('36efa95b-1c37-44b0-9894-0d7fc986838d', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('3726aea3-39dc-490a-af72-bdebaa2d8d9f', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('37ac51f4-7e09-44cc-bdf8-f0afd778c63f', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('37ac51f4-7e09-44cc-bdf8-f0afd778c63f', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('37ac51f4-7e09-44cc-bdf8-f0afd778c63f', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('37ac51f4-7e09-44cc-bdf8-f0afd778c63f', '6b85c462-1d38-4e12-b809-499e00b7d686'),
('3cb99c68-d8ab-48be-a37a-4cc4a680ae2e', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('3cb99c68-d8ab-48be-a37a-4cc4a680ae2e', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('3cb99c68-d8ab-48be-a37a-4cc4a680ae2e', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('3cb99c68-d8ab-48be-a37a-4cc4a680ae2e', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('40e27977-9a0f-4064-b034-fffcde0aaddb', '0db81ad5-edb7-4269-8761-310e55518989'),
('40e27977-9a0f-4064-b034-fffcde0aaddb', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('40e27977-9a0f-4064-b034-fffcde0aaddb', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('461b0747-496a-4791-955b-e887e5e50d60', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('461b0747-496a-4791-955b-e887e5e50d60', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('461b0747-496a-4791-955b-e887e5e50d60', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('461b0747-496a-4791-955b-e887e5e50d60', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('461b0747-496a-4791-955b-e887e5e50d60', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('5059f15b-49be-4f96-ba56-ac1776947cdd', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('5059f15b-49be-4f96-ba56-ac1776947cdd', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('5059f15b-49be-4f96-ba56-ac1776947cdd', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('5059f15b-49be-4f96-ba56-ac1776947cdd', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('525f645e-ca81-43ab-b777-38024263d046', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('525f645e-ca81-43ab-b777-38024263d046', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('525f645e-ca81-43ab-b777-38024263d046', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('525f645e-ca81-43ab-b777-38024263d046', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('557ba64d-ad22-486b-8e31-d4b3687a1d98', '0db81ad5-edb7-4269-8761-310e55518989'),
('557ba64d-ad22-486b-8e31-d4b3687a1d98', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('557ba64d-ad22-486b-8e31-d4b3687a1d98', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('562a7e9b-6502-4db2-bc0a-860e5039c827', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('562a7e9b-6502-4db2-bc0a-860e5039c827', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('562a7e9b-6502-4db2-bc0a-860e5039c827', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('562a7e9b-6502-4db2-bc0a-860e5039c827', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('57249a8a-40f3-44b0-bc32-ef610b3d2877', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('57249a8a-40f3-44b0-bc32-ef610b3d2877', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('57249a8a-40f3-44b0-bc32-ef610b3d2877', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('57249a8a-40f3-44b0-bc32-ef610b3d2877', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('597801ab-5d9f-4e51-a9dd-dc2e129f14af', '2112c8c9-bb52-438b-9e02-63ad846d2112'),
('597801ab-5d9f-4e51-a9dd-dc2e129f14af', '45323f78-e7b4-4e03-addd-617e20ebca93'),
('597801ab-5d9f-4e51-a9dd-dc2e129f14af', 'cca765b9-fcc3-498c-a073-5118b27a29c8'),
('5fdd39c8-43f6-4116-ac61-05154dfc9f98', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('5fdd39c8-43f6-4116-ac61-05154dfc9f98', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('5fdd39c8-43f6-4116-ac61-05154dfc9f98', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('5fdd39c8-43f6-4116-ac61-05154dfc9f98', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('60891384-97fd-4bbc-a949-b9cc169c80c4', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('60891384-97fd-4bbc-a949-b9cc169c80c4', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('60891384-97fd-4bbc-a949-b9cc169c80c4', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('60891384-97fd-4bbc-a949-b9cc169c80c4', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('610511cf-2f1d-452a-b793-cd0a07a7ab8a', '0db81ad5-edb7-4269-8761-310e55518989'),
('610511cf-2f1d-452a-b793-cd0a07a7ab8a', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('610511cf-2f1d-452a-b793-cd0a07a7ab8a', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('62519d88-b98e-4fb0-a7c3-d2f7234eba1f', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('62519d88-b98e-4fb0-a7c3-d2f7234eba1f', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('62519d88-b98e-4fb0-a7c3-d2f7234eba1f', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('62519d88-b98e-4fb0-a7c3-d2f7234eba1f', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('66acc2d0-6d0f-47b4-9168-ca9bb5b10570', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('66acc2d0-6d0f-47b4-9168-ca9bb5b10570', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('66acc2d0-6d0f-47b4-9168-ca9bb5b10570', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('66acc2d0-6d0f-47b4-9168-ca9bb5b10570', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('66de84bb-82ba-46ab-bb9e-48bc260cba96', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('66de84bb-82ba-46ab-bb9e-48bc260cba96', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('66de84bb-82ba-46ab-bb9e-48bc260cba96', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('66de84bb-82ba-46ab-bb9e-48bc260cba96', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('6ba6175b-69e0-4359-96eb-761cda76c085', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('6ba6175b-69e0-4359-96eb-761cda76c085', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('6ba6175b-69e0-4359-96eb-761cda76c085', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('6ba6175b-69e0-4359-96eb-761cda76c085', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('6e3ac14c-9352-4eab-abf3-03dc5e69749f', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('6e3ac14c-9352-4eab-abf3-03dc5e69749f', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('6e3ac14c-9352-4eab-abf3-03dc5e69749f', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('6e3ac14c-9352-4eab-abf3-03dc5e69749f', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('6f25b6fa-ef7d-4271-ac8f-5e5451f9ebee', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('6f25b6fa-ef7d-4271-ac8f-5e5451f9ebee', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('6f25b6fa-ef7d-4271-ac8f-5e5451f9ebee', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('6f25b6fa-ef7d-4271-ac8f-5e5451f9ebee', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('71a594e9-b762-4943-a28d-6f8141e26137', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('71a594e9-b762-4943-a28d-6f8141e26137', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('71a594e9-b762-4943-a28d-6f8141e26137', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('71a594e9-b762-4943-a28d-6f8141e26137', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('72a5a91d-b049-4a33-b0b2-ca2d679c9ed4', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('72a5a91d-b049-4a33-b0b2-ca2d679c9ed4', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('72a5a91d-b049-4a33-b0b2-ca2d679c9ed4', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('72a5a91d-b049-4a33-b0b2-ca2d679c9ed4', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('73656be7-5515-4ac3-acfd-b36dcacb8b92', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('736c8b72-a721-448c-9abd-06c2b4d143f5', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('736c8b72-a721-448c-9abd-06c2b4d143f5', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('736c8b72-a721-448c-9abd-06c2b4d143f5', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('736c8b72-a721-448c-9abd-06c2b4d143f5', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('745dc612-27be-4170-885d-10d38c5a7b56', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('745dc612-27be-4170-885d-10d38c5a7b56', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('745dc612-27be-4170-885d-10d38c5a7b56', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('745dc612-27be-4170-885d-10d38c5a7b56', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('77b31a4d-e192-4d2c-879e-85c1b7786f3d', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('77bd40bc-b6e6-4cf7-8141-4a037e19f0a9', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('7bd95a09-f2a1-4c82-99b6-acc0994ba0e1', '0db81ad5-edb7-4269-8761-310e55518989'),
('7bd95a09-f2a1-4c82-99b6-acc0994ba0e1', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('7bd95a09-f2a1-4c82-99b6-acc0994ba0e1', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('7c506e8e-9f5b-4b41-bae9-67caf6b64259', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('7c506e8e-9f5b-4b41-bae9-67caf6b64259', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('7c506e8e-9f5b-4b41-bae9-67caf6b64259', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('7c506e8e-9f5b-4b41-bae9-67caf6b64259', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('7de8271d-dc39-498d-a786-667808fa034e', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('7de8271d-dc39-498d-a786-667808fa034e', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('7de8271d-dc39-498d-a786-667808fa034e', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('7de8271d-dc39-498d-a786-667808fa034e', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('7edafb94-72a4-4dba-b08b-79e35512ef9a', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('7edafb94-72a4-4dba-b08b-79e35512ef9a', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('7edafb94-72a4-4dba-b08b-79e35512ef9a', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('7edafb94-72a4-4dba-b08b-79e35512ef9a', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('81173cb3-ea9a-486e-be1d-1b53780fd21b', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('81173cb3-ea9a-486e-be1d-1b53780fd21b', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('81173cb3-ea9a-486e-be1d-1b53780fd21b', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('81173cb3-ea9a-486e-be1d-1b53780fd21b', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('8224831b-db40-4a90-b530-a935802d0df2', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('8224831b-db40-4a90-b530-a935802d0df2', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('8224831b-db40-4a90-b530-a935802d0df2', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('8224831b-db40-4a90-b530-a935802d0df2', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('83dff755-9993-40d6-96fd-86713565a480', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('83dff755-9993-40d6-96fd-86713565a480', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('83dff755-9993-40d6-96fd-86713565a480', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('83dff755-9993-40d6-96fd-86713565a480', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('8454701b-05dd-45d3-a054-391698aa3bc2', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('8454701b-05dd-45d3-a054-391698aa3bc2', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('8454701b-05dd-45d3-a054-391698aa3bc2', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('8454701b-05dd-45d3-a054-391698aa3bc2', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('865ae74e-1853-4dbe-9a52-170ecbd65ad0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('865ae74e-1853-4dbe-9a52-170ecbd65ad0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('865ae74e-1853-4dbe-9a52-170ecbd65ad0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('865ae74e-1853-4dbe-9a52-170ecbd65ad0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('86a4f41b-dbeb-485a-a183-4a098c27b1f0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('86a4f41b-dbeb-485a-a183-4a098c27b1f0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('86a4f41b-dbeb-485a-a183-4a098c27b1f0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('86a4f41b-dbeb-485a-a183-4a098c27b1f0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('884bfde0-4a25-4430-afd5-27afe86160a2', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('884bfde0-4a25-4430-afd5-27afe86160a2', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('884bfde0-4a25-4430-afd5-27afe86160a2', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('884bfde0-4a25-4430-afd5-27afe86160a2', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('895ed416-59f9-4e2a-b9d7-6db3ab0f9348', '0db81ad5-edb7-4269-8761-310e55518989'),
('895ed416-59f9-4e2a-b9d7-6db3ab0f9348', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('895ed416-59f9-4e2a-b9d7-6db3ab0f9348', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('89894099-85dd-43fe-9c0d-d5a2b9242337', '0db81ad5-edb7-4269-8761-310e55518989'),
('89894099-85dd-43fe-9c0d-d5a2b9242337', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('89894099-85dd-43fe-9c0d-d5a2b9242337', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('8b937815-a81e-4e94-bc3d-cafa81676209', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('8b937815-a81e-4e94-bc3d-cafa81676209', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('8b937815-a81e-4e94-bc3d-cafa81676209', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('8b937815-a81e-4e94-bc3d-cafa81676209', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('911276d9-971a-49b5-b775-71dd2739a42b', '0db81ad5-edb7-4269-8761-310e55518989'),
('911276d9-971a-49b5-b775-71dd2739a42b', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('911276d9-971a-49b5-b775-71dd2739a42b', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('93f0b906-e41e-46ce-b472-82923018036a', '2112c8c9-bb52-438b-9e02-63ad846d2112'),
('93f0b906-e41e-46ce-b472-82923018036a', '45323f78-e7b4-4e03-addd-617e20ebca93'),
('93f0b906-e41e-46ce-b472-82923018036a', 'cca765b9-fcc3-498c-a073-5118b27a29c8'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('9760a3fb-1495-443a-9f40-834405d2a5f9', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('9b6ed082-9e86-4d7c-a1a8-5954f6da81c5', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('9b6ed082-9e86-4d7c-a1a8-5954f6da81c5', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('9b6ed082-9e86-4d7c-a1a8-5954f6da81c5', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('9b6ed082-9e86-4d7c-a1a8-5954f6da81c5', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('9ce56ee6-d1c4-4867-a55a-8db61f43cfed', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('9d58bf34-330c-4bc9-b17b-c3dbcd187bbb', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('9d58bf34-330c-4bc9-b17b-c3dbcd187bbb', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('9d58bf34-330c-4bc9-b17b-c3dbcd187bbb', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('9d58bf34-330c-4bc9-b17b-c3dbcd187bbb', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('9d6f495b-19d0-4be9-a0c3-62cfda6420f8', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('a039d713-cd3e-4374-b54e-443679c50959', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('a039d713-cd3e-4374-b54e-443679c50959', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('a039d713-cd3e-4374-b54e-443679c50959', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('a039d713-cd3e-4374-b54e-443679c50959', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('a5bcaf02-d6eb-46cb-9196-f6ca7fa770b3', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('a6944a75-8ca4-4a33-906a-f66322783510', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('a6944a75-8ca4-4a33-906a-f66322783510', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('a6944a75-8ca4-4a33-906a-f66322783510', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('a6944a75-8ca4-4a33-906a-f66322783510', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('a703aaca-2c84-406f-bf4d-73f06ddfbeee', '0db81ad5-edb7-4269-8761-310e55518989'),
('a703aaca-2c84-406f-bf4d-73f06ddfbeee', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('a703aaca-2c84-406f-bf4d-73f06ddfbeee', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('a764a881-c9a0-4a0a-ab5b-ec918757c626', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ab616da3-3782-4876-b08a-dc47e5024b0d', '0db81ad5-edb7-4269-8761-310e55518989'),
('ab616da3-3782-4876-b08a-dc47e5024b0d', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('ab616da3-3782-4876-b08a-dc47e5024b0d', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('aff5bb1b-9232-405b-ad13-266fa0e7672e', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('aff7ec77-12f3-414a-a648-1a6e1dc904cb', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('aff7ec77-12f3-414a-a648-1a6e1dc904cb', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('aff7ec77-12f3-414a-a648-1a6e1dc904cb', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('aff7ec77-12f3-414a-a648-1a6e1dc904cb', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('b1b0d2a5-6127-445c-9974-d87335c78925', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('b1b0d2a5-6127-445c-9974-d87335c78925', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('b1b0d2a5-6127-445c-9974-d87335c78925', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('b1b0d2a5-6127-445c-9974-d87335c78925', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('b90b3a47-968d-4839-951a-2b6eeed709e0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('bd8d7878-df80-412e-ad4b-7e62a84b0348', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('be6e166c-5b8e-4bb2-85b9-9295a3073ab0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('be6e166c-5b8e-4bb2-85b9-9295a3073ab0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('be6e166c-5b8e-4bb2-85b9-9295a3073ab0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('be6e166c-5b8e-4bb2-85b9-9295a3073ab0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('bf292a9d-2b0b-4bed-a640-664ee82ed96c', '0db81ad5-edb7-4269-8761-310e55518989'),
('bf292a9d-2b0b-4bed-a640-664ee82ed96c', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('bf292a9d-2b0b-4bed-a640-664ee82ed96c', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('bffecdf6-7a6f-426b-9d93-a5369f393973', '0db81ad5-edb7-4269-8761-310e55518989'),
('bffecdf6-7a6f-426b-9d93-a5369f393973', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('bffecdf6-7a6f-426b-9d93-a5369f393973', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('c17aeb49-46c1-4b62-97f2-c960c313aea6', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('c40295c8-941c-46db-b13f-63ee7b97d770', '0db81ad5-edb7-4269-8761-310e55518989'),
('c40295c8-941c-46db-b13f-63ee7b97d770', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('c40295c8-941c-46db-b13f-63ee7b97d770', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('c81e19cf-8f89-4387-9617-ad9473d40428', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('c81e19cf-8f89-4387-9617-ad9473d40428', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('c81e19cf-8f89-4387-9617-ad9473d40428', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('c81e19cf-8f89-4387-9617-ad9473d40428', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('c81e19cf-8f89-4387-9617-ad9473d40428', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d07c8b33-cec5-47cb-82c4-59e6e1ff2c60', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d07c8b33-cec5-47cb-82c4-59e6e1ff2c60', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d07c8b33-cec5-47cb-82c4-59e6e1ff2c60', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d07c8b33-cec5-47cb-82c4-59e6e1ff2c60', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d1bad1ad-8232-417a-a741-fdde902ae4d2', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d3b591e6-e03e-4eeb-972f-51da9b85d19e', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d3b591e6-e03e-4eeb-972f-51da9b85d19e', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d3b591e6-e03e-4eeb-972f-51da9b85d19e', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d3b591e6-e03e-4eeb-972f-51da9b85d19e', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d4991972-2721-4293-874d-d7fc65e33734', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d4991972-2721-4293-874d-d7fc65e33734', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d4991972-2721-4293-874d-d7fc65e33734', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('d4991972-2721-4293-874d-d7fc65e33734', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d4991972-2721-4293-874d-d7fc65e33734', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d5a1a6ae-0d54-41e0-bc84-73a103712eae', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d5a1a6ae-0d54-41e0-bc84-73a103712eae', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d5a1a6ae-0d54-41e0-bc84-73a103712eae', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d5a1a6ae-0d54-41e0-bc84-73a103712eae', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('d5c97b78-9301-4f9e-ba15-8314e44f912b', '0db81ad5-edb7-4269-8761-310e55518989'),
('d5c97b78-9301-4f9e-ba15-8314e44f912b', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('d5c97b78-9301-4f9e-ba15-8314e44f912b', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('d5f5b1e2-3a16-48f8-bc71-d25ab0a88788', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('dcf7cad5-b19b-4d07-a8a3-6cd9027470f5', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('dcf7cad5-b19b-4d07-a8a3-6cd9027470f5', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('dcf7cad5-b19b-4d07-a8a3-6cd9027470f5', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('dcf7cad5-b19b-4d07-a8a3-6cd9027470f5', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('dde71316-0905-4f88-8a5e-c8019ee20066', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('dde71316-0905-4f88-8a5e-c8019ee20066', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('dde71316-0905-4f88-8a5e-c8019ee20066', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('dde71316-0905-4f88-8a5e-c8019ee20066', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('df2d1436-17ef-46e9-b491-b50395e87104', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('df2d1436-17ef-46e9-b491-b50395e87104', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('df2d1436-17ef-46e9-b491-b50395e87104', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('df2d1436-17ef-46e9-b491-b50395e87104', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('df2d1436-17ef-46e9-b491-b50395e87104', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('e2266c49-62b8-467a-bb0e-b1717857d2c0', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('e32d5cb4-039f-4b9a-bfca-a474691b6ef9', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('e32d5cb4-039f-4b9a-bfca-a474691b6ef9', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('e32d5cb4-039f-4b9a-bfca-a474691b6ef9', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('e32d5cb4-039f-4b9a-bfca-a474691b6ef9', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('e41eb748-52f9-4a94-a8a3-967408220c7b', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('e41eb748-52f9-4a94-a8a3-967408220c7b', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('e41eb748-52f9-4a94-a8a3-967408220c7b', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('e41eb748-52f9-4a94-a8a3-967408220c7b', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('e78f9a95-bd6d-4d84-ad8b-a645c451b2eb', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ea25b0ec-c6e5-49ca-bd50-74b8f848ff79', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('ea25b0ec-c6e5-49ca-bd50-74b8f848ff79', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('ea25b0ec-c6e5-49ca-bd50-74b8f848ff79', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('ea25b0ec-c6e5-49ca-bd50-74b8f848ff79', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ebda1f84-b49f-49bf-8fa6-02f804c796ef', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('ebda1f84-b49f-49bf-8fa6-02f804c796ef', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('ebda1f84-b49f-49bf-8fa6-02f804c796ef', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('ebda1f84-b49f-49bf-8fa6-02f804c796ef', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ec80d3fc-f4b5-4296-9ae8-3304e86a7b38', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('ec80d3fc-f4b5-4296-9ae8-3304e86a7b38', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('ec80d3fc-f4b5-4296-9ae8-3304e86a7b38', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('ec80d3fc-f4b5-4296-9ae8-3304e86a7b38', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('ef66c520-698e-4bd5-a51c-a89d6acb5c26', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('f5eac95b-72ac-4e12-a315-d341ff68d779', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('f5eac95b-72ac-4e12-a315-d341ff68d779', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('f5eac95b-72ac-4e12-a315-d341ff68d779', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('f5eac95b-72ac-4e12-a315-d341ff68d779', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('f6d9e63e-82ca-4424-bd91-f10611791d6f', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('f6d9e63e-82ca-4424-bd91-f10611791d6f', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('f6d9e63e-82ca-4424-bd91-f10611791d6f', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('f6d9e63e-82ca-4424-bd91-f10611791d6f', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('f85ce511-b983-4c96-80c9-5164e7df3dd8', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('f85ce511-b983-4c96-80c9-5164e7df3dd8', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('f85ce511-b983-4c96-80c9-5164e7df3dd8', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('f85ce511-b983-4c96-80c9-5164e7df3dd8', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('f9d832a3-aa2b-4625-843d-0dfc64484fd9', '0db81ad5-edb7-4269-8761-310e55518989'),
('f9d832a3-aa2b-4625-843d-0dfc64484fd9', 'c5ea9812-a0f8-477f-a197-b2621bf3a2ad'),
('f9d832a3-aa2b-4625-843d-0dfc64484fd9', 'f6122841-bcd3-4b75-b1a0-bc5351f3b69f'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('fcd88ca2-7420-4129-8c5e-881d7e001628', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('fd4a21a4-3562-404b-b2e5-aeec70d01be4', 'abef120e-d8c7-4d49-873a-0c924508f00c'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', '27c8f126-fc00-4663-848f-bc0798cf462c'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', '55a38cc9-7bd9-4cb6-b15d-90d427bfde34'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', '6156df4e-0da1-4d89-ab22-8662cea9734b'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', '69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46'),
('ff69edb9-ca0f-4cf8-9e54-94f4498a2336', 'abef120e-d8c7-4d49-873a-0c924508f00c');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
('1', 'آذربايجان شرقي'),
('10', 'خراسان جنوبي'),
('11', 'خراسان رضوي'),
('12', 'خراسان شمالي'),
('13', 'خوزستان'),
('14', 'زنجان'),
('15', 'سمنان'),
('16', 'سيستان و بلوچستان'),
('17', 'فارس'),
('18', 'قزوين'),
('19', 'قم'),
('2', 'آذربايجان غربي'),
('20', 'كردستان'),
('21', 'كرمان'),
('22', 'كرمانشاه'),
('23', 'كهكيلويه و بويراحمد'),
('24', 'گلستان'),
('25', 'گيلان'),
('26', 'لرستان'),
('27', 'مازندران'),
('28', 'مركزي'),
('29', 'هرمزگان'),
('3', 'اردبيل'),
('30', 'همدان'),
('31', 'يزد'),
('4', 'اصفهان'),
('5', 'البرز'),
('6', 'ايلام'),
('7', 'بوشهر'),
('8', 'تهران'),
('9', 'چهارمحال بختياري');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1ca1d89d-469d-4857-b69c-4c8a7dd8bb6e', 'بنکداری', 'بنکداران', '2019-12-24 09:12:24', '2019-12-24 09:12:24', NULL),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'تولیدکننده', 'تولید کننده', '2019-12-22 18:32:22', '2019-12-22 18:32:22', NULL),
('4376082f-4bba-4379-805c-b6813efad4eb', 'مشتری', 'مشتری', '2019-12-22 19:15:39', '2019-12-22 19:15:39', NULL),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', 'حامل', 'حامل', '2019-12-22 19:09:25', '2019-12-22 19:09:25', NULL),
('f6a4a895-0bf2-405e-a657-178b540a7933', 'supervisor', 'سوپروایــزر', '2019-11-14 16:01:23', '2019-11-14 16:01:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_assignments`
--

CREATE TABLE `role_assignments` (
  `id` char(36) NOT NULL,
  `role_id` char(36) NOT NULL,
  `permission_group_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_assignments`
--

INSERT INTO `role_assignments` (`id`, `role_id`, `permission_group_id`) VALUES
('02ea821a-1690-4c18-9997-0c52c87d408a', 'f6a4a895-0bf2-405e-a657-178b540a7933', '6754f6fb-d87a-4db9-b7f1-ce7eb4f06878'),
('12af0232-a629-46c0-9339-5d3348ff4935', 'f6a4a895-0bf2-405e-a657-178b540a7933', '45c67040-6312-49fb-8b49-4a1725f0a81e'),
('1445312d-f564-47be-a79b-59a266d057dd', 'f6a4a895-0bf2-405e-a657-178b540a7933', '387d4b35-32e1-46cd-9308-92b8e67965f3'),
('1f1d3d0d-0501-49a4-8e3a-0571013b58a5', 'f6a4a895-0bf2-405e-a657-178b540a7933', '40a5a9da-69db-442a-ad60-f19f0e31fc2a'),
('2d81f37a-5f8e-4cc2-8c91-773af85c7596', 'f6a4a895-0bf2-405e-a657-178b540a7933', '1c2b6851-07b1-4a4d-95da-cd08c2e84e48'),
('3341057c-ee83-4fa5-adee-75567215912a', 'f6a4a895-0bf2-405e-a657-178b540a7933', '18c7e5a0-ad6a-4bd3-b0d0-7e06efd7414c'),
('623f2c9e-3bfb-46f5-8742-5c65c2c806c1', 'f6a4a895-0bf2-405e-a657-178b540a7933', 'b1868b3f-0696-4480-8e80-f5dacfdf55d3'),
('6ef257f8-c81f-4081-af94-977f4a9dc331', 'f6a4a895-0bf2-405e-a657-178b540a7933', 'cf64e11b-5dc7-4ef5-8837-05c7e4b4f870'),
('7908ec88-d25f-43f6-8216-34f3edb7537c', 'f6a4a895-0bf2-405e-a657-178b540a7933', '797c8634-84bf-4117-8198-23d623384d12'),
('7f5b2417-7b4d-4efb-96f8-331c9a417963', '67a2271a-c429-4279-a2ad-5648a6e0a3bd', '387d4b35-32e1-46cd-9308-92b8e67965f3'),
('904aa589-ae86-467d-8686-7684ffa26d31', 'f6a4a895-0bf2-405e-a657-178b540a7933', '82fdc788-f8a7-4213-84a5-3cef9405f437'),
('94f2b2f3-9b8c-493e-a0cc-6bd20f203edd', 'f6a4a895-0bf2-405e-a657-178b540a7933', '903d0c35-271f-4a50-9a69-76ec072c30d8'),
('a65181fa-ecaf-4e22-bdd7-46c0d61ed510', 'f6a4a895-0bf2-405e-a657-178b540a7933', '2e23158a-426e-442f-9a44-a241bb57a411'),
('ac602b59-62e0-4fa3-868d-4ce62af0622e', '26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '903d0c35-271f-4a50-9a69-76ec072c30d8'),
('bccc999a-2452-43a2-98d6-36615ec251ad', 'f6a4a895-0bf2-405e-a657-178b540a7933', 'd1716e63-5ce8-4410-aea2-dec051c76018'),
('c1d65f57-b864-415a-a300-19a32b9569c0', 'f6a4a895-0bf2-405e-a657-178b540a7933', '0860dd33-62d2-4a1c-9a68-cfaa6a0e56f0'),
('f38d3b4b-b8cc-4952-9f1a-46c1b2bf250b', '4376082f-4bba-4379-805c-b6813efad4eb', '1c2b6851-07b1-4a4d-95da-cd08c2e84e48'),
('f95925eb-6744-4c91-be57-7cd3820c1fa4', 'f6a4a895-0bf2-405e-a657-178b540a7933', '45ffc46e-724c-4ffa-8fac-1d0bb0976d2c'),
('fbb0e690-8d0f-462f-aa84-23c490a31f13', '1ca1d89d-469d-4857-b69c-4c8a7dd8bb6e', '0860dd33-62d2-4a1c-9a68-cfaa6a0e56f0');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
('1ca1d89d-469d-4857-b69c-4c8a7dd8bb6e', '1d1dea23-26b0-4b92-a6e2-27fd59a4d147'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '00e3b682-288e-4823-a976-8ef14982c7f6'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '00f72b2f-8ad5-4a09-8678-99e09ff07d9e'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '02a42afc-de0e-4455-bcb5-4c6383b13f86'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '02d6963b-4874-4751-9207-d76cbe0239e8'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '067cbede-80fa-403b-8a84-4e6eb3761847'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '084f57a2-4a32-4ba1-be2d-fcad61aacd84'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '097d693d-9f6e-4d9e-8e0a-8899f5d1fb5d'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '100994e1-e397-470e-86fe-30b1f7a843e7'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '1dfd828a-34a3-4f1d-8980-374bc1d80961'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '22d50502-5f42-4ce6-88e0-b183f6ac2b98'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '26b9930c-8cfc-4577-93aa-7b7d77edd013'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '29b474b0-04d1-4030-bf4e-1a7e0fd20fe5'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '2c8b47db-9a9c-46db-a0f1-47b848f05a95'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '333681b7-252c-49d7-90ec-757f8c5e77f8'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '334a6acf-d661-43a3-b30c-97b1ffc3fe68'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '33fce925-f909-4fa8-821e-00f0a45e0477'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '3d29e973-3319-4ca2-abc0-a6aa613bde3d'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '3ef667c0-bb2f-4024-b890-2077ef3bad4e'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '40265539-6e2a-4aba-8fd0-e98350f41b9a'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '42b84cfb-590a-4a01-84b8-fd2404966b1b'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '4329faf4-97f6-4bd6-8230-94aee71bcbfe'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '470377c9-6834-4a96-903a-5483f909c12c'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '4d8935ed-5253-4c0f-a9d0-d402c5491fd1'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '4e51b4f9-8121-4057-8469-18403565138f'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '516e38de-728d-4f42-ad3b-b80f05b426a6'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '5b9a5de9-0624-4ef4-a702-5120747004a9'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '5fdfe905-a4f5-438d-8f3e-470513e29b72'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '61db7ecf-f0c3-4044-8bcf-6cf1773d9db5'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '62393de2-59d3-467c-91f3-b4810d5b8c0f'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '638ccec6-7954-4902-b98f-ca64a1bc24a6'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '6731e34d-53e6-4eee-b2ed-1e79d1153cd2'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '6b2a0923-dd87-493f-a0a0-e0a352ee2548'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '6bcf2748-ace9-42b8-a5ba-802ca7f805e8'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '6eaca1d2-1168-4a0c-9392-cbeeedc1190b'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '6feb8245-ead6-4d63-9ce7-4ad734a519bf'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '71eecfa8-a25b-4ba1-adee-f59f67bda81e'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '7316a9b7-30d5-43a9-84d8-c0c82a8d0177'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '7b00fa70-1036-418f-8aa0-08074f0d4a31'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '7fc086cf-5884-4562-abbf-f2ef0c996b07'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '8219c33f-7557-48f4-9324-8aeddaff240c'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '837eca10-9e27-4945-b15e-39fde3a259ca'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '89db4342-2281-4273-af26-429c180bd1e7'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '8ac43cf8-4bee-4953-9bf2-121e68fcf4bf'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '91117218-fe23-4905-97e6-0320fe1e5f30'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '93df9dac-2937-4fa3-acbe-8abc260207ae'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '99e458a6-0749-4769-89b4-9c47de845b4a'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '9a395e5d-4c8d-4055-8e46-90365d39da38'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', '9dc8f49e-d8c7-4e6b-9ddf-dadacb754b7a'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'a024d139-3890-4d90-85f0-8ebcbdd319f4'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'a1cefc3e-06cc-482b-9562-c75c9b5da409'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'ab9ea803-95b3-404e-818b-879112c34c6c'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'b0eae399-3af1-4d82-9626-38255fed57a8'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'b7dd2211-242b-48de-99b0-801bf2b700ad'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'b8dce778-8052-4056-be33-dd025832b7a3'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'be846416-94ad-46bd-bce7-bc0326cacb7d'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'bf671011-772c-4eab-9e3f-420c6634d5cb'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'c05381da-47a7-485a-b69c-6a497af82a77'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'c418e2ec-07c8-4b18-89f7-129c1ac522db'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'ca13c2cd-f4fe-4d5c-81fb-6f8a0273b01f'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'cc02b2ba-91ca-464e-8a3b-d6f1a6fcbdd7'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'cda35175-7dfc-438b-ba69-2bde532d7ebb'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'cf8aa10a-efc4-4835-bae6-35bc289925e0'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'd044e607-ba59-4f3b-b680-b9d61b65eaa4'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'd168a9ff-97d0-45ab-8430-7cf18176b1b5'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'd96f2568-77c1-438d-b1e7-18b613be5392'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'dcff5367-a489-4951-8257-9e7adfd5f0d6'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'dd45773c-513a-43a4-ac3e-12b651e8451d'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'df054351-56e4-4245-858c-9be3d0488fce'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'e1222ed4-45f8-47c4-979f-a05b4d1deed1'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'e20aef1a-05e1-4036-a68b-78aba224a554'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'e5c849e3-c1e2-426d-9627-afae14946b2e'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'ea6128f0-12a2-4c43-bbe5-a8d72e6826db'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'eb608c38-7d8e-4c47-a540-ea256881b310'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'ecaa9e76-b640-4cd4-b617-60a6f0547458'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'eee53564-74c1-49d4-8408-d248bc459f51'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'f133eff3-1d9d-49af-a618-f1ed9344d815'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'f143e5f5-1c4f-405e-982e-d01bc31386d2'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'f5db0414-3cea-40af-a0dd-c591045d95a8'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'f8f14bbf-03ab-4d10-8a1f-358a80fb24d3'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'fa2a7853-4b2c-4e37-80e6-6c29249fff4a'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'fabac446-ad6c-4d7d-89dc-55d9f6c732d9'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'fb68401d-49d8-4267-8672-1180f82d3b56'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'fc8cbef4-91ba-4f61-baed-3c6bb0581eb6'),
('26a1445c-73b4-456b-a6de-3ecd5f4fb2ec', 'ff15cb55-546c-41b1-a54a-dbf41ee835f0'),
('4376082f-4bba-4379-805c-b6813efad4eb', '81131d2a-309b-4431-b611-eadf0f38dac1'),
('4376082f-4bba-4379-805c-b6813efad4eb', 'c9cb88f4-37de-4460-b795-6aab498bde8a'),
('4376082f-4bba-4379-805c-b6813efad4eb', 'd20bcc10-b029-4dc3-96c3-61121468b302'),
('4376082f-4bba-4379-805c-b6813efad4eb', 'e9d678fc-ff7b-48ce-91af-5f15666679d6'),
('4376082f-4bba-4379-805c-b6813efad4eb', 'fb1bfc39-6bad-45a0-a8f5-4ee6458db3fe'),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', '1220c7cb-2b11-4a2b-9516-34908051cc2b'),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', '205d5029-f5ad-4611-8405-2e3f56d98698'),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', 'a808aee7-cd93-4d0d-b274-338bf1b43a11'),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', 'cfba98d0-7564-418e-a5b3-96da98ef8653'),
('67a2271a-c429-4279-a2ad-5648a6e0a3bd', 'f2c72d94-3ace-4ecc-941a-162022e7a24a'),
('f6a4a895-0bf2-405e-a657-178b540a7933', '2a339c9b-527f-42d5-82db-dce5d88cc06e'),
('f6a4a895-0bf2-405e-a657-178b540a7933', '9e585f26-a036-44d7-8ea5-515e1db7e133');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` char(36) CHARACTER SET utf8 NOT NULL,
  `category_id` char(36) CHARACTER SET utf8 NOT NULL,
  `name` varchar(191) CHARACTER SET utf8 NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `category_id`, `name`, `deleted_at`) VALUES
('04a66300-fd0d-425f-be0f-aaab07c2e3c4', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '50cm', NULL),
('08af0145-2013-4a25-8823-c6abdfe1e567', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '55', '2020-01-23 09:10:09'),
('0db81ad5-edb7-4269-8761-310e55518989', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'شماره 1', NULL),
('1ad5f20a-6c96-4cbc-8296-067405dfca0b', 'df25954a-3c17-450b-bec3-0ec1244499f6', '2', '2019-12-29 17:31:35'),
('1c0f3971-0b33-4f33-bdbf-f7209d62598c', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '55cm', NULL),
('1f034bd5-7c34-4bfd-9cf5-9a25dbf7c3da', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '60cm', NULL),
('20d726c1-9c1a-4745-85f0-6d0f438e09ca', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', '65cm', NULL),
('2112c8c9-bb52-438b-9e02-63ad846d2112', '8bf1fcac-b185-430a-84d3-860b9b6b3388', '1', NULL),
('212e8312-a7b1-4107-8b93-a152181f7cff', '39aef691-ed7d-4fcb-9bc6-77fc38166774', '5', '2020-01-28 17:48:35'),
('27c8f126-fc00-4663-848f-bc0798cf462c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 4', NULL),
('2fae0be6-5b36-4b35-9aa3-d010546a461e', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '55 سانتیمتر', '2020-05-18 05:13:05'),
('3233323f-94cb-443c-a475-d391a1f5c265', '39aef691-ed7d-4fcb-9bc6-77fc38166774', '2', '2020-01-28 17:48:35'),
('36e3fedd-ec3b-400f-a4c0-a0ceaf4b0e12', '9fad35ee-b8be-4cd1-bb8a-880beb895b30', '2', NULL),
('37563fb3-3705-475b-a9ad-6941c41c9b41', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '60سانتیمتر', '2020-05-18 05:13:05'),
('3d5a7954-26b0-4563-b565-6ed03f636626', '9fad35ee-b8be-4cd1-bb8a-880beb895b30', '4', NULL),
('41543f85-9e0b-410e-a726-28c022ab4501', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', 'شماره 2', NULL),
('4473bcda-2377-4bcf-bd1d-38fd6e4d6449', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '5', '2019-12-29 17:30:29'),
('45323f78-e7b4-4e03-addd-617e20ebca93', '8bf1fcac-b185-430a-84d3-860b9b6b3388', '3', NULL),
('46c9a0bb-5159-49a4-a224-20ad1a692131', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', '3', '2019-12-29 17:31:55'),
('4c3db8f4-25c5-4b65-a846-cd0c041fce49', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '65cm', NULL),
('4da2cc85-34c7-4c18-9f94-3e3ed491a732', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '1', '2019-12-29 17:30:29'),
('52975509-fced-498d-9de7-05d3867b1f10', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '1', NULL),
('53dda920-d309-4385-ac71-591e6a783520', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '45سانتیمتر', '2020-05-18 05:13:05'),
('5523bf35-443a-45d1-9f16-ff4685fa4b46', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '6', '2019-12-29 17:30:29'),
('55a38cc9-7bd9-4cb6-b15d-90d427bfde34', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 2', NULL),
('5c27c641-4800-4943-82dd-3cc53b8ea502', '9fad35ee-b8be-4cd1-bb8a-880beb895b30', '3', NULL),
('5e9cc7a1-810f-49ef-992e-158b922a50e7', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'شماره 5', '2020-01-28 17:49:43'),
('6156df4e-0da1-4d89-ab22-8662cea9734b', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 5', NULL),
('63195240-d1f6-4b10-b285-24bacefd17c1', '39aef691-ed7d-4fcb-9bc6-77fc38166774', '4', '2020-01-28 17:48:35'),
('64ed86e7-f158-42a8-80c3-9607b7385c67', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', 'شماره 3', NULL),
('69e7d69c-f108-4bd1-9d0f-cc1a3ffbcb46', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 1', NULL),
('6a120e78-6c58-412c-8e9b-c5f01fca225c', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', 'شماره 4', NULL),
('6b85c462-1d38-4e12-b809-499e00b7d686', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 6', NULL),
('6bee2649-8ba0-4816-bc9e-ef9375fdc9e5', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', '70cm', NULL),
('6e6466a3-15ae-4521-8bb2-e20d01fe44d0', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '50سانتیمتر', '2020-05-18 05:13:05'),
('76bd4da1-c10f-487c-9afe-8fc70d49a1e2', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '45', '2020-01-23 09:10:09'),
('7a535e10-0c27-417c-99cf-1ea45e2f21e1', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '45cm', NULL),
('7ae80221-edd6-4e1b-bb2b-b02be21e4183', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '3', NULL),
('85c9eac2-0dc8-47c3-9fd6-14ba7d7a49a7', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '2', '2019-12-29 17:30:29'),
('88d6ba10-7795-4607-8a30-8df4094d030e', '9fad35ee-b8be-4cd1-bb8a-880beb895b30', '1', NULL),
('910d67b7-9aee-41f6-8a47-c701efc646bd', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', '60cm', NULL),
('928d16f8-3d28-4f7e-8e8a-fa4d45bc1925', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', 'شماره 1', NULL),
('96776a3d-9eb8-4f77-b570-142330665777', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '3', '2019-12-29 17:30:29'),
('9881dad2-0f82-4026-89f0-ba23f8338ff7', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '4', NULL),
('9a17fa74-0b22-4767-b894-4ff17d325128', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '60', '2020-01-23 09:10:09'),
('9a7912ec-9075-4d60-92be-be4d77460655', '39aef691-ed7d-4fcb-9bc6-77fc38166774', '1', '2020-01-28 17:48:35'),
('9c49f780-c3a3-44d3-b4e1-5b263835745d', 'df25954a-3c17-450b-bec3-0ec1244499f6', '1', '2019-12-29 17:31:35'),
('a2949121-1c37-46c9-9e59-504c3765c222', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', '1', '2019-12-29 17:31:55'),
('a34c17f8-bb7e-45a9-ae7f-870431ec683e', 'b4c768d8-1ba9-49d4-b6d5-489668b18b98', '2', '2019-12-29 17:31:55'),
('a4a5140b-146a-4603-b59b-f7e56ff5d524', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '65سانتیمتر', '2020-05-18 05:13:05'),
('a52efc80-0118-44ba-bcea-5cb4972e11ac', '39aef691-ed7d-4fcb-9bc6-77fc38166774', '3', '2020-01-28 17:48:35'),
('a6f48f2b-94ca-4ea1-be48-5b17585761e3', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '40cm', NULL),
('a9738e2f-f724-4f75-b616-abb30da23152', 'df25954a-3c17-450b-bec3-0ec1244499f6', '4', '2019-12-29 17:31:35'),
('aba46b81-5fe2-4df0-9344-8da597da58e0', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '6', NULL),
('abef120e-d8c7-4d49-873a-0c924508f00c', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'شماره 3', NULL),
('ae3278d9-9a0d-4540-b8a0-18443d174b56', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '40', '2020-01-23 09:10:09'),
('af192550-7443-4c32-925b-24d0948925cf', '9fad35ee-b8be-4cd1-bb8a-880beb895b30', '5', NULL),
('b16b68cc-8f66-4571-b3e1-8034e7eff463', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '70سانتیمتر', '2020-05-18 05:13:05'),
('b291b8ac-8246-4f4e-924c-669bbbe44234', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '40سانتیمتر', '2020-05-18 05:13:05'),
('c0436662-cdab-4e1d-8d7b-987a299a1fbc', 'df25954a-3c17-450b-bec3-0ec1244499f6', '5', '2019-12-29 17:31:35'),
('c5ea9812-a0f8-477f-a197-b2621bf3a2ad', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'شماره 2', NULL),
('c89a05b8-50a7-497c-8b28-16f99f608563', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', '4', '2019-12-29 17:30:29'),
('cbfbdda7-54b2-47a7-8d24-39ab22815715', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '65', '2020-01-23 09:10:09'),
('cca765b9-fcc3-498c-a073-5118b27a29c8', '8bf1fcac-b185-430a-84d3-860b9b6b3388', '2', NULL),
('d0e5a594-06b4-4376-b445-203d530cbdfb', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '5', NULL),
('d3e542e7-4e0c-40f5-be24-d737dfdc5ba9', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '70', '2020-01-23 09:10:09'),
('d412774b-bddd-4398-84ca-792c64e50254', 'df25954a-3c17-450b-bec3-0ec1244499f6', '3', '2019-12-29 17:31:35'),
('d73af86f-2bce-481e-a755-605b2df2c7c1', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '50', '2020-01-23 09:10:09'),
('d771b536-990d-4f68-84f9-21a4857ff737', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', '70cm', NULL),
('e04afde5-9017-4bcf-8f98-53e63f01a584', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', '2', NULL),
('f04329ee-d5ed-4e72-8eab-4302a2e71444', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'شماره 4', '2020-01-28 17:49:43'),
('f6122841-bcd3-4b75-b1a0-bc5351f3b69f', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'شماره 3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
('0113b3a9-4327-45f4-88ff-9e0f72a471d5', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو 2میل', 'ln-o-2m-l', '2019-12-22 07:47:30', '2019-12-29 17:32:20', '2019-12-29 17:32:20'),
('09edc3d4-49bc-44c3-b655-7dfe1fd41db1', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'ونیزی سفید', 'on-z-sf-d', '2020-01-23 09:14:23', '2020-01-23 09:14:23', NULL),
('158ab2e4-4767-4e1a-9e15-b9a63a015dca', '69d341df-3580-4d75-ab5f-7336d6fa9650', 'سفید', 'sf-d-1', '2019-12-26 09:06:27', '2019-12-26 09:07:02', '2019-12-26 09:07:02'),
('19d78319-6a21-4f88-af8f-12ec2fe01cab', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'دیسکو زرد', 'd-s-o', '2020-01-23 09:06:17', '2020-01-23 09:12:17', NULL),
('1c8242b1-f3b1-4881-81a1-cdf13b691cb2', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'زرد', 'zrd', '2019-12-26 09:05:10', '2019-12-26 09:05:10', NULL),
('220d8fc4-f0f9-4044-af4d-468c0931096f', '8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره آویز', 'osho-rh-o-z', '2020-05-05 06:34:47', '2020-05-05 06:34:47', NULL),
('280d47a2-a90d-4cfe-846d-56e0db6f496a', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر فیوژن', 'n-shtr-f-o-n', '2019-12-22 10:49:10', '2019-12-22 10:49:10', NULL),
('2cf5c41d-b9fd-4556-a0dc-c9e0c8b154ae', '8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره صدفی', 'sho-rh-sdf', '2019-12-22 10:52:35', '2020-05-03 19:41:29', NULL),
('2d8cb10d-7d4e-487d-b337-ab53fa949c1f', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'دیسکو  سفید', 'd-s-o-sf-d', '2020-01-23 09:12:40', '2020-01-23 09:12:40', NULL),
('32920d5a-0dcc-432f-9078-8e04b582676e', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'خودکار زرد', 'khod-r-zrd', '2020-01-23 09:14:47', '2020-01-23 09:14:47', NULL),
('395c89fb-b782-4317-b8f0-c91d588179f5', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'دستبند سیاه قلم', 'dstbnd-s-h-klm', '2020-05-07 07:55:13', '2020-05-07 07:55:13', NULL),
('39fc7e8a-3707-495b-8da5-48eb1279d188', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو ریخته(کلکته)', 'ln-o-r-khth-l-th', '2019-12-22 07:43:40', '2019-12-22 07:43:40', NULL),
('3de3eaaf-4905-489e-a104-dfd19b7fc72b', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'کنافی', 'n-f', '2020-01-23 09:15:12', '2020-01-23 09:15:12', NULL),
('3e797dbd-edaa-4a52-8d13-f81e97b2bc59', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'آویز ساعت', 'o-z-s-aat', '2020-01-28 17:44:37', '2020-01-28 17:44:37', NULL),
('41fc5650-6cc6-477d-941e-76db81dae2f9', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر عقیق', 'n-shtr-aak-k', '2019-12-22 10:48:54', '2019-12-22 10:48:54', NULL),
('453de578-32d4-4f15-8fc3-debe7f5e846d', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر سیاه قلم', 'n-shtr-s-h-klm', '2019-12-22 10:50:03', '2019-12-22 10:50:03', NULL),
('45ff8d74-7457-4058-b55b-e9c8f298c640', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو 10میل', 'ln-o-10m-l', '2019-12-22 07:45:57', '2019-12-29 17:32:45', '2019-12-29 17:32:45'),
('4cfae40c-06bb-45e5-9f59-7abd1d16e097', '8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره پولکی', 'sho-rh-br-k', '2019-12-22 10:52:20', '2020-05-03 19:42:42', NULL),
('50e3c720-d232-4a86-84c0-c3bcea52eb70', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو سیاه قلم', 'ln-o-s-h-klm', '2020-05-05 06:02:55', '2020-05-05 06:02:55', NULL),
('52553395-38d2-461e-a9df-dc0dda799dbe', '8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره حلقه ای', 'sho-rh-hlkh', '2019-12-22 10:51:17', '2020-05-03 19:42:52', NULL),
('58998f3e-b7cc-47d7-9214-dc621e0aff61', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', 'سرویس رزگلد', 'sro-s-rz-ld', '2020-05-16 08:48:07', '2020-05-16 08:48:07', NULL),
('59d3badd-57d2-45d3-b417-bc980685f3dc', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'زنجیر و دستبند', 'zng-r-o-dstbnd', '2020-01-28 17:56:05', '2020-01-28 17:56:05', NULL),
('629c4dff-bca1-42ec-a49c-79f70be2dd6b', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', 'سرویس زرد', 'sro-s-zrd', '2020-05-16 08:48:45', '2020-05-16 08:48:45', NULL),
('68c9f111-7af2-4740-892e-504732c4bbb4', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'دستبند سیاه قلم', 'dstbnd-s-h-klm-1', '2020-05-14 08:05:24', '2020-05-14 08:05:24', NULL),
('6cc68421-7af8-42ea-b57d-260d3ee35d38', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر رخیته', 'n-shtr-rkh-th', '2019-12-22 10:48:40', '2019-12-22 10:48:40', NULL),
('6f0a491e-7693-48b2-8b53-c875711787ce', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو 6میل', 'ln-o-6m-l', '2019-12-22 07:46:21', '2020-01-28 17:57:14', '2020-01-28 17:57:14'),
('7c98ed64-9ce9-4174-b66d-294405cfc8ed', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'دستبند النگویی', 'dstbnd-ln-o', '2020-01-28 17:43:59', '2020-01-28 17:43:59', NULL),
('7d97f274-5d1e-479e-97ff-afa18d03d84c', '7d56c217-2857-4c39-a870-baa6bc2eb9d3', 'انگشتر سولیتر', 'n-shtr-sol-tr', '2019-12-22 10:49:40', '2019-12-22 10:49:40', NULL),
('7ebe8f05-a130-49b1-9ee6-1c80f0f592b8', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'ونیزی زرد', 'on-z', '2020-01-23 09:06:28', '2020-01-23 09:14:03', NULL),
('81374e83-a4b2-4070-941a-c41faa2bfb88', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'دستبند و انگشتر ست', 'dstbnd-o-n-shtr-st', '2020-01-28 17:45:07', '2020-01-28 17:45:07', NULL),
('82996138-84a5-48c6-940e-90feb75b778f', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'خودکاری سفید', 'khod-r', '2020-01-23 09:06:39', '2020-01-23 09:14:35', NULL),
('8abb83b8-f31e-4506-b557-a63ffefcd78d', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'سفید', 'sf-d', '2019-12-26 09:05:25', '2019-12-26 09:05:25', NULL),
('8cf5d3f6-8a62-4705-b3ae-83b3b5099e13', '39aef691-ed7d-4fcb-9bc6-77fc38166774', 'پابند', 'bnd', '2020-01-28 17:44:20', '2020-01-28 17:44:20', NULL),
('a578c456-2caf-4a38-9ea9-7f5279a80a1e', '8bf1fcac-b185-430a-84d3-860b9b6b3388', 'گوشواره بچگانه', 'sho-rh-b-nh', '2020-05-03 08:21:29', '2020-05-03 19:43:07', NULL),
('a9574f38-1180-4bd6-8d54-d799d14b6264', '69d341df-3580-4d75-ab5f-7336d6fa9650', 'سیاه قلم', 's-h-klm', '2020-05-10 08:04:21', '2020-05-10 08:04:21', NULL),
('b46703b9-f624-4178-8659-8fb04cece877', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو مفتولی', 'ln-o-mftol', '2019-12-22 07:42:37', '2019-12-22 07:42:37', NULL),
('bdd25c82-8d5b-4ec8-b52b-e5248e6fe2d2', 'e1cf34a4-94cc-4a8a-a124-e51297a0cda1', 'بیزمارک', 'b-zm-r', '2020-01-23 09:07:42', '2020-01-23 09:07:42', NULL),
('c6127404-8024-428b-ac84-e416610cfb31', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'تکپوش', 't-osh', '2020-01-28 17:50:14', '2020-01-28 17:50:14', NULL),
('d4a81068-9aa5-45e7-8c3c-9fdccfcfa8ec', '3b65c737-e71e-4ad6-afd8-5bf411d24b35', 'سرویس سفید', 'sro-s-sf-d', '2020-05-16 08:48:31', '2020-05-16 08:48:31', NULL),
('dec5ebcd-45f9-4188-8308-aaad8c3dedc4', '69d341df-3580-4d75-ab5f-7336d6fa9650', 'زرد', 'zrd-1', '2019-12-26 09:06:37', '2019-12-26 09:07:16', '2019-12-26 09:07:16'),
('e2281c01-5eb5-4c4d-ab55-24c262a92c41', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو تسمه ای', 'ln-o-tsmh', '2019-12-22 07:44:35', '2019-12-22 07:44:35', NULL),
('e9fc760e-690a-412e-8b9e-ac4899fea4bc', 'eb6f43a5-8e2b-41df-b05c-432c7fd10db8', 'النگو آینه ای', 'ln-o-nh', '2019-12-22 07:45:27', '2019-12-22 07:48:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `gender_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `username` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `api_token` varchar(191) DEFAULT NULL,
  `mobile` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `blocked_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `gender_id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `api_token`, `mobile`, `image`, `settings`, `blocked_at`, `expires_at`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
('00e3b682-288e-4823-a976-8ef14982c7f6', 1, 'Kazemi', 'کاظمی', 'test13@info.com', NULL, 'Kk123456', NULL, 'rOg2yJOlLxUqvvDBuBgz46e4UlMMZvbOHOPKtAyvqCLGKwyB9xjmuOK6Bz3U', '09133165654', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 19:01:40', '2020-05-10 12:32:24', NULL),
('00f72b2f-8ad5-4a09-8678-99e09ff07d9e', 1, 's.sonbolestani', 'سنبلستانی', 'tester@info.com', NULL, 'sS123456', NULL, 'H4ZjkHy76dP2BUZqNGJ52ruAqWDLCKk5CvI0LoMi4PsskJbqJYCis52RcWo9', '09131143118', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:23:34', '2020-05-05 07:05:52', NULL),
('02a42afc-de0e-4455-bcb5-4c6383b13f86', 1, 'a.gholizadeh', 'عباس قلی زاده', 'goli@info.com', NULL, 'Gg123456', NULL, 'qxZerDbiPy2GCD8L7d67XaGebLXTXHgqJGPtsDDTLodNsvby8iDQmzGXubUT', '09125930025', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:43:53', '2020-04-29 04:43:53', NULL),
('02d6963b-4874-4751-9207-d76cbe0239e8', 1, 'm.yavari', 'محمد یاوری', 'yavari@info.com', NULL, 'Yy123456', NULL, '4eGaIighGgLRymR8hw5LRuHy0SSXU1bqVw7IZBnkmRggf02ygQLOMkGMWcSs', '09128900882', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:49:44', '2020-04-29 04:49:44', NULL),
('067cbede-80fa-403b-8a84-4e6eb3761847', 1, 'm.sharifi2', 'محمد شریفی 2', 'SHARIFI@INFO.COM', NULL, 'Mm123456', NULL, 'Thxm5jyorhwNaX1lBNE95zQqUUc8TmOhVtcJvapJsn7tyNHgRti9BMHcwtvp', '09125879150', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:04:08', '2020-04-29 05:04:08', NULL),
('084f57a2-4a32-4ba1-be2d-fcad61aacd84', 1, 'Kahrizi', 'کهریزی', 'test8@info.com', NULL, 'Kk123456', NULL, 'xWSsKIEQZqBj2PtXpm3OPUfg5jBvFVURWBqmCIWlY6hluk7kCmTcO4eZlKSh', '09148058464', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:53:37', '2019-12-22 18:53:37', NULL),
('097d693d-9f6e-4d9e-8e0a-8899f5d1fb5d', 1, 'h.moeini', 'حداد معینی', 'moeini@info.com', NULL, 'Mm123456', NULL, 'NTddz8md0CKt01qOlaXV1hq2fHJUmwKT4Qzb7BnQPvrNDXLi4FT9sCqiW8pt', '09134744947', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 06:58:57', '2020-04-29 06:58:57', NULL),
('100994e1-e397-470e-86fe-30b1f7a843e7', 1, 'm.bakhshi', 'مهدی بخشی', 'bakhshi@info.com', NULL, 'Bb123456', NULL, 'h6AcFjFXduBy0RhICaQPwua3Wb5nBPhJBJmEMrpLZqLZlWyLgUjq9rYX6i4y', '09122330953', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:48:08', '2020-04-29 04:48:08', NULL),
('1220c7cb-2b11-4a2b-9516-34908051cc2b', 1, 'm.khanyab', 'محمد خنیاب نژاد', 'khanyab@info.com', NULL, 'Kk123456', NULL, 'xqtlHlhEficCsXOnwhPC6NofyDRUCzpyInETQ8DwBdN4UXuTMg8HZx2mRKmk', '09128479219', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 11:02:17', '2020-04-29 11:02:17', NULL),
('1d1dea23-26b0-4b92-a6e2-27fd59a4d147', 1, 'T.melika', 'طلای ملیکا', 'test45@info.com', NULL, 'Mm123456', NULL, 'Wm6J6iUnihBmZI8hEvW6hgOkWVKu8jmWLp1LxYwdswRL6foSGon88so6WvLx', '09123151280', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:13:50', '2019-12-24 09:13:50', NULL),
('1dfd828a-34a3-4f1d-8980-374bc1d80961', 1, 'a.baby', 'علی آقا بابایی', 'babay@info.com', NULL, 'Bb123456', NULL, 'e7damf1FD0zVrgH5ZAsGl0Hf5KMV8P1oA7sILZA79vaqGuzxRuGAmQ2kDJEC', '09126596094', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:55:22', '2020-04-29 04:55:22', NULL),
('205d5029-f5ad-4611-8405-2e3f56d98698', 1, 'mr.bozorgpanah', 'محمد رضا بزرگپناه', 'bozorgpanah@info.com', NULL, 'Bb123456', NULL, 'nVzgptepEhmELOgCijzE50Inp9BLXiUaLwbzpUW9jRhkWAhNSA69GVSjZI1h', '09120441566', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 11:03:56', '2020-04-29 11:03:56', NULL),
('22d50502-5f42-4ce6-88e0-b183f6ac2b98', 1, 'Najarzadeh', 'نجارزاده', 'test9@info.com', NULL, 'Nn123456', NULL, 'N3WalCsfEmiSB05d933vR4ItUZ3gEv1TQIpTKBs0HW6MyJkkZ7aFK6jl3SCg', '09138057299', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:55:55', '2020-05-05 13:14:42', NULL),
('26b9930c-8cfc-4577-93aa-7b7d77edd013', 1, 'Nabifar', 'نبی فر اپل', 'test112@info.com', NULL, 'Nn123456', NULL, 'NYrlsG9ZmL2VsgQWiVJ2AWsYst7t9xD4FgRUBRvpeQwTycxQLbgfUqIsvYBz', '09133174056', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 10:05:19', '2019-12-24 10:05:19', NULL),
('29b474b0-04d1-4030-bf4e-1a7e0fd20fe5', 1, 'm.mabodi', 'معبودی نژاد', 'mabodi@info.com', NULL, 'Mm123456', NULL, 'YooWjxIhkd7CfgTC7znqGhI2UHmMNlnMrGOXqRYqG5eHxnb1IK0SpUhsb90F', '09151194677', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-05 08:52:03', '2020-05-05 08:52:03', NULL),
('2a339c9b-527f-42d5-82db-dce5d88cc06e', 1, 'a.mohammadi', 'امیرحسین محمدی', 'amirhosseinmahammadi@gmail.com', NULL, '$2y$10$1kaenGUVscZGjjLRFi8DQup/aQhgcgXCb/goPVC3Kp1xIvYVnlk7i', NULL, 'GU3Vf4jlmNaOegmi6asSU17baoNzLihyne5DeauTi31PrKFjQBVdOqQ7F5t0', '09190286762', NULL, NULL, NULL, NULL, '2020-05-20 04:46:57', '2019-12-16 04:35:25', '2020-05-20 04:46:57', NULL),
('2c8b47db-9a9c-46db-a0f1-47b848f05a95', 1, 'm.saraf', 'مهدی صراف', 'saraf@info.com', NULL, 'Ss123456', NULL, 'o2jXqpOIy3m7jb5okU6Ftmv8QGiEmuCcpLYoyFMPxG8KnDWo5KeCalwn3FMl', '09127381706', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:11:54', '2020-04-29 07:11:54', NULL),
('333681b7-252c-49d7-90ec-757f8c5e77f8', 1, 's.anari', 'صفی الله اناری', 'ANARI@INFO.COM', NULL, 'Aa123456', NULL, 'bJS7gTm891z23zzaMX01SVuxtTNJnFSLF3ZrBPu7zC6UEyOZAYrO5RD9hXY0', '09122939923', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:25:13', '2020-04-29 04:25:13', NULL),
('334a6acf-d661-43a3-b30c-97b1ffc3fe68', 1, 'm.hamidi', 'مهدی حمیدی فر (بنیمی)', 'banimi@info.com', NULL, 'Hh123456', NULL, 'oaYFyYjy6BrHm8NFLMIaIHDZvEGfsWmlGTcK1QfXPplSMI8alsyVxmXPNibV', '09363306749', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:49:57', '2020-04-29 05:41:06', NULL),
('33fce925-f909-4fa8-821e-00f0a45e0477', 1, 'haghi', 'حقی', 'info123@test.com', NULL, 'Hh123456', NULL, 'RZF0JYHhLlQ6yAK44BGi7DDXyT6T4IkNGoRKzfbnIO9er8XJ1VcWF2gEU6AA', '09120030004', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-02-11 16:50:34', '2020-04-28 06:07:34', NULL),
('3d29e973-3319-4ca2-abc0-a6aa613bde3d', 1, 'z.mohammadi', 'زیدالله محمدی', 'MOMMADI@Info.com', NULL, 'Mm123456', NULL, 'MItTBmk8nSdRBT6EQAlAuISmzssnnolw6d01t7DRJczCGHQbT0mEta75EGLy', '09123888972', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:41:59', '2020-04-29 04:41:59', NULL),
('3ef667c0-bb2f-4024-b890-2077ef3bad4e', 1, 'r.haghi', 'رحمان حقی', 'haghi@info.com', NULL, 'Hh123456', NULL, '9ORCyLsnac7O6OD0WFDey4FdtIlnuoalMmaWnaX9vRmbjzyblKfDlP5R0gLc', '09123020551', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:38:03', '2020-04-29 05:38:03', NULL),
('40265539-6e2a-4aba-8fd0-e98350f41b9a', 1, 'H.akbarzade', 'حسین اکبرزاده', 'test2211@info.com', NULL, 'Aa123456', NULL, 'S3bMLtgueQ9Yw3EWvomozlFiDhDQ91eP2T3g0qYck49cRYor874lxoEp8rAZ', '09121904733', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 10:07:04', '2019-12-24 10:07:04', NULL),
('42b84cfb-590a-4a01-84b8-fd2404966b1b', 1, 'M.moradali', 'مرادعلی', 'test10@info.com', NULL, 'Mm123456', NULL, 'kX5SjvJoJmxATCbv3iCc0QfPWc9nxwk4nF9A39vtesfkY74yihBCLSGA9Xll', '09124834208', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:57:26', '2019-12-22 18:57:26', NULL),
('4329faf4-97f6-4bd6-8230-94aee71bcbfe', 1, 'Shirazi', 'شیرازی', 'test16@info.com', NULL, 'Ss123456', NULL, 'awSads23BDG97GvehYEq4zb3wKV0emKsvEfkwxpbSsGb4RS4dlewdNytR95E', '09121452129', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 19:13:26', '2019-12-22 19:13:26', NULL),
('470377c9-6834-4a96-903a-5483f909c12c', 1, 'mj.baratian', 'محمد جواد براتیان', 'BARATI@INFO.COM', NULL, 'Bb123456', NULL, 'Q2oUJlaPLHlYjVxTPgvtXbRyoJF61yOncpMtQOPqCYguM8PvzoD3u8fEMEvb', '09123011579', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-10 05:11:10', '2020-05-10 05:11:10', NULL),
('4d8935ed-5253-4c0f-a9d0-d402c5491fd1', 1, 'A.andarjani', 'اکبر اندر جانی', 'test7@info.com', NULL, 'Aa123456', NULL, 'R7HcE0aHkzNvBbHsvNH7NIuqsUziwMVZnPpuiB9qxiAwEZyAmpuJlvsfloFi', '09127001434', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:51:30', '2019-12-22 18:51:30', NULL),
('4e51b4f9-8121-4057-8469-18403565138f', 1, 'R.Akhavan', 'رحمانی اخوان', 'info@test.com', NULL, 'Rr123456', NULL, 'PgNiSHUE8yDNk4wN2OArRX5JtrnBYhOkHtgVQZHJEUkv5yH4szZtkgQd9tXf', '09132702142', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:36:19', '2020-04-29 05:18:11', NULL),
('516e38de-728d-4f42-ad3b-b80f05b426a6', 1, 'a.salmani', 'احمد سلمانی', 'salmani@info.com', NULL, 'Ss123456', NULL, 'cl5nCbD4uwHW4xUdfKO5F3rswqynOFACRJcfPMLJqgEVDhD21AB3iqVsNyJt', '09121579149', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:08:42', '2020-04-29 07:08:42', NULL),
('5b9a5de9-0624-4ef4-a702-5120747004a9', 1, 'e.oghli', 'ایرج عیوض اوغلی', 'oghli@info.com', NULL, 'Oo123456', NULL, 'VjEESrshedCmJIoNsdiMtyEteyjYrd0efgyvcPbLny5yJZoCyOTbEXjLtbHQ', '09143027264', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:01:50', '2020-04-29 05:01:50', NULL),
('5fdfe905-a4f5-438d-8f3e-470513e29b72', 1, 'a.hashemzadeh', 'علی هاشم زاده', 'hashem@info.com', NULL, 'Hh123456', NULL, '2T1kyb33necjptiwpgrA0ECJjMyxnuQQSBLPdcoMNzklDp52HcBpPU1X1OnG', '09133256582', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:06:34', '2020-04-29 07:06:34', NULL),
('61db7ecf-f0c3-4044-8bcf-6cf1773d9db5', 1, 'm.talaei', 'محمدرضا طلایی', 'talei@info.com', NULL, 'Tt123456', NULL, 'B9tvjttYKQ45okG4gpJ5dhQCHa8jbbPQ0O7mxpx1IVMroaT8bAqGUzbQUjIP', '09131154370', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:45:54', '2020-04-29 04:45:54', NULL),
('62393de2-59d3-467c-91f3-b4810d5b8c0f', 1, 'a.lotfi', 'اکبر لطفی', 'lotfi@info.com', NULL, 'Ll123456', NULL, 'iUV430T390CmlRZMlpxeXcMlykrmgKhd8cElwRgKLoHuy9CXoDFMMZxmaMgX', '09352189648', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:34:25', '2020-04-29 04:34:25', NULL),
('638ccec6-7954-4902-b98f-ca64a1bc24a6', 1, 'e.azarpour', 'ابراهیم آذر پور', 'azar@info.com', NULL, 'Aa123456', NULL, 'CidjBsk5eZNleEpy4mDncOIyhRlr7RfH5rBoqKfBiwLaoGeGz1KX3lC4qBVo', '09125700095', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:50:18', '2020-04-29 05:50:18', NULL),
('6731e34d-53e6-4eee-b2ed-1e79d1153cd2', 1, 'h.akbari', 'حسین اکبری', 'test33@info.com', NULL, 'Aa123456', NULL, 'HY4BNFtEiJeQnZCiD3zayLukrxhcaBxHGQFXigGgnaCgEgq6Yiv2E3pdjEEJ', '09121904733', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-01-17 11:43:54', '2020-04-29 05:31:45', NULL),
('6b2a0923-dd87-493f-a0a0-e0a352ee2548', 1, 'e.jahanbani', 'ایمان جهانبانی', 'jahanbani@info.com', NULL, 'Jj123456', NULL, 'eEGkEURAhU8VPjlqaQRB31NR7mFXUd4GD1t7g4PerNypuiKyxCfCMZUu6a6K', '09133266326', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:28:26', '2020-04-29 05:28:26', NULL),
('6bcf2748-ace9-42b8-a5ba-802ca7f805e8', 1, 's.ghaderi', 'قادری طلای سعید', 'ghaderi@info.com', NULL, 'Gg123456', NULL, 'amDEqdfgZXnhg5xGoYO2jwZWXcXc5eaw16lEInYR7IXl4dB63YnQIB8JY01C', '09121400513', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:35:32', '2020-04-29 05:35:32', NULL),
('6eaca1d2-1168-4a0c-9392-cbeeedc1190b', 1, 'b.ehsani', 'برادران احسانی', 'ehsani@info.com', NULL, 'Ee123456', NULL, 'ig2tpuaLVPcRIKS8u3c9VdcGFoUzYlScO3HR3zc7omlbjo35ANXbkHDkHoeV', '09125003746', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:24:06', '2020-04-29 05:24:06', NULL),
('6feb8245-ead6-4d63-9ce7-4ad734a519bf', 1, 'g.nazeri', 'آسیا قاسم ناظری نژاد', 'nazeri@info.com', NULL, 'Nn123456', NULL, 'KRuk1YTenuYwkcuXBaUUvLsZFUz8QiVQma7ZP07TrKHHRE39F1EsgzmrTtvz', '09131104167', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:34:00', '2020-04-29 05:34:00', NULL),
('71eecfa8-a25b-4ba1-adee-f59f67bda81e', 1, 'Farsyabi', 'فرسیابی', 'test1132@info.com', NULL, 'Ff123456', NULL, 'SldBLw01itZ2kRq4cT6u3SZnNKpnmuTbeKEaqEtYxfEfjKvGzfdfaEtPH1rY', '09125941074', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-31 12:46:37', '2019-12-31 12:46:37', NULL),
('7316a9b7-30d5-43a9-84d8-c0c82a8d0177', 1, 'kahangi', 'کهنگی', 'kahangi@info.com', NULL, 'Kk123456', NULL, 'MOynsIuSLbi4f8Hz2Q4ZcVo8eh2TuO2XBKYbn0gn5UTunkpsA6Wa2DvKPpxN', '09131145201', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:25:20', '2020-04-29 05:25:20', NULL),
('7b00fa70-1036-418f-8aa0-08074f0d4a31', 1, 'm.tadi', 'مرتضی طادی', 'tadi@info.com', NULL, 'Tt123456', NULL, 'JyCMDoCshHKantKRNo1cMRgVss917il0w1VnR0JF1flr6FQtKhorHxpQcarL', '09129380776', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:30:35', '2020-04-29 05:30:35', NULL),
('7fc086cf-5884-4562-abbf-f2ef0c996b07', 1, 'j.hatamian', 'جعفر حاتمیان', 'hatamian@info.com', NULL, 'Hh123456', NULL, 'lE5BcsDGAXUrYrZikm3iSJ6sc7hL8mkdiip76VM0hloeQ0Xv8zqinmLnOT6B', '09183432215', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:51:55', '2020-04-29 05:51:55', NULL),
('81131d2a-309b-4431-b611-eadf0f38dac1', 1, 'm.tala', 'مهران طلا', 'mehran@info.com', NULL, 'Tt123456', NULL, 'IufzEnQXGPm3zA4t3tUTylwcOZGs85EPd6PwBkvdVj5EwHAjCVSzVRu47PrU', '09356115826', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-10 09:24:43', '2020-05-10 09:24:43', NULL),
('8219c33f-7557-48f4-9324-8aeddaff240c', 1, 'h.habibi', 'حسین حبیبی', 'habibi@info.com', NULL, 'Hh123456', NULL, 'YRqJAx6Xjib53u5kgoNt55GiyNqAoVoRzgUkdSD66cYfpCQVNwAIDifIyXyo', '09122266453', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:04:48', '2020-04-29 07:04:48', NULL),
('837eca10-9e27-4945-b15e-39fde3a259ca', 1, 'y.setanvand', 'یوسف ستانوند', 'setanvand@info.com', NULL, 'Ss123456', NULL, 'VPCd1HS947myX8f8ZuEkgFdiHdFUQ4flHpXfShgIP3hRogwAUPku3ufJ0acX', '09122243868', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:57:47', '2020-04-29 04:57:47', NULL),
('89db4342-2281-4273-af26-429c180bd1e7', 1, 'm.feazi', 'مسعود فیضی', 'test1222333@info.com', NULL, 'Ff123456', NULL, 'eTF7XjPXzwoqRnQvGN3hL3x7m4N8OLNWybWu2kp8afeb0JODYNkf4A3FKw29', '09199124928', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:19:20', '2020-04-29 04:19:20', NULL),
('8ac43cf8-4bee-4953-9bf2-121e68fcf4bf', 1, 'm.azadfar', 'محمدرضا آزادفر', 'test5@info.com', NULL, 'Aa123456', NULL, 'clPhJDA5GMXcBoNIzuG2INCnT0p7TTlbhg2j4JxL0hrfd96tFcZl3Hv5VDfz', '09131659338', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:45:59', '2020-04-29 06:57:17', NULL),
('91117218-fe23-4905-97e6-0320fe1e5f30', 1, 'r.anosh', 'انوش رحمانی', 'anosh@info.com', NULL, '$2y$10$flGPqjqUkyglF/ABZwjoN.dfR5p1HvxhMsDICiFH0k6enSEqRl2lO', NULL, 'iJWC1BiAq6v4olE2RSlZVF1CMH3KpYo1TZv6lwkHV6VcoK21ocfs6AJzMThv', '09121466805', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-14 08:03:24', '2020-05-14 08:03:24', NULL),
('93df9dac-2937-4fa3-acbe-8abc260207ae', 1, 'm.jahanbakhsh', 'مهدی جهانبخش', 'teswt@info.com', NULL, 'Jj123456', NULL, 'v39P8tzz1n8SavFI1HsqWgIMWELH83Uon6Ayg1Hy3YsVpOS8ruuRCOcjnZbL', '09133186978', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:21:44', '2020-04-29 04:21:44', NULL),
('99e458a6-0749-4769-89b4-9c47de845b4a', 1, 'Sherafat', 'شرافت', 'info1@test.com', NULL, 'Ss123456', NULL, 'rHTuxQQAxEL2pL6UPVBjvkALJJRmZ19FV56pX21SOHDpFlt3M96QhW6XugZO', '09135528481', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:38:09', '2019-12-22 18:41:11', NULL),
('9a395e5d-4c8d-4055-8e46-90365d39da38', 1, 'm.noori', 'مهدی نوری اصفهان النگو', 'noori@info.com', NULL, 'Nn123456', NULL, 'fGHVn3C28IXpAfzUddFLDneWArCSuZZe5rQgBd0g8dkHI3TH1Se2bCcLBN18', '09133118843', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:53:06', '2020-04-29 04:53:06', NULL),
('9dc8f49e-d8c7-4e6b-9ddf-dadacb754b7a', 1, 'm.azin', 'میلاد آذین', 'test123@info.com', NULL, 'Aa123456', NULL, 'N69oQANqt944KVseBfjHij4SN3aZOHWT0sFthDGEmytQuaVjC1mkAr2np5QO', '09127251321', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:12:20', '2020-04-29 04:12:20', NULL),
('9e585f26-a036-44d7-8ea5-515e1db7e133', 1, 'admin', 'مدیر سیستم', 'majid.alizadeh22@gmail.com', '2019-11-14 13:50:53', '$2y$10$tUEG1ks.zEgKsb9uLlRHz.klScbdSHmGIFTzmNWVSFTqxMd0MOEt2', NULL, NULL, '09107602006', NULL, NULL, NULL, NULL, '2020-06-06 21:41:07', '2019-11-15 08:04:39', '2020-06-06 21:41:07', NULL),
('a024d139-3890-4d90-85f0-8ebcbdd319f4', 1, 'H.golpuor', 'گلپور', 'test17@info.com', NULL, 'Gg123456', NULL, 'hMu2W3ebgpRydLBYn0YIhcn4emad7lBfiwCHusiYwnT2l02M2Tiv2fozVdz6', '09121497643', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:07:20', '2019-12-24 09:07:20', NULL),
('a1cefc3e-06cc-482b-9562-c75c9b5da409', 1, 'm.zaeri', 'مسعود زائری', 'zaeri@info.com', NULL, 'Zz123456', NULL, 'uufXeBEQS5ULulphrbRfqdQ7fxkXvhaXgVVRHMaPoDii9J4fReg12CUO66UL', '09131257090', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:27:08', '2020-04-29 05:27:08', NULL),
('a808aee7-cd93-4d0d-b274-338bf1b43a11', 1, 'a.karimi', 'علی کریمی', 'karimi@info.com', NULL, 'Kk123456', NULL, 'lnDFQKKgE5tiXGQAoJzngnjJxE6w0UpuxZ7akOjFwIVsQppKIArAGmWUcL8q', '09122086334', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 11:05:54', '2020-04-29 11:05:54', NULL),
('ab9ea803-95b3-404e-818b-879112c34c6c', 1, 'S.feyzi', 'مسعود فیضی حلقه ست', 'test46@info.com', NULL, 'Ff123456', NULL, 'pXfMDbZLr5hPcv1rqCyQEbEOYK0JAOyf6kK0gu1cbFU5cQeplsAGrgP6jev0', '09199124928', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:58:11', '2019-12-24 09:58:11', NULL),
('b0eae399-3af1-4d82-9626-38255fed57a8', 1, 'Zadhosh', 'زادهوش', 'test4@info.com', NULL, 'Zz123456', NULL, 'yPwBYsS7GL3MhutlXeMnX8rmFH29CdaiA4YcADCphhrggOhUYVRPFMfbpfww', '09133186978', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:44:07', '2019-12-22 18:44:07', NULL),
('b7dd2211-242b-48de-99b0-801bf2b700ad', 1, 'd.epakchian', 'داوود ایپکچیان', 'epakchian@info.com', NULL, 'Ee123456', NULL, 'Bxot1V6nf6oPD70yle2ajt8jEQ6xBopQR01GwXrGmexPb6z0zadum2nnogKM', '09122367148', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:00:42', '2020-04-29 07:00:42', NULL),
('b8dce778-8052-4056-be33-dd025832b7a3', 1, 'r.mahmoudi', 'روح الله محمودی', 'mahmodi@info.com', NULL, 'Mm123456', NULL, 'mA91ZLYDa2ugH2FL18mLqUPfc8yer4EE5HTBgoRnCd4uBBJv5XeavfgdZ7XH', '09123840614', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:38:23', '2020-04-29 04:38:23', NULL),
('be846416-94ad-46bd-bce7-bc0326cacb7d', 1, 'a.soltani', 'علیرضا سلطانی', 'soltani@info.com', NULL, 'Ss123456', NULL, 'g2aKNLmrsJ7S8U4fX6Yq4ekfWjkrApmqtH34YUhscNJgFs4fEJ1ULGxPibgT', '09133000958', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:10:56', '2020-04-29 07:10:56', NULL),
('bf671011-772c-4eab-9e3f-420c6634d5cb', 1, 'm.bayani', 'محسن بیانی', 'bayani@info.com', NULL, 'Bb123456', NULL, 'QoVSzeFJgx7ZiOl2omhFS4t3Xj82QXUueAS3d3BwsLCmKw7Ygf8Qht7GjAYS', '09126711639', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:27:54', '2020-04-29 04:28:16', NULL),
('c05381da-47a7-485a-b69c-6a497af82a77', 1, 't.torghaz', 'تورج ترغاز', 'toraj@info.com', NULL, 'Tt123456', NULL, 'd6oHT4sbL2iYS7cc4R3tL4v1LEfgwCl06j1RLKEgaJziGU0jiDklbcKHvLMK', '09125187577', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:39:47', '2020-04-29 05:39:47', NULL),
('c418e2ec-07c8-4b18-89f7-129c1ac522db', 1, 'm.taki', 'مجید تکی', 'taki@info.com', NULL, 'Tt123456', NULL, 'wLPIFMUAcpINtt2PMzsOfQmThr1DzVfjboUdpzOAsBWnoTFzUofg3EKrhbLR', '09132295413', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:16:35', '2020-04-29 05:16:35', NULL),
('c9cb88f4-37de-4460-b795-6aab498bde8a', 1, '09184764157', 'صنوری', 'sanori@info.com', NULL, '$2y$10$y/o2vs3LKDzrpcsl7SGyLuKeaipmaLJyq0dDOceZIKvJDlB9vH2yi', NULL, 'l8BNOGvvAJ8jsoXtgJTS2E3nChG4vGNFdfUgVkWWTGfN4HcG2S6S1s407PHK', '09184764157', NULL, NULL, NULL, '2021-05-19 19:30:00', '2020-05-20 03:59:24', '2020-05-17 07:34:02', '2020-05-20 03:59:24', NULL),
('ca13c2cd-f4fe-4d5c-81fb-6f8a0273b01f', 1, 'memarian', 'معماریان', 'memarian@info.com', NULL, 'Mm123456', NULL, 'IgMEZY7VzCLIbZr9YAvoyF1IYCQHlj9bJFAeNXgyZX64MiVsf644uXN4IAsA', '09125902110', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:32:51', '2020-04-29 04:32:51', NULL),
('cc02b2ba-91ca-464e-8a3b-d6f1a6fcbdd7', 1, 'Shirazian', 'شیرازیان', 'test124@info.com', NULL, 'Ss123456', NULL, '22mnYECCVRSTb2Gu7E32TKNBoIOfrMX3klNI1jKSR1Qhmp7CMzaQyCRYnTQG', '09121452129', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:52:08', '2019-12-24 09:52:08', NULL),
('cda35175-7dfc-438b-ba69-2bde532d7ebb', 1, 't.shokohi', 'تورج شکوهی مهر', 'shokohi@info.com', NULL, 'Ss123456', NULL, 'wFBNi2CZpayeQo9VuuCSZP94Z1zyrSRPGVQ0kB9rix4x0ztSazjY2M57tbbr', '09131644046', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:03:36', '2020-04-29 07:03:36', NULL),
('cf8aa10a-efc4-4835-bae6-35bc289925e0', 1, 'Y.mohammadi', 'محمدی انگشتر تاج و سرویس', 'test145@info.com', NULL, 'Mm123456', NULL, 'nEbkmTEpCF8RDRN0ENs5zIJv17is3T1r2BIqGj6zAzWycXeV2QEJkklFHcAO', '09123888972', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:54:29', '2019-12-24 09:54:29', NULL),
('cfba98d0-7564-418e-a5b3-96da98ef8653', 1, '09197737001', 'امیرحسین حامل', 'amirhossein@INFO.COM', NULL, '$2y$10$HfMWQNwZsKfOJ437SqBN1.mO9OB2nrvN6SiSqtC4Fhx0G1D2SL76m', NULL, 'W5JhWuExgdgOtHO13M0QvKvgmqS6lJHHraUexEKfi3DGZ0i7FoqBR0lRWS11', '09197737001', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-20 04:02:50', '2020-05-20 04:02:50', NULL),
('d044e607-ba59-4f3b-b680-b9d61b65eaa4', 1, 'A.rahmani', 'انوش رحمانی', 'test21@info.com', NULL, 'Rr123456', NULL, 'QWEeiiQVRhwITc701l7i4DDa1wakAmYLowlBoIjOQ0oYkCDt8hZQljBxhqYK', '09121466805', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:50:13', '2019-12-24 09:50:13', NULL),
('d168a9ff-97d0-45ab-8430-7cf18176b1b5', 1, 'a.salmani2', 'عباس سلمانی', 'abasssalmani@info.com', NULL, 'Ss123456', NULL, 'Cnoz1DgoubXgRMB2nIA8QqJfjdBO2uqflI9MmDDWY9iLENLRSBLlVH28IkgK', '09127272427', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-30 07:46:36', '2020-04-30 07:46:36', NULL),
('d20bcc10-b029-4dc3-96c3-61121468b302', 1, '09120286762', 'امیرحسین', 'amir@info.com', NULL, 'ءئ123456', NULL, 'OBuXvwiIvysWU4cOZmQaLo5WUPVJMOsfq8ui5wRtitpBjxVMHqpqcl4HKbfQ', '09190286761', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-05-10 12:34:24', '2020-05-17 07:36:32', NULL),
('d96f2568-77c1-438d-b1e7-18b613be5392', 1, 'm.mohammadi', 'مهدی محمدی', 'mehdi@info.com', NULL, 'Mm123456', NULL, 'Nqp8SZWCWtSbhtAMqWjNHz3Ob9OpcwZnzOf8TSe1SZUvCtThasWJQ1dhUnlr', '09124142765', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:07:44', '2020-04-29 07:07:44', NULL),
('dcff5367-a489-4951-8257-9e7adfd5f0d6', 1, 's.shirazian', 'شیرازیان', 'shirazian@info.com', NULL, 'Ss123456', NULL, 'kxVj8EY8OfGihnFNnx89oafrVyUBQAHLSFQZOYAlCfvXsnyIRL8eapr4NaiS', '09121452129', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:46:05', '2020-04-29 05:46:05', NULL),
('dd45773c-513a-43a4-ac3e-12b651e8451d', 1, 'Zaeri', 'زائری', 'test12@info.com', NULL, 'Zz123456', NULL, 'pcQDN2za2JV0XVVBf1izDm5dron26exqz09rlH3cHisgXBOtAlJZOSsutpO3', '09131257090', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 19:00:14', '2019-12-22 19:00:14', NULL),
('df054351-56e4-4245-858c-9be3d0488fce', 1, 'M.shokohi', 'شکوهی مهر', 'test121@info.com', NULL, 'Mm123456', NULL, 'xxAzuCyDzI8fPMSWzxcHPu7uAqolBd9JJBNEN9Uslru987XL77EHSXOLhAVK', '09131664046', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 09:59:56', '2019-12-24 09:59:56', NULL),
('e1222ed4-45f8-47c4-979f-a05b4d1deed1', 1, 'A.ehsani', 'احسانی تابان', 'test15@info.com', NULL, 'Ee123456', NULL, 'eEjxoK10FU9ONI3xeumv0Owz5Qs6Mpz8FDWjmdS8La67J2L8gBtPLgfsV6oV', '09131534651', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-23 10:51:13', '2019-12-23 10:51:13', NULL),
('e20aef1a-05e1-4036-a68b-78aba224a554', 1, 'h.golpor', 'حسین گلپور', 'test@info.com', NULL, 'Gg123456', NULL, 'HuM6eqeCCW2F9lAzmKK02iN9tAikv51FGuVcgey050i7NQxyitUghYMeWL1o', '09121497643', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:17:23', '2020-04-29 04:17:23', NULL),
('e5c849e3-c1e2-426d-9627-afae14946b2e', 1, 'm.hadadi', 'مسعود حدادی', 'hadadi@info.com', NULL, 'hH123456', NULL, 'Mf8rNywl4rIlPPCMSSqRqf2mxJdMvPyYx22VZCcN981nc3SkO1Edexl2kQ2o', '09131644046', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:40:12', '2020-04-29 04:40:12', NULL),
('e9d678fc-ff7b-48ce-91af-5f15666679d6', 1, '09387467962', 'محمد رستمی', 'rostami@info.com', NULL, '$2y$10$IaFI1Sl/kfXKpzkfNnbaVevGZ3B.gc75EVmyQry4ZlwJP2oSeLqBW', NULL, 'e4ZHJMsovBayMASA8D106cK9Rmh3DNn4aCKpBJ6gmoT6bnzLgtFjNsejHVVz', '09387467962', NULL, NULL, NULL, '2021-05-19 19:30:00', '2020-05-20 04:53:01', '2020-05-20 04:10:13', '2020-05-20 04:53:01', NULL),
('ea6128f0-12a2-4c43-bbe5-a8d72e6826db', 1, 'a.yazdani', 'امیر یزدان', 'yazdan@info.com', NULL, 'Yy123456', NULL, 'LyBpdjux0MmgFczc4L1ZblAX14QwPFXlXIrLs1aJt01jN96VaxFwbOIuc0Xh', '09122646962', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:42:32', '2020-04-29 05:42:32', NULL),
('eb608c38-7d8e-4c47-a540-ea256881b310', 1, 't.golestane', 'طلای گلستانه', 'golestane@info.com', NULL, 'Gg123456', NULL, 'vYgeoJ66KDpARcjreLEEEm7KegCxr14Ns2Q895wDf8xHFFbeuYsvk1uYVWyE', '09120000000', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:44:26', '2020-04-29 05:44:26', NULL),
('ecaa9e76-b640-4cd4-b617-60a6f0547458', 1, 's.jedari', 'اسماعیل زاده جداری', 'jedari@info.com', NULL, 'Jj123456', NULL, 'sorFJRZ2nxO0lXWoEExQfprXHvNjZxD8C9KbOiOrP5NrYW3nprv9s2y8pQj3', '09143040970', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:36:36', '2020-04-29 04:36:36', NULL),
('eee53564-74c1-49d4-8408-d248bc459f51', 1, 'j.shiri', 'جعفر شیری', 'shiri@info.com', NULL, 'Ss123456', NULL, 'Gfu8Wfpe38j3nzyldKpbN3JlytgggvrKtnNBMF37mQvzMVCfIf3KTkiXdKTj', '09125126706', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 06:55:37', '2020-04-29 06:55:37', NULL),
('f133eff3-1d9d-49af-a618-f1ed9344d815', 1, 'm.saroghi', 'مهدی ساروقی', 'saroghi@info.com', NULL, 'Ss123456', NULL, 'ANi8BKH0KIsX8ogrQxiptLFzO2YL77ZttoqUAvNxGh1JH16WfG1baKrFGuwZ', '09124878122', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:02:28', '2020-04-29 07:02:28', NULL),
('f143e5f5-1c4f-405e-982e-d01bc31386d2', 1, 'M.karegar', 'مجید کارگر', 'test2@info.com', NULL, 'Kk123456', NULL, 'qlr3r4T6wcJEMxAH9b9XhL5RHgvsMQtJqHHMtyvf22UzwSfVdMzyljllg5Or', '09133538440', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:39:57', '2020-04-29 05:19:39', NULL),
('f2c72d94-3ace-4ecc-941a-162022e7a24a', 1, 'p.bina', 'پوریا محمدی بینا', 'bina@info.com', NULL, 'Bb123456', NULL, '5TS7QiiuvYbLIhoAJitwqVQsrDu8DzHu3mzGi3JSpwh1m5Dn1hdciEb7KvPi', '09189306941', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 11:08:09', '2020-04-29 11:08:09', NULL),
('f5db0414-3cea-40af-a0dd-c591045d95a8', 1, 'M.sharifi', 'شریفی محمد کارتیه', 'test211@info.com', NULL, 'Mm123456', NULL, 'cYGwB27PWqiwpgJrawd2GB1XIAOILIzp6diQxK8Zzhk3A55GZ4ocdFwc1Obr', '09125879150', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-24 10:02:42', '2019-12-24 10:02:42', NULL),
('f8f14bbf-03ab-4d10-8a1f-358a80fb24d3', 1, 'A.kochaki', 'علی کوچکی', 'kochaki@info.com', NULL, 'Aa123456', NULL, 'I9wBeqYp0SLAl7bNyoArnwPKICggv8FpU9IRESyGjIVpw1319wUlAH0pduM9', '09133111910', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:42:40', '2020-04-29 05:47:14', NULL),
('fa2a7853-4b2c-4e37-80e6-6c29249fff4a', 1, 'Mosavi', 'موسوی قم', 'test11@info.com', NULL, 'Mm123456', NULL, 'KmIJ5zjNNUYhXzqBe4dGuAV4tkWkedmNAL1CsUmup8W1ah5VtwjvgXyHFP3y', '09127524894', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2019-12-22 18:59:00', '2019-12-22 18:59:00', NULL),
('fabac446-ad6c-4d7d-89dc-55d9f6c732d9', 1, 'p.nasiri', 'نصیری پیمان', 'nasiri@info.com', NULL, 'Nn123456', NULL, 'zZT3jToH4gaBdxzpiDRjAB5YVuNyugbEyTvESoAwhsMX50TYMR7riglOPIp8', '09122373782', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 07:09:50', '2020-04-29 07:09:50', NULL),
('fb1bfc39-6bad-45a0-a8f5-4ee6458db3fe', 1, '09128957806', 'احد محمدی', 'ahad@info.com', NULL, '$2y$10$I4N2Y/QVTyDJEEW9VvTqLuSKFX57udFDgttSiCq4d5abmd1CJs31u', NULL, 'BFnoNPhUEq3EfnNNAErSPwfGw1v4A9zIMZ1Evcvo0Cbrrxz4TbQtGRMKM984', '09128957806', NULL, NULL, NULL, '2021-05-19 19:30:00', '2020-05-20 04:54:15', '2020-05-20 04:11:51', '2020-05-20 04:54:15', NULL),
('fb68401d-49d8-4267-8672-1180f82d3b56', 1, 's.sakha', 'شهرام سخا', 'sakha@info.com', NULL, 'Ss123456', NULL, 'l6pFcbdSaSvcjkwt7EzVkfhKMm1h1hwpBZnwq62UlG2E5x0nQWhDfXXFewuI', '09127357355', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:51:13', '2020-04-29 04:51:13', NULL),
('fc8cbef4-91ba-4f61-baed-3c6bb0581eb6', 1, 'm.karimzadegan', 'مهدی کریم زادگان', 'test1234@info.com', NULL, 'Kk123456', NULL, 'RQhdwuut6RjvMptc9TOKleim5JSW8s4ZhxmcvCT3so93PtjLEYgLG0SNLMtS', '03536271276', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 04:14:59', '2020-04-29 04:14:59', NULL),
('ff15cb55-546c-41b1-a54a-dbf41ee835f0', 1, 'm.golbaz', 'مهران گلباز خانیان', 'golbaz@info.com', NULL, 'Gg123456', NULL, '1GjSL8T0gIdYI0Jcu7ZJvHfW3PBGY7jdQDtAlYKspbLh8Fzpmt9ycANqTGF9', '09133162688', NULL, NULL, NULL, '2021-05-19 19:30:00', NULL, '2020-04-29 05:22:06', '2020-04-29 05:22:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wage_ranges`
--

CREATE TABLE `wage_ranges` (
  `id` char(36) NOT NULL,
  `range_from` double(4,2) NOT NULL,
  `range_to` double(4,2) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `weight_ranges`
--

CREATE TABLE `weight_ranges` (
  `id` char(36) NOT NULL,
  `range_from` double(7,3) NOT NULL,
  `range_to` double(7,3) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weight_ranges`
--

INSERT INTO `weight_ranges` (`id`, `range_from`, `range_to`, `slug`, `deleted_at`) VALUES
('27ffc4c7-7e1b-431a-9579-223b6540cd74', 11.000, 15.000, '11-15', NULL),
('2f6b4ad5-6f38-4dea-b508-2031eeacdfec', 40.000, 45.000, '40-45', NULL),
('3406a637-6f99-4b62-ab8a-8270927e5e4b', 8.000, 10.000, '8-10', NULL),
('668e2b28-eadc-4c74-8389-cfa92fa470a6', 30.000, 35.000, '30-35', NULL),
('681978cc-27cc-4e66-b96f-7f0360322af9', 2.000, 4.000, '3-5', NULL),
('7ec683c1-3fe6-4b19-8521-30563d0a4aeb', 1.000, 2.000, '1-2', NULL),
('7f44f319-74de-4321-8610-c13cb27f3508', 35.000, 40.000, '35-40', NULL),
('85ca8168-ee5f-4407-be14-3631f89f7e8d', 55.000, 60.000, '55-60', NULL),
('94c22b0c-75ad-47b9-99e0-704e4de3e812', 25.000, 30.000, '25-30', NULL),
('96de7da6-ef13-4cba-be94-37b87a67228f', 0.000, 1.000, '0-1', NULL),
('9aedd83d-8fbf-481c-ad28-d3cba59cb7db', 20.000, 25.000, '20-25', NULL),
('a2992994-3931-48f5-8fe3-09514d7bc58d', 50.000, 55.000, '50-55', NULL),
('a3189c62-d7e0-46c8-8790-ab20a833c6ff', 6.000, 8.000, '6-8', NULL),
('c83e4cf3-e35b-4da2-9dfe-f4e0698e6e76', 4.000, 6.000, '6-10', NULL),
('d0d44565-cec5-44a8-974d-71962f8dc9a9', 45.000, 50.000, '45-50', NULL),
('d54da9f1-18bf-443d-8a52-1a569d8a8641', 16.000, 20.000, '16-20', NULL),
('f3c93bf8-0352-4b1f-8ede-5aae80ecc088', 1.000, 2.000, '1-2-1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carriers_user_id_foreign` (`user_id`);

--
-- Indexes for table `carrier_customer`
--
ALTER TABLE `carrier_customer`
  ADD PRIMARY KEY (`carrier_id`,`customer_id`),
  ADD KEY `carrier_customer_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `carrier_owner`
--
ALTER TABLE `carrier_owner`
  ADD PRIMARY KEY (`carrier_id`,`owner_id`),
  ADD KEY `carrier_owner_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `carrier_producer`
--
ALTER TABLE `carrier_producer`
  ADD PRIMARY KEY (`carrier_id`,`producer_id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `customer_owner`
--
ALTER TABLE `customer_owner`
  ADD PRIMARY KEY (`owner_id`,`customer_id`),
  ADD KEY `customer_owner_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owners_user_id_foreign` (`user_id`);

--
-- Indexes for table `owner_producer`
--
ALTER TABLE `owner_producer`
  ADD PRIMARY KEY (`producer_id`,`owner_id`),
  ADD KEY `owner_producer_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_permission_group`
--
ALTER TABLE `permission_permission_group`
  ADD PRIMARY KEY (`permission_id`,`permission_group_id`),
  ADD KEY `ppg_pg_id` (`permission_group_id`);

--
-- Indexes for table `permission_role_assignment`
--
ALTER TABLE `permission_role_assignment`
  ADD PRIMARY KEY (`role_assignment_id`,`permission_id`),
  ADD KEY `prs_p_id` (`permission_id`);

--
-- Indexes for table `price_ranges`
--
ALTER TABLE `price_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producers_user_id_foreign` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_producer_id_foreign` (`producer_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_weight_range_id_foreign` (`weight_range_id`),
  ADD KEY `products_wage_range_id_foreign` (`wage_range_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `product_subcategory_size`
--
ALTER TABLE `product_subcategory_size`
  ADD PRIMARY KEY (`product_subcategory_id`,`size_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_assignments`
--
ALTER TABLE `role_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rs_r_id` (`role_id`),
  ADD KEY `rs_pg_id` (`permission_group_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `ru_u_id` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`category_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `wage_ranges`
--
ALTER TABLE `wage_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weight_ranges`
--
ALTER TABLE `weight_ranges`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carriers`
--
ALTER TABLE `carriers`
  ADD CONSTRAINT `carriers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carrier_customer`
--
ALTER TABLE `carrier_customer`
  ADD CONSTRAINT `carrier_customer_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrier_customer_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carrier_owner`
--
ALTER TABLE `carrier_owner`
  ADD CONSTRAINT `carrier_owner_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrier_owner_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `carrier_producer`
--
ALTER TABLE `carrier_producer`
  ADD CONSTRAINT `carrier_producer_ibfk_1` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrier_producer_ibfk_2` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`),
  ADD CONSTRAINT `cart_items_ibfk_4` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_owner`
--
ALTER TABLE `customer_owner`
  ADD CONSTRAINT `customer_owner_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_owner_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owner_producer`
--
ALTER TABLE `owner_producer`
  ADD CONSTRAINT `owner_producer_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_producer_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_permission_group`
--
ALTER TABLE `permission_permission_group`
  ADD CONSTRAINT `ppg_p_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ppg_pg_id` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role_assignment`
--
ALTER TABLE `permission_role_assignment`
  ADD CONSTRAINT `prs_p_id` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prs_rs_id` FOREIGN KEY (`role_assignment_id`) REFERENCES `role_assignments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producers`
--
ALTER TABLE `producers`
  ADD CONSTRAINT `producers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_wage_range_id_foreign` FOREIGN KEY (`wage_range_id`) REFERENCES `wage_ranges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_weight_range_id_foreign` FOREIGN KEY (`weight_range_id`) REFERENCES `weight_ranges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_subcategories`
--
ALTER TABLE `product_subcategories`
  ADD CONSTRAINT `product_subcategories_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_subcategories_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `product_subcategory_size`
--
ALTER TABLE `product_subcategory_size`
  ADD CONSTRAINT `product_subcategory_size_ibfk_1` FOREIGN KEY (`product_subcategory_id`) REFERENCES `product_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_subcategory_size_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_assignments`
--
ALTER TABLE `role_assignments`
  ADD CONSTRAINT `rs_pg_id` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rs_r_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `ru_r_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ru_u_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sizes`
--
ALTER TABLE `sizes`
  ADD CONSTRAINT `sizes_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `product_subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
