-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 07-Set-2023 às 22:32
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gerenciamento_task`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

DROP TABLE IF EXISTS `agendamento`;
CREATE TABLE IF NOT EXISTS `agendamento` (
  `ID_agendamento` int NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `id_atividade` int DEFAULT NULL,
  PRIMARY KEY (`ID_agendamento`),
  KEY `id_atividade` (`id_atividade`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`ID_agendamento`, `data`, `id_atividade`) VALUES
(1, '2023-06-02', 1),
(2, '2023-06-04', 2),
(3, '2023-06-07', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atividade`
--

DROP TABLE IF EXISTS `atividade`;
CREATE TABLE IF NOT EXISTS `atividade` (
  `ID_atividade` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`ID_atividade`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_usuario` (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `atividade`
--

INSERT INTO `atividade` (`ID_atividade`, `nome`, `descricao`, `data_inicio`, `data_final`, `id_categoria`, `id_usuario`) VALUES
(34, 'Estudar', 'Linguagem Python', '2023-07-10', '2023-07-10', NULL, 15),
(36, 'trabalhar', 'a noite', '2023-07-09', '2023-07-09', NULL, 16),
(42, 'Estudar', 'funções', '2023-07-18', '2023-07-19', NULL, 23),
(40, 'dançar', 'dancar@teste.com', '2023-07-19', '2023-07-25', NULL, 22),
(43, 'treinar', 'jiu-jitsu', '2023-09-07', '2023-09-21', NULL, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `ID_categoria` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`ID_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`ID_categoria`, `nome`, `descricao`) VALUES
(1, 'Categoria 1', 'Descrição da Categoria 1'),
(2, 'Categoria 2', 'Descrição da Categoria 2'),
(3, 'Categoria 3', 'Descrição da Categoria 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `nome`, `email`, `senha`) VALUES
(17, 'teste', 'teste@teste.com', '1'),
(16, 'pingo', 'pingo@teste.com', '1'),
(15, 'alan', 'alan@teste.com', '1'),
(22, 'brother', 'brother@testes.com', '3'),
(23, 'santos', 'santos@testes.com', '3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
