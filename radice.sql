-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Creato il: Ott 23, 2023 alle 09:42
-- Versione del server: 8.0.31
-- Versione PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radice`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(7, 'Nueva receta', 'Bogavante asado sobre jugo de pimientos a la brasa y cebolla morada', 'Este plato es \"delicado en texturas pero también con los sabores muy marcados\".\r\nLos cocineros utilizan una emulsión de las cabezas y pétalos encurtidos de cebolla. El fondo de este plato es un jugo de pimientos asados a la brasa, lo que le da el toque de sabor definitivo.  ', NULL),
(12, 'Nueva receta', 'Bogavante asado sobre jugo de pimientos a la brasa y cebolla morada', 'ste plato es \"delicado en texturas pero también con los sabores muy marcados\".\r\nLos cocineros utilizan una emulsión de las cabezas y pétalos encurtidos de cebolla. El fondo de este plato es un jugo de pimientos asados a la brasa, lo que le da el toque de sabor definitivo.   ', 'hv5b1rdcxbqojr5km1gx');

-- --------------------------------------------------------

--
-- Struttura della tabella `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Dump dei dati per la tabella `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'sofia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'gabriel', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
