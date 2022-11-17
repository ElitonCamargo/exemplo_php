-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Nov-2022 às 22:46
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `campeonato_futbol`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clube`
--

DROP TABLE IF EXISTS `clube`;
CREATE TABLE IF NOT EXISTS `clube` (
  `nome` varchar(50) NOT NULL,
  `estadio` varchar(50) DEFAULT NULL,
  `capacidade_estadio` int DEFAULT NULL,
  `num_titulos` int NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clube`
--

INSERT INTO `clube` (`nome`, `estadio`, `capacidade_estadio`, `num_titulos`) VALUES
('América Mineiro', 'Independência', 23018, 0),
('Atlético Mineiro', 'Independência', 23018, 1),
('Atlético Paranaense', 'Arena da Baixada', 42370, 1),
('Bahia', 'Arena Fonte Nova ', 4444444, 4),
('Botafogo', 'Nilton Santos', 45000, 2),
('Ceará', 'Arena Castelão', 63903, 0),
('Chapecoense', 'Arena Condá', 15765, 0),
('Corinthians', 'Arena Corinthians', 47605, 7),
('Cruzeiro', 'Mineirão', 61846, 4),
('Flamengo', 'Luso Brasileiro[7]', 20215, 5),
('Fluminense', 'Maracanã', 78838, 4),
('Grêmio', 'Arena do Grêmio', 55662, 2),
('Internacional', 'Beira-Rio', 50128, 3),
('Palmeiras', 'Allianz Parque', 43713, 9),
('Paraná', 'Vila Capanema', 20083, 0),
('Santos', 'Vila Belmiro', 16068, 8),
('São Paulo', 'Morumbi', 72039, 6),
('Sport', 'Ilha do Retiro', 32983, 1),
('Vasco da Gama', 'São Januário', 24584, 4),
('Vitória', 'Barradão', 34535, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clube_em_jogo`
--

DROP TABLE IF EXISTS `clube_em_jogo`;
CREATE TABLE IF NOT EXISTS `clube_em_jogo` (
  `fk_jogo` int NOT NULL,
  `fk_clube` varchar(50) NOT NULL,
  `num_gols` int DEFAULT NULL,
  `pontos` int DEFAULT NULL,
  PRIMARY KEY (`fk_jogo`,`fk_clube`),
  KEY `fk_clube` (`fk_clube`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clube_em_jogo`
--

INSERT INTO `clube_em_jogo` (`fk_jogo`, `fk_clube`, `num_gols`, `pontos`) VALUES
(1, 'América Mineiro', 2, 1),
(1, 'Atlético Mineiro', 2, 1),
(2, 'América Mineiro', 3, 3),
(2, 'Atlético Paranaense', 1, 0),
(3, 'América Mineiro', 2, 3),
(3, 'Bahia', 0, 0),
(4, 'América Mineiro', 1, 0),
(4, 'Botafogo', 2, 3),
(5, 'América Mineiro', 0, 0),
(5, 'Ceará', 2, 3),
(6, 'América Mineiro', 4, 3),
(6, 'Chapecoense', 3, 0),
(7, 'América Mineiro', 2, 0),
(7, 'Corinthians', 3, 3),
(8, 'América Mineiro', 0, 0),
(8, 'Cruzeiro', 4, 3),
(9, 'América Mineiro', 3, 0),
(9, 'Flamengo', 4, 3),
(10, 'América Mineiro', 1, 3),
(10, 'Fluminense', 0, 0),
(11, 'América Mineiro', 3, 1),
(11, 'Grêmio', 3, 1),
(12, 'América Mineiro', 4, 3),
(12, 'Internacional', 0, 0),
(13, 'América Mineiro', 0, 0),
(13, 'Palmeiras', 1, 3),
(14, 'América Mineiro', 0, 1),
(14, 'Paraná', 0, 1),
(15, 'América Mineiro', 4, 3),
(15, 'Santos', 0, 0),
(16, 'América Mineiro', 2, 1),
(16, 'São Paulo', 2, 1),
(17, 'América Mineiro', 4, 3),
(17, 'Sport', 2, 0),
(18, 'América Mineiro', 2, 1),
(18, 'Vasco da Gama', 2, 1),
(19, 'América Mineiro', 0, 0),
(19, 'Vitória', 3, 3),
(20, 'Atlético Mineiro', 1, 0),
(20, 'Atlético Paranaense', 4, 3),
(21, 'Atlético Mineiro', 0, 0),
(21, 'Bahia', 1, 3),
(22, 'Atlético Mineiro', 1, 3),
(22, 'Botafogo', 0, 0),
(23, 'Atlético Mineiro', 1, 3),
(23, 'Ceará', 0, 0),
(24, 'Atlético Mineiro', 2, 3),
(24, 'Chapecoense', 0, 0),
(25, 'Atlético Mineiro', 4, 3),
(25, 'Corinthians', 3, 0),
(26, 'Atlético Mineiro', 2, 0),
(26, 'Cruzeiro', 4, 3),
(27, 'Atlético Mineiro', 0, 0),
(27, 'Flamengo', 1, 3),
(28, 'Atlético Mineiro', 2, 0),
(28, 'Fluminense', 4, 3),
(29, 'Atlético Mineiro', 2, 1),
(29, 'Grêmio', 2, 1),
(30, 'Atlético Mineiro', 0, 1),
(30, 'Internacional', 0, 1),
(31, 'Atlético Mineiro', 0, 0),
(31, 'Palmeiras', 1, 3),
(32, 'Atlético Mineiro', 2, 3),
(32, 'Paraná', 0, 0),
(33, 'Atlético Mineiro', 4, 3),
(33, 'Santos', 1, 0),
(34, 'Atlético Mineiro', 4, 1),
(34, 'São Paulo', 4, 1),
(35, 'Atlético Mineiro', 0, 0),
(35, 'Sport', 2, 3),
(36, 'Atlético Mineiro', 4, 1),
(36, 'Vasco da Gama', 4, 1),
(37, 'Atlético Mineiro', 2, 1),
(37, 'Vitória', 2, 1),
(38, 'Atlético Paranaense', 4, 3),
(38, 'Bahia', 2, 0),
(39, 'Atlético Paranaense', 2, 0),
(39, 'Botafogo', 4, 3),
(40, 'Atlético Paranaense', 3, 3),
(40, 'Ceará', 0, 0),
(41, 'Atlético Paranaense', 4, 1),
(41, 'Chapecoense', 4, 1),
(42, 'Atlético Paranaense', 1, 1),
(42, 'Corinthians', 1, 1),
(43, 'Atlético Paranaense', 2, 1),
(43, 'Cruzeiro', 2, 1),
(44, 'Atlético Paranaense', 2, 0),
(44, 'Flamengo', 3, 3),
(45, 'Atlético Paranaense', 4, 3),
(45, 'Fluminense', 2, 0),
(46, 'Atlético Paranaense', 0, 0),
(46, 'Grêmio', 2, 3),
(47, 'Atlético Paranaense', 3, 3),
(47, 'Internacional', 0, 0),
(48, 'Atlético Paranaense', 4, 1),
(48, 'Palmeiras', 4, 1),
(49, 'Atlético Paranaense', 3, 3),
(49, 'Paraná', 0, 0),
(50, 'Atlético Paranaense', 0, 1),
(50, 'Santos', 0, 1),
(51, 'Atlético Paranaense', 1, 0),
(51, 'São Paulo', 2, 3),
(52, 'Atlético Paranaense', 4, 3),
(52, 'Sport', 2, 0),
(53, 'Atlético Paranaense', 3, 1),
(53, 'Vasco da Gama', 3, 1),
(54, 'Atlético Paranaense', 2, 1),
(54, 'Vitória', 2, 1),
(55, 'Bahia', 1, 3),
(55, 'Botafogo', 0, 0),
(56, 'Bahia', 2, 0),
(56, 'Ceará', 3, 3),
(57, 'Bahia', 4, 3),
(57, 'Chapecoense', 0, 0),
(58, 'Bahia', 1, 3),
(58, 'Corinthians', 0, 0),
(59, 'Bahia', 4, 3),
(59, 'Cruzeiro', 1, 0),
(60, 'Bahia', 2, 1),
(60, 'Flamengo', 2, 1),
(61, 'Bahia', 4, 3),
(61, 'Fluminense', 0, 0),
(62, 'Bahia', 0, 0),
(62, 'Grêmio', 2, 3),
(63, 'Bahia', 2, 1),
(63, 'Internacional', 2, 1),
(64, 'Bahia', 0, 0),
(64, 'Palmeiras', 1, 3),
(65, 'Bahia', 3, 3),
(65, 'Paraná', 0, 0),
(66, 'Bahia', 3, 3),
(66, 'Santos', 1, 0),
(67, 'Bahia', 3, 1),
(67, 'São Paulo', 3, 1),
(68, 'Bahia', 3, 3),
(68, 'Sport', 2, 0),
(69, 'Bahia', 0, 0),
(69, 'Vasco da Gama', 3, 3),
(70, 'Bahia', 2, 0),
(70, 'Vitória', 4, 3),
(71, 'Botafogo', 0, 0),
(71, 'Ceará', 4, 3),
(72, 'Botafogo', 2, 0),
(72, 'Chapecoense', 3, 3),
(73, 'Botafogo', 0, 0),
(73, 'Corinthians', 1, 3),
(74, 'Botafogo', 2, 0),
(74, 'Cruzeiro', 3, 3),
(75, 'Botafogo', 4, 3),
(75, 'Flamengo', 3, 0),
(76, 'Botafogo', 4, 3),
(76, 'Fluminense', 2, 0),
(77, 'Botafogo', 3, 1),
(77, 'Grêmio', 3, 1),
(78, 'Botafogo', 0, 1),
(78, 'Internacional', 0, 1),
(79, 'Botafogo', 1, 1),
(79, 'Palmeiras', 1, 1),
(80, 'Botafogo', 0, 0),
(80, 'Paraná', 1, 3),
(81, 'Botafogo', 2, 3),
(81, 'Santos', 0, 0),
(82, 'Botafogo', 4, 3),
(82, 'São Paulo', 0, 0),
(83, 'Botafogo', 1, 1),
(83, 'Sport', 1, 1),
(84, 'Botafogo', 4, 3),
(84, 'Vasco da Gama', 0, 0),
(85, 'Botafogo', 1, 0),
(85, 'Vitória', 4, 3),
(86, 'Ceará', 0, 0),
(86, 'Chapecoense', 1, 3),
(87, 'Ceará', 3, 1),
(87, 'Corinthians', 3, 1),
(88, 'Ceará', 1, 3),
(88, 'Cruzeiro', 0, 0),
(89, 'Ceará', 3, 3),
(89, 'Flamengo', 1, 0),
(90, 'Ceará', 2, 3),
(90, 'Fluminense', 0, 0),
(91, 'Ceará', 4, 3),
(91, 'Grêmio', 2, 0),
(92, 'Ceará', 2, 0),
(92, 'Internacional', 4, 3),
(93, 'Ceará', 0, 0),
(93, 'Palmeiras', 1, 3),
(94, 'Ceará', 2, 3),
(94, 'Paraná', 0, 0),
(95, 'Ceará', 2, 0),
(95, 'Santos', 3, 3),
(96, 'Ceará', 0, 0),
(96, 'São Paulo', 3, 3),
(97, 'Ceará', 3, 3),
(97, 'Sport', 0, 0),
(98, 'Ceará', 1, 0),
(98, 'Vasco da Gama', 4, 3),
(99, 'Ceará', 4, 3),
(99, 'Vitória', 1, 0),
(100, 'Chapecoense', 1, 0),
(100, 'Corinthians', 4, 3),
(101, 'Chapecoense', 1, 0),
(101, 'Cruzeiro', 2, 3),
(102, 'Chapecoense', 1, 3),
(102, 'Flamengo', 0, 0),
(103, 'Chapecoense', 3, 1),
(103, 'Fluminense', 3, 1),
(104, 'Chapecoense', 3, 0),
(104, 'Grêmio', 4, 3),
(105, 'Chapecoense', 1, 3),
(105, 'Internacional', 0, 0),
(106, 'Chapecoense', 2, 3),
(106, 'Palmeiras', 0, 0),
(107, 'Chapecoense', 4, 1),
(107, 'Paraná', 4, 1),
(108, 'Chapecoense', 2, 3),
(108, 'Santos', 0, 0),
(109, 'Chapecoense', 3, 0),
(109, 'São Paulo', 4, 3),
(110, 'Chapecoense', 0, 0),
(110, 'Sport', 4, 3),
(111, 'Chapecoense', 3, 0),
(111, 'Vasco da Gama', 4, 3),
(112, 'Chapecoense', 3, 1),
(112, 'Vitória', 3, 1),
(113, 'Corinthians', 3, 3),
(113, 'Cruzeiro', 1, 0),
(114, 'Corinthians', 2, 1),
(114, 'Flamengo', 2, 1),
(115, 'Corinthians', 2, 1),
(115, 'Fluminense', 2, 1),
(116, 'Corinthians', 0, 0),
(116, 'Grêmio', 1, 3),
(117, 'Corinthians', 4, 3),
(117, 'Internacional', 2, 0),
(118, 'Corinthians', 3, 3),
(118, 'Palmeiras', 2, 0),
(119, 'Corinthians', 0, 0),
(119, 'Paraná', 2, 3),
(120, 'Corinthians', 1, 1),
(120, 'Santos', 1, 1),
(121, 'Corinthians', 3, 1),
(121, 'São Paulo', 3, 1),
(122, 'Corinthians', 3, 3),
(122, 'Sport', 1, 0),
(123, 'Corinthians', 0, 1),
(123, 'Vasco da Gama', 0, 1),
(124, 'Corinthians', 3, 1),
(124, 'Vitória', 3, 1),
(125, 'Cruzeiro', 3, 3),
(125, 'Flamengo', 1, 0),
(126, 'Cruzeiro', 1, 0),
(126, 'Fluminense', 4, 3),
(127, 'Cruzeiro', 1, 1),
(127, 'Grêmio', 1, 1),
(128, 'Cruzeiro', 1, 0),
(128, 'Internacional', 2, 3),
(129, 'Cruzeiro', 3, 1),
(129, 'Palmeiras', 3, 1),
(130, 'Cruzeiro', 1, 1),
(130, 'Paraná', 1, 1),
(131, 'Cruzeiro', 1, 3),
(131, 'Santos', 0, 0),
(132, 'Cruzeiro', 2, 0),
(132, 'São Paulo', 4, 3),
(133, 'Cruzeiro', 4, 3),
(133, 'Sport', 1, 0),
(134, 'Cruzeiro', 0, 0),
(134, 'Vasco da Gama', 2, 3),
(135, 'Cruzeiro', 1, 3),
(135, 'Vitória', 0, 0),
(136, 'Flamengo', 4, 3),
(136, 'Fluminense', 0, 0),
(137, 'Flamengo', 3, 1),
(137, 'Grêmio', 3, 1),
(138, 'Flamengo', 1, 0),
(138, 'Internacional', 4, 3),
(139, 'Flamengo', 0, 0),
(139, 'Palmeiras', 1, 3),
(140, 'Flamengo', 3, 1),
(140, 'Paraná', 3, 1),
(141, 'Flamengo', 3, 1),
(141, 'Santos', 3, 1),
(142, 'Flamengo', 4, 3),
(142, 'São Paulo', 1, 0),
(143, 'Flamengo', 0, 0),
(143, 'Sport', 1, 3),
(144, 'Flamengo', 0, 0),
(144, 'Vasco da Gama', 2, 3),
(145, 'Flamengo', 1, 1),
(145, 'Vitória', 1, 1),
(146, 'Fluminense', 3, 3),
(146, 'Grêmio', 2, 0),
(147, 'Fluminense', 0, 0),
(147, 'Internacional', 4, 3),
(148, 'Fluminense', 0, 0),
(148, 'Palmeiras', 3, 3),
(149, 'Fluminense', 0, 0),
(149, 'Paraná', 4, 3),
(150, 'Fluminense', 2, 0),
(150, 'Santos', 4, 3),
(151, 'Fluminense', 4, 3),
(151, 'São Paulo', 1, 0),
(152, 'Fluminense', 2, 1),
(152, 'Sport', 2, 1),
(153, 'Fluminense', 1, 3),
(153, 'Vasco da Gama', 0, 0),
(154, 'Fluminense', 1, 0),
(154, 'Vitória', 2, 3),
(155, 'Grêmio', 0, 0),
(155, 'Internacional', 1, 3),
(156, 'Grêmio', 1, 0),
(156, 'Palmeiras', 2, 3),
(157, 'Grêmio', 4, 3),
(157, 'Paraná', 3, 0),
(158, 'Grêmio', 3, 3),
(158, 'Santos', 2, 0),
(159, 'Grêmio', 0, 0),
(159, 'São Paulo', 1, 3),
(160, 'Grêmio', 3, 1),
(160, 'Sport', 3, 1),
(161, 'Grêmio', 0, 0),
(161, 'Vasco da Gama', 2, 3),
(162, 'Grêmio', 0, 1),
(162, 'Vitória', 0, 1),
(163, 'Internacional', 2, 3),
(163, 'Palmeiras', 1, 0),
(164, 'Internacional', 0, 0),
(164, 'Paraná', 4, 3),
(165, 'Internacional', 3, 1),
(165, 'Santos', 3, 1),
(166, 'Internacional', 4, 3),
(166, 'São Paulo', 1, 0),
(167, 'Internacional', 4, 3),
(167, 'Sport', 3, 0),
(168, 'Internacional', 3, 3),
(168, 'Vasco da Gama', 1, 0),
(169, 'Internacional', 1, 0),
(169, 'Vitória', 2, 3),
(170, 'Palmeiras', 4, 1),
(170, 'Paraná', 4, 1),
(171, 'Palmeiras', 4, 3),
(171, 'Santos', 2, 0),
(172, 'Palmeiras', 2, 3),
(172, 'São Paulo', 0, 0),
(173, 'Palmeiras', 0, 0),
(173, 'Sport', 1, 3),
(174, 'Palmeiras', 2, 1),
(174, 'Vasco da Gama', 2, 1),
(175, 'Palmeiras', 1, 0),
(175, 'Vitória', 3, 3),
(176, 'Paraná', 2, 0),
(176, 'Santos', 4, 3),
(177, 'Paraná', 0, 0),
(177, 'São Paulo', 3, 3),
(178, 'Paraná', 3, 3),
(178, 'Sport', 1, 0),
(179, 'Paraná', 0, 0),
(179, 'Vasco da Gama', 2, 3),
(180, 'Paraná', 0, 0),
(180, 'Vitória', 4, 3),
(181, 'Santos', 0, 0),
(181, 'São Paulo', 2, 3),
(182, 'Santos', 4, 3),
(182, 'Sport', 2, 0),
(183, 'Santos', 2, 0),
(183, 'Vasco da Gama', 4, 3),
(184, 'Santos', 3, 3),
(184, 'Vitória', 0, 0),
(185, 'São Paulo', 4, 3),
(185, 'Sport', 1, 0),
(186, 'São Paulo', 0, 0),
(186, 'Vasco da Gama', 3, 3),
(187, 'São Paulo', 1, 0),
(187, 'Vitória', 4, 3),
(188, 'Sport', 3, 3),
(188, 'Vasco da Gama', 2, 0),
(189, 'Sport', 0, 1),
(189, 'Vitória', 0, 1),
(190, 'Vasco da Gama', 4, 3),
(190, 'Vitória', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

DROP TABLE IF EXISTS `jogo`;
CREATE TABLE IF NOT EXISTS `jogo` (
  `id` int NOT NULL,
  `data_hota` date NOT NULL,
  `estadio` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`id`, `data_hota`, `estadio`) VALUES
(1, '2018-04-22', 'Independência'),
(2, '2018-08-12', 'Arena da Baixada'),
(3, '2018-07-29', 'Independência'),
(4, '2018-07-15', 'Nilton Santos'),
(5, '2018-07-08', 'Independência'),
(6, '2018-07-01', 'Arena Condá'),
(7, '2018-05-27', 'Independência'),
(8, '2018-05-20', 'Mineirão'),
(9, '2018-04-22', 'Independência'),
(10, '2018-04-08', 'Maracanã'),
(11, '2018-08-05', 'Independência'),
(12, '2018-07-15', 'Beira-Rio'),
(13, '2018-07-08', 'Independência'),
(14, '2018-06-10', 'Vila Capanema'),
(15, '2018-06-03', 'Independência'),
(16, '2018-05-13', 'Morumbi'),
(17, '2018-04-29', 'Independência'),
(18, '2018-04-08', 'São Januário'),
(19, '2018-08-05', 'Independência'),
(20, '2018-07-08', 'Arena da Baixada'),
(21, '2018-06-24', 'Independência'),
(22, '2018-06-10', 'Nilton Santos'),
(23, '2018-05-27', 'Independência'),
(24, '2018-05-27', 'Arena Condá'),
(25, '2018-04-22', 'Independência'),
(26, '2018-08-12', 'Mineirão'),
(27, '2018-07-29', 'Independência'),
(28, '2018-07-15', 'Maracanã'),
(29, '2018-07-01', 'Independência'),
(30, '2018-06-17', 'Beira-Rio'),
(31, '2018-06-03', 'Independência'),
(32, '2018-05-06', 'Vila Capanema'),
(33, '2018-04-29', 'Independência'),
(34, '2018-04-15', 'Morumbi'),
(35, '2018-08-12', 'Independência'),
(36, '2018-07-15', 'São Januário'),
(37, '2018-07-01', 'Independência'),
(38, '2018-06-03', 'Arena Fonte Nova'),
(39, '2018-05-13', 'Arena da Baixada'),
(40, '2018-04-29', 'Arena Castelão'),
(41, '2018-04-29', 'Arena da Baixada'),
(42, '2018-08-12', 'Arena Corinthians'),
(43, '2018-07-15', 'Arena da Baixada'),
(44, '2018-07-01', 'Luso Brasileiro'),
(45, '2018-06-17', 'Arena da Baixada'),
(46, '2018-06-10', 'Arena do Grêmio'),
(47, '2018-05-27', 'Arena da Baixada'),
(48, '2018-05-13', 'Allianz Parque'),
(49, '2018-04-22', 'Arena da Baixada'),
(50, '2018-04-15', 'Vila Belmiro'),
(51, '2018-08-12', 'Arena da Baixada'),
(52, '2018-07-29', 'Ilha do Retiro'),
(53, '2018-07-01', 'Arena da Baixada'),
(54, '2018-06-10', 'Barradão'),
(55, '2018-05-20', 'Arena Fonte Nova'),
(56, '2018-05-06', 'Arena Castelão'),
(57, '2018-05-06', 'Arena Fonte Nova'),
(58, '2018-04-08', 'Arena Corinthians'),
(59, '2018-07-22', 'Arena Fonte Nova'),
(60, '2018-07-08', 'Luso Brasileiro'),
(61, '2018-07-01', 'Arena Fonte Nova'),
(62, '2018-06-17', 'Arena do Grêmio'),
(63, '2018-06-03', 'Arena Fonte Nova'),
(64, '2018-05-20', 'Allianz Parque'),
(65, '2018-04-29', 'Arena Fonte Nova'),
(66, '2018-04-22', 'Vila Belmiro'),
(67, '2018-04-08', 'Arena Fonte Nova'),
(68, '2018-08-05', 'Ilha do Retiro'),
(69, '2018-07-08', 'Arena Fonte Nova'),
(70, '2018-06-17', 'Barradão'),
(71, '2018-06-03', 'Nilton Santos'),
(72, '2018-06-03', 'Arena Condá'),
(73, '2018-04-29', 'Nilton Santos'),
(74, '2018-04-08', 'Mineirão'),
(75, '2018-08-05', 'Nilton Santos'),
(76, '2018-07-22', 'Maracanã'),
(77, '2018-07-08', 'Nilton Santos'),
(78, '2018-06-24', 'Beira-Rio'),
(79, '2018-06-10', 'Nilton Santos'),
(80, '2018-05-13', 'Vila Capanema'),
(81, '2018-05-06', 'Nilton Santos'),
(82, '2018-04-22', 'Morumbi'),
(83, '2018-04-08', 'Nilton Santos'),
(84, '2018-07-22', 'São Januário'),
(85, '2018-07-08', 'Nilton Santos'),
(86, '2018-07-08', 'Arena Condá'),
(87, '2018-06-03', 'Arena Castelão'),
(88, '2018-05-27', 'Mineirão'),
(89, '2018-04-29', 'Arena Castelão'),
(90, '2018-04-15', 'Maracanã'),
(91, '2018-08-12', 'Arena Castelão'),
(92, '2018-07-22', 'Beira-Rio'),
(93, '2018-07-15', 'Arena Castelão'),
(94, '2018-06-17', 'Vila Capanema'),
(95, '2018-06-10', 'Arena Castelão'),
(96, '2018-05-20', 'Morumbi'),
(97, '2018-05-06', 'Arena Castelão'),
(98, '2018-04-15', 'São Januário'),
(99, '2018-08-12', 'Arena Castelão'),
(100, '2018-07-22', 'Arena Corinthians'),
(101, '2018-06-24', 'Arena Condá'),
(102, '2018-05-27', 'Luso Brasileiro'),
(103, '2018-05-13', 'Arena Condá'),
(104, '2018-05-13', 'Arena do Grêmio'),
(105, '2018-04-29', 'Arena Condá'),
(106, '2018-04-15', 'Allianz Parque'),
(107, '2018-08-12', 'Arena Condá'),
(108, '2018-07-15', 'Vila Belmiro'),
(109, '2018-07-08', 'Arena Condá'),
(110, '2018-07-01', 'Ilha do Retiro'),
(111, '2018-06-03', 'Arena Condá'),
(112, '2018-05-13', 'Barradão'),
(113, '2018-04-29', 'Arena Corinthians'),
(114, '2018-04-08', 'Luso Brasileiro'),
(115, '2018-08-05', 'Arena Corinthians'),
(116, '2018-07-22', 'Arena do Grêmio'),
(117, '2018-07-01', 'Arena Corinthians'),
(118, '2018-06-24', 'Allianz Parque'),
(119, '2018-05-27', 'Arena Corinthians'),
(120, '2018-05-20', 'Vila Belmiro'),
(121, '2018-04-29', 'Arena Corinthians'),
(122, '2018-04-15', 'Ilha do Retiro'),
(123, '2018-08-05', 'Arena Corinthians'),
(124, '2018-07-22', 'Barradão'),
(125, '2018-06-10', 'Mineirão'),
(126, '2018-05-27', 'Maracanã'),
(127, '2018-05-27', 'Mineirão'),
(128, '2018-05-13', 'Beira-Rio'),
(129, '2018-04-29', 'Mineirão'),
(130, '2018-04-08', 'Vila Capanema'),
(131, '2018-07-29', 'Mineirão'),
(132, '2018-07-29', 'Morumbi'),
(133, '2018-07-15', 'Mineirão'),
(134, '2018-06-17', 'São Januário'),
(135, '2018-05-27', 'Mineirão'),
(136, '2018-04-29', 'Maracanã'),
(137, '2018-04-29', 'Luso Brasileiro'),
(138, '2018-04-15', 'Beira-Rio'),
(139, '2018-08-05', 'Luso Brasileiro'),
(140, '2018-07-22', 'Vila Capanema'),
(141, '2018-07-01', 'Luso Brasileiro'),
(142, '2018-06-17', 'Morumbi'),
(143, '2018-06-17', 'Luso Brasileiro'),
(144, '2018-05-20', 'São Januário'),
(145, '2018-04-29', 'Luso Brasileiro'),
(146, '2018-04-15', 'Arena do Grêmio'),
(147, '2018-08-05', 'Maracanã'),
(148, '2018-07-22', 'Allianz Parque'),
(149, '2018-07-01', 'Maracanã'),
(150, '2018-06-17', 'Vila Belmiro'),
(151, '2018-05-27', 'Maracanã'),
(152, '2018-05-27', 'Ilha do Retiro'),
(153, '2018-05-06', 'Maracanã'),
(154, '2018-04-15', 'Barradão'),
(155, '2018-08-12', 'Arena do Grêmio'),
(156, '2018-07-29', 'Allianz Parque'),
(157, '2018-07-08', 'Arena do Grêmio'),
(158, '2018-06-24', 'Vila Belmiro'),
(159, '2018-06-03', 'Arena do Grêmio'),
(160, '2018-06-03', 'Ilha do Retiro'),
(161, '2018-05-13', 'Arena do Grêmio'),
(162, '2018-04-22', 'Barradão'),
(163, '2018-08-12', 'Beira-Rio'),
(164, '2018-07-29', 'Vila Capanema'),
(165, '2018-07-08', 'Beira-Rio'),
(166, '2018-06-24', 'Morumbi'),
(167, '2018-06-24', 'Beira-Rio'),
(168, '2018-05-27', 'São Januário'),
(169, '2018-05-06', 'Beira-Rio'),
(170, '2018-04-15', 'Vila Capanema'),
(171, '2018-08-12', 'Allianz Parque'),
(172, '2018-08-05', 'Morumbi'),
(173, '2018-07-22', 'Allianz Parque'),
(174, '2018-06-24', 'São Januário'),
(175, '2018-06-03', 'Allianz Parque'),
(176, '2018-05-27', 'Vila Belmiro'),
(177, '2018-05-06', 'Vila Capanema'),
(178, '2018-04-22', 'Ilha do Retiro'),
(179, '2018-08-12', 'Vila Capanema'),
(180, '2018-07-29', 'Barradão'),
(181, '2018-07-15', 'Vila Belmiro'),
(182, '2018-07-08', 'Ilha do Retiro'),
(183, '2018-06-10', 'Vila Belmiro'),
(184, '2018-05-20', 'Barradão'),
(185, '2018-05-13', 'Morumbi'),
(186, '2018-04-22', 'São Januário'),
(187, '2018-04-08', 'Morumbi'),
(188, '2018-07-29', 'São Januário'),
(189, '2018-07-15', 'Ilha do Retiro'),
(190, '2018-06-24', 'Barradão');

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `clube_em_jogo`
--
ALTER TABLE `clube_em_jogo`
  ADD CONSTRAINT `clube_em_jogo_ibfk_1` FOREIGN KEY (`fk_clube`) REFERENCES `clube` (`nome`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clube_em_jogo_ibfk_2` FOREIGN KEY (`fk_jogo`) REFERENCES `jogo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;