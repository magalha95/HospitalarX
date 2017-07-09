-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2017 at 06:40 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cirurgia`
--

CREATE TABLE `Cirurgia` (
  `codigo` int(11) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `Paciente_cpf` bigint(11) NOT NULL,
  `Leito_idLeito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Consulta`
--

CREATE TABLE `Consulta` (
  `idConsulta` int(11) NOT NULL,
  `data` date NOT NULL,
  `tipo` varchar(45) NOT NULL,
  `Consultorio_codConsultorio` int(11) NOT NULL,
  `Medico_registro` int(11) NOT NULL,
  `Paciente_cpf` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Consultorio`
--

CREATE TABLE `Consultorio` (
  `codConsultorio` int(11) NOT NULL,
  `telefone` int(11) DEFAULT NULL,
  `Medico_registro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Endereco`
--

CREATE TABLE `Endereco` (
  `idPessoa` int(11) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` bigint(11) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Endereco`
--

INSERT INTO `Endereco` (`idPessoa`, `rua`, `numero`, `bairro`, `cep`, `cidade`, `estado`, `pais`) VALUES
(1, 'SEFSDFSDFSDF', 2312312, 'sfsfsdf', 21321, 'dsvsdfsdfsdf', 'ac', 'fdsadfsdfsdf'),
(2, 'SEFSDFSDFSDF', 2312312, 'sfsfsdf', 21321, 'dsvsdfsdfsdf', 'ac', 'fdsadfsdfsdf'),
(3, 'SEFSDFSDFSDF', 2312312, 'sfsfsdf', 21321, 'dsvsdfsdfsdf', 'ac', 'fdsadfsdfsdf'),
(4, 'SEFSDFSDFSDF', 2312312, 'sfsfsdf', 21321, 'dsvsdfsdfsdf', 'ac', 'fdsadfsdfsdf'),
(5, 'SEFSDFSDFSDF', 2312312, 'sfsfsdf', 21321, 'dsvsdfsdfsdf', 'ac', 'fdsadfsdfsdf'),
(6, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(7, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(8, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(9, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(10, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(11, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(12, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(13, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(14, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(15, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(16, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(17, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(18, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(19, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(20, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(21, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(22, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(23, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(24, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(25, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(26, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(27, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(28, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(29, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(30, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(31, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(32, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(33, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(34, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(35, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(36, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(37, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(38, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(39, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(40, 'safcasfasfa', 123123, 'sadcasdfadfasfd', 12321, 'safasfa', 'al', 'asfafcasf'),
(41, 'JoÃ£o Alfenes da Silva', 35, 'Guarda Mor', 32604, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(42, 'JoÃ£o Alfenes da Silva', 35, 'Guarda Mor', 32604, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(43, 'JoÃ£o Alfenes da Silva', 35, 'Guarda Mor', 32604, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(44, 'JoÃ£o Alfenes da Silva', 35, 'Guarda Mor', 32604, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(45, '12312312', 2147483647, '1231231', 12312, '12312312', 'am', '21312312'),
(46, '0000000000000', 0, '00000000000000000000000000000', 0, '000000000000', 'ap', '2131231');

-- --------------------------------------------------------

--
-- Table structure for table `Enfermeiro`
--

CREATE TABLE `Enfermeiro` (
  `registro` int(11) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date DEFAULT NULL,
  `horasPlantao` varchar(45) NOT NULL,
  `Endereco_idPessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Enfermeiro_has_Cirurgia`
--

CREATE TABLE `Enfermeiro_has_Cirurgia` (
  `id` int(11) NOT NULL,
  `Enfermeiro_registro` int(11) NOT NULL,
  `Cirurgia_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Leito`
--

CREATE TABLE `Leito` (
  `idLeito` int(11) NOT NULL,
  `tipo` enum('uti','quarto','cirurgico') DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `objetos` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Medico`
--

CREATE TABLE `Medico` (
  `registro` int(11) NOT NULL,
  `cpf` bigint(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `dataNasc` date DEFAULT NULL,
  `Endereco_idPessoa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Medico`
--

INSERT INTO `Medico` (`registro`, `cpf`, `nome`, `dataNasc`, `Endereco_idPessoa`) VALUES
(0, 0, '00000000000', '0000-00-00', 46),
(1020500, 123123, 'BOot', '0000-00-00', 45),
(1408199, 119026, 'Thiago', '1995-08-14', 43);

-- --------------------------------------------------------

--
-- Table structure for table `Medico_has_Cirurgia`
--

CREATE TABLE `Medico_has_Cirurgia` (
  `id` int(11) NOT NULL,
  `Medico_registro` int(11) NOT NULL,
  `Cirurgia_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Paciente`
--

CREATE TABLE `Paciente` (
  `cpf` bigint(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date DEFAULT NULL,
  `Endereco_idPessoa1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cirurgia`
--
ALTER TABLE `Cirurgia`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_Cirurgia_Paciente1_idx` (`Paciente_cpf`),
  ADD KEY `fk_Cirurgia_Leito1_idx` (`Leito_idLeito`);

--
-- Indexes for table `Consulta`
--
ALTER TABLE `Consulta`
  ADD PRIMARY KEY (`idConsulta`),
  ADD KEY `fk_Consulta_Consultorio1_idx` (`Consultorio_codConsultorio`),
  ADD KEY `fk_Consulta_Medico1_idx` (`Medico_registro`),
  ADD KEY `fk_Consulta_Paciente1_idx` (`Paciente_cpf`);

--
-- Indexes for table `Consultorio`
--
ALTER TABLE `Consultorio`
  ADD PRIMARY KEY (`codConsultorio`),
  ADD KEY `fk_Consultorio_Medico1_idx` (`Medico_registro`);

--
-- Indexes for table `Endereco`
--
ALTER TABLE `Endereco`
  ADD PRIMARY KEY (`idPessoa`);

--
-- Indexes for table `Enfermeiro`
--
ALTER TABLE `Enfermeiro`
  ADD PRIMARY KEY (`registro`),
  ADD UNIQUE KEY `registro_UNIQUE` (`registro`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD KEY `fk_Enfermeiro_Endereco1_idx` (`Endereco_idPessoa`);

--
-- Indexes for table `Enfermeiro_has_Cirurgia`
--
ALTER TABLE `Enfermeiro_has_Cirurgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Enfermeiro_has_Cirurgia_Cirurgia1_idx` (`Cirurgia_codigo`),
  ADD KEY `fk_Enfermeiro_has_Cirurgia_Enfermeiro1_idx` (`Enfermeiro_registro`);

--
-- Indexes for table `Leito`
--
ALTER TABLE `Leito`
  ADD PRIMARY KEY (`idLeito`);

--
-- Indexes for table `Medico`
--
ALTER TABLE `Medico`
  ADD PRIMARY KEY (`registro`),
  ADD KEY `fk_Medico_Endereco1_idx` (`Endereco_idPessoa`);

--
-- Indexes for table `Medico_has_Cirurgia`
--
ALTER TABLE `Medico_has_Cirurgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Medico_has_Cirurgia_Cirurgia_idx` (`Cirurgia_codigo`),
  ADD KEY `fk_Medico_has_Cirurgia_Medico_idx` (`Medico_registro`);

--
-- Indexes for table `Paciente`
--
ALTER TABLE `Paciente`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD KEY `fk_Paciente_Endereco1_idx` (`Endereco_idPessoa1`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Consulta`
--
ALTER TABLE `Consulta`
  MODIFY `idConsulta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Endereco`
--
ALTER TABLE `Endereco`
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `Enfermeiro_has_Cirurgia`
--
ALTER TABLE `Enfermeiro_has_Cirurgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Medico_has_Cirurgia`
--
ALTER TABLE `Medico_has_Cirurgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Cirurgia`
--
ALTER TABLE `Cirurgia`
  ADD CONSTRAINT `fk_Cirurgia_Leito1` FOREIGN KEY (`Leito_idLeito`) REFERENCES `Leito` (`idLeito`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cirurgia_Paciente1` FOREIGN KEY (`Paciente_cpf`) REFERENCES `Paciente` (`cpf`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Consulta`
--
ALTER TABLE `Consulta`
  ADD CONSTRAINT `fk_Consulta_Consultorio1` FOREIGN KEY (`Consultorio_codConsultorio`) REFERENCES `Consultorio` (`codConsultorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Consulta_Medico1` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Consulta_Paciente1` FOREIGN KEY (`Paciente_cpf`) REFERENCES `Paciente` (`cpf`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Consultorio`
--
ALTER TABLE `Consultorio`
  ADD CONSTRAINT `fk_Consultorio_Medico1` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Enfermeiro`
--
ALTER TABLE `Enfermeiro`
  ADD CONSTRAINT `fk_Enfermeiro_Endereco1` FOREIGN KEY (`Endereco_idPessoa`) REFERENCES `Endereco` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Enfermeiro_has_Cirurgia`
--
ALTER TABLE `Enfermeiro_has_Cirurgia`
  ADD CONSTRAINT `fk_Enfermeiro_has_Cirurgia_Cirurgia1` FOREIGN KEY (`Cirurgia_codigo`) REFERENCES `Cirurgia` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Enfermeiro_has_Cirurgia_Enfermeiro1` FOREIGN KEY (`Enfermeiro_registro`) REFERENCES `Enfermeiro` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Medico`
--
ALTER TABLE `Medico`
  ADD CONSTRAINT `fk_Medico_Endereco1` FOREIGN KEY (`Endereco_idPessoa`) REFERENCES `Endereco` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Medico_has_Cirurgia`
--
ALTER TABLE `Medico_has_Cirurgia`
  ADD CONSTRAINT `fk_Medico_has_Cirurgia_Cirurgia` FOREIGN KEY (`Cirurgia_codigo`) REFERENCES `Cirurgia` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Medico_has_Cirurgia_Medico` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Paciente`
--
ALTER TABLE `Paciente`
  ADD CONSTRAINT `fk_Paciente_Endereco1` FOREIGN KEY (`Endereco_idPessoa1`) REFERENCES `Endereco` (`idPessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
