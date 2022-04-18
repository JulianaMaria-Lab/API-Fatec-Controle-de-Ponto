-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2021 às 21:56
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jetsoft`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `'1'`
--

CREATE TABLE `'1'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'1'`
--

INSERT INTO `'1'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'2'`
--

CREATE TABLE `'2'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL DEFAULT 'X',
  `'30'` varchar(1) NOT NULL DEFAULT 'X',
  `'31'` varchar(1) NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'2'`
--

INSERT INTO `'2'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X'),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X'),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X'),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X'),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', 'X', 'X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'3'`
--

CREATE TABLE `'3'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'3'`
--

INSERT INTO `'3'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'4'`
--

CREATE TABLE `'4'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'4'`
--

INSERT INTO `'4'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'5'`
--

CREATE TABLE `'5'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'5'`
--

INSERT INTO `'5'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'6'`
--

CREATE TABLE `'6'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'6'`
--

INSERT INTO `'6'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'7'`
--

CREATE TABLE `'7'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'7'`
--

INSERT INTO `'7'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'8'`
--

CREATE TABLE `'8'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'8'`
--

INSERT INTO `'8'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'9'`
--

CREATE TABLE `'9'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'9'`
--

INSERT INTO `'9'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'10'`
--

CREATE TABLE `'10'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'10'`
--

INSERT INTO `'10'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'11'`
--

CREATE TABLE `'11'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL DEFAULT 'X'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'11'`
--

INSERT INTO `'11'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', 'P', 'P', '', 'P', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', 'P', 'F', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', '', 'F', 'P', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', 'P', 'F', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X'),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', 'P', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X');

-- --------------------------------------------------------

--
-- Estrutura da tabela `'12'`
--

CREATE TABLE `'12'` (
  `registro` bigint(20) UNSIGNED NOT NULL,
  `colaborador` varchar(32) NOT NULL,
  `colaborador_id` int(9) NOT NULL,
  `posto_trabalho` text NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `'1'` varchar(1) NOT NULL,
  `'2'` varchar(1) NOT NULL,
  `'3'` varchar(1) NOT NULL,
  `'4'` varchar(1) NOT NULL,
  `'5'` varchar(1) NOT NULL,
  `'6'` varchar(1) NOT NULL,
  `'7'` varchar(1) NOT NULL,
  `'8'` varchar(1) NOT NULL,
  `'9'` varchar(1) NOT NULL,
  `'10'` varchar(1) NOT NULL,
  `'11'` varchar(1) NOT NULL,
  `'12'` varchar(1) NOT NULL,
  `'13'` varchar(1) NOT NULL,
  `'14'` varchar(1) NOT NULL,
  `'15'` varchar(1) NOT NULL,
  `'16'` varchar(1) NOT NULL,
  `'17'` varchar(1) NOT NULL,
  `'18'` varchar(1) NOT NULL,
  `'19'` varchar(1) NOT NULL,
  `'20'` varchar(1) NOT NULL,
  `'21'` varchar(1) NOT NULL,
  `'22'` varchar(1) NOT NULL,
  `'23'` varchar(1) NOT NULL,
  `'24'` varchar(1) NOT NULL,
  `'25'` varchar(1) NOT NULL,
  `'26'` varchar(1) NOT NULL,
  `'27'` varchar(1) NOT NULL,
  `'28'` varchar(1) NOT NULL,
  `'29'` varchar(1) NOT NULL,
  `'30'` varchar(1) NOT NULL,
  `'31'` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `'12'`
--

INSERT INTO `'12'` (`registro`, `colaborador`, `colaborador_id`, `posto_trabalho`, `posto_trabalho_id`, `funcao`, `tipo_cobertura`, `'1'`, `'2'`, `'3'`, `'4'`, `'5'`, `'6'`, `'7'`, `'8'`, `'9'`, `'10'`, `'11'`, `'12'`, `'13'`, `'14'`, `'15'`, `'16'`, `'17'`, `'18'`, `'19'`, `'20'`, `'21'`, `'22'`, `'23'`, `'24'`, `'25'`, `'26'`, `'27'`, `'28'`, `'29'`, `'30'`, `'31'`) VALUES
(3, 'Colaborador Um', 4, 'Posto Três', 22, 'servidor de exemplo', 'fixo', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ''),
(4, 'Exemplo Quatro', 5, 'Posto Quatro', 23, 'carpinteiro', 'flutuante', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ''),
(5, 'Terceiro', 8, 'Posto Um', 12, 'servidor de exemplo', 'flutuante', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ''),
(6, 'oqwdbvpqwjbv', 9, 'Posto Dois', 21, 'servidor de exemplo', 'fixo', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ''),
(7, 'testeteste', 10, 'Posto Um', 12, 'teste', 'fixo', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `razao_social` varchar(64) NOT NULL,
  `nome_fantasia` varchar(64) NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `endereco` varchar(64) NOT NULL,
  `numero` varchar(5) NOT NULL,
  `bairro` varchar(64) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado_uf` varchar(2) NOT NULL,
  `cep` varchar(8) NOT NULL,
  `contato` varchar(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `data_admissao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `endereco`, `numero`, `bairro`, `cidade`, `estado_uf`, `cep`, `contato`, `email`, `data_admissao`) VALUES
(1, 'cliente um ltda', 'cliente um', '11111111111111', 'rua um', '1', 'bairro um', 'São José dos Campos', 'SP', '11111111', '12911111111', 'exemplo@exemplo.com', '2020-01-01'),
(2, 'cliente dois ltda', 'cliente dois', '22222222222222', 'rua dois', '2', 'bairro dois', 'São José dos Campos', 'SP', '22222222', '12922222222', 'exemplo2@exemplo.com', '2020-01-02'),
(3, 'cliente tres ltda', 'cliente tres', '33333333333333', 'rua tres', '3', 'bairro tres', 'São José dos Campos', 'SP', '33333333', '12933333333', '', '2020-01-03'),
(4, 'cliente quatro ltda', 'cliente quatro', '44444444444444', 'rua quatro', '4', 'bairro quatro', 'São José dos Campos', 'SP', '44444444', '12944444444', '4@mail.com', '2020-01-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaboradores`
--

CREATE TABLE `colaboradores` (
  `id` int(9) NOT NULL,
  `nome_completo` varchar(64) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `matricula` varchar(16) NOT NULL,
  `funcao` varchar(32) NOT NULL,
  `data_admissao` date NOT NULL,
  `email` varchar(32) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `tipo_cobertura` varchar(10) NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `colaboradores`
--

INSERT INTO `colaboradores` (`id`, `nome_completo`, `cpf`, `matricula`, `funcao`, `data_admissao`, `email`, `telefone`, `tipo_cobertura`, `posto_trabalho_id`) VALUES
(4, 'Colaborador Um', '11111111111', '0001', 'servidor de exemplo', '2020-01-01', 'exemplo@exemplo.com', '12999999999', 'fixo', 22),
(5, 'Exemplo Quatro', '44444444444', '0004', 'carpinteiro', '2020-01-04', 'exemplo4@exemplo.com', '12944444444', 'flutuante', 23),
(8, 'Terceiro', '33333333333', '0013', 'servidor de exemplo', '2003-03-03', 'exemplo@exemplo.com', '12999999999', 'flutuante', 12),
(9, 'oqwdbvpqwjbv', '00000000000', '0004', 'servidor de exemplo', '2020-02-02', 'exemplo@exemplo.com', '12999999999', 'fixo', 21),
(10, 'testeteste', '45454545454', '0123', 'teste', '2021-01-01', 'exemplo@exemplo.com', '12999999999', 'fixo', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contrato`
--

CREATE TABLE `contrato` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `posto_trabalho_id` int(11) NOT NULL,
  `escala` varchar(20) NOT NULL,
  `data_admissao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contrato`
--

INSERT INTO `contrato` (`id`, `cliente_id`, `valor`, `posto_trabalho_id`, `escala`, `data_admissao`) VALUES
(2, 3, 10000, 21, '12x36', '2020-01-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_evento` varchar(220) DEFAULT NULL,
  `data_evento` date NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes_fechado` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes_fechado`) VALUES
('10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto_trabalho`
--

CREATE TABLE `posto_trabalho` (
  `id` int(11) NOT NULL,
  `nome_posto` text NOT NULL,
  `descricao` text NOT NULL,
  `escala` varchar(30) NOT NULL,
  `qtd_colaborador` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posto_trabalho`
--

INSERT INTO `posto_trabalho` (`id`, `nome_posto`, `descricao`, `escala`, `qtd_colaborador`, `cliente_id`) VALUES
(12, 'Posto Um', 'Descrição posto um', '12x36', 2, 1),
(21, 'Posto Dois', 'odbhvqag', '12x36', 2, 2),
(22, 'Posto Três', 'posto tres', '12x36', 3, 3),
(23, 'Posto Quatro', 'posto quatro', '12x36', 4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `username`, `password`, `nivel`) VALUES
(1, 'administrador', 'administrador1', 'senha', 'operacional'),
(2, 'administrador', 'administrador2', 'senha2', 'tatico');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `'1'`
--
ALTER TABLE `'1'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'2'`
--
ALTER TABLE `'2'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'3'`
--
ALTER TABLE `'3'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'4'`
--
ALTER TABLE `'4'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'5'`
--
ALTER TABLE `'5'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'6'`
--
ALTER TABLE `'6'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'7'`
--
ALTER TABLE `'7'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'8'`
--
ALTER TABLE `'8'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'9'`
--
ALTER TABLE `'9'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'10'`
--
ALTER TABLE `'10'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'11'`
--
ALTER TABLE `'11'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `'12'`
--
ALTER TABLE `'12'`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `presencacolab` (`colaborador_id`),
  ADD KEY `presencaposto` (`posto_trabalho_id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colabposto` (`posto_trabalho_id`);

--
-- Índices para tabela `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contratocliente` (`cliente_id`),
  ADD KEY `contratoposto` (`posto_trabalho_id`);

--
-- Índices para tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `posto_trabalho`
--
ALTER TABLE `posto_trabalho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postocliente` (`cliente_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `'1'`
--
ALTER TABLE `'1'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'2'`
--
ALTER TABLE `'2'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'3'`
--
ALTER TABLE `'3'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'4'`
--
ALTER TABLE `'4'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'5'`
--
ALTER TABLE `'5'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'6'`
--
ALTER TABLE `'6'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'7'`
--
ALTER TABLE `'7'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'8'`
--
ALTER TABLE `'8'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'9'`
--
ALTER TABLE `'9'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `'10'`
--
ALTER TABLE `'10'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'11'`
--
ALTER TABLE `'11'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `'12'`
--
ALTER TABLE `'12'`
  MODIFY `registro` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `posto_trabalho`
--
ALTER TABLE `posto_trabalho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `'11'`
--
ALTER TABLE `'11'`
  ADD CONSTRAINT `presencacolab` FOREIGN KEY (`colaborador_id`) REFERENCES `colaboradores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presencaposto` FOREIGN KEY (`posto_trabalho_id`) REFERENCES `posto_trabalho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `colaboradores`
--
ALTER TABLE `colaboradores`
  ADD CONSTRAINT `colabposto` FOREIGN KEY (`posto_trabalho_id`) REFERENCES `posto_trabalho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contratocliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contratoposto` FOREIGN KEY (`posto_trabalho_id`) REFERENCES `posto_trabalho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `posto_trabalho`
--
ALTER TABLE `posto_trabalho`
  ADD CONSTRAINT `postocliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
