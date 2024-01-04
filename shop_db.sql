-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 04:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(11, 2, 'user01', 'user01@gmail.com', '123456789', 'Hi, this is testing');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 2, 'user01', '123456789', 'user01@gmail.com', 'cash on delivery', 'flat no. 154, Da Nang, Da Nang, Việt Nam - 1223', ', darknet (1) , clever lands (2) , bee well bee (3) ', 88, '22-Sep-2023', 'completed'),
(13, 2, 'Lưu Đức', '013456579', 'duchl.22it@vku.udn.vn', 'cash on delivery', 'flat no. 470, Trần Đại Nghĩa, Ngũ Hành Sơn, Đà Nẵng, city, Vietnam - 232442', ', TKL Zoom Mechanical Keyboard (Sky Blue) (2) ', 404, '04-Jan-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `Stock` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `Stock`) VALUES
(8, 'Mechanical Keyboard Mode Envoy - Chassis Mirage', 280, 'bottom-bg-white-caps-d.webp', 20),
(9, 'Mechanical Keyboard Mode Envoy - Chassis White', 280, 'bottom-bg-white-y0d1a2a5a-caps-d.webp', 20),
(10, 'Mechanical Keyboard Mode Envoy - Polycarbonate', 280, 'bottom-bg-white-y0e1a2a5a-caps-d.webp', 20),
(11, 'Mechanical Keyboard Mode Envoy - Chassis Green', 280, 'bottom-bg-white-y0c1a2a5a-caps-d.webp', 20),
(12, 'TKL Zoom Mechanical Keyboard (Wild Green)', 202, 'zoomtkl-wildgreen-glass-wildgreen-1667794652758.webp', 20),
(13, 'TKL Zoom Mechanical Keyboard (Sky Blue)', 202, 'zoomtkl-skyblue-glass-skyblue-1667791499362.webp', 20),
(14, 'TKL Zoom Mechanical Keyboard (White)', 202, 'zoomtkl-white-ss-pvdgold-1667793707227.webp', 20),
(15, 'TKL AE Zoom Mechanical Keyboard (Purple)', 260, '2-1684061179604.webp', 20),
(16, 'GP75 3modes Mechanical Keyboard | Hotswap', 100, '2-1677397318246.webp', 20),
(17, 'Foxlab Sunset80 Kit Mechanical Keyboard', 490, 'colorwayblack-1800x1800-1683717807115.webp', 20),
(18, 'JER PLANET Mechanical Keyboard - JER1813 Kit', 470, '17-1679737717415.webp', 20),
(19, 'Aero75 By Gray Studio Mechanical Keyboard', 456, '05-mecha-01-1686551127995.webp', 20),
(20, 'TKL Zoom Mechanical Keyboard (Lilac)', 202, 'zoomtkl-lilac-glass-lilac-1667790681675.webp', 20),
(21, 'TKL Zoom Mechanical Keyboard (Scarlet Red)', 202, 'zoomtkl-scarletred-ss-pvdgold-1667791131106.webp', 20),
(22, 'Keydous NJ80 Mechanical Keyboard - AP Version', 100, 'nj80-den-gat-1699591450463.webp', 20),
(23, 'Monsgeek M7W mechanical keyboard', 100, 'z4439191459301-d587a2e9938a73929768e96b39b3c8ce-1686967081346.webp', 20),
(24, 'Mechanical Keyboard | Downstream circuit', 100, '4-ccb51473-7c37-4333-94bb-913d6dc324f0.webp', 20),
(25, 'DUKHARO VN66 mechanical keyboard', 100, '2972cece-3858-42bf-8c4f-8fcaef30052f.webp', 20),
(26, 'Monsgeek MG108B Mechanical Keyboard', 100, '11-1686916698515-1690116735918.webp', 20),
(27, 'Finalkey V65 R3 Mechanical Keyboard', 100, 'image-20230612164741.webp', 20),
(28, 'TOFU65 2.0 KIT Mechanical Keyboard', 202, 'gray.webp', 20),
(29, 'TOFU60 2.0 KIT Mechanical Keyboard', 202, '15-96ff8056-f88b-4c4a-970e-ade0bd87fdb8.webp', 20),
(30, 'ZoomPad SE - Anodized Lavender (Normal)', 110, 'zoompad-selavender-pvdblack-1690197136536.webp', 20),
(31, 'ZoomPad SE - E-White (Normal)', 110, 'zoompad-sewhite-anorosegold-1690197840354.webp', 20),
(32, 'ZoomPad EE - Sky Blue (Normal)', 110, 'zoompad-eeskyblue-ewhite-1690198055436.webp', 20),
(33, 'ZoomPad EE - Milky Green (Normal)', 110, 'zoompad-eemilkygreen-anorosegold-1690198584989.webp', 20),
(34, 'ZoomPad EE - Milk Tea (Normal)', 110, 'zoompad-eemilktea-anorosegold-1690198900430.webp', 20),
(35, 'ZoomPad EE - Lilac (Normal)', 110, 'zoompad-eelilac-pvdblack-1690199652331.webp', 20),
(36, 'ZoomPad EE - Blush Pink (Normal)', 110, 'zoompad-eeblushpink-pvdprism-1690199920781.webp', 20),
(37, 'ZoomPad EE - Scarlet Red (Normal)', 110, 'zoompad-eescarletred-pvdprism-1690200316656.webp', 20),
(38, 'ZoomPad EE - Cyber Yellow (Normal)', 110, 'zoompad-eecyberyellow-pvdprism-1690200780634.webp', 20),
(39, 'ZoomPad EE - Cyber Teal (Normal)', 110, 'zoompad-eeteal-pvdprism-1690200912697.webp', 20),
(40, 'ZoomPad x Kitsune - Limited Edition', 122, 'zoompad-1-1690203050279.webp', 20),
(41, 'TET KEYBOARD KIT - Anod Navy', 410, 'blue-purple-jpeg-1690365071377.webp', 20),
(43, 'FINALKEY V81 PLUS Keyboard (KIT)', 110, '2-1684061179604.webp', 20),
(44, 'Plate for Sugar65 Keyboard - Add-ons', 50, 'z4589506727653-fc9f916aaf17b4d57dc601b755e9d52b-c3b6fef9-2080-4358-a028-b48754d44153.webp', 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'admin1', 'admin1@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'user01', 'user01@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
