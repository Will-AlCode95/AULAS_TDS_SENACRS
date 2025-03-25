-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2025 at 12:00 AM
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
-- Database: `tcheuber2`
--

-- --------------------------------------------------------

--
-- Table structure for table `manutencao`
--

CREATE TABLE `manutencao` (
  `ID_Manutencao` int(11) NOT NULL,
  `ID_Ordem` int(11) NOT NULL,
  `Data_Execucao` date NOT NULL,
  `Descricao` text NOT NULL,
  `Custo` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manutencao`
--

INSERT INTO `manutencao` (`ID_Manutencao`, `ID_Ordem`, `Data_Execucao`, `Descricao`, `Custo`) VALUES
(13, 13, '2025-03-17', 'Troca de pastilhas e fluido de freio. Sangria do sistema.', 220.00),
(14, 17, '2025-03-12', 'Diagnóstico eletrônico, limpeza dos injetores e ajuste da mistura ar-combustível.', 350.00),
(15, 13, '2025-03-13', 'Substituição do filtro de combustível e verificação do sistema de ignição.', 145.75),
(16, 17, '2025-03-01', 'Recarga de gás, limpeza do evaporador e substituição do filtro de cabine.', 350.00),
(17, 15, '2025-03-01', 'Verificação do compressor e válvula de expansão do ar condicionado.', 120.00),
(18, 16, '2025-03-19', 'Leitura de códigos de erro com scanner e reset da luz do painel.', 90.00),
(19, 17, '2025-03-07', 'Manutenção completa: troca de óleos e filtros, verificação de correias e fluidos.', 350.00);

-- --------------------------------------------------------

--
-- Table structure for table `mecanico`
--

CREATE TABLE `mecanico` (
  `ID_Mecanico` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Estado` char(2) NOT NULL,
  `Celular` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mecanico`
--

INSERT INTO `mecanico` (`ID_Mecanico`, `Nome`, `CPF`, `Endereco`, `Cidade`, `Estado`, `Celular`) VALUES
(1, 'João de Feijão', '12345678900', 'Rua das Oficinas, 100', 'São Paulo', 'SP', '(11) 99988-7766'),
(2, 'James Tonde', '23456789011', 'Av. dos Motores, 200', 'Rio de Janeiro', 'RJ', '(21) 98877-6655'),
(3, 'Fernanda Souza', '34567890122', 'Rua dos Mecânicos, 300', 'Belo Horizonte', 'MG', '(31) 97766-5544'),
(4, 'Mestre Miguel', '45678901233', 'Travessa das Engrenagens, 400', 'Curitiba', 'PR', '(41) 96655-4433'),
(5, 'Patrícia Poeta', '56789012344', 'Alameda das Ferramentas, 500', 'Porto Alegre', 'RS', '(51) 95544-3322');

-- --------------------------------------------------------

--
-- Table structure for table `motorista`
--

CREATE TABLE `motorista` (
  `ID_Motorista` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Categoria_CNH` varchar(5) NOT NULL,
  `Numero_CNH` varchar(20) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `Endereco` varchar(200) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `Estado` char(2) NOT NULL,
  `Celular` varchar(15) NOT NULL,
  `Data_Cadastro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `motorista`
--

INSERT INTO `motorista` (`ID_Motorista`, `Nome`, `Categoria_CNH`, `Numero_CNH`, `CPF`, `Endereco`, `Cidade`, `Estado`, `Celular`, `Data_Cadastro`) VALUES
(1, 'Mario Oliveira', 'B', '12345678901', '11122233344', 'Rua do Heman, 670', 'São Paulo', 'SP', '(11) 98765-4321', '2025-03-21 03:00:00'),
(2, 'Mary Lima', 'AB', '98765432102', '22233344455', 'Av. Super mario, 456', 'São Paulo', 'SP', '(11) 92345-6789', '2025-03-20 03:00:00'),
(3, 'Richard Alves', 'C', '45678912303', '33344455566', 'Rua metroid, 789', 'Belo Horizonte', 'MG', '(31) 91234-5678', '2025-03-19 03:00:00'),
(4, 'Marta Costa', 'D', '78912345604', '44455566677', 'Av. Brasil, 101', 'Rio de Janeiro', 'RJ', '(21) 93456-7890', '2025-03-18 03:00:00'),
(5, 'Jairs Mendes', 'E', '32165498705', '55566677788', 'Rua Ipiranga, 202', 'Curitiba', 'PR', '(41) 94567-1234', '2025-03-17 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ordemservico`
--

CREATE TABLE `ordemservico` (
  `ID_Ordem` int(11) NOT NULL,
  `ID_Motorista` int(11) NOT NULL,
  `ID_Veiculo` int(11) NOT NULL,
  `ID_Mecanico` int(11) DEFAULT NULL,
  `Data_Solicitacao` date NOT NULL,
  `Data_Problema` date NOT NULL,
  `Descricao_Problema` text NOT NULL,
  `Status` enum('Pendente','Em andamento','Finalizado') DEFAULT 'Pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordemservico`
--

INSERT INTO `ordemservico` (`ID_Ordem`, `ID_Motorista`, `ID_Veiculo`, `ID_Mecanico`, `Data_Solicitacao`, `Data_Problema`, `Descricao_Problema`, `Status`) VALUES
(13, 1, 11, NULL, '2025-03-15', '2025-03-14', 'Problema no sistema de freios. Pedal muito mole.', 'Pendente'),
(14, 2, 15, 3, '2025-03-10', '2025-03-09', 'Motor falhando em altas rotações. Perda de potência.', 'Em andamento'),
(15, 3, 13, 1, '2025-02-28', '2025-02-25', 'Ar condicionado não refrigera adequadamente.', 'Finalizado'),
(16, 2, 12, NULL, '2025-03-18', '2025-03-18', 'Luz do painel acendendo. Verificar código de erro.', 'Pendente'),
(17, 4, 14, 2, '2025-03-05', '2025-03-01', 'Troca de óleo e filtros. Manutenção preventiva.', 'Em andamento');

-- --------------------------------------------------------

--
-- Table structure for table `veiculo`
--

CREATE TABLE `veiculo` (
  `ID_Veiculo` int(11) NOT NULL,
  `ID_Motorista` int(11) NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Placa` varchar(10) NOT NULL,
  `Ano_Fabricacao` year(4) NOT NULL,
  `Chassi` varchar(20) NOT NULL,
  `Cor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `veiculo`
--

INSERT INTO `veiculo` (`ID_Veiculo`, `ID_Motorista`, `Marca`, `Modelo`, `Placa`, `Ano_Fabricacao`, `Chassi`, `Cor`) VALUES
(11, 1, 'Volkswagen', 'Gol', 'ASW1250', '2020', '9BWHE21JX24060960', 'Preto'),
(12, 2, 'Fiat', 'Uno', 'DEF5678', '2019', '9BD15822AD6837319', 'Branco'),
(13, 3, 'Chevrolet', 'Onix', 'GHI9012', '2021', '9BGKS48L0FG142352', 'Vermelho'),
(14, 4, 'Fiat', 'Argo', 'JKL3456', '2019', '9BD358A4MLYL85623', 'Vermelho'),
(15, 5, 'Volkswagen', 'Golf', 'ABC1270', '2021', '9BWHE21JX24067893', 'Preto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manutencao`
--
ALTER TABLE `manutencao`
  ADD PRIMARY KEY (`ID_Manutencao`),
  ADD KEY `ID_Ordem` (`ID_Ordem`);

--
-- Indexes for table `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`ID_Mecanico`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`ID_Motorista`),
  ADD UNIQUE KEY `Numero_CNH` (`Numero_CNH`),
  ADD UNIQUE KEY `CPF` (`CPF`),
  ADD KEY `idx_motorista_cpf` (`CPF`);

--
-- Indexes for table `ordemservico`
--
ALTER TABLE `ordemservico`
  ADD PRIMARY KEY (`ID_Ordem`),
  ADD KEY `ID_Motorista` (`ID_Motorista`),
  ADD KEY `ID_Veiculo` (`ID_Veiculo`),
  ADD KEY `ID_Mecanico` (`ID_Mecanico`),
  ADD KEY `idx_os_status` (`Status`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`ID_Veiculo`),
  ADD UNIQUE KEY `Placa` (`Placa`),
  ADD UNIQUE KEY `Chassi` (`Chassi`),
  ADD KEY `ID_Motorista` (`ID_Motorista`),
  ADD KEY `idx_veiculo_placa` (`Placa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manutencao`
--
ALTER TABLE `manutencao`
  MODIFY `ID_Manutencao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mecanico`
--
ALTER TABLE `mecanico`
  MODIFY `ID_Mecanico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `ID_Motorista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ordemservico`
--
ALTER TABLE `ordemservico`
  MODIFY `ID_Ordem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `ID_Veiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manutencao`
--
ALTER TABLE `manutencao`
  ADD CONSTRAINT `manutencao_ibfk_1` FOREIGN KEY (`ID_Ordem`) REFERENCES `ordemservico` (`ID_Ordem`) ON DELETE CASCADE;

--
-- Constraints for table `ordemservico`
--
ALTER TABLE `ordemservico`
  ADD CONSTRAINT `ordemservico_ibfk_1` FOREIGN KEY (`ID_Motorista`) REFERENCES `motorista` (`ID_Motorista`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordemservico_ibfk_2` FOREIGN KEY (`ID_Veiculo`) REFERENCES `veiculo` (`ID_Veiculo`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordemservico_ibfk_3` FOREIGN KEY (`ID_Mecanico`) REFERENCES `mecanico` (`ID_Mecanico`) ON DELETE SET NULL;

--
-- Constraints for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`ID_Motorista`) REFERENCES `motorista` (`ID_Motorista`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
