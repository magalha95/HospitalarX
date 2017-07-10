-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 11, 2017 at 12:09 
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
  `Paciente_cpf` bigint(11) NOT NULL
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
(48, 'Rua Padre Machado', 258, 'Bela Vista', 36301, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(49, 'sadasdasda', 213213, 'sasadasd', 21732, 'ahbdasduiasdubas', 'mg', 'xasxdsadd'),
(50, 'sei la', 1212, 'hbasudasdu', 21312, 'safasfa', 'am', 'sdiciosdafoijsdi'),
(51, 'Av Leite de Castro', 123, 'Fabricas', 36301, 'SÃ£o JoÃ£o del Rei', 'mg', 'Brasil'),
(52, 'seila', 212332, 'jsadbjuasda', 21234, 'rtgyhujk', 'mg', 'bdasyudvyuasdyvusady'),
(53, 'usdfbusdfhb', 2121, 'uewfuiwefw', 21345, 'jsabsabacsacnjcsank', 'ma', 'Brasil'),
(54, 'sajbdubasdub', 21312, '', 21389, 'sajdbasdbj', 'pa', 'USA'),
(55, 'ksfdfhisfnh', 2147483647, 'ihafhioahi', 21389, 'weihfwehif', 'ac', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `Enfermeiro`
--

CREATE TABLE `Enfermeiro` (
  `registro` int(11) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `dataNasc` date DEFAULT NULL,
  `horasPlantao` time NOT NULL,
  `Endereco_idPessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Enfermeiro`
--

INSERT INTO `Enfermeiro` (`registro`, `cpf`, `nome`, `dataNasc`, `horasPlantao`, `Endereco_idPessoa`) VALUES
(7347328, 278361, 'Valney', '0000-00-00', '23:16:12', 54),
(8234234, 821744, 'Valney', '0000-00-00', '98:27:37', 55);

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
(1111111, 222222, 'ola', '0000-00-00', 49),
(1223133, 314431, 'MiQuerido', '1991-11-05', 51),
(1231231, 762378, 'Rodrigo', '0000-00-00', 50),
(1234567, 234567, 'Samuel', '0000-00-00', 53),
(3456789, 234567, 'Carlos Magno', '0000-00-00', 52),
(7777777, 108705, 'Italo MagalhÃ£es da Silva', '1995-02-01', 48);

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
  `Endereco_idPessoa1` int(11) NOT NULL,
  `Leito_idLeito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cirurgia`
--
ALTER TABLE `Cirurgia`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `fk_Cirurgia_Paciente1_idx` (`Paciente_cpf`);

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
  ADD KEY `fk_Paciente_Endereco1_idx` (`Endereco_idPessoa1`),
  ADD KEY `fk_Paciente_Leito1_idx` (`Leito_idLeito`);

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
  MODIFY `idPessoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
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
  ADD CONSTRAINT `fk_Cirurgia_Paciente1` FOREIGN KEY (`Paciente_cpf`) REFERENCES `Paciente` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Consulta`
--
ALTER TABLE `Consulta`
  ADD CONSTRAINT `fk_Consulta_Consultorio1` FOREIGN KEY (`Consultorio_codConsultorio`) REFERENCES `Consultorio` (`codConsultorio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Consulta_Medico1` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Consulta_Paciente1` FOREIGN KEY (`Paciente_cpf`) REFERENCES `Paciente` (`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Consultorio`
--
ALTER TABLE `Consultorio`
  ADD CONSTRAINT `fk_Consultorio_Medico1` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Enfermeiro`
--
ALTER TABLE `Enfermeiro`
  ADD CONSTRAINT `fk_Enfermeiro_Endereco1` FOREIGN KEY (`Endereco_idPessoa`) REFERENCES `Endereco` (`idPessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Enfermeiro_has_Cirurgia`
--
ALTER TABLE `Enfermeiro_has_Cirurgia`
  ADD CONSTRAINT `fk_Enfermeiro_has_Cirurgia_Cirurgia1` FOREIGN KEY (`Cirurgia_codigo`) REFERENCES `Cirurgia` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Enfermeiro_has_Cirurgia_Enfermeiro1` FOREIGN KEY (`Enfermeiro_registro`) REFERENCES `Enfermeiro` (`registro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Medico`
--
ALTER TABLE `Medico`
  ADD CONSTRAINT `fk_Medico_Endereco1` FOREIGN KEY (`Endereco_idPessoa`) REFERENCES `Endereco` (`idPessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Medico_has_Cirurgia`
--
ALTER TABLE `Medico_has_Cirurgia`
  ADD CONSTRAINT `fk_Medico_has_Cirurgia_Cirurgia` FOREIGN KEY (`Cirurgia_codigo`) REFERENCES `Cirurgia` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Medico_has_Cirurgia_Medico` FOREIGN KEY (`Medico_registro`) REFERENCES `Medico` (`registro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Paciente`
--
ALTER TABLE `Paciente`
  ADD CONSTRAINT `fk_Leito_idLeito` FOREIGN KEY (`Leito_idLeito`) REFERENCES `Leito` (`idLeito`),
  ADD CONSTRAINT `fk_Paciente_Endereco1` FOREIGN KEY (`Endereco_idPessoa1`) REFERENCES `Endereco` (`idPessoa`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
