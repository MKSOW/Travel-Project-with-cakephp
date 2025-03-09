-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : dim. 09 mars 2025 à 20:03
-- Version du serveur : 11.3.2-MariaDB
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `travel`
--

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country`, `created`, `modified`) VALUES
(3, 'berlin', 'allemagne', '2025-03-08 21:33:23', '2025-03-08 21:33:23'),
(4, 'paris', 'France', '2025-03-08 21:33:37', '2025-03-08 21:33:37'),
(5, 'londres', 'angleterre', '2025-03-09 20:01:02', '2025-03-09 20:01:02');

-- --------------------------------------------------------

--
-- Structure de la table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20250307150101, 'CreateUsers', '2025-03-07 15:02:14', '2025-03-07 15:02:14', 0),
(20250307150137, 'CreateCities', '2025-03-07 15:02:14', '2025-03-07 15:02:14', 0),
(20250307150200, 'CreateTrips', '2025-03-07 15:02:14', '2025-03-07 15:02:14', 0),
(20250309101043, 'CreateTripsCities', '2025-03-09 10:13:04', '2025-03-09 10:13:04', 0);

-- --------------------------------------------------------

--
-- Structure de la table `trips`
--

DROP TABLE IF EXISTS `trips`;
CREATE TABLE IF NOT EXISTS `trips` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `trips`
--

INSERT INTO `trips` (`id`, `title`, `user_id`, `created`, `modified`) VALUES
(3, 'allez visiter la france precisement paris la tour eiffel', 3, '2025-03-08 21:34:18', '2025-03-08 21:34:18'),
(4, 'allez visiter l\'allemagne la capitale berlin', 4, '2025-03-08 21:34:49', '2025-03-08 21:34:49'),
(5, 'un voyage dans les  deux villes ', 3, '2025-03-09 14:56:32', '2025-03-09 14:56:32');

-- --------------------------------------------------------

--
-- Structure de la table `trips_cities`
--

DROP TABLE IF EXISTS `trips_cities`;
CREATE TABLE IF NOT EXISTS `trips_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trip_id` int(11) NOT NULL,
  `citie_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`) VALUES
(3, 'john doe', '1234', '2025-03-08 21:32:41', '2025-03-08 21:32:41'),
(4, 'mamadou', '2024', '2025-03-08 21:33:03', '2025-03-08 21:33:03'),
(5, 'kevin', '$2y$10$JaYfAgZxHyZ1TvI9CndaC.PWKRnAplBfVLC0Uh3uSDJcseR/cwhLy', '2025-03-08 22:23:18', '2025-03-08 22:23:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
