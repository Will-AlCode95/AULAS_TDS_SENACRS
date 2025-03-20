-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 04:20 AM
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
-- Database: `school_tec`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `num_matri` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nasci` date NOT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`num_matri`, `nome`, `data_nasci`, `rua`, `cep`, `bairro`, `cidade`, `curso_id`) VALUES
(10001, 'Maria Silva', '2000-05-15', 'Rua das Flores', '12345-678', 'Centro', 'São Paulo', 1),
(10002, 'João Santos', '2001-07-22', 'Av. Principal', '23456-789', 'Jardim', 'Rio de Janeiro', 2),
(10003, 'Ana Oliveira', '1999-03-10', 'Rua dos Pinheiros', '34567-890', 'Pinheiros', 'São Paulo', 3),
(10004, 'Pedro Costa', '2002-01-30', 'Rua das Palmeiras', '45678-901', 'Tijuca', 'Rio de Janeiro', 4),
(10005, 'Juliana Lima', '2001-11-18', 'Av. Paulista', '56789-012', 'Bela Vista', 'São Paulo', 5);

-- --------------------------------------------------------

--
-- Table structure for table `aluno_disciplina`
--

CREATE TABLE `aluno_disciplina` (
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `periodo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluno_disciplina`
--

INSERT INTO `aluno_disciplina` (`aluno_id`, `disciplina_id`, `periodo`) VALUES
(10001, 201, '2023.1'),
(10002, 202, '2023.1'),
(10003, 203, '2023.1'),
(10004, 204, '2023.1'),
(10005, 205, '2023.1');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `turno` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `turno`, `area`) VALUES
(1, 'Técnico em Informática', 'Matutino', 'Tecnologia'),
(2, 'Técnico em Administração', 'Vespertino', 'Negócios'),
(3, 'Técnico em Enfermagem', 'Noturno', 'Saúde'),
(4, 'Técnico em Eletrônica', 'Matutino', 'Engenharia'),
(5, 'Técnico em Logística', 'Noturno', 'Negócios');

-- --------------------------------------------------------

--
-- Table structure for table `dependentes`
--

CREATE TABLE `dependentes` (
  `cod_depe` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `grau_parentesco` varchar(50) DEFAULT NULL,
  `docente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dependentes`
--

INSERT INTO `dependentes` (`cod_depe`, `nome`, `data_nasc`, `grau_parentesco`, `docente_id`) VALUES
(701, 'Sofia Ferreira', '2015-04-18', 'Filha', 501),
(702, 'Miguel Alves', '2017-08-25', 'Filho', 502),
(703, 'Laura Pereira', '2014-11-12', 'Filha', 503),
(704, 'Mateus Mendes', '2016-02-28', 'Filho', 504),
(705, 'Isabela Barbosa', '2018-07-15', 'Filha', 505);

-- --------------------------------------------------------

--
-- Table structure for table `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disc` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplina`
--

INSERT INTO `disciplina` (`cod_disc`, `descricao`) VALUES
(201, 'Programação Orientada a Objetos'),
(202, 'Gestão Empresarial'),
(203, 'Anatomia e Fisiologia'),
(204, 'Circuitos Eletrônicos'),
(205, 'Gestão de Estoque');

-- --------------------------------------------------------

--
-- Table structure for table `docente`
--

CREATE TABLE `docente` (
  `cod_doce` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docente`
--

INSERT INTO `docente` (`cod_doce`, `nome`, `endereco`) VALUES
(501, 'Carlos Ferreira', 'Av. Brasil, 1500, Apto 302, São Paulo'),
(502, 'Mariana Alves', 'Rua das Acácias, 45, Rio de Janeiro'),
(503, 'Roberto Pereira', 'Av. Amazonas, 721, Belo Horizonte'),
(504, 'Patrícia Mendes', 'Rua Ipiranga, 890, São Paulo'),
(505, 'Lucas Barbosa', 'Av. Atlântica, 2300, Rio de Janeiro');

-- --------------------------------------------------------

--
-- Table structure for table `docente_disciplina`
--

CREATE TABLE `docente_disciplina` (
  `docente_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docente_disciplina`
--

INSERT INTO `docente_disciplina` (`docente_id`, `disciplina_id`) VALUES
(501, 201),
(502, 202),
(503, 203),
(504, 204),
(505, 205);

-- --------------------------------------------------------

--
-- Table structure for table `matricula`
--

CREATE TABLE `matricula` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `data_matri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matricula`
--

INSERT INTO `matricula` (`id`, `aluno_id`, `curso_id`, `data_matri`) VALUES
(1, 10001, 1, '2023-02-10'),
(2, 10002, 2, '2023-02-12'),
(3, 10003, 3, '2023-02-15'),
(4, 10004, 4, '2023-02-18'),
(5, 10005, 5, '2023-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `cod_sala` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `localizacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`cod_sala`, `nome`, `localizacao`) VALUES
(101, 'Laboratório de Informática', 'Bloco A - Térreo'),
(102, 'Sala de Administração', 'Bloco B - 1º andar'),
(103, 'Laboratório de Enfermagem', 'Bloco C - Térreo'),
(104, 'Laboratório de Eletrônica', 'Bloco D - 2º andar'),
(105, 'Sala de Logística', 'Bloco B - 2º andar');

-- --------------------------------------------------------

--
-- Table structure for table `sala_disciplina`
--

CREATE TABLE `sala_disciplina` (
  `id` int(11) NOT NULL,
  `sala_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `horario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sala_disciplina`
--

INSERT INTO `sala_disciplina` (`id`, `sala_id`, `disciplina_id`, `horario`) VALUES
(1, 101, 201, 'Seg 08:00-10:00'),
(2, 102, 202, 'Ter 14:00-16:00'),
(3, 103, 203, 'Qua 19:00-21:00'),
(4, 104, 204, 'Qui 08:00-10:00'),
(5, 105, 205, 'Sex 19:00-21:00');

-- --------------------------------------------------------

--
-- Table structure for table `telefone_aluno`
--

CREATE TABLE `telefone_aluno` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telefone_aluno`
--

INSERT INTO `telefone_aluno` (`id`, `aluno_id`, `telefone`) VALUES
(1, 10001, '(11) 91234-5678'),
(2, 10002, '(21) 92345-6789'),
(3, 10003, '(11) 93456-7890'),
(4, 10004, '(21) 94567-8901'),
(5, 10005, '(11) 95678-9012');

-- --------------------------------------------------------

--
-- Table structure for table `telefone_docente`
--

CREATE TABLE `telefone_docente` (
  `id` int(11) NOT NULL,
  `docente_id` int(11) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telefone_docente`
--

INSERT INTO `telefone_docente` (`id`, `docente_id`, `telefone`) VALUES
(1, 501, '(11) 98765-4321'),
(2, 502, '(21) 97654-3210'),
(3, 503, '(31) 96543-2109'),
(4, 504, '(11) 95432-1098'),
(5, 505, '(21) 94321-0987');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`num_matri`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD PRIMARY KEY (`aluno_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependentes`
--
ALTER TABLE `dependentes`
  ADD PRIMARY KEY (`cod_depe`),
  ADD KEY `docente_id` (`docente_id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`cod_disc`);

--
-- Indexes for table `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`cod_doce`);

--
-- Indexes for table `docente_disciplina`
--
ALTER TABLE `docente_disciplina`
  ADD PRIMARY KEY (`docente_id`,`disciplina_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`cod_sala`);

--
-- Indexes for table `sala_disciplina`
--
ALTER TABLE `sala_disciplina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sala_id` (`sala_id`),
  ADD KEY `disciplina_id` (`disciplina_id`);

--
-- Indexes for table `telefone_aluno`
--
ALTER TABLE `telefone_aluno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`);

--
-- Indexes for table `telefone_docente`
--
ALTER TABLE `telefone_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_id` (`docente_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sala_disciplina`
--
ALTER TABLE `sala_disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `telefone_aluno`
--
ALTER TABLE `telefone_aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `telefone_docente`
--
ALTER TABLE `telefone_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Constraints for table `aluno_disciplina`
--
ALTER TABLE `aluno_disciplina`
  ADD CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`num_matri`),
  ADD CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`cod_disc`);

--
-- Constraints for table `dependentes`
--
ALTER TABLE `dependentes`
  ADD CONSTRAINT `dependentes_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`cod_doce`);

--
-- Constraints for table `docente_disciplina`
--
ALTER TABLE `docente_disciplina`
  ADD CONSTRAINT `docente_disciplina_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`cod_doce`),
  ADD CONSTRAINT `docente_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`cod_disc`);

--
-- Constraints for table `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`num_matri`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Constraints for table `sala_disciplina`
--
ALTER TABLE `sala_disciplina`
  ADD CONSTRAINT `sala_disciplina_ibfk_1` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`cod_sala`),
  ADD CONSTRAINT `sala_disciplina_ibfk_2` FOREIGN KEY (`disciplina_id`) REFERENCES `disciplina` (`cod_disc`);

--
-- Constraints for table `telefone_aluno`
--
ALTER TABLE `telefone_aluno`
  ADD CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `aluno` (`num_matri`);

--
-- Constraints for table `telefone_docente`
--
ALTER TABLE `telefone_docente`
  ADD CONSTRAINT `telefone_docente_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`cod_doce`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
