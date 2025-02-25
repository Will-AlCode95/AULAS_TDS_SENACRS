-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 11:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pids_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE `administrador` (
  `nome_professor` varchar(20) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `descartes`
--

CREATE TABLE `descartes` (
  `id_tabela01` int(11) NOT NULL,
  `pesquisar` varchar(20) DEFAULT NULL,
  `nome` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `data_descarte` date NOT NULL,
  `cod_descarte` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doa_recebe`
--

CREATE TABLE `doa_recebe` (
  `id_tabela01` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `empresa` varchar(30) DEFAULT NULL,
  `cnpj` bigint(20) DEFAULT NULL,
  `cpf` bigint(20) DEFAULT NULL,
  `data_des` date DEFAULT NULL,
  `pesquisar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `funcionando`
--

CREATE TABLE `funcionando` (
  `id_tabela01` int(11) NOT NULL,
  `pesquisar` varchar(50) DEFAULT NULL,
  `nome` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `data_entrada` date NOT NULL,
  `codigo_func` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participantes_pidstech`
--

CREATE TABLE `participantes_pidstech` (
  `id_tabela01` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `turma` varchar(10) NOT NULL,
  `pesquisar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recebe_descarte`
--

CREATE TABLE `recebe_descarte` (
  `id_tabela01` int(11) NOT NULL,
  `nome_descarte` varchar(20) DEFAULT NULL,
  `empresa` varchar(30) NOT NULL,
  `cnpj` bigint(20) NOT NULL,
  `data_des` date DEFAULT NULL,
  `pesquisar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tela_login_senha`
--

CREATE TABLE `tela_login_senha` (
  `nome` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tela_login_senha`
--

INSERT INTO `tela_login_senha` (`nome`, `senha`) VALUES
('Clotilde', 'Lima12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `descartes`
--
ALTER TABLE `descartes`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- Indexes for table `doa_recebe`
--
ALTER TABLE `doa_recebe`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- Indexes for table `funcionando`
--
ALTER TABLE `funcionando`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- Indexes for table `participantes_pidstech`
--
ALTER TABLE `participantes_pidstech`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- Indexes for table `recebe_descarte`
--
ALTER TABLE `recebe_descarte`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `descartes`
--
ALTER TABLE `descartes`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doa_recebe`
--
ALTER TABLE `doa_recebe`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionando`
--
ALTER TABLE `funcionando`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participantes_pidstech`
--
ALTER TABLE `participantes_pidstech`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recebe_descarte`
--
ALTER TABLE `recebe_descarte`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
