-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 19, 2019 at 02:49 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teegraph`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_serigraphie`
--

DROP TABLE IF EXISTS `t_serigraphie`;
CREATE TABLE IF NOT EXISTS `t_serigraphie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bestSeller` bit(1) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `modelePull` varchar(255) DEFAULT NULL,
  `modeleSweat` varchar(255) DEFAULT NULL,
  `modeleTFemme` varchar(255) DEFAULT NULL,
  `modeleTHomme` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `referenceProduit` varchar(255) NOT NULL,
  `version` int(11) NOT NULL,
  `derniereChance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlm9wpygm0gekyvtmsvwv4bk1t` (`derniereChance_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_serigraphie`
--

INSERT INTO `t_serigraphie` (`id`, `bestSeller`, `designation`, `modelePull`, `modeleSweat`, `modeleTFemme`, `modeleTHomme`, `photo`, `referenceProduit`, `version`, `derniereChance_id`) VALUES
(1, b'0', 'S_graphiti1', 'resources/images/model/modele-1/modele-1-p.jpg', 'resources/images/model/modele-1/modele-1-s.jpg', 'resources/images/model/modele-1/modele-1-f.jpg', 'resources/images/model/modele-1/modele-1-h.jpg', 'resources/images/model/modele-1/graphiti-1.jpg', 'aaaaaa1aaaaa', 0, NULL),
(2, b'0', 'S_graphiti2', 'resources/images/model/modele-2/modele-2-p.jpg', 'resources/images/model/modele-2/modele-2-s.jpg', 'resources/images/model/modele-2/modele-2-f.jpg', 'resources/images/model/modele-2/modele-2-h.jpg', 'resources/images/model/modele-2/graphiti-2.jpg', 'aaaaaa2aaaaaa', 0, NULL),
(3, b'0', 'S_graphiti3', 'resources/images/model/modele-3/modele-3-p.jpg', 'resources/images/model/modele-3/modele-3-s.jpg', 'resources/images/model/modele-3/modele-3-f.jpg', 'resources/images/model/modele-3/modele-3-h.jpg', 'resources/images/model/modele-3/graphiti-3.jpg', 'aaaaaa2aaaaa', 0, NULL),
(4, b'0', 'S_graphiti4', 'resources/images/model/modele-4/modele-4-p.jpg', 'resources/images/model/modele-4/modele-4-s.jpg', 'resources/images/model/modele-4/modele-4-f.jpg', 'resources/images/model/modele-4/modele-4-h.jpg', 'resources/images/model/modele-4/graphiti-4.jpg', 'aaaaaa3aaaa', 0, NULL),
(5, b'0', 'S_graphiti5', 'resources/images/model/modele-5/modele-5-p.jpg', 'resources/images/model/modele-5/modele-5-s.jpg', 'resources/images/model/modele-5/modele-5-f.jpg', 'resources/images/model/modele-5/modele-5-h.jpg', 'resources/images/model/modele-5/graphiti-5.jpg', 'aaaaaa4aaaa', 0, NULL),
(6, b'0', 'S_graphiti6', 'resources/images/model/modele-6/modele-6-p.jpg', 'resources/images/model/modele-6/modele-6-s.jpg', 'resources/images/model/modele-6/modele-6-f.jpg', 'resources/images/model/modele-6/modele-6-h.jpg', 'resources/images/model/modele-5/graphiti-5.jpg', 'aaaaa5aaaa', 0, NULL),
(7, b'0', 'S_graphiti7', 'resources/images/model/modele-7/modele-7-p.jpg', 'resources/images/model/modele-7/modele-7-s.jpg', 'resources/images/model/modele-7/modele-7-f.jpg', 'resources/images/model/modele-7/modele-7-h.jpg', 'resources/images/model/modele-5/graphiti-5.jpg', 'aaaaa6aaaa', 0, NULL),
(8, b'0', 'S_graphiti8', 'resources/images/model/modele-8/modele-8-p.jpg', 'resources/images/model/modele-8/modele-8-s.jpg', 'resources/images/model/modele-8/modele-8-f.jpg', 'resources/images/model/modele-8/modele-8-h.jpg', 'resources/images/model/modele-5/graphiti-5.jpg', 'aaaaaa7aaa', 0, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
