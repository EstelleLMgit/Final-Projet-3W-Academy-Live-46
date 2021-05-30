-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : Dim 30 mai 2021 à 08:25
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données : `projet_final_3wacademy`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` text CHARACTER SET utf8mb4 NOT NULL,
  `ip` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `pseudo`, `email`, `password`, `ip`, `date_inscription`) VALUES
(1, 'toto', 'toto@gmail.com', '$2y$12$sRdFSmzfv5AtIEcUdRvqNuYpzncoTBhxxHyWVA45w1265DA.zXJ8u', '::1', '2021-05-28 16:10:01'),
(2, 'test', 'test@gmail.com', '$2y$12$N./MvdMooqz0toNnq68kduUdrtkkb2XTJauxcNnOAhcb0x/tv2NcS', '::1', '2021-05-29 09:01:45'),
(3, 'ramses', 'ramses@gmail.com', '$2y$12$wwLgMoYpJcSyThnA1L1qpe2LeHiOql.nZaBX1fGfh31epZfxEmWFe', '::1', '2021-05-29 18:17:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;