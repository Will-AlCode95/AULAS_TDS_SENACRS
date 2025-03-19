-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 04:06 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `aluno_disciplina`
--

CREATE TABLE `aluno_disciplina` (
  `aluno_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL,
  `periodo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `disciplina`
--

CREATE TABLE `disciplina` (
  `cod_disc` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docente`
--

CREATE TABLE `docente` (
  `cod_doce` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `endereco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docente_disciplina`
--

CREATE TABLE `docente_disciplina` (
  `docente_id` int(11) NOT NULL,
  `disciplina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `cod_sala` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `localizacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `telefone_aluno`
--

CREATE TABLE `telefone_aluno` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) NOT NULL,
  `telefone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sala_disciplina`
--
ALTER TABLE `sala_disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefone_aluno`
--
ALTER TABLE `telefone_aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telefone_docente`
--
ALTER TABLE `telefone_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
