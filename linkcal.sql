-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 23 mars 2018 à 14:55
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `linkcal`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `datecreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande_produit`
--

CREATE TABLE `commande_produit` (
  `id` int(11) NOT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `commandes_id` int(11) DEFAULT NULL,
  `quantite` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande_user`
--

CREATE TABLE `commande_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commandes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `envoie_id` int(11) DEFAULT NULL,
  `recoie_id` int(11) DEFAULT NULL,
  `commandes_id` int(11) DEFAULT NULL,
  `contenu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire_user`
--

CREATE TABLE `commentaire_user` (
  `commentaire_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livreur`
--

CREATE TABLE `livreur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vehicule` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `long` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `bon` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `facture` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `horaire` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20180322142917');

-- --------------------------------------------------------

--
-- Structure de la table `producteur`
--

CREATE TABLE `producteur` (
  `id` int(11) NOT NULL,
  `horaire` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bon` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `facture` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `producteur_produit`
--

CREATE TABLE `producteur_produit` (
  `id` int(11) NOT NULL,
  `producteur_id` int(11) DEFAULT NULL,
  `produit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantite` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `roles_id` int(11) DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `adresse` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_produit`
--

CREATE TABLE `user_produit` (
  `id` int(11) NOT NULL,
  `produit_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DF1E9E87F347EFB` (`produit_id`),
  ADD KEY `IDX_DF1E9E878BF5C2E6` (`commandes_id`);

--
-- Index pour la table `commande_user`
--
ALTER TABLE `commande_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6FFD7AAA76ED395` (`user_id`),
  ADD KEY `IDX_E6FFD7AA8BF5C2E6` (`commandes_id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BC425C347D` (`envoie_id`),
  ADD KEY `IDX_67F068BCE271B4FA` (`recoie_id`),
  ADD KEY `IDX_67F068BC8BF5C2E6` (`commandes_id`);

--
-- Index pour la table `commentaire_user`
--
ALTER TABLE `commentaire_user`
  ADD PRIMARY KEY (`commentaire_id`,`user_id`),
  ADD KEY `IDX_646B121BBA9CD190` (`commentaire_id`),
  ADD KEY `IDX_646B121BA76ED395` (`user_id`);

--
-- Index pour la table `livreur`
--
ALTER TABLE `livreur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EB7A4E6D3B97A968` (`long`),
  ADD UNIQUE KEY `UNIQ_EB7A4E6DFC7DFD6B` (`bon`),
  ADD UNIQUE KEY `UNIQ_EB7A4E6DFE866410` (`facture`);

--
-- Index pour la table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `producteur`
--
ALTER TABLE `producteur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7EDBEE10FC7DFD6B` (`bon`),
  ADD UNIQUE KEY `UNIQ_7EDBEE10CFBDFA14` (`note`);

--
-- Index pour la table `producteur_produit`
--
ALTER TABLE `producteur_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4CD25379AB9BB300` (`producteur_id`),
  ADD KEY `IDX_4CD25379F347EFB` (`produit_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_8D93D649F037AB0F` (`tel`),
  ADD KEY `IDX_8D93D64938C751C4` (`roles_id`);

--
-- Index pour la table `user_produit`
--
ALTER TABLE `user_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_71A8F22DF347EFB` (`produit_id`),
  ADD KEY `IDX_71A8F22DA76ED395` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande_user`
--
ALTER TABLE `commande_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livreur`
--
ALTER TABLE `livreur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `producteur`
--
ALTER TABLE `producteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `producteur_produit`
--
ALTER TABLE `producteur_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_produit`
--
ALTER TABLE `user_produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande_produit`
--
ALTER TABLE `commande_produit`
  ADD CONSTRAINT `FK_DF1E9E878BF5C2E6` FOREIGN KEY (`commandes_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `FK_DF1E9E87F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `commande_user`
--
ALTER TABLE `commande_user`
  ADD CONSTRAINT `FK_E6FFD7AA8BF5C2E6` FOREIGN KEY (`commandes_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `FK_E6FFD7AAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC425C347D` FOREIGN KEY (`envoie_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_67F068BC8BF5C2E6` FOREIGN KEY (`commandes_id`) REFERENCES `commandes` (`id`),
  ADD CONSTRAINT `FK_67F068BCE271B4FA` FOREIGN KEY (`recoie_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `commentaire_user`
--
ALTER TABLE `commentaire_user`
  ADD CONSTRAINT `FK_646B121BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_646B121BBA9CD190` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaire` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `producteur_produit`
--
ALTER TABLE `producteur_produit`
  ADD CONSTRAINT `FK_4CD25379AB9BB300` FOREIGN KEY (`producteur_id`) REFERENCES `producteur` (`id`),
  ADD CONSTRAINT `FK_4CD25379F347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64938C751C4` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_produit`
--
ALTER TABLE `user_produit`
  ADD CONSTRAINT `FK_71A8F22DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_71A8F22DF347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
