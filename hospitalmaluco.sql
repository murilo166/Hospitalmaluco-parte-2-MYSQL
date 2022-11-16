CREATE DATABASE  IF NOT EXISTS `hospitalmaluco` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitalmaluco`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmaluco
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consultas`
--

DROP TABLE IF EXISTS `consultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultas` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `data_consulta` date NOT NULL,
  `hora_consulta` int NOT NULL,
  `valor_consulta` float NOT NULL,
  `consulta_paciente` int NOT NULL,
  `medico_consulta` int NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `medico_consulta` (`medico_consulta`),
  KEY `consulta_paciente` (`consulta_paciente`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_10` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_11` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_12` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_13` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_14` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_15` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_16` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_3` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_4` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_5` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_6` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_7` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_8` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_9` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultas`
--

LOCK TABLES `consultas` WRITE;
/*!40000 ALTER TABLE `consultas` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenios`
--

DROP TABLE IF EXISTS `convenios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenios` (
  `id_convenio` int NOT NULL AUTO_INCREMENT,
  `nome_convenio` varchar(200) NOT NULL,
  `cnpj_convenio` int NOT NULL,
  `tempo_carencia` int NOT NULL,
  `convenio_paciente` int NOT NULL,
  PRIMARY KEY (`id_convenio`,`cnpj_convenio`),
  KEY `convenio_paciente` (`convenio_paciente`),
  CONSTRAINT `convenios_ibfk_1` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_2` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_3` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_4` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_5` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_6` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_7` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_8` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenios`
--

LOCK TABLES `convenios` WRITE;
/*!40000 ALTER TABLE `convenios` DISABLE KEYS */;
/*!40000 ALTER TABLE `convenios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `cpf_enfermeiro` int NOT NULL,
  `cre_enfermeiro` int NOT NULL,
  `id_enfermeiro` int NOT NULL AUTO_INCREMENT,
  `nome_enfermeiro` varchar(100) NOT NULL,
  `enfermeiro_paciente` int NOT NULL,
  PRIMARY KEY (`id_enfermeiro`,`cre_enfermeiro`,`cpf_enfermeiro`),
  KEY `enfermeiro_paciente` (`enfermeiro_paciente`),
  CONSTRAINT `enfermeiro_ibfk_1` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_2` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_3` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_4` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_5` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_6` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_7` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_8` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internaçao`
--

DROP TABLE IF EXISTS `internaçao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internaçao` (
  `id_internacao` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(100) NOT NULL,
  `data_efetivada` date NOT NULL,
  `data_entrada` date NOT NULL,
  `data_alta` date NOT NULL,
  `procedimento` varchar(100) NOT NULL,
  `quarto_internação` int NOT NULL,
  `enfermeiro_internaçao` int NOT NULL,
  `internaçao_paciente` int NOT NULL,
  PRIMARY KEY (`id_internacao`),
  KEY `internaçao_paciente` (`internaçao_paciente`),
  CONSTRAINT `internaçao_ibfk_1` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_2` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_3` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_4` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_5` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_6` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_7` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_8` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internaçao`
--

LOCK TABLES `internaçao` WRITE;
/*!40000 ALTER TABLE `internaçao` DISABLE KEYS */;
/*!40000 ALTER TABLE `internaçao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nome_medico` varchar(200) NOT NULL,
  `crm_medico` int NOT NULL,
  `tipo_medico` varchar(200) NOT NULL,
  `receita_medico` int NOT NULL,
  `especialidade_medico` varchar(200) NOT NULL,
  `consulta_medico` int NOT NULL,
  PRIMARY KEY (`id_medico`,`crm_medico`,`consulta_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(200) NOT NULL,
  `endereço_paciente` varchar(200) NOT NULL,
  `datanascimento_paciente` date NOT NULL,
  `cpf_paciente` int NOT NULL,
  `email_paciente` varchar(200) NOT NULL,
  `consulta_paciente` int NOT NULL,
  `receita_paciente` int NOT NULL,
  `conevenio_paciente` int NOT NULL,
  `quarto_paciente` int NOT NULL,
  `internaçao_paciente` int NOT NULL,
  `enfermeiro_paciente` int NOT NULL,
  PRIMARY KEY (`id_paciente`,`cpf_paciente`,`consulta_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'juliana','rua da sorte','2004-01-02',411474148,'juliana@junbs.con',1,1,1,1,1,1);
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `numero_quarto` int NOT NULL,
  `tipo_quarto` varchar(100) NOT NULL,
  `quarto_paciente` int NOT NULL,
  PRIMARY KEY (`id_quarto`,`numero_quarto`),
  KEY `quarto_paciente` (`quarto_paciente`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_2` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_3` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_4` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_5` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_6` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_7` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_8` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receitas` (
  `id_receita` int NOT NULL AUTO_INCREMENT,
  `nome_remedio` varchar(200) NOT NULL,
  `quantidade_remedio` int NOT NULL,
  `hora_remedio` int NOT NULL,
  `tipo_remedio` varchar(200) NOT NULL,
  `medico_receitas` int NOT NULL,
  `receita_paciente` int NOT NULL,
  PRIMARY KEY (`id_receita`),
  KEY `medico_receitas` (`medico_receitas`),
  KEY `receita_paciente` (`receita_paciente`),
  CONSTRAINT `receitas_ibfk_1` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_10` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_11` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_12` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_13` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_14` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_15` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_16` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_2` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_3` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_4` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_5` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_6` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_7` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_8` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_9` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoquarto`
--

DROP TABLE IF EXISTS `tipoquarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoquarto` (
  `valor_quarto` float NOT NULL,
  `id_tipoquarto` int NOT NULL AUTO_INCREMENT,
  `descrição_quarto` varchar(100) NOT NULL,
  `tipo_quarto` int NOT NULL,
  PRIMARY KEY (`id_tipoquarto`),
  KEY `tipo_quarto` (`tipo_quarto`),
  CONSTRAINT `tipoquarto_ibfk_1` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_2` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_3` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_4` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_5` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_6` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_7` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_8` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoquarto`
--

LOCK TABLES `tipoquarto` WRITE;
/*!40000 ALTER TABLE `tipoquarto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipoquarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospitalmaluco'
--

--
-- Dumping routines for database 'hospitalmaluco'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 20:18:01
