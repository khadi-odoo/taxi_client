-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 30 oct. 2023 à 11:18
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `taxi_bokko`
--

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_user` int(10) NOT NULL,
  `nom_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pr_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `telephone` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `adrss_mail` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password_user` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_user`, `nom_user`, `pr_user`, `telephone`, `adrss_mail`, `password_user`) VALUES
(1, 'DIEYE ', 'Khadidiatou ', '(77)142-17-40', 'admin@gmail.com', 'passer@07'),
(3, 'NDIAYE', 'Dame', '(77)143-32-36', 'admin1@gmail.com', 'passer@123'),
(5, 'NGOM', 'Bourama', '(77)143-32-40', 'admin3@gmail.com', 'psse@1'),
(7, 'BADIANE', 'Annie', '(77)143-32-50', 'admin2@gmail.com', 'passer2'),
(8, 'TOURE', 'Rokhaya', '(77)143-32-70', 'admin4@gmail.com', 'passer3'),
(9, 'wade', 'Mariama', '(77)143-32-39', 'admin5@gmail.com', 'passer4'),
(10, 'DIOP', 'Jeanne', '(77)142-17-45', 'admin6@gmail.com', 'passer6'),
(12, 'Benjii', 'Imalet', '(77)142-17-90', 'admin7@gmail.com', 'passer5'),
(13, 'Badji ', 'Cheikh', '(77)143-32-10', 'admin8@gmail.com', 'passer7'),
(14, 'DIOUF', 'Aminata', '(77)143-32-80', 'admin9@gmail.com', 'passr8');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `tel` (`telephone`),
  ADD UNIQUE KEY `mail` (`adrss_mail`),
  ADD UNIQUE KEY `pass_word` (`password_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
