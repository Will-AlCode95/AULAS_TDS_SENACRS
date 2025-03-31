-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 09:24 PM
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
  `id_professor` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `componente_periferico`
--

CREATE TABLE `componente_periferico` (
  `id_componente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `status` enum('Funcionando','Descartado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doacao`
--

CREATE TABLE `doacao` (
  `id_doacao` int(11) NOT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  `id_componente` int(11) DEFAULT NULL,
  `data_doacao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participantespt`
--

CREATE TABLE `participantespt` (
  `id_participante` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `turma` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pessoa`
--

CREATE TABLE `pessoa` (
  `id_pessoa` int(11) NOT NULL,
  `tipo` enum('Fisica','Juridica') NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `cnpj` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_professor`);

--
-- Indexes for table `componente_periferico`
--
ALTER TABLE `componente_periferico`
  ADD PRIMARY KEY (`id_componente`);

--
-- Indexes for table `doacao`
--
ALTER TABLE `doacao`
  ADD PRIMARY KEY (`id_doacao`),
  ADD KEY `id_pessoa` (`id_pessoa`),
  ADD KEY `id_componente` (`id_componente`);

--
-- Indexes for table `participantespt`
--
ALTER TABLE `participantespt`
  ADD PRIMARY KEY (`id_participante`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id_pessoa`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `cnpj` (`cnpj`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `componente_periferico`
--
ALTER TABLE `componente_periferico`
  MODIFY `id_componente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doacao`
--
ALTER TABLE `doacao`
  MODIFY `id_doacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participantespt`
--
ALTER TABLE `participantespt`
  MODIFY `id_participante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id_pessoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doacao`
--
ALTER TABLE `doacao`
  ADD CONSTRAINT `doacao_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id_pessoa`),
  ADD CONSTRAINT `doacao_ibfk_2` FOREIGN KEY (`id_componente`) REFERENCES `componente_periferico` (`id_componente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
