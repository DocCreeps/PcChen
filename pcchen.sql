-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 12 déc. 2018 à 19:05
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pcchen`
--
CREATE DATABASE IF NOT EXISTS `pcchen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pcchen`;

-- --------------------------------------------------------

--
-- Structure de la table `detientpokemon`
--

DROP TABLE IF EXISTS `detientpokemon`;
CREATE TABLE IF NOT EXISTS `detientpokemon` (
  `Id_dress` int(11) NOT NULL,
  `Id_Pok` int(11) NOT NULL,
  `lvl_pok` int(11) NOT NULL,
  KEY `Id_Dresseur` (`Id_dress`),
  KEY `Id_Pok` (`Id_Pok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detientpokemon`
--

INSERT INTO `detientpokemon` (`Id_dress`, `Id_Pok`, `lvl_pok`) VALUES
(2, 74, 12),
(2, 95, 14),
(4, 100, 21),
(4, 25, 18),
(4, 26, 24),
(5, 71, 29),
(5, 114, 24),
(5, 45, 29),
(6, 109, 37),
(6, 89, 39),
(6, 109, 37),
(6, 110, 43),
(7, 64, 38),
(7, 122, 37),
(7, 49, 38),
(7, 65, 43),
(8, 58, 42),
(8, 77, 40),
(8, 78, 42),
(8, 59, 47),
(9, 111, 42),
(9, 51, 42),
(9, 31, 44),
(9, 34, 45),
(9, 112, 50),
(10, 87, 54),
(10, 91, 53),
(10, 80, 54),
(10, 124, 56),
(10, 131, 56),
(11, 95, 53),
(11, 107, 55),
(11, 106, 55),
(11, 95, 56),
(11, 68, 58),
(12, 94, 56),
(12, 42, 56),
(12, 93, 55),
(12, 24, 58),
(12, 94, 60),
(13, 130, 58),
(13, 148, 56),
(13, 148, 56),
(13, 142, 60),
(13, 149, 62),
(3, 121, 21),
(3, 120, 18);

-- --------------------------------------------------------

--
-- Structure de la table `dresseur`
--

DROP TABLE IF EXISTS `dresseur`;
CREATE TABLE IF NOT EXISTS `dresseur` (
  `Id_Dress` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Dress` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Dress`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dresseur`
--

INSERT INTO `dresseur` (`Id_Dress`, `Nom_Dress`) VALUES
(2, 'Pierre'),
(3, 'Ondine'),
(4, 'Major Bob'),
(5, 'Erika'),
(6, 'Koga'),
(7, 'Morgane'),
(8, 'Auguste'),
(9, 'Giovanni'),
(10, 'Olga'),
(11, 'Aldo'),
(12, 'Agatha'),
(13, 'Peter');

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `Id_Pok` int(11) NOT NULL,
  `nom_Pok` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Pok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`Id_Pok`, `nom_Pok`) VALUES
(1, 'Bulbizarre'),
(2, 'Herbizarre'),
(3, 'Florizarre'),
(4, 'Salameche'),
(5, 'Reptincel'),
(6, 'Dracaufeu'),
(7, 'Carapuce'),
(8, 'Carabaffe'),
(9, 'Tortank'),
(10, 'Chenipan'),
(11, 'Chrysacier'),
(12, 'Papilusion'),
(13, 'Aspicot'),
(14, 'Coconfort'),
(15, 'Dardargnan'),
(16, 'Roucool'),
(17, 'Roucoups'),
(18, 'Roucarnage'),
(19, 'Rattata'),
(20, 'Rattatac'),
(21, 'Piafabec'),
(22, 'Rapasdepic'),
(23, 'Abo'),
(24, 'Arbok'),
(25, 'Pikachu'),
(26, 'Raichu'),
(27, 'Sabelette'),
(28, 'Sablaireau'),
(29, 'NidoranF'),
(30, 'Nidorina'),
(31, 'Nidoqueen'),
(32, 'NidoranM'),
(33, 'Nidorino'),
(34, 'Nidoking'),
(35, 'Melofee'),
(36, 'Melodelfe'),
(37, 'Goupix'),
(38, 'Feunard'),
(39, 'Rondoudou'),
(40, 'Grodoudou'),
(41, 'Nosferapti'),
(42, 'Nosferalto'),
(43, 'Mystherbe'),
(44, 'Ortide'),
(45, 'Rafflesia'),
(46, 'Paras'),
(47, 'Parasect'),
(48, 'Mimitoss'),
(49, 'Aeromite'),
(50, 'Taupiqueur'),
(51, 'Triopikeur'),
(52, 'Miaouss'),
(53, 'Persian'),
(54, 'Psykokwak'),
(55, 'Akwakwak'),
(56, 'Ferosinge'),
(57, 'Colossinge'),
(58, 'Caninos'),
(59, 'Arcanin'),
(60, 'Ptitard'),
(61, 'Tetarte'),
(62, 'Tartard'),
(63, 'Abra'),
(64, 'Kadabra'),
(65, 'Alakazam'),
(66, 'Machoc'),
(67, 'Machopeur'),
(68, 'Mackogneur'),
(69, 'Chetiflor'),
(70, 'Boustiflor'),
(71, 'Empiflor'),
(72, 'Tentacool'),
(73, 'Tentacruel'),
(74, 'Racaillou'),
(75, 'Gravalanch'),
(76, 'Grolem'),
(77, 'Ponyta'),
(78, 'Galopa'),
(79, 'Ramoloss'),
(80, 'Flagadoss'),
(81, 'Magneti'),
(82, 'Magneton'),
(83, 'Canarticho'),
(84, 'Doduo'),
(85, 'Dodrio'),
(86, 'Otaria'),
(87, 'Lamantine'),
(88, 'Tadmorv'),
(89, 'Grotadmorv'),
(90, 'Kokiyas'),
(91, 'Crustabri'),
(92, 'Fantominus'),
(93, 'Spectrum'),
(94, 'Ectoplasma'),
(95, 'Onix'),
(96, 'Soporifik'),
(97, 'Hypnomade'),
(98, 'Krabby'),
(99, 'Krabboss'),
(100, 'Voltorbe'),
(101, 'Electrode'),
(102, 'Noeunoeuf'),
(103, 'Noadkoko'),
(104, 'Osselait'),
(105, 'Ossatueur'),
(106, 'Kicklee'),
(107, 'Tygnon'),
(108, 'Excelangue'),
(109, 'Smogo'),
(110, 'Smogogo'),
(111, 'Rhinocorne'),
(112, 'Rhinoferos'),
(113, 'Leveinard'),
(114, 'Saquedeneu'),
(115, 'Kangourex'),
(116, 'Hypotrempe'),
(117, 'Hypocean'),
(118, 'Poissirene'),
(119, 'Poissoroy'),
(120, 'Stari'),
(121, 'Staross'),
(122, 'M. Mime'),
(123, 'Insecateur'),
(124, 'Lippoutou'),
(125, 'Elektek'),
(126, 'Magmar'),
(127, 'Scarabrute'),
(128, 'Tauros'),
(129, 'Magicarpe'),
(130, 'Leviator'),
(131, 'Lokhlass'),
(132, 'Metamorph'),
(133, 'Evoli'),
(134, 'Aquali'),
(135, 'Voltali'),
(136, 'Pyroli'),
(137, 'Porygon'),
(138, 'Amonita'),
(139, 'Amonistar'),
(140, 'Kabuto'),
(141, 'Kabutops'),
(142, 'Ptera'),
(143, 'Ronflex'),
(144, 'Artikodin'),
(145, 'Electhor'),
(146, 'Sulfura'),
(147, 'Minidraco'),
(148, 'Draco'),
(149, 'Dracolosse'),
(150, 'Mewtwo'),
(151, 'Mew');

-- --------------------------------------------------------

--
-- Structure de la table `stocker`
--

DROP TABLE IF EXISTS `stocker`;
CREATE TABLE IF NOT EXISTS `stocker` (
  `Id_Dress` int(11) NOT NULL,
  `Id_Pok` int(11) NOT NULL,
  `lvl_pok` int(11) NOT NULL,
  `Boite` int(11) NOT NULL,
  KEY `Id_Dresseur` (`Id_Dress`),
  KEY `Id_Pok` (`Id_Pok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stocker`
--

INSERT INTO `stocker` (`Id_Dress`, `Id_Pok`, `lvl_pok`, `Boite`) VALUES
(2, 35, 15, 2),
(2, 89, 29, 3),
(2, 42, 42, 4),
(2, 100, 29, 5),
(3, 53, 21, 2),
(3, 64, 42, 3),
(3, 13, 13, 4),
(3, 36, 12, 5),
(3, 18, 5, 1),
(3, 85, 25, 1),
(2, 18, 5, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `detientpokemon`
--
ALTER TABLE `detientpokemon`
  ADD CONSTRAINT `detientpokemon_ibfk_1` FOREIGN KEY (`Id_dress`) REFERENCES `dresseur` (`Id_Dress`),
  ADD CONSTRAINT `detientpokemon_ibfk_2` FOREIGN KEY (`Id_Pok`) REFERENCES `pokemon` (`Id_Pok`);

--
-- Contraintes pour la table `stocker`
--
ALTER TABLE `stocker`
  ADD CONSTRAINT `stocker_ibfk_1` FOREIGN KEY (`Id_Dress`) REFERENCES `dresseur` (`Id_Dress`),
  ADD CONSTRAINT `stocker_ibfk_2` FOREIGN KEY (`Id_Pok`) REFERENCES `pokemon` (`Id_Pok`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
