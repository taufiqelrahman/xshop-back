-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2017 at 07:09 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hijabrangersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `type`, `path`, `created_at`, `updated_at`, `jenis`, `deleted_at`) VALUES
(308, 'Black White Sandal', '190000', 'Material: Glossy<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black White Sandal.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(309, 'Black Weds', '199000', 'Material: Suede<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Weds.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(310, 'Shocking Pink Weds', '199000', 'Material: Suede<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Shocking Pink Weds.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(311, 'Blaster Flato', '190000', 'Material: Suede & Silver<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Blaster Flato.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(312, 'White Black XO', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Black XO.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(313, 'Tan Megy', '205000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Tan Megy.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(314, 'Kenny Black', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Kenny Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(315, 'Simply Black Glossy', '199000', 'Material: Glossy<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Simply Black Glossy.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(316, 'Tassel Black', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Tassel Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(317, 'Black Sweet', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Sweet.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(318, 'Stella BNW', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Stella BNW.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(319, 'Terra Brown', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Terra Brown.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(320, 'Bella Grey', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bella Grey.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(321, 'Bella White Grey', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bella White Grey.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(322, 'Blacy Heels', '225000', 'Material: Glossy<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Blacy Heels.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(323, 'Dizzy White', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Dizzy White.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(324, 'Excel White', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Excel White.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(325, 'Frily Flatshoes', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Frily Flatshoes.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(326, 'Guany on Black', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Guany on Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(327, 'Mocca Suede Gie', '199000', 'Material: Suede<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Mocca Suede Gie.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(328, 'Red White Jacko', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Red White Jacko.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(329, 'Stimmy Munic', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Stimmy Munic.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(330, 'Tania Heels', '205000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Tania Heels.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(331, 'Black Jimmio', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Jimmio.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(332, 'Baymax Platform', '219000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Baymax Platform.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(333, 'Bella Black', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bella Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(334, 'Black Glossy Hole', '199000', 'Material: Glossy<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Glossy Hole.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(335, 'Blackies Woof', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Blackies Woof.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(336, 'Frily Flatshoes', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Frily Flatshoes.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(337, 'Kaila Creamy', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Kaila Creamy.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(338, 'Rossy Platform', '199000', 'Material: Canvas<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Rossy Platform.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(339, 'White Bonnie', '215000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Bonnie.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(340, 'Pisces Black', '229000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Pisces Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(341, 'Black Gold Sanwa', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Gold Sanwa.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(342, 'Pink Pearl', '199000', 'Material: Canvas<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Pink Pearl.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(343, 'Little Platform', '199000', 'Material: Synthethic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Little Platform.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(344, '2 Slippo Pink', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/2 Slippo Pink.jpg', '2016-04-27 18:13:05', '2017-03-27 18:21:13', NULL, NULL),
(345, '3 Slippo Black', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/3 Slippo Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(346, 'Black Brown Wedo', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Brown Wedo.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(347, 'Black White Adey', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black White Adey.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(348, 'Brown Sloppy', '215000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Brown Sloppy.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(349, 'Brownie Tuildo', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Brownie Tuildo.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(350, 'Bums Black', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bums Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(351, 'High Sanwa', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/High Sanwa.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(352, 'Mocca Sanwa', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Mocca Sanwa.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(353, 'White Black Mussy', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Black Mussy.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(354, 'White Busson', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Busson.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(355, 'White Snucky', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Snucky.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(356, 'Abiel Black', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Abiel Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(357, 'Ballerina Flat', '205000', 'Material: Suede<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Ballerina Flat.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(358, 'Bella White Rope', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bella White Rope.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(359, 'Black Flumno', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Flumno.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(360, 'Black Herlemno', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Herlemno.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(361, 'Black Homi', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Homi.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(362, 'Bronie Zigzag', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bronie Zigzag.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(363, 'Cherry Heels', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Cherry Heels.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(364, 'Sally Flatshoes', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Sally Flatshoes.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(365, 'Solom Hokay', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Solom Hokay.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(366, 'Strip Wood', '199000', 'Material: Canvas<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Strip Wood.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(367, 'White Rumbie', '205000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Rumbie.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', NULL, NULL),
(368, 'Alanis Floral Pink', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Alanis Floral Pink.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(369, 'Bluflo', '185000', 'Material: Linen Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Bluflo.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(370, 'Catherine Black Dark Blue', '185000', 'Material: Linen Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Black Dark Blue.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(371, 'Catherine Blue', '185000', 'Material: Linen Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Blue.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(372, 'Catherine Floral Dot Mint', '185000', 'Material: Canvas Import<br>Size: 23x40x9<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Floral Dot Mint.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(373, 'Catherine Floral Dot Pink', '185000', 'Material: Canvas Import<br>Size: 23x40x9<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Floral Dot Pink.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(374, 'Catherine Pink', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Pink.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(375, 'Catherine Soft Pink', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Catherine Soft Pink.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(376, 'Green Catherine', '185000', 'Material: Linen Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Green Catherine.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(377, 'Navy Calista', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Navy Calista.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(378, 'Red Calista', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Red Calista.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(379, 'White Red Catherine', '185000', 'Material: Linen & Vynil Import<br>Size: 28x40x7<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/White Red Catherine.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Tote', NULL),
(380, 'Anna Brown Linen', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anna Brown Linen.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(381, 'Anna Brown', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anna Brown.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(382, 'Anna Cream', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anna Cream.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(383, 'Anna Flower Black', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anna Flower Black.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(384, 'Anna Violet', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anna Violet.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(385, 'Anne Fancy Mint', '185000', 'Material: Linen Import<br>Size: 45x12x29<br><br> Pre-order in 4-5 weeks.', 'bags', '/images/bags/Anne Fancy Mint.jpg', '2016-04-27 18:13:05', '2016-04-27 18:13:05', 'Bucket', NULL),
(386, 'Wide Premium Shawl - Magenta', '75000', 'Bahan:  Georgette<br>Ukuran: 200 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Magenta.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(387, 'Wide Premium Shawl - Soft Grey', '75000', 'Bahan:  Georgette<br>Ukuran: 201 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Soft Grey.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(388, 'Wide Premium Shawl - Black', '75000', 'Bahan:  Georgette<br>Ukuran: 202 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Black.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(389, 'Wide Premium Shawl - Green Mint', '75000', 'Bahan:  Georgette<br>Ukuran: 203 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Green Mint.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(390, 'Wide Premium Shawl - Coksu', '75000', 'Bahan:  Georgette<br>Ukuran: 204 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Coksu.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(391, 'Wide Premium Shawl - Mustard', '75000', 'Bahan:  Georgette<br>Ukuran: 205 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Mustard.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(392, 'Wide Premium Shawl - Dusty Pink', '75000', 'Bahan:  Georgette<br>Ukuran: 206 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Dusty Pink.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(393, 'Wide Premium Shawl - Pink Salem', '75000', 'Bahan:  Georgette<br>Ukuran: 207 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Pink Salem.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(394, 'Wide Premium Shawl - Blue', '75000', 'Bahan:  Georgette<br>Ukuran: 208 cm x 75 cm<br>Seluruh tepi jahit', 'hijab', '/images/hijab/Wide Premium Shawl - Blue.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Wide Premium Shawl', NULL),
(395, 'Khimar Saqeela Lace - Dusty Pink', '115000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Renda, 3 layer', 'hijab', '/images/hijab/Khimar Saqeela Lace - Dusty Pink.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Saqeela Lace', NULL),
(396, 'Khimar Saqeela Lace - Dusty Purple', '115000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Renda, 3 layer', 'hijab', '/images/hijab/Khimar Saqeela Lace - Dusty Purple.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Saqeela Lace', NULL),
(397, 'Khimar Saqeela Lace - Silver', '115000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Renda, 3 layer', 'hijab', '/images/hijab/Khimar Saqeela Lace - Silver.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Saqeela Lace', NULL),
(398, 'Khimar Saqeela Lace - Green Blue', '115000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Renda, 3 layer', 'hijab', '/images/hijab/Khimar Saqeela Lace - Green Blue.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Saqeela Lace', NULL),
(399, 'Exc Pre Instant - Black', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Black.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(400, 'Exc Pre Instant - Purple', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Purple.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(401, 'Exc Pre Instant - Pink Salem', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Pink Salem.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(402, 'Exc Pre Instant - Salem', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Salem.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(403, 'Exc Pre Instant - Silver', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Silver.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(404, 'Exc Pre Instant - Coksu', '95000', 'Bahan: Platinum<br>Ukuran: Panjang 2 meter<br>tidak licin, mudah diatur, tidak transparan', 'hijab', '/images/hijab/Exc Pre Instant - Coksu.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Exclusive Premium Instant', NULL),
(405, 'Khimar Saqeela - Avocado', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Avocado.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(406, 'Khimar Saqeela - Black', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Black.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(407, 'Khimar Saqeela - Dongker', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Dongker.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(408, 'Khimar Saqeela - Grey Brown', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Grey Brown.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(409, 'Khimar Saqeela - Maroon', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Maroon.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(410, 'Khimar Saqeela - Salmon Pink', '105000', 'Bahan: Ceruty Ultimate<br>Ukuran: Panjang depan 85cm, belakang 120cm<br>Non Pad, 3 Layer', 'hijab', '/images/hijab/Khimar Saqeela - Salmon Pink.jpg', '2016-05-23 15:55:44', '2016-05-23 15:55:44', 'Khimar Shaqeela Plain', NULL),
(411, 'Diana Tunic Tosca', '90000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/Diana Tunic Tosca.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(412, 'Azzahra Tosca', '90000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/Azzahra Tosca.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(413, 'Dilara Tosca', '90000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/Dilara Tosca.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(414, 'Dilara Peach', '90000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/Dilara Peach.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(415, 'DC Set', '105000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/DC Set.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(416, 'Generals Black Arabic Tee', '80000', 'Bahan: Spandek<br>Ukuran: Fit to L', 'hijab', '/images/hijab/Generals Black Arabic Tee.jpg', '2016-05-26 22:51:47', '2016-05-26 22:51:47', 'T-Shirt', NULL),
(417, 'Arab Army Arabic Grey', '80000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Arab Army Arabic Grey.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(418, 'Azzahra Grey', '90000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Azzahra Grey.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(419, 'Diana Tunic Black', '90000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Diana Tunic Black.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(420, 'Narita Set Stripe', '95000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Narita Set Stripe.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(421, 'Subhan Black Arabic Tee', '80000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Subhan Black Arabic Tee.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(422, 'Work & Play Navy Long Tunic', '75000', 'Bahan: Spandek<br>Ukuran: All size Fit to L', 'hijab', '/images/hijab/Work & Play Navy Long Tunic.jpg', '2016-05-28 05:47:33', '2016-05-28 05:47:33', 'T-Shirt', NULL),
(424, 'Black Jonie', '215000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Jonie.jpg', '2016-06-06 13:32:14', '2016-06-06 13:32:14', NULL, NULL),
(425, 'Brown Flumno', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Brown Flumno.jpg', '2016-06-06 13:32:14', '2016-06-06 13:32:14', NULL, NULL),
(426, 'Choco Ballerina', '205000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Choco Ballerina.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(427, 'Flatform Snucky', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Flatform Snucky.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(428, 'Maggie Sandal', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Maggie Sandal.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(429, 'Slip on Dhe', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Slip on Dhe.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(430, 'Celline Rope', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Celline Rope.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(431, 'Leia Boots', '229000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Leia Boots.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(432, 'Abuba White', '185000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Abuba White.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(433, 'Yumiko White', '205000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Yumiko White.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(434, 'White Sandal', '175000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/White Sandal.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(435, 'Ziggy BW', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Ziggy BW.jpg', '2016-06-06 13:32:15', '2016-06-06 13:32:15', NULL, NULL),
(436, 'Qubicle Black', '205000', 'Material: Canvas<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Qubicle Black.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Docmart', NULL),
(437, 'Brown Spider', '199000', 'Material: Canvas<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Brown Spider.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Docmart', NULL),
(438, 'Black Lady', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Black Lady.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Boots', NULL),
(439, 'Cream Belle', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Cream Belle.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Flatform', NULL),
(440, 'Tiber Sweet', '190000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Tiber Sweet.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Flat', NULL),
(441, 'Marina Heels', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Marina Heels.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Heels', NULL),
(442, 'Dainty Heels', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Dainty Heels.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Heels', NULL),
(443, 'Deary Black', '225000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Deary Black.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Wedges', NULL),
(444, 'Bromia Luna', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bromia Luna.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Wedges', NULL),
(445, 'Boots Moreno', '209000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Boots Moreno.jpg', '2017-01-05 17:15:34', '2017-01-05 17:15:34', 'Boots', NULL),
(446, 'Bootsky', '229000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Bootsky.jpg', '2017-01-05 17:15:35', '2017-01-05 17:15:35', 'Boots', NULL),
(447, 'Excel Docmart', '199000', 'Material: Synthetic<br>Size: 35-43<br><br>Available in all colours. Pre-order in 2-3 weeks.', 'shoes', '/images/shoes/Excel Docmart.jpg', '2017-01-08 04:10:44', '2017-01-08 04:10:44', 'Docmart', NULL),
(449, 'asd2', '123', 'asdasdasdasd', 'bags', '/images/1703280147asd2.jpg', '2017-03-27 18:47:29', '2017-03-27 19:48:47', NULL, '2017-03-27 19:48:47'),
(450, 'asd', '123', 'assdasdasdsd', 'bags', '/images/1703280228asd.JPG', '2017-03-27 19:28:21', '2017-03-27 19:47:45', NULL, '2017-03-27 19:47:45'),
(451, 'asd3', '123', 'asdadasdasdasd', 'bags', '/images/1703280241asd3.JPG', '2017-03-27 19:41:53', '2017-03-27 19:49:28', NULL, '2017-03-27 19:49:28'),
(452, 'asd4', '123', 'qweqweqweasdasdasd', 'hijab', '/images/1703280244asd4.JPG', '2017-03-27 19:44:04', '2017-03-27 19:57:18', 'qwe', '2017-03-27 19:57:18'),
(453, 'asd', '123', 'asdasdasdasd', 'bags', '/images/1703280254asd.JPG', '2017-03-27 19:54:42', '2017-03-27 19:54:50', 'adqweqsd', '2017-03-27 19:54:50'),
(454, 'asd', '123124', 'adcjscqlwn,camnskidashdkjabmcans', 'hijab', '/images/1703280256asd.JPG', '2017-03-27 19:56:27', '2017-03-27 19:56:34', 'asdkalsnckalmcnk', '2017-03-27 19:56:34'),
(455, 'asd', '999999', 'dkjashdkahkjcaxc', 'bags', '/images/1703280300asd.JPG', '2017-03-27 20:00:15', '2017-03-27 20:00:20', 'askjdlasjdlkj', '2017-03-27 20:00:20'),
(456, 'asd', '999999', 'dkjashdkahkjcaxc', 'bags', '/images/1703280303asd.JPG', '2017-03-27 20:03:53', '2017-03-27 20:04:00', 'askjdlasjdlkj', '2017-03-27 20:04:00'),
(457, 'asda', '123', 'ahdnalkhdialdfhsaskjd', 'hijab', '/images/1703280309asda.JPG', '2017-03-27 20:09:31', '2017-03-27 20:09:36', 'sdasdawdewq', '2017-03-27 20:09:36'),
(458, 'asde', '999999', 'kjkajckahgskjdas', 'hijab', '/images/1703280310asde.JPG', '2017-03-27 20:10:23', '2017-03-27 20:10:28', 'adasdaksjd', '2017-03-27 20:10:28'),
(459, 'asd', '999999', 'dhaksjdmansd', 'hijab', '/images/1703280311asd.JPG', '2017-03-27 20:11:34', '2017-03-27 20:11:38', 'asdasdasd', '2017-03-27 20:11:38'),
(460, 'asd', '34234', 'asdacaedasdcadsrfdsaddc', 'hijab', '/images/1703280322asd.JPG', '2017-03-27 20:22:00', '2017-03-27 20:22:07', 'asdasd', '2017-03-27 20:22:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
