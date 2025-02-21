-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 04:00 PM
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
-- Table structure for table `tabela01`
--

CREATE TABLE `tabela01` (
  `id_tabela01` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `idade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tabela01`
--

INSERT INTO `tabela01` (`id_tabela01`, `nome`, `sobrenome`, `endereco`, `idade`) VALUES
(1, 'Heman', 'Espada Mágica', 'Rua Etérnia 77', 200),
(2, 'Gilmar', 'Silva', 'Venâncio Aires 93', 55),
(3, 'Claudio', 'Souza', 'Venâncio Aires 93', 58),
(4, 'Régis', 'Costa', 'Venâncio Aires 93', 56);

-- --------------------------------------------------------

--
-- Table structure for table `tabela02`
--

CREATE TABLE `tabela02` (
  `id_tabela02` int(11) NOT NULL,
  `nome_funcionario` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `idade` int(3) DEFAULT NULL,
  `cargo` varchar(50) NOT NULL,
  `setor` varchar(50) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `data_entrada` date NOT NULL,
  `obs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tabela02`
--

INSERT INTO `tabela02` (`id_tabela02`, `nome_funcionario`, `endereco`, `idade`, `cargo`, `setor`, `telefone`, `data_entrada`, `obs`) VALUES
(1, 'Mario', 'Rua Cogumelo 67', 50, 'Tecnico de informatica', 'Suporte', '519999555', '0000-00-00', 'tecnico de manutenção de ti do SenacTech'),
(2, 'Miguel', 'Venancio Aires 56', 31, 'Secretaria', 'Recepção', '5199966699', '0000-00-00', 'auxiliar de atendimento de clientes'),
(3, 'Valdisney Silva', 'Venâncio Aires 93', 40, 'Técnico em Informática', 'Suporte', '51999999999', '2024-02-25', 'Técnico na manutenção da TI da empresa'),
(4, 'Clotilde Souza', 'Venâncio Aires 93', 30, 'Secretaria', 'Recepção', '519999999', '2024-02-25', 'Auxilia no atendimento de clientes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabela01`
--
ALTER TABLE `tabela01`
  ADD PRIMARY KEY (`id_tabela01`);

--
-- Indexes for table `tabela02`
--
ALTER TABLE `tabela02`
  ADD PRIMARY KEY (`id_tabela02`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabela01`
--
ALTER TABLE `tabela01`
  MODIFY `id_tabela01` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabela02`
--
ALTER TABLE `tabela02`
  MODIFY `id_tabela02` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
