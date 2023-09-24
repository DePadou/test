-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 24 sep. 2023 à 13:25
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `esca`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteetatcivil`
--

DROP TABLE IF EXISTS `acteetatcivil`;
CREATE TABLE IF NOT EXISTS `acteetatcivil` (
  `matriculeEleve` varchar(255) NOT NULL,
  `numero_acte` varchar(100) NOT NULL,
  `delivree_le` date NOT NULL,
  `par` varchar(100) NOT NULL,
  PRIMARY KEY (`matriculeEleve`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE IF NOT EXISTS `classes` (
  `id_classe` int(100) NOT NULL AUTO_INCREMENT,
  `niveaux` int(30) NOT NULL,
  `id_cycle` int(255) NOT NULL,
  PRIMARY KEY (`id_classe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cyclescolaire`
--

DROP TABLE IF EXISTS `cyclescolaire`;
CREATE TABLE IF NOT EXISTS `cyclescolaire` (
  `id_cycle` int(10) NOT NULL AUTO_INCREMENT,
  `niveaux_cycle` varchar(10) NOT NULL,
  PRIMARY KEY (`id_cycle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

DROP TABLE IF EXISTS `eleves`;
CREATE TABLE IF NOT EXISTS `eleves` (
  `matriculle` varchar(255) NOT NULL,
  `nom` varchar(70) NOT NULL,
  `prenom` varchar(70) NOT NULL,
  `sexe` varchar(10) NOT NULL,
  `dateNaissance` date NOT NULL,
  `religion` varchar(30) NOT NULL,
  PRIMARY KEY (`matriculle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `examenpremiercycle`
--

DROP TABLE IF EXISTS `examenpremiercycle`;
CREATE TABLE IF NOT EXISTS `examenpremiercycle` (
  `id_examen` int(255) NOT NULL AUTO_INCREMENT,
  `note_SP` int(11) NOT NULL,
  `note_P` int(11) NOT NULL,
  `total_note` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL,
  PRIMARY KEY (`id_examen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `examensecondcycle`
--

DROP TABLE IF EXISTS `examensecondcycle`;
CREATE TABLE IF NOT EXISTS `examensecondcycle` (
  `id_examen` int(255) NOT NULL AUTO_INCREMENT,
  `note_SP` int(11) NOT NULL,
  `note_P` int(11) NOT NULL,
  `total_note` int(11) NOT NULL,
  `trimestre` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL,
  PRIMARY KEY (`id_examen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `matierespremiercycle`
--

DROP TABLE IF EXISTS `matierespremiercycle`;
CREATE TABLE IF NOT EXISTS `matierespremiercycle` (
  `id_matiere` int(11) NOT NULL AUTO_INCREMENT,
  `nom_matiere` varchar(30) NOT NULL,
  `coefficient` int(10) NOT NULL,
  PRIMARY KEY (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `matieressecondcycle`
--

DROP TABLE IF EXISTS `matieressecondcycle`;
CREATE TABLE IF NOT EXISTS `matieressecondcycle` (
  `id_matiere` int(11) NOT NULL AUTO_INCREMENT,
  `nom_matiere` varchar(30) NOT NULL,
  `coefficient` int(10) NOT NULL,
  PRIMARY KEY (`id_matiere`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `matriculeEleve` varchar(255) NOT NULL,
  `nomPere` varchar(70) NOT NULL,
  `prenomPere` varchar(70) NOT NULL,
  `nomMere` varchar(70) NOT NULL,
  `prenomMere` varchar(70) NOT NULL,
  `nomTutelle` varchar(70) NOT NULL,
  `prenomTutelle` varchar(70) NOT NULL,
  `fonctionPere` varchar(100) NOT NULL,
  `fonctionMere` varchar(100) NOT NULL,
  `fonctionTutelle` varchar(100) NOT NULL,
  `telephonePere` varchar(70) NOT NULL,
  `telephoneMere` varchar(70) NOT NULL,
  `telephoneTutelle` varchar(70) NOT NULL,
  `adressePere` varchar(100) NOT NULL,
  `adresseMere` varchar(100) NOT NULL,
  `adresseTutelle` varchar(100) NOT NULL,
  PRIMARY KEY (`matriculeEleve`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `situationscolaires`
--

DROP TABLE IF EXISTS `situationscolaires`;
CREATE TABLE IF NOT EXISTS `situationscolaires` (
  `matriculeEleve` varchar(255) NOT NULL,
  `entree_Le` date NOT NULL,
  `classe_a_entree` varchar(30) NOT NULL,
  `sortie_le` date NOT NULL,
  `classe_actuelle` varchar(30) NOT NULL,
  `annee_scolaire` varchar(30) NOT NULL,
  `id_classe` int(100) NOT NULL,
  `id_cycle` int(100) NOT NULL,
  PRIMARY KEY (`matriculeEleve`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `mot_de_passe` varchar(30) NOT NULL,
  `poste` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `mot_de_passe`, `poste`) VALUES
(1, 'direction', 'direction', 'direction'),
(2, 'admin', 'admin', 'admin'),
(3, 'direction', 'direction', 'direction'),
(4, 'admin', 'admin', 'admin'),
(5, 'secretaire1cycle', 'secretaire', 'secretariat 1er cycle'),
(6, 'secretaire2cycle', 'secretaire', 'secretariat 2nd cycle'),
(7, 'prefet1cycle', 'prefet', 'prefecture 1er cycle'),
(8, 'prefet2cycle', 'secretaire', 'prefecture 2nd cycle'),
(9, 'secretairedirection', 'secretaire', 'secretariat de direction');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
