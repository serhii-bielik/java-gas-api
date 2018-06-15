-- --------------------------------------------------------
-- Host:                         35.198.218.159
-- Server version:               5.7.14-google - (Google)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for gas
CREATE DATABASE IF NOT EXISTS `gas` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gas`;

-- Dumping structure for table gas.gas_data
CREATE TABLE IF NOT EXISTS `gas_data` (
  `12:27:48` varchar(255) DEFAULT NULL,
  `12:27:50` varchar(255) DEFAULT NULL,
  `27,3` varchar(255) DEFAULT NULL,
  `2,56` varchar(255) DEFAULT NULL,
  `70` varchar(255) DEFAULT NULL,
  `1` varchar(255) DEFAULT NULL,
  `2` varchar(255) DEFAULT NULL,
  `11` varchar(255) DEFAULT NULL,
  `GASOHOL91` varchar(255) DEFAULT NULL,
  `0,7` varchar(255) DEFAULT NULL,
  `0,07` varchar(255) DEFAULT NULL,
  `4,579` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gas.gas_data: ~20 rows (approximately)
/*!40000 ALTER TABLE `gas_data` DISABLE KEYS */;
INSERT INTO `gas_data` (`12:27:48`, `12:27:50`, `27,3`, `2,56`, `70`, `1`, `2`, `11`, `GASOHOL91`, `0,7`, `0,07`, `4,579`) VALUES
	('12:27:15', '12:27:30', '30,58', '16,35', '500', '7', '2', '4', 'DIESEL PLUS', '0,9', '0,07', '32,71'),
	('12:27:15', '12:27:28', '27,3', '18,31', '500', '5', '2', '1', 'GASOHOL91', '0,7', '0,07', '32,71'),
	('12:23:50', '12:23:58', '27,57', '10,88', '300', '5', '3', '2', 'GASOHOL95', '0,7', '0,07', '19,626'),
	('12:22:50', '12:22:55', '27,57', '7,25', '200', '2', '3', '2', 'GASOHOL95', '0,7', '0,07', '13,084'),
	('12:22:47', '12:23:04', '26,71', '18,72', '500', '8', '1', '3', 'DIESEL', '0,9', '0,07', '32,71'),
	('12:17:09', '12:17:20', '26,71', '11,23', '300', '8', '1', '3', 'DIESEL', '0,9', '0,07', '19,626'),
	('12:13:10', '12:13:23', '27,3', '18,31', '500', '5', '2', '1', 'GASOHOL91', '0,7', '0,07', '32,71'),
	('12:13:07', '12:13:09', '27,3', '2,56', '70', '2', '2', '1', 'GASOHOL91', '0,7', '0,07', '4,579'),
	('12:11:59', '12:12:02', '27,3', '4,02', '110', '1', '2', '1', 'GASOHOL91', '0,7', '0,07', '7,196'),
	('12:11:23', '12:11:29', '26,71', '5,61', '150', '3', '1', '3', 'DIESEL', '0,9', '0,07', '9,813'),
	('12:11:20', '12:11:37', '26,71', '18,72', '500', '7', '1', '3', 'DIESEL', '0,9', '0,07', '32,71'),
	('12:11:18', '12:11:48', '30,58', '32,7', '1000', '7', '2', '4', 'DIESEL PLUS', '0,9', '0,07', '65,421'),
	('12:09:01', '12:09:19', '27,57', '25,39', '700', '1', '3', '2', 'GASOHOL95', '0,7', '0,07', '45,794'),
	('12:08:58', '12:09:15', '26,71', '18,72', '500', '8', '1', '3', 'DIESEL', '0,9', '0,07', '32,71'),
	('12:03:38', '12:04:06', '27,57', '30,1', '830', '5', '3', '2', 'GASOHOL95', '0,7', '0,07', '54,299'),
	('12:01:42', '12:01:48', '25,06', '7,98', '200', '1', '1', '5', 'E20', '0,7', '0,07', '13,084'),
	('12:01:42', '12:01:45', '27,3', '3,66', '100', '1', '2', '1', 'GASOHOL91', '0,7', '0,07', '6,542'),
	('12:01:38', '12:01:40', '27,57', '1,81', '50', '2', '3', '2', 'GASOHOL95', '0,7', '0,07', '3,271'),
	('12:01:13', '12:01:30', '26,71', '18,72', '500', '7', '1', '3', 'DIESEL', '0,9', '0,07', '32,71'),
	('12:01:06', '12:01:08', '25,06', '1,99', '50', '2', '1', '5', 'E20', '0,7', '0,07', '3,271');
/*!40000 ALTER TABLE `gas_data` ENABLE KEYS */;

-- Dumping structure for table gas.journal
CREATE TABLE IF NOT EXISTS `journal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL DEFAULT '00:00:00',
  `end_time` time NOT NULL DEFAULT '00:00:00',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_per_l` double NOT NULL DEFAULT '0',
  `qty` double NOT NULL DEFAULT '0',
  `item_type` int(11) NOT NULL DEFAULT '0',
  `pum_num` int(11) NOT NULL DEFAULT '0',
  `hos_num` int(11) NOT NULL DEFAULT '0',
  `item` varchar(256) NOT NULL DEFAULT '0',
  `tax_rate` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table gas.journal: ~20 rows (approximately)
/*!40000 ALTER TABLE `journal` DISABLE KEYS */;
INSERT INTO `journal` (`id`, `start_time`, `end_time`, `unit_price`, `unit_per_l`, `qty`, `item_type`, `pum_num`, `hos_num`, `item`, `tax_rate`, `tax_amount`, `amount`) VALUES
	(1, '12:27:15', '12:27:30', 30.58, 0.9, 16.35, 7, 7, 2, 'DIESEL PLUS', 0.07, 32.71, 500),
	(2, '12:27:15', '12:27:28', 27.3, 0.7, 18.31, 5, 5, 2, 'GASOHOL91', 0.07, 32.71, 500),
	(3, '12:23:50', '12:23:58', 27.57, 0.7, 10.88, 5, 5, 3, 'GASOHOL95', 0.07, 19.626, 300),
	(4, '12:22:50', '12:22:55', 27.57, 0.7, 7.25, 2, 2, 3, 'GASOHOL95', 0.07, 13.084, 200),
	(5, '12:22:47', '12:23:04', 26.71, 0.9, 18.72, 8, 8, 1, 'DIESEL', 0.07, 32.71, 500),
	(6, '12:17:09', '12:17:20', 26.71, 0.9, 11.23, 8, 8, 1, 'DIESEL', 0.07, 19.626, 300),
	(7, '12:13:10', '12:13:23', 27.3, 0.7, 18.31, 5, 5, 2, 'GASOHOL91', 0.07, 32.71, 500),
	(8, '12:13:07', '12:13:09', 27.3, 0.7, 2.56, 2, 2, 2, 'GASOHOL91', 0.07, 4.579, 70),
	(9, '12:11:59', '12:12:02', 27.3, 0.7, 4.02, 1, 1, 2, 'GASOHOL91', 0.07, 7.196, 110),
	(10, '12:11:23', '12:11:29', 26.71, 0.9, 5.61, 3, 3, 1, 'DIESEL', 0.07, 9.813, 150),
	(11, '12:11:20', '12:11:37', 26.71, 0.9, 18.72, 7, 7, 1, 'DIESEL', 0.07, 32.71, 500),
	(12, '12:11:18', '12:11:48', 30.58, 0.9, 32.7, 7, 7, 2, 'DIESEL PLUS', 0.07, 65.421, 1000),
	(13, '12:09:01', '12:09:19', 27.57, 0.7, 25.39, 1, 1, 3, 'GASOHOL95', 0.07, 45.794, 700),
	(14, '12:08:58', '12:09:15', 26.71, 0.9, 18.72, 8, 8, 1, 'DIESEL', 0.07, 32.71, 500),
	(15, '12:03:38', '12:04:06', 27.57, 0.7, 30.1, 5, 5, 3, 'GASOHOL95', 0.07, 54.299, 830),
	(16, '12:01:42', '12:01:48', 25.06, 0.7, 7.98, 1, 1, 1, 'E20', 0.07, 13.084, 200),
	(17, '12:01:42', '12:01:45', 27.3, 0.7, 3.66, 1, 1, 2, 'GASOHOL91', 0.07, 6.542, 100),
	(18, '12:01:38', '12:01:40', 27.57, 0.7, 1.81, 2, 2, 3, 'GASOHOL95', 0.07, 3.271, 50),
	(19, '12:01:13', '12:01:30', 26.71, 0.9, 18.72, 7, 7, 1, 'DIESEL', 0.07, 32.71, 500),
	(20, '12:01:06', '12:01:08', 25.06, 0.7, 1.99, 2, 2, 1, 'E20', 0.07, 3.271, 50);
/*!40000 ALTER TABLE `journal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
