-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 04:07 PM
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
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `MATRICULA` varchar(8) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `NOME_COMPLETO` varchar(50) NOT NULL,
  `FONE` varchar(20) NOT NULL,
  `ENDERECO` varchar(100) NOT NULL,
  `SEXO` char(1) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`MATRICULA`, `NOME`, `NOME_COMPLETO`, `FONE`, `ENDERECO`, `SEXO`, `CPF`, `EMAIL`) VALUES
('1', 'Maria', '', '51556664', 'Caxias', 'f', '55555555', 'maria@gamil.com'),
('2', 'joao', '', '5945895', 'porto', 'f', '3445566', 'joao@gamil.com'),
('3', 'cleison', '', '548458459', 'zorro', 'm', '8787856', 'cleison@gamil.com');

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `ID_AUTOR` int(11) NOT NULL,
  `NOME_COMPLETO` varchar(50) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `SOBRENOME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`ID_AUTOR`, `NOME_COMPLETO`, `NOME`, `SOBRENOME`) VALUES
(1, 'Carlos Alberto', 'Carlos', 'Alberto'),
(2, 'Idalberto Chivalto', 'Idalberto', 'Chivalto'),
(3, 'Paulo Daniel', 'Paulo', 'Daniel');

-- --------------------------------------------------------

--
-- Table structure for table `editora`
--

CREATE TABLE `editora` (
  `ID_EDITORA` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `editora`
--

INSERT INTO `editora` (`ID_EDITORA`, `NOME`) VALUES
(1, 'Pearson'),
(2, 'Editora Campos'),
(3, 'Novatec');

-- --------------------------------------------------------

--
-- Table structure for table `emprestimo`
--

CREATE TABLE `emprestimo` (
  `ID_EMPRESTIMO` int(8) NOT NULL,
  `CODIGO_MATRICULA` varchar(8) NOT NULL,
  `CODIGO_LIVRO` int(11) NOT NULL,
  `DATA_RETIRADA` date NOT NULL,
  `DATA_DEVOLUCAO` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `emprestimo`
--

INSERT INTO `emprestimo` (`ID_EMPRESTIMO`, `CODIGO_MATRICULA`, `CODIGO_LIVRO`, `DATA_RETIRADA`, `DATA_DEVOLUCAO`) VALUES
(7, '1', 10, '2025-03-13', '2025-03-20'),
(8, '2', 11, '2025-03-13', '2025-03-21'),
(9, '3', 12, '2025-03-13', '2025-03-22');

-- --------------------------------------------------------

--
-- Table structure for table `genero`
--

CREATE TABLE `genero` (
  `ID_GENERO` int(11) NOT NULL,
  `NOME` varchar(30) NOT NULL,
  `SIGLA` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `genero`
--

INSERT INTO `genero` (`ID_GENERO`, `NOME`, `SIGLA`) VALUES
(1, 'informática', 'inf'),
(2, 'Administração', 'ADM'),
(3, 'direito', 'dir'),
(4, 'Matematica', 'mat'),
(5, 'Esportes', 'Esp');

-- --------------------------------------------------------

--
-- Table structure for table `livro`
--

CREATE TABLE `livro` (
  `ID_LIVRO` int(11) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `ANO` int(4) NOT NULL,
  `EDICAO` int(2) DEFAULT NULL,
  `CODIGO_AUTOR` int(11) NOT NULL,
  `CODIGO_GENERO` int(11) NOT NULL,
  `CODIGO_EDITORA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `livro`
--

INSERT INTO `livro` (`ID_LIVRO`, `NOME`, `ANO`, `EDICAO`, `CODIGO_AUTOR`, `CODIGO_GENERO`, `CODIGO_EDITORA`) VALUES
(10, 'Projeto de BD', 2024, 2, 1, 1, 1),
(11, 'Java', 2020, 4, 3, 1, 1),
(12, 'teoria da adiministração', 2019, 5, 3, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`MATRICULA`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`ID_AUTOR`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`ID_EDITORA`);

--
-- Indexes for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD PRIMARY KEY (`ID_EMPRESTIMO`),
  ADD KEY `CODIGO_MATRICULA` (`CODIGO_MATRICULA`),
  ADD KEY `CODIGO_LIVRO` (`CODIGO_LIVRO`);

--
-- Indexes for table `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`ID_GENERO`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`ID_LIVRO`),
  ADD KEY `CODIGO_AUTOR` (`CODIGO_AUTOR`),
  ADD KEY `CODIGO_GENERO` (`CODIGO_GENERO`),
  ADD KEY `CODIGO_EDITORA` (`CODIGO_EDITORA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `ID_AUTOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `ID_EDITORA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `emprestimo`
--
ALTER TABLE `emprestimo`
  MODIFY `ID_EMPRESTIMO` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genero`
--
ALTER TABLE `genero`
  MODIFY `ID_GENERO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `ID_LIVRO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emprestimo`
--
ALTER TABLE `emprestimo`
  ADD CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`CODIGO_MATRICULA`) REFERENCES `aluno` (`MATRICULA`),
  ADD CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`CODIGO_LIVRO`) REFERENCES `livro` (`ID_LIVRO`);

--
-- Constraints for table `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`CODIGO_AUTOR`) REFERENCES `autor` (`ID_AUTOR`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`CODIGO_GENERO`) REFERENCES `genero` (`ID_GENERO`),
  ADD CONSTRAINT `livro_ibfk_3` FOREIGN KEY (`CODIGO_EDITORA`) REFERENCES `editora` (`ID_EDITORA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
