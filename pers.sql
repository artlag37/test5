-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 24 fév. 2022 à 10:29
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pers`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `id` int(9) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `rue` varchar(100) NOT NULL,
  `codepostal` varchar(10) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `id_pers` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`id`, `numero`, `rue`, `codepostal`, `ville`, `id_pers`) VALUES
(1, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(3, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(5, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(7, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(9, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(11, '26', 'boulevard victor Hugo', '44000', 'Nantes', 4),
(12, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(14, '32', 'rue sainte croix', '44000', 'Nantes', 4),
(16, '32', 'rue sainte croix', '44000', 'Nantes', 4);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `information` text NOT NULL,
  `AUTEUR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `edition`, `information`, `AUTEUR`) VALUES
(2, 'L’Étranger', 'Gallimard', '', 'Albert Camus'),
(3, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(4, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(5, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(6, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(7, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(8, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(9, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(10, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(11, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(12, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(14, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(15, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(16, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(17, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(18, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(19, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(20, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(21, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(22, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(23, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(24, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(25, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(26, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(27, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(28, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(29, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(30, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(31, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(32, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(33, 'Victor Hugo', 'livre réédité des Miserables', 'Galimard', 'les Miserables'),
(34, 'Flaubert', 'livre de Flaubert', 'Galimard', 'titre update'),
(36, 'gds', 'gds', 'gds', 'gds'),
(37, 'Consequatur unde ul', 'Numquam vero delectu', 'Tenetur', 'Atque tempora repell'),
(38, 'Consequatur unde ul', 'Numquam vero delectu', 'Tenetur', 'Atque tempora repell'),
(39, 'Quasi dignissimos oc', 'Cupiditate adipisci ', 'Vitae amet aut veli', 'Vero quia sed laboru'),
(40, 'Quasi dignissimos oc', 'Cupiditate adipisci ', 'Vitae amet aut veli', 'Vero quia sed laboru'),
(41, 'Quasi dignissimos oc', 'Cupiditate adipisci ', 'Vitae amet aut veli', 'Vero quia sed laboru'),
(42, 'Eos nisi perspiciati', 'Est delectus tenetu', 'Laborum praesentium ', 'Lorem sit enim magn'),
(43, 'Est mollitia soluta', 'Aliquip qui alias ip', 'Deserunt est vitae ', 'Illum vel possimus'),
(44, 'Vel ut ad veritatis ', 'Est doloremque dist', 'Sed fuga Dolore ius', 'Maxime quas accusamu'),
(45, 'Autem molestiae nesc', 'Cillum quia est repe', 'Dolor laborum aspern', 'Officia officia sunt');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(9) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `datenaissance` datetime NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `datenaissance`, `telephone`, `email`, `login`, `pwd`) VALUES
(75, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(76, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(78, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(79, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(81, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(82, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(84, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(85, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(87, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(88, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(90, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(91, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(93, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(94, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(96, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(97, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(99, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(100, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(102, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(103, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(105, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(106, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(108, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(109, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(111, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(112, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(114, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(115, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(117, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(118, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(120, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(121, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(123, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(124, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(126, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(127, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(129, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(130, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(132, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(133, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(135, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(136, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(138, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(139, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(141, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(142, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(144, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(145, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(147, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(148, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(150, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(151, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(153, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(154, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(156, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(157, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(159, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(160, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(162, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(165, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(166, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(168, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(169, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(171, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(172, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(177, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(180, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(183, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(186, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(189, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(192, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(195, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(196, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(199, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(200, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(203, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(204, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(207, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(208, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(211, 'Valjean', 'jean', '1850-11-20 00:00:00', '0712233445', 'jvaljean@free.fr', 'jvaljean', '2046faceb42307d8d2ee8f80c3c27bc9'),
(212, 'Martin', 'Eric', '1970-09-10 00:00:00', '0102030405', 'meric@orange.fr', 'meric', '4755edd32703675c6a021322f9ca0433'),
(213, 'Hollande', 'Francois', '1950-01-12 00:00:00', '0656463524', 'fhollande@free.fr', 'fhollande', '4755edd32703675c6a021322f9ca0433');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adresse`
--
ALTER TABLE `adresse`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
