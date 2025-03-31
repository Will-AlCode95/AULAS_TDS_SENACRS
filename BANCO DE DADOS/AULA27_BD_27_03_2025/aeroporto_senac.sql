-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 03:25 AM
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
-- Database: `aeroporto_senac`
--

-- --------------------------------------------------------

--
-- Table structure for table `aeroporto`
--

CREATE TABLE `aeroporto` (
  `id_aeroporto` int(11) NOT NULL,
  `lotacao` int(11) NOT NULL,
  `peso_max` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aeroporto`
--

INSERT INTO `aeroporto` (`id_aeroporto`, `lotacao`, `peso_max`) VALUES
(1, 500, 200000.00),
(2, 700, 300000.00),
(3, 450, 150000.00),
(4, 800, 350000.00),
(5, 600, 250000.00);

-- --------------------------------------------------------

--
-- Table structure for table `aviao`
--

CREATE TABLE `aviao` (
  `id_aviao` int(11) NOT NULL,
  `prefixo` varchar(20) NOT NULL,
  `modelo_id` int(11) NOT NULL,
  `companhia_id` int(11) NOT NULL,
  `observacoes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aviao`
--

INSERT INTO `aviao` (`id_aviao`, `prefixo`, `modelo_id`, `companhia_id`, `observacoes`) VALUES
(27, 'PR-GTG', 1, 2, 'Manutenção recente'),
(28, 'PT-MXC', 2, 1, 'Novo na frota'),
(29, 'PS-AEA', 3, 3, 'Em operação constante'),
(30, 'N-AA123', 4, 5, 'Voo internacional'),
(31, 'PT-MXA', 5, 1, 'Reservado para voos longos');

-- --------------------------------------------------------

--
-- Table structure for table `companhia`
--

CREATE TABLE `companhia` (
  `id_companhia` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companhia`
--

INSERT INTO `companhia` (`id_companhia`, `nome`) VALUES
(1, 'LATAM'),
(2, 'Gol Linhas Aéreas'),
(3, 'Azul'),
(4, 'Avianca'),
(5, 'American Airlines');

-- --------------------------------------------------------

--
-- Table structure for table `empregado`
--

CREATE TABLE `empregado` (
  `id_empregado` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empregado`
--

INSERT INTO `empregado` (`id_empregado`, `codigo`, `nome`, `endereco`, `cidade`, `estado`, `email`) VALUES
(1, '101', 'Carlos Souza', 'Rua das Palmeiras, 123', 'São Paulo', 'SP', 'carlos.souza@latam.com'),
(2, '102', 'Ana Oliveira', 'Avenida Central, 456', 'Rio de Janeiro', 'RJ', 'ana.oliveira@gol.com'),
(3, '103', 'Marcos Lima', 'Rua Floriano Peixoto, 789', 'Brasília', 'DF', 'marcos.lima@azul.com'),
(4, '104', 'Fernanda Costa', 'Travessa das Árvores, 101', 'Curitiba', 'PR', 'fernanda.costa@avianca.com'),
(5, '105', 'Lucas Martins', 'Alameda Santos, 202', 'Belo Horizonte', 'MG', 'lucas.martins@americanairlines.com');

-- --------------------------------------------------------

--
-- Table structure for table `modelo`
--

CREATE TABLE `modelo` (
  `id_modelo` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `lotacao` int(11) NOT NULL,
  `combustivel` varchar(50) NOT NULL,
  `peso` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modelo`
--

INSERT INTO `modelo` (`id_modelo`, `nome`, `lotacao`, `combustivel`, `peso`) VALUES
(1, 'Boeing 737', 189, 'Querosene de aviação', 41413.00),
(2, 'Airbus A320', 180, 'Querosene de aviação', 42200.00),
(3, 'Embraer E195', 132, 'Querosene de aviação', 50690.00),
(4, 'Boeing 777', 396, 'Querosene de aviação', 347450.00),
(5, 'Airbus A380', 850, 'Querosene de aviação', 560000.00);

-- --------------------------------------------------------

--
-- Table structure for table `tecnico`
--

CREATE TABLE `tecnico` (
  `id_tecnico` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tecnico`
--

INSERT INTO `tecnico` (`id_tecnico`, `codigo`, `nome`, `email`) VALUES
(1, '101', 'Carlos Henrique', 'carlos.henrique@email.com'),
(2, '102', 'Mariana Souza', 'mariana.souza@email.com'),
(3, '103', 'Roberto Lima', 'roberto.lima@email.com'),
(4, '104', 'Fernanda Alves', 'fernanda.alves@email.com'),
(5, '105', 'João Pedro', 'joao.pedro@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `voo`
--

CREATE TABLE `voo` (
  `id_voo` int(11) NOT NULL,
  `horario_partida` datetime NOT NULL,
  `horario_chegada` datetime NOT NULL,
  `id_aviao` int(11) NOT NULL,
  `id_companhia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voo`
--

INSERT INTO `voo` (`id_voo`, `horario_partida`, `horario_chegada`, `id_aviao`, `id_companhia`) VALUES
(11, '2025-03-28 08:00:00', '2025-03-28 12:30:00', 27, 2),
(12, '2025-03-28 14:15:00', '2025-03-28 18:45:00', 28, 1),
(13, '2025-03-29 06:30:00', '2025-03-29 11:00:00', 29, 3),
(14, '2025-03-29 19:00:00', '2025-03-30 00:15:00', 30, 5),
(15, '2025-03-30 10:45:00', '2025-03-30 15:20:00', 31, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aeroporto`
--
ALTER TABLE `aeroporto`
  ADD PRIMARY KEY (`id_aeroporto`);

--
-- Indexes for table `aviao`
--
ALTER TABLE `aviao`
  ADD PRIMARY KEY (`id_aviao`),
  ADD KEY `modelo_id` (`modelo_id`),
  ADD KEY `companhia_id` (`companhia_id`);

--
-- Indexes for table `companhia`
--
ALTER TABLE `companhia`
  ADD PRIMARY KEY (`id_companhia`);

--
-- Indexes for table `empregado`
--
ALTER TABLE `empregado`
  ADD PRIMARY KEY (`id_empregado`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Indexes for table `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`id_tecnico`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `voo`
--
ALTER TABLE `voo`
  ADD PRIMARY KEY (`id_voo`),
  ADD KEY `aviao_id` (`id_aviao`),
  ADD KEY `companhia_id` (`id_companhia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aeroporto`
--
ALTER TABLE `aeroporto`
  MODIFY `id_aeroporto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aviao`
--
ALTER TABLE `aviao`
  MODIFY `id_aviao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `companhia`
--
ALTER TABLE `companhia`
  MODIFY `id_companhia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `empregado`
--
ALTER TABLE `empregado`
  MODIFY `id_empregado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `id_tecnico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voo`
--
ALTER TABLE `voo`
  MODIFY `id_voo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aviao`
--
ALTER TABLE `aviao`
  ADD CONSTRAINT `aviao_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id_modelo`),
  ADD CONSTRAINT `aviao_ibfk_2` FOREIGN KEY (`companhia_id`) REFERENCES `companhia` (`id_companhia`);

--
-- Constraints for table `voo`
--
ALTER TABLE `voo`
  ADD CONSTRAINT `voo_ibfk_1` FOREIGN KEY (`id_aviao`) REFERENCES `aviao` (`id_aviao`),
  ADD CONSTRAINT `voo_ibfk_2` FOREIGN KEY (`id_companhia`) REFERENCES `companhia` (`id_companhia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
