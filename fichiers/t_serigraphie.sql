-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  ven. 13 sep. 2019 à 07:38
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `teegraph`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_serigraphie`
--

--
-- Déchargement des données de la table `t_serigraphie`
--

INSERT INTO `t_serigraphie` (`id`, `bestSeller`, `designation`, `photo`, `referenceProduit`, `version`, `derniereChance_id`) VALUES
(1, b'0', 'S_graphiti1', 'resources/img/model/modele-1/graphiti-1.jpg', 'aaaaaa1aaaaa', 0, NULL),
(2, b'0', 'S_graphiti2', 'resources/img/model/modele-2/graphiti-2.jpg', 'aaaaaa2aaaaaa', 0, NULL),
(3, b'0', 'S_graphiti3', 'resources/img/model/modele-3/graphiti-3.jpg', 'aaaaaa2aaaaa', 0, NULL),
(4, b'0', 'S_graphiti4', 'resources/img/model/modele-4/graphiti-4.jpg', 'aaaaaa3aaaa', 0, NULL),
(5, b'0', 'S_graphiti5', 'resources/img/model/modele-5/graphiti-5.jpg', 'aaaaaa4aaaa', 0, NULL),
(6, b'0', 'S_graphiti6', 'resources/img/model/modele-5/graphiti-5.jpg', 'aaaaa5aaaa', 0, NULL),
(7, b'0', 'S_graphiti7', 'resources/img/model/modele-5/graphiti-5.jpg', 'aaaaa6aaaa', 0, NULL),
(8, b'0', 'S_graphiti8', 'resources/img/model/modele-5/graphiti-5.jpg', 'aaaaaa7aaa', 0, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_serigraphie`
--
ALTER TABLE `t_serigraphie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKlm9wpygm0gekyvtmsvwv4bk1t` (`derniereChance_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_serigraphie`
--
ALTER TABLE `t_serigraphie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
