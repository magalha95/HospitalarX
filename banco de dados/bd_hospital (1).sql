-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2017 at 09:55 
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
-- Table structure for table `Administrador`
--

CREATE TABLE `Administrador` (
  `idAdministrador` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Cirugia`
--

CREATE TABLE `Cirugia` (
  `codigoCirugia` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Cirugia_has_Medico`
--

CREATE TABLE `Cirugia_has_Medico` (
  `Cirugia_codigoCirugia` int(11) NOT NULL,
  `Medico_registroMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ConselhoPresidente`
--

CREATE TABLE `ConselhoPresidente` (
  `idConselhoPresidente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Consultorio`
--

CREATE TABLE `Consultorio` (
  `codigoConsultorio` int(11) NOT NULL,
  `Administrador_idAdministrador` int(11) NOT NULL,
  `Medico_registroMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Enfermeiro`
--

CREATE TABLE `Enfermeiro` (
  `registroEnfermeiro` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `cpf` bigint(11) NOT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `Medico_registroMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Enfermeiro_has_Relatorio`
--

CREATE TABLE `Enfermeiro_has_Relatorio` (
  `Enfermeiro_registroEnfermeiro` int(11) NOT NULL,
  `Relatorio_codigoRelatorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeitoCirugico`
--

CREATE TABLE `LeitoCirugico` (
  `codigoLeitoCirugico` varchar(45) NOT NULL,
  `numeroMedicos` int(11) DEFAULT NULL,
  `numeroEnfermeiros` int(11) DEFAULT NULL,
  `objetos` varchar(245) DEFAULT NULL,
  `Administrador_idAdministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeitoQuarto`
--

CREATE TABLE `LeitoQuarto` (
  `codigoLeitoQuarto` varchar(45) NOT NULL,
  `preco` float DEFAULT NULL,
  `numeroPacientes` int(11) DEFAULT NULL,
  `objetos` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `LeitoUTI`
--

CREATE TABLE `LeitoUTI` (
  `codigoLeitoUTI` varchar(45) NOT NULL,
  `numeroMedicos` int(11) DEFAULT NULL,
  `numeroEnfermeiros` int(11) DEFAULT NULL,
  `objetos` varchar(245) DEFAULT NULL,
  `Administrador_idAdministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Medico`
--

CREATE TABLE `Medico` (
  `registroMedico` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` bigint(11) NOT NULL,
  `dataNascimento` date DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Paciente`
--

CREATE TABLE `Paciente` (
  `cpfPaciente` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `Cirugia_codigoCirugia` int(11) NOT NULL,
  `Sala_idSala` int(11) NOT NULL,
  `Sala_LeitoUTI_codigoLeitoUTI` varchar(45) NOT NULL,
  `Sala_LeitoQuarto_codigoLeitoQuarto` varchar(45) NOT NULL,
  `Sala_LeitoCirugico_codigoLeitoCirugico` varchar(45) NOT NULL,
  `Sala_Consultorio_codigoConsultorio` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Paciente_has_Relatorio`
--

CREATE TABLE `Paciente_has_Relatorio` (
  `Paciente_cpfPaciente` int(11) NOT NULL,
  `Relatorio_codigoRelatorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Relatorio`
--

CREATE TABLE `Relatorio` (
  `codigoRelatorio` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) NOT NULL,
  `ConselhoPresidente_idConselhoPresidente` int(11) NOT NULL,
  `Administrador_idAdministrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Relatorio_has_Medico`
--

CREATE TABLE `Relatorio_has_Medico` (
  `Relatorio_codigoRelatorio` int(11) NOT NULL,
  `Medico_registroMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Sala`
--

CREATE TABLE `Sala` (
  `idSala` int(11) NOT NULL,
  `LeitoUTI_codigoLeitoUTI` varchar(45) NOT NULL,
  `LeitoQuarto_codigoLeitoQuarto` varchar(45) NOT NULL,
  `LeitoCirugico_codigoLeitoCirugico` varchar(45) NOT NULL,
  `Paciente_cpfPaciente` int(11) NOT NULL,
  `Consultorio_codigoConsultorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Sala_has_Medico`
--

CREATE TABLE `Sala_has_Medico` (
  `Sala_idSala` int(11) NOT NULL,
  `Medico_registroMedico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indexes for table `Cirugia`
--
ALTER TABLE `Cirugia`
  ADD PRIMARY KEY (`codigoCirugia`);

--
-- Indexes for table `Cirugia_has_Medico`
--
ALTER TABLE `Cirugia_has_Medico`
  ADD PRIMARY KEY (`Cirugia_codigoCirugia`,`Medico_registroMedico`),
  ADD KEY `fk_Cirugia_has_Medico_Medico1_idx` (`Medico_registroMedico`),
  ADD KEY `fk_Cirugia_has_Medico_Cirugia1_idx` (`Cirugia_codigoCirugia`);

--
-- Indexes for table `ConselhoPresidente`
--
ALTER TABLE `ConselhoPresidente`
  ADD PRIMARY KEY (`idConselhoPresidente`);

--
-- Indexes for table `Consultorio`
--
ALTER TABLE `Consultorio`
  ADD PRIMARY KEY (`codigoConsultorio`),
  ADD KEY `fk_Consultorio_Administrador1_idx` (`Administrador_idAdministrador`),
  ADD KEY `Medico_registroMedico` (`Medico_registroMedico`);

--
-- Indexes for table `Enfermeiro`
--
ALTER TABLE `Enfermeiro`
  ADD PRIMARY KEY (`registroEnfermeiro`,`cpf`),
  ADD UNIQUE KEY `registroEnfermeiro_UNIQUE` (`registroEnfermeiro`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD KEY `fk_Enfermeiro_Medico1_idx` (`Medico_registroMedico`);

--
-- Indexes for table `Enfermeiro_has_Relatorio`
--
ALTER TABLE `Enfermeiro_has_Relatorio`
  ADD PRIMARY KEY (`Enfermeiro_registroEnfermeiro`,`Relatorio_codigoRelatorio`),
  ADD KEY `fk_Enfermeiro_has_Relatorio_Relatorio1_idx` (`Relatorio_codigoRelatorio`),
  ADD KEY `fk_Enfermeiro_has_Relatorio_Enfermeiro1_idx` (`Enfermeiro_registroEnfermeiro`);

--
-- Indexes for table `LeitoCirugico`
--
ALTER TABLE `LeitoCirugico`
  ADD PRIMARY KEY (`codigoLeitoCirugico`),
  ADD KEY `fk_LeitoCirugico_Administrador1_idx` (`Administrador_idAdministrador`);

--
-- Indexes for table `LeitoQuarto`
--
ALTER TABLE `LeitoQuarto`
  ADD PRIMARY KEY (`codigoLeitoQuarto`);

--
-- Indexes for table `LeitoUTI`
--
ALTER TABLE `LeitoUTI`
  ADD PRIMARY KEY (`codigoLeitoUTI`),
  ADD KEY `fk_LeitoUTI_Administrador1_idx` (`Administrador_idAdministrador`);

--
-- Indexes for table `Medico`
--
ALTER TABLE `Medico`
  ADD PRIMARY KEY (`registroMedico`,`cpf`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `registroMedico_UNIQUE` (`registroMedico`);

--
-- Indexes for table `Paciente`
--
ALTER TABLE `Paciente`
  ADD PRIMARY KEY (`cpfPaciente`),
  ADD UNIQUE KEY `cpfPaciente_UNIQUE` (`cpfPaciente`),
  ADD UNIQUE KEY `rg_UNIQUE` (`rg`),
  ADD KEY `fk_Paciente_Cirugia1_idx` (`Cirugia_codigoCirugia`),
  ADD KEY `Cirugia_codigoCirugia` (`Cirugia_codigoCirugia`),
  ADD KEY `Sala_idSala` (`Sala_idSala`),
  ADD KEY `Sala_LeitoUTI_codigoLeitoUTI` (`Sala_LeitoUTI_codigoLeitoUTI`),
  ADD KEY `Sala_LeitoQuarto_codigoLeitoQuarto` (`Sala_LeitoQuarto_codigoLeitoQuarto`),
  ADD KEY `Sala_LeitoCirugico_codigoLeitoCirugico` (`Sala_LeitoCirugico_codigoLeitoCirugico`),
  ADD KEY `Sala_Consultorio_codigoConsultorio` (`Sala_Consultorio_codigoConsultorio`);

--
-- Indexes for table `Paciente_has_Relatorio`
--
ALTER TABLE `Paciente_has_Relatorio`
  ADD PRIMARY KEY (`Paciente_cpfPaciente`,`Relatorio_codigoRelatorio`),
  ADD KEY `fk_Paciente_has_Relatorio_Relatorio1_idx` (`Relatorio_codigoRelatorio`),
  ADD KEY `fk_Paciente_has_Relatorio_Paciente1_idx` (`Paciente_cpfPaciente`);

--
-- Indexes for table `Relatorio`
--
ALTER TABLE `Relatorio`
  ADD PRIMARY KEY (`codigoRelatorio`,`ConselhoPresidente_idConselhoPresidente`,`Administrador_idAdministrador`),
  ADD KEY `fk_Relatorio_ConselhoPresidente_idx` (`ConselhoPresidente_idConselhoPresidente`),
  ADD KEY `fk_Relatorio_Administrador1_idx` (`Administrador_idAdministrador`);

--
-- Indexes for table `Relatorio_has_Medico`
--
ALTER TABLE `Relatorio_has_Medico`
  ADD PRIMARY KEY (`Relatorio_codigoRelatorio`,`Medico_registroMedico`),
  ADD KEY `fk_Relatorio_has_Medico_Medico1_idx` (`Medico_registroMedico`),
  ADD KEY `fk_Relatorio_has_Medico_Relatorio1_idx` (`Relatorio_codigoRelatorio`);

--
-- Indexes for table `Sala`
--
ALTER TABLE `Sala`
  ADD PRIMARY KEY (`idSala`),
  ADD KEY `fk_Sala_LeitoUTI1_idx` (`LeitoUTI_codigoLeitoUTI`),
  ADD KEY `fk_Sala_LeitoQuarto1_idx` (`LeitoQuarto_codigoLeitoQuarto`),
  ADD KEY `fk_Sala_LeitoCirugico1_idx` (`LeitoCirugico_codigoLeitoCirugico`),
  ADD KEY `fk_Sala_Paciente1_idx` (`Paciente_cpfPaciente`),
  ADD KEY `fk_Sala_Consultorio1_idx` (`Consultorio_codigoConsultorio`),
  ADD KEY `LeitoUTI_codigoLeitoUTI` (`LeitoUTI_codigoLeitoUTI`);

--
-- Indexes for table `Sala_has_Medico`
--
ALTER TABLE `Sala_has_Medico`
  ADD PRIMARY KEY (`Sala_idSala`,`Medico_registroMedico`),
  ADD KEY `fk_Sala_has_Medico_Medico1_idx` (`Medico_registroMedico`),
  ADD KEY `fk_Sala_has_Medico_Sala1_idx` (`Sala_idSala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Administrador`
--
ALTER TABLE `Administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConselhoPresidente`
--
ALTER TABLE `ConselhoPresidente`
  MODIFY `idConselhoPresidente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Relatorio`
--
ALTER TABLE `Relatorio`
  MODIFY `codigoRelatorio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Sala`
--
ALTER TABLE `Sala`
  MODIFY `idSala` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Cirugia_has_Medico`
--
ALTER TABLE `Cirugia_has_Medico`
  ADD CONSTRAINT `fk_Cirugia_has_Medico_Cirugia1` FOREIGN KEY (`Cirugia_codigoCirugia`) REFERENCES `Cirugia` (`codigoCirugia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Cirugia_has_Medico_Medico1` FOREIGN KEY (`Medico_registroMedico`) REFERENCES `Medico` (`registroMedico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Consultorio`
--
ALTER TABLE `Consultorio`
  ADD CONSTRAINT `fk_Consultorio_Administrador1` FOREIGN KEY (`Administrador_idAdministrador`) REFERENCES `Administrador` (`idAdministrador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Consultorio_Medico1` FOREIGN KEY (`Medico_registroMedico`) REFERENCES `Medico` (`registroMedico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Enfermeiro`
--
ALTER TABLE `Enfermeiro`
  ADD CONSTRAINT `fk_Enfermeiro_Medico1` FOREIGN KEY (`Medico_registroMedico`) REFERENCES `Medico` (`registroMedico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Enfermeiro_has_Relatorio`
--
ALTER TABLE `Enfermeiro_has_Relatorio`
  ADD CONSTRAINT `fk_Enfermeiro_has_Relatorio_Enfermeiro1` FOREIGN KEY (`Enfermeiro_registroEnfermeiro`) REFERENCES `Enfermeiro` (`registroEnfermeiro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Enfermeiro_has_Relatorio_Relatorio1` FOREIGN KEY (`Relatorio_codigoRelatorio`) REFERENCES `Relatorio` (`codigoRelatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `LeitoCirugico`
--
ALTER TABLE `LeitoCirugico`
  ADD CONSTRAINT `fk_LeitoCirugico_Administrador1` FOREIGN KEY (`Administrador_idAdministrador`) REFERENCES `Administrador` (`idAdministrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `LeitoUTI`
--
ALTER TABLE `LeitoUTI`
  ADD CONSTRAINT `fk_LeitoUTI_Administrador1` FOREIGN KEY (`Administrador_idAdministrador`) REFERENCES `Administrador` (`idAdministrador`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Paciente`
--
ALTER TABLE `Paciente`
  ADD CONSTRAINT `fk_PacienteLeitoQuarto` FOREIGN KEY (`Sala_LeitoQuarto_codigoLeitoQuarto`) REFERENCES `Sala` (`LeitoQuarto_codigoLeitoQuarto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Paciente_Cirugia1` FOREIGN KEY (`Cirugia_codigoCirugia`) REFERENCES `Cirugia` (`codigoCirugia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Paciente_LeitoCirugico1` FOREIGN KEY (`Sala_LeitoCirugico_codigoLeitoCirugico`) REFERENCES `Sala` (`LeitoCirugico_codigoLeitoCirugico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Paciente_LeitoUTI1` FOREIGN KEY (`Sala_LeitoUTI_codigoLeitoUTI`) REFERENCES `Sala` (`LeitoUTI_codigoLeitoUTI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Paciente_Sala1` FOREIGN KEY (`Sala_idSala`) REFERENCES `Sala` (`idSala`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Paciente_has_Relatorio`
--
ALTER TABLE `Paciente_has_Relatorio`
  ADD CONSTRAINT `fk_Paciente_has_Relatorio_Paciente1` FOREIGN KEY (`Paciente_cpfPaciente`) REFERENCES `Paciente` (`cpfPaciente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Paciente_has_Relatorio_Relatorio1` FOREIGN KEY (`Relatorio_codigoRelatorio`) REFERENCES `Relatorio` (`codigoRelatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Relatorio`
--
ALTER TABLE `Relatorio`
  ADD CONSTRAINT `fk_Relatorio_Administrador1` FOREIGN KEY (`Administrador_idAdministrador`) REFERENCES `Administrador` (`idAdministrador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Relatorio_ConselhoPresidente1` FOREIGN KEY (`ConselhoPresidente_idConselhoPresidente`) REFERENCES `ConselhoPresidente` (`idConselhoPresidente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Relatorio_has_Medico`
--
ALTER TABLE `Relatorio_has_Medico`
  ADD CONSTRAINT `fk_Relatorio_has_Medico_Medico1` FOREIGN KEY (`Medico_registroMedico`) REFERENCES `Medico` (`registroMedico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Relatorio_has_Medico_Relatorio1` FOREIGN KEY (`Relatorio_codigoRelatorio`) REFERENCES `Relatorio` (`codigoRelatorio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Sala`
--
ALTER TABLE `Sala`
  ADD CONSTRAINT `fk_Sala_Consultorio1` FOREIGN KEY (`Consultorio_codigoConsultorio`) REFERENCES `Consultorio` (`codigoConsultorio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sala_LeitoCirugico1` FOREIGN KEY (`LeitoCirugico_codigoLeitoCirugico`) REFERENCES `LeitoCirugico` (`codigoLeitoCirugico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sala_LeitoQuarto1` FOREIGN KEY (`LeitoQuarto_codigoLeitoQuarto`) REFERENCES `LeitoQuarto` (`codigoLeitoQuarto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sala_LeitoUTI1` FOREIGN KEY (`LeitoUTI_codigoLeitoUTI`) REFERENCES `LeitoUTI` (`codigoLeitoUTI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sala_Paciente1` FOREIGN KEY (`Paciente_cpfPaciente`) REFERENCES `Paciente` (`cpfPaciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Sala_has_Medico`
--
ALTER TABLE `Sala_has_Medico`
  ADD CONSTRAINT `fk_Sala_has_Medico_Medico1` FOREIGN KEY (`Medico_registroMedico`) REFERENCES `Medico` (`registroMedico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Sala_has_Medico_Sala1` FOREIGN KEY (`Sala_idSala`) REFERENCES `Sala` (`idSala`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
