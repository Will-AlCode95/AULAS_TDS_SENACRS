-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2025 at 10:31 PM
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
-- Database: `escola_senac_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `num_matri` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nasci` date DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`num_matri`, `nome`, `data_nasci`, `rua`, `bairro`, `cep`, `cidade`, `cpf`, `estado`, `telefone`) VALUES
(101, 'Carlos Silva', '2001-05-10', 'Rua A', 'Centro', '12345-678', 'São Paulo', '123.456.789-01', 'SP', '11912345678'),
(102, 'Mariana Costa', '2002-08-22', 'Rua B', 'Bela Vista', '54321-876', 'Rio de Janeiro', '987.654.321-02', 'RJ', '21976543210'),
(103, 'Roberto Lima', '2000-12-30', 'Rua C', 'Vila Nova', '67890-123', 'Belo Horizonte', '321.987.654-03', 'MG', '31965432109'),
(104, 'Ana Souza', '1999-07-15', 'Rua D', 'Boa Vista', '13579-246', 'Curitiba', '654.321.987-04', 'PR', '41987654321'),
(105, 'Fernanda Alves', '2003-02-05', 'Rua E', 'Centro', '24680-135', 'Porto Alegre', '789.123.456-05', 'RS', '51987654321');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `turno` varchar(50) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `turno`, `area`, `data_inicio`, `data_fim`) VALUES
(1, 'Engenharia de Computação', 'Noturno', 'Tecnologia', '2024-03-01', '2028-12-15'),
(2, 'Administração', 'Matutino', 'Gestão', '2024-02-15', '2028-11-30'),
(3, 'Enfermagem', 'Integral', 'Saúde', '2024-04-10', '2028-10-20'),
(4, 'Direito', 'Noturno', 'Humanas', '2024-05-05', '2028-09-25'),
(5, 'Arquitetura', 'Vespertino', 'Exatas', '2024-06-20', '2028-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `dependentes`
--

CREATE TABLE `dependentes` (
  `cod_depe` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `grau_pare` varchar(50) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `aluno_num_matri` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dependentes`
--

INSERT INTO `dependentes` (`cod_depe`, `nome`, `grau_pare`, `data_nasc`, `aluno_num_matri`) VALUES
(1, 'Lucas Silva', 'Irmão', '2010-06-12', 101),
(2, 'Beatriz Costa', 'Filha', '2015-09-23', 102),
(3, 'Rafael Lima', 'Sobrinho', '2012-11-14', 103),
(4, 'Sofia Souza', 'Prima', '2008-05-29', 104),
(5, 'Gabriel Alves', 'Irmão', '2011-03-07', 105);

-- --------------------------------------------------------

--
-- Table structure for table `laboratorio`
--

CREATE TABLE `laboratorio` (
  `cod_sala` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `laboratorio`
--

INSERT INTO `laboratorio` (`cod_sala`, `nome`, `localizacao`) VALUES
(1, 'Sala 101', 'Bloco A'),
(2, 'Sala 202', 'Bloco B'),
(3, 'Sala 303', 'Bloco C'),
(4, 'Laboratório 1', 'Bloco D'),
(5, 'Auditório', 'Bloco E');

-- --------------------------------------------------------

--
-- Table structure for table `matricula`
--

CREATE TABLE `matricula` (
  `num_matri` int(11) NOT NULL,
  `data_matri` date DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `matricula`
--

INSERT INTO `matricula` (`num_matri`, `data_matri`, `curso_id`) VALUES
(101, '2024-03-05', 1),
(102, '2024-03-06', 2),
(103, '2024-03-07', 3),
(104, '2024-03-08', 4),
(105, '2024-03-09', 5);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `cod_doce` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `formacao_academica` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`cod_doce`, `nome`, `endereco`, `telefone`, `formacao_academica`) VALUES
(1, 'Professor João', 'Rua X, 123', '11999999999', 'Doutor em Ciência da Computação'),
(2, 'Dra. Camila', 'Avenida Nova, 456', '21988888888', 'Mestre em Administração'),
(3, 'Dr. Ricardo', 'Rua Z, 789', '31977777777', 'Doutor em Medicina'),
(4, 'Dra. Fernanda', 'Rua W, 321', '41966666666', 'Mestre em Direito'),
(5, 'Professor Pedro', 'Rua V, 654', '51955555555', 'Doutor em Arquitetura');

-- --------------------------------------------------------

--
-- Table structure for table `uc`
--

CREATE TABLE `uc` (
  `cod_disc` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `sala_cod_sala` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `uc`
--

INSERT INTO `uc` (`cod_disc`, `descricao`, `sala_cod_sala`, `nome`) VALUES
(1, 'Estudo avançado de bancos de dados relacionais e não relacionais', 1, 'Banco de Dados'),
(2, 'Fundamentos da Administração', 2, 'Gestão Empresarial'),
(3, 'Estudo do corpo humano', 3, 'Anatomia Humana'),
(4, 'Leis e princípios fundamentais', 4, 'Direito Constitucional'),
(5, 'Técnicas de projeção', 5, 'Desenho Arquitetônico');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`num_matri`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`cod_depe`);

--
-- Indexes for table `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`cod_sala`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`num_matri`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`cod_doce`);

--
-- Indexes for table `uc`
--
ALTER TABLE `uc`
  ADD PRIMARY KEY (`cod_disc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
