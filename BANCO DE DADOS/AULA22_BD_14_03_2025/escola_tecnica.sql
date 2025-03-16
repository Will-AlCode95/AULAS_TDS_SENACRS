-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2025 at 12:56 AM
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
-- Database: `escola_tecnica`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `num_matri` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_nasci` date NOT NULL,
  `genero` char(1) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `curso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`num_matri`, `nome`, `data_nasci`, `genero`, `rua`, `cep`, `bairro`, `cidade`, `curso_id`) VALUES
(10001, 'Rafael Mendes', '2000-06-15', 'M', 'Rua dos Estudantes, 100', '01234-567', 'Centro', 'São Paulo', 1),
(10002, 'Juliana Costa', '2001-04-22', 'F', 'Av. das Universidades, 200', '02345-678', 'Pinheiros', 'São Paulo', 2),
(10003, 'Bruno Almeida', '1999-11-10', 'M', 'Rua Doutor Silva, 300', '03456-789', 'Saúde', 'São Paulo', 3),
(10004, 'Carolina Souza', '2002-02-28', 'F', 'Av. Paulista, 400', '04567-890', 'Bela Vista', 'São Paulo', 4),
(10005, 'Daniel Ferreira', '2000-09-17', 'M', 'Rua da Tecnologia, 500', '05678-901', 'Vila Mariana', 'São Paulo', 5);

-- --------------------------------------------------------

--
-- Table structure for table `aluno_disciplina`
--

CREATE TABLE `aluno_disciplina` (
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aluno_disciplina`
--

INSERT INTO `aluno_disciplina` (`aluno_id`, `disciplina_id`) VALUES
(10001, 2001),
(10001, 2005),
(10002, 2002),
(10003, 2003),
(10004, 2004);

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
(1, 'Engenharia de Software', 'Manhã', 'Tecnologia'),
(2, 'Administração', 'Noite', 'Negócios'),
(3, 'Medicina', 'Integral', 'Saúde'),
(4, 'Direito', 'Noite', 'Humanas'),
(5, 'Ciência da Computação', 'Tarde', 'Tecnologia');

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
(501, 'Miguel Silva', '2015-03-12', 'Filho', 1001),
(502, 'Beatriz Oliveira', '2017-07-25', 'Filha', 1002),
(503, 'Lucas Santos', '2010-11-30', 'Filho', 1003),
(504, 'Sophia Pereira', '2016-05-18', 'Filha', 1004),
(505, 'Pedro Lima', '2014-09-22', 'Filho', 1005);

-- --------------------------------------------------------

--
-- Table structure for table `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disc` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `sala_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplina`
--

INSERT INTO `disciplina` (`cod_disc`, `descricao`, `sala_id`) VALUES
(2001, 'Programação Orientada a Objetos', 101),
(2002, 'Gestão Empresarial', 102),
(2003, 'Anatomia Humana', 104),
(2004, 'Direito Constitucional', 103),
(2005, 'Estrutura de Dados', 105);

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
(1001, 'Ana Silva', 'Rua das Flores, 123 - Centro'),
(1002, 'Carlos Oliveira', 'Av. Principal, 456 - Jardins'),
(1003, 'Maria Santos', 'Rua do Comércio, 789 - Vila Nova'),
(1004, 'João Pereira', 'Av. Brasil, 321 - Centro'),
(1005, 'Fernanda Lima', 'Rua das Palmeiras, 654 - Parque Verde');

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
(1001, 2001),
(1002, 2002),
(1003, 2003),
(1004, 2004),
(1005, 2005);

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
(1, 10001, 1, '2022-02-10'),
(2, 10002, 2, '2022-02-11'),
(3, 10003, 3, '2022-02-09'),
(4, 10004, 4, '2022-02-12'),
(5, 10005, 5, '2022-02-08');

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
(102, 'Sala de Aula 1', 'Bloco B - 1º Andar'),
(103, 'Auditório', 'Bloco C - Térreo'),
(104, 'Laboratório de Anatomia', 'Bloco D - 2º Andar'),
(105, 'Sala de Estudos', 'Biblioteca - 3º Andar');

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
(1, 1001, '(11) 98765-4321'),
(2, 1001, '(11) 3456-7890'),
(3, 1002, '(11) 97654-3210'),
(4, 1003, '(11) 91234-5678'),
(5, 1004, '(11) 99876-5432');

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
  ADD PRIMARY KEY (`cod_disc`),
  ADD UNIQUE KEY `sala_id` (`sala_id`);

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
  ADD UNIQUE KEY `aluno_id` (`aluno_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`cod_sala`);

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
-- Constraints for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`cod_sala`);

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
-- Constraints for table `telefone_docente`
--
ALTER TABLE `telefone_docente`
  ADD CONSTRAINT `telefone_docente_ibfk_1` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`cod_doce`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
