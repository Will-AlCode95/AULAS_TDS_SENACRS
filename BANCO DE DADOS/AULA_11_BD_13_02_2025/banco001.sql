-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 03:15 PM
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
-- Database: `banco001`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabela001`
--

CREATE TABLE `tabela001` (
  `id_tabela001` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `idade` int(3) NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `numero` int(5) NOT NULL,
  `complemento` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `dataNascimento` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabela002`
--

CREATE TABLE `tabela002` (
  `id_tabela001` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `sobrenome` varchar(30) NOT NULL,
  `idade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabela003`
--

CREATE TABLE `tabela003` (
  `id_tabela003` int(11) NOT NULL,
  `nomeProduto` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `peso` float(5,2) NOT NULL,
  `preco` double(5,2) NOT NULL,
  `dataEntrada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabela001`
--
ALTER TABLE `tabela001`
  ADD PRIMARY KEY (`id_tabela001`);

--
-- Indexes for table `tabela002`
--
ALTER TABLE `tabela002`
  ADD PRIMARY KEY (`id_tabela001`);

--
-- Indexes for table `tabela003`
--
ALTER TABLE `tabela003`
  ADD PRIMARY KEY (`id_tabela003`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabela001`
--
ALTER TABLE `tabela001`
  MODIFY `id_tabela001` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabela002`
--
ALTER TABLE `tabela002`
  MODIFY `id_tabela001` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabela003`
--
ALTER TABLE `tabela003`
  MODIFY `id_tabela003` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
