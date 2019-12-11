-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: sisesc
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_aluno`
--

DROP TABLE IF EXISTS `tbl_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aluno` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_aluno` int(11) NOT NULL,
  `fk_curso_aluno` int(11) NOT NULL,
  `fk_turma_aluno` int(11) NOT NULL,
  `ano_inico` int(11) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `user_aluno` (`fk_user_aluno`),
  KEY `turma_aluno` (`fk_turma_aluno`),
  KEY `curso_aluno` (`fk_curso_aluno`),
  CONSTRAINT `curso_aluno` FOREIGN KEY (`fk_curso_aluno`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `turma_aluno` FOREIGN KEY (`fk_turma_aluno`) REFERENCES `tbl_turmas` (`id_turma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_aluno` FOREIGN KEY (`fk_user_aluno`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno`
--

LOCK TABLES `tbl_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_aluno` DISABLE KEYS */;
INSERT INTO `tbl_aluno` VALUES (1,1,3,1,2018);
/*!40000 ALTER TABLE `tbl_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aluno_disc`
--

DROP TABLE IF EXISTS `tbl_aluno_disc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_aluno_disc` (
  `id_aluno_disc` int(11) NOT NULL AUTO_INCREMENT,
  `fk_aluno` int(11) NOT NULL,
  `fk_dicsc` int(11) NOT NULL,
  PRIMARY KEY (`id_aluno_disc`),
  KEY `aluno_fk` (`fk_aluno`),
  KEY `disc_fk` (`fk_dicsc`),
  CONSTRAINT `aluno_fk` FOREIGN KEY (`fk_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disc_fk` FOREIGN KEY (`fk_dicsc`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno_disc`
--

LOCK TABLES `tbl_aluno_disc` WRITE;
/*!40000 ALTER TABLE `tbl_aluno_disc` DISABLE KEYS */;
INSERT INTO `tbl_aluno_disc` VALUES (1,1,3),(2,1,5);
/*!40000 ALTER TABLE `tbl_aluno_disc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bairros`
--

DROP TABLE IF EXISTS `tbl_bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bairros` (
  `BRRS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID_ID_FK` int(11) NOT NULL,
  `BAIRRO` varchar(50) NOT NULL,
  `IBGE` int(11) NOT NULL,
  PRIMARY KEY (`BRRS_ID`),
  KEY `CID_ID_FK` (`CID_ID_FK`),
  CONSTRAINT `cid_brrs` FOREIGN KEY (`CID_ID_FK`) REFERENCES `tbl_cidades` (`CID_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bairros`
--

LOCK TABLES `tbl_bairros` WRITE;
/*!40000 ALTER TABLE `tbl_bairros` DISABLE KEYS */;
INSERT INTO `tbl_bairros` VALUES (1,11990,'Alvorada',99),(2,11990,'Araxá',99),(3,11990,'Beirol',99),(4,11990,'Boné Azul',99),(5,11990,'Brasil Novo',99),(6,11990,'Buritizal',99),(7,11990,'Cabralzinho',99),(8,11990,'Central',99),(9,11990,'Cidade Nova',99),(10,11990,'Congós',99),(11,11990,'Infraero',99),(12,11990,'Jardim Equatorial',99),(13,11990,'Jardim Felicidade',99),(14,11990,'Jesus de Nazaré',99),(15,11990,'Laguinho',99),(16,11990,'Marco Zero',99),(17,11990,'Nova Esperança',99),(18,11990,'Novo Buritizal',99),(19,11990,'Novo Horizonte',99),(20,11990,'Pacoval',99),(21,11990,'Pantanal',99),(22,11990,'Pedrinhas',99),(23,11990,'Perpétuo Socorro',99),(24,11990,'Santa Inês',99),(25,11990,'Santa Rita',99),(26,11990,'Trem',99),(27,11990,'Universidade',99),(28,11990,'Zerão',99),(29,11995,'Paraíso',99),(30,11995,'Dos Remédios',99),(31,11995,'Fonte Nova',99),(32,11995,'central',99),(33,11995,'Comercial',99),(34,11995,'Hospitalidade',99),(35,11995,'Nova Brasília',99),(36,11995,'Provedor',99),(37,11995,'Igarapé de Fortaleza',99),(38,11995,'Novo Horizonte',99),(39,11995,'Vila Amazonas',99),(40,11995,'Elesbão',99);
/*!40000 ALTER TABLE `tbl_bairros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_calendario`
--

DROP TABLE IF EXISTS `tbl_calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_calendario` (
  `id_calendario` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(11) DEFAULT NULL,
  `periodo` int(11) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_termino` date DEFAULT NULL,
  PRIMARY KEY (`id_calendario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_calendario`
--

LOCK TABLES `tbl_calendario` WRITE;
/*!40000 ALTER TABLE `tbl_calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cidades`
--

DROP TABLE IF EXISTS `tbl_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cidades` (
  `CID_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CID_DESCRICAO` varchar(50) DEFAULT NULL,
  `UF_ID_FK` int(11) NOT NULL,
  `DRS_ID` varchar(50) DEFAULT NULL,
  `CID_NUM_IBGE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CID_ID`),
  KEY `UF_ID_FK` (`UF_ID_FK`),
  CONSTRAINT `uf_cid` FOREIGN KEY (`UF_ID_FK`) REFERENCES `tbl_uf` (`UF_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11999 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cidades`
--

LOCK TABLES `tbl_cidades` WRITE;
/*!40000 ALTER TABLE `tbl_cidades` DISABLE KEYS */;
INSERT INTO `tbl_cidades` VALUES (11983,'Pedra Branca do Amapari',4,NULL,'160015'),(11984,'Amapa',4,NULL,'160010'),(11985,'Calcoene',4,NULL,'160020'),(11986,'Cutias',4,NULL,'160021'),(11987,'Ferreira Gomes',4,NULL,'160023'),(11988,'Itaubal',4,NULL,'160025'),(11989,'Laranjal do Jari',4,NULL,'160027'),(11990,'Macapa',4,NULL,'160030'),(11991,'Mazagao',4,NULL,'160040'),(11992,'Oiapoque',4,NULL,'160050'),(11993,'Porto Grande',4,NULL,'160053'),(11994,'Pracuuba',4,NULL,'160055'),(11995,'Santana',4,NULL,'160060'),(11996,'Serra do Navio',4,NULL,'160005'),(11997,'Tartarugalzinho',4,NULL,'160070'),(11998,'Vitoria do Jari',4,NULL,'160080');
/*!40000 ALTER TABLE `tbl_cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_colegiado`
--

DROP TABLE IF EXISTS `tbl_colegiado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_colegiado` (
  `id_colegiado` int(11) NOT NULL AUTO_INCREMENT,
  `fk_reitoria` int(11) DEFAULT NULL,
  `nome_colegiado` varchar(50) NOT NULL,
  `cod_colegiado` varchar(10) NOT NULL,
  PRIMARY KEY (`id_colegiado`),
  KEY `fk_reitoria` (`fk_reitoria`),
  CONSTRAINT `tbl_colegiado_ibfk_1` FOREIGN KEY (`fk_reitoria`) REFERENCES `tbl_reitoria` (`id_reitoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_colegiado`
--

LOCK TABLES `tbl_colegiado` WRITE;
/*!40000 ALTER TABLE `tbl_colegiado` DISABLE KEYS */;
INSERT INTO `tbl_colegiado` VALUES (1,NULL,'DEPARTAMENTO DE CIÊNCIAS EXATAS E TECNOLOGIAS','DCET'),(2,NULL,' DEPARTAMENTO DE CIÊNCIAS BIOLÓGICAS E DA SAÚDE','DCBS');
/*!40000 ALTER TABLE `tbl_colegiado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curso_discip`
--

DROP TABLE IF EXISTS `tbl_curso_discip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_curso_discip` (
  `id_curso_discp` int(11) NOT NULL AUTO_INCREMENT,
  `fk_curso` int(11) NOT NULL,
  `fk_discip` int(11) NOT NULL,
  PRIMARY KEY (`id_curso_discp`),
  KEY `crurso_fk` (`fk_curso`),
  KEY `disciplina_fk` (`fk_discip`),
  CONSTRAINT `crurso_fk` FOREIGN KEY (`fk_curso`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disciplina_fk` FOREIGN KEY (`fk_discip`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curso_discip`
--

LOCK TABLES `tbl_curso_discip` WRITE;
/*!40000 ALTER TABLE `tbl_curso_discip` DISABLE KEYS */;
INSERT INTO `tbl_curso_discip` VALUES (1,3,3),(2,3,5);
/*!40000 ALTER TABLE `tbl_curso_discip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cursos`
--

DROP TABLE IF EXISTS `tbl_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `fk_coleg_curso` int(11) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `cod_curso` varchar(10) NOT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `colegiado_curso` (`fk_coleg_curso`),
  CONSTRAINT `colegiado_curso` FOREIGN KEY (`fk_coleg_curso`) REFERENCES `tbl_colegiado` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cursos`
--

LOCK TABLES `tbl_cursos` WRITE;
/*!40000 ALTER TABLE `tbl_cursos` DISABLE KEYS */;
INSERT INTO `tbl_cursos` VALUES (1,1,'ARQUITETURA E URBANISMO','ARQ.URB'),(2,1,'ENGENHARIA CIVIL','ENG.CIV'),(3,1,'CIÊNCIA DA COMPUTAÇÃO','C.C'),(4,1,'ENGENHARIA ELETRICA','ENG.ELET'),(5,1,'FISICA','FISICA'),(6,1,'MATEMATICA','MATEMATICA'),(7,1,'QUÍMICA','QUÍMICA'),(14,2,'CIENCIAS BIOLOGICAS','CIEN.BIOL'),(15,2,'ENFERMAGEM','ENFERMA'),(16,2,'FARMÁCIA','FARMA'),(17,2,'FISIOTERAPIA','FISIOTE'),(26,2,'MEDICINA','MEDICINA');
/*!40000 ALTER TABLE `tbl_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ddd`
--

DROP TABLE IF EXISTS `tbl_ddd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ddd` (
  `id_ddd` int(11) NOT NULL AUTO_INCREMENT,
  `regiao` varchar(100) DEFAULT NULL,
  `fk_uf` int(11) NOT NULL,
  PRIMARY KEY (`id_ddd`),
  KEY `fk_uf` (`fk_uf`),
  CONSTRAINT `tbl_ddd_ibfk_1` FOREIGN KEY (`fk_uf`) REFERENCES `tbl_uf` (`UF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ddd`
--

LOCK TABLES `tbl_ddd` WRITE;
/*!40000 ALTER TABLE `tbl_ddd` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ddd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disc_hist`
--

DROP TABLE IF EXISTS `tbl_disc_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_disc_hist` (
  `id_disc_hist` int(11) NOT NULL AUTO_INCREMENT,
  `fk_disc_hist` int(11) NOT NULL,
  `fk_hist` int(11) NOT NULL,
  `nota_disc_hist` float NOT NULL,
  `frequencia_disc_hist` int(11) NOT NULL,
  PRIMARY KEY (`id_disc_hist`),
  KEY `disc_hist` (`fk_disc_hist`),
  KEY `hist_disc_hist` (`fk_hist`),
  CONSTRAINT `disc_hist` FOREIGN KEY (`fk_disc_hist`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hist_disc_hist` FOREIGN KEY (`fk_hist`) REFERENCES `tbl_historico` (`id_historico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disc_hist`
--

LOCK TABLES `tbl_disc_hist` WRITE;
/*!40000 ALTER TABLE `tbl_disc_hist` DISABLE KEYS */;
INSERT INTO `tbl_disc_hist` VALUES (1,5,1,9,0),(2,3,1,9,0);
/*!40000 ALTER TABLE `tbl_disc_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disciplina`
--

DROP TABLE IF EXISTS `tbl_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_disciplina` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_depende_discipl` int(11) NOT NULL,
  `nome_discipl` varchar(50) NOT NULL,
  `carga_hora_disc` int(11) NOT NULL,
  `num_aluno_disc` int(11) NOT NULL,
  PRIMARY KEY (`id_disciplina`),
  KEY `disc_disc` (`fk_depende_discipl`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disciplina`
--

LOCK TABLES `tbl_disciplina` WRITE;
/*!40000 ALTER TABLE `tbl_disciplina` DISABLE KEYS */;
INSERT INTO `tbl_disciplina` VALUES (3,0,'Banco de dados I',90,30),(4,3,'Banco de dados II',90,30),(5,0,'cálculo I',90,30),(6,5,'cálculo II',120,30);
/*!40000 ALTER TABLE `tbl_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_end`
--

DROP TABLE IF EXISTS `tbl_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_end` (
  `id_end` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_end` int(11) NOT NULL,
  `kf_lograd` int(11) NOT NULL,
  `fk_rua` int(11) NOT NULL,
  `n_casa` varchar(15) NOT NULL,
  `complemento` varchar(20) NOT NULL,
  PRIMARY KEY (`id_end`),
  KEY `user_end` (`fk_user_end`),
  KEY `bairro_end` (`fk_rua`),
  KEY `log_end` (`kf_lograd`),
  CONSTRAINT `log_end` FOREIGN KEY (`kf_lograd`) REFERENCES `tbl_logradouro` (`LOGRAD_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rua_end` FOREIGN KEY (`fk_rua`) REFERENCES `tbl_rua` (`id_rua`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_end` FOREIGN KEY (`fk_user_end`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_end`
--

LOCK TABLES `tbl_end` WRITE;
/*!40000 ALTER TABLE `tbl_end` DISABLE KEYS */;
INSERT INTO `tbl_end` VALUES (5,1,7,1,'660','casa'),(6,2,1,2,'896a','');
/*!40000 ALTER TABLE `tbl_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_especialidade`
--

DROP TABLE IF EXISTS `tbl_especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_especialidade` (
  `id_especialidade` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) DEFAULT NULL,
  `grau` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_especialidade`
--

LOCK TABLES `tbl_especialidade` WRITE;
/*!40000 ALTER TABLE `tbl_especialidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_func_analista`
--

DROP TABLE IF EXISTS `tbl_func_analista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_func_analista` (
  `id_analista` int(11) NOT NULL AUTO_INCREMENT,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `fk_lotacao` int(11) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  `fk_especialidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_analista`),
  KEY `fk_lotacao` (`fk_lotacao`),
  KEY `fk_user` (`fk_user`),
  KEY `fk_especialidade` (`fk_especialidade`),
  KEY `fk_funcionario` (`fk_funcionario`),
  CONSTRAINT `tbl_func_analista_ibfk_1` FOREIGN KEY (`fk_lotacao`) REFERENCES `tbl_colegiado` (`id_colegiado`),
  CONSTRAINT `tbl_func_analista_ibfk_2` FOREIGN KEY (`fk_user`) REFERENCES `tbl_user` (`id_user`),
  CONSTRAINT `tbl_func_analista_ibfk_3` FOREIGN KEY (`fk_especialidade`) REFERENCES `tbl_especialidade` (`id_especialidade`),
  CONSTRAINT `tbl_func_analista_ibfk_4` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_func_analista`
--

LOCK TABLES `tbl_func_analista` WRITE;
/*!40000 ALTER TABLE `tbl_func_analista` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_func_analista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_func_professor`
--

DROP TABLE IF EXISTS `tbl_func_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_func_professor` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(32) DEFAULT NULL,
  `regime` varchar(100) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  `fk_especialidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_professor`),
  KEY `fk_funcionario` (`fk_funcionario`),
  KEY `fk_especialidade` (`fk_especialidade`),
  CONSTRAINT `tbl_func_professor_ibfk_1` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`id_funcionario`),
  CONSTRAINT `tbl_func_professor_ibfk_2` FOREIGN KEY (`fk_especialidade`) REFERENCES `tbl_especialidade` (`id_especialidade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_func_professor`
--

LOCK TABLES `tbl_func_professor` WRITE;
/*!40000 ALTER TABLE `tbl_func_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_func_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_func_tecnico`
--

DROP TABLE IF EXISTS `tbl_func_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_func_tecnico` (
  `id_tecnico` int(11) NOT NULL AUTO_INCREMENT,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_lotacao` int(11) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tecnico`),
  KEY `fk_user` (`fk_user`),
  KEY `fk_lotacao` (`fk_lotacao`),
  KEY `fk_funcionario` (`fk_funcionario`),
  CONSTRAINT `tbl_func_tecnico_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `tbl_user` (`id_user`),
  CONSTRAINT `tbl_func_tecnico_ibfk_2` FOREIGN KEY (`fk_lotacao`) REFERENCES `tbl_colegiado` (`id_colegiado`),
  CONSTRAINT `tbl_func_tecnico_ibfk_3` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionario` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_func_tecnico`
--

LOCK TABLES `tbl_func_tecnico` WRITE;
/*!40000 ALTER TABLE `tbl_func_tecnico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_func_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionario`
--

DROP TABLE IF EXISTS `tbl_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `vinculo` varchar(54) DEFAULT NULL,
  `carga_horaria` varchar(4) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `data_demissao` date DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionario`
--

LOCK TABLES `tbl_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_historico`
--

DROP TABLE IF EXISTS `tbl_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_historico` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `fk_aluno_hist` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `aluno_histo` (`fk_aluno_hist`),
  CONSTRAINT `aluno_histo` FOREIGN KEY (`fk_aluno_hist`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_historico`
--

LOCK TABLES `tbl_historico` WRITE;
/*!40000 ALTER TABLE `tbl_historico` DISABLE KEYS */;
INSERT INTO `tbl_historico` VALUES (1,1,'2018-05-01','2021-12-06');
/*!40000 ALTER TABLE `tbl_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_login`
--

DROP TABLE IF EXISTS `tbl_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user` int(11) DEFAULT NULL,
  `login` varchar(64) DEFAULT NULL,
  `senha` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_login`),
  KEY `fk_user` (`fk_user`),
  CONSTRAINT `tbl_login_ibfk_1` FOREIGN KEY (`fk_user`) REFERENCES `tbl_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_login`
--

LOCK TABLES `tbl_login` WRITE;
/*!40000 ALTER TABLE `tbl_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logradouro`
--

DROP TABLE IF EXISTS `tbl_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_logradouro` (
  `LOGRAD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGRAD_DESCRICAO` varchar(15) NOT NULL,
  `LOGRAD` varchar(7) NOT NULL,
  PRIMARY KEY (`LOGRAD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logradouro`
--

LOCK TABLES `tbl_logradouro` WRITE;
/*!40000 ALTER TABLE `tbl_logradouro` DISABLE KEYS */;
INSERT INTO `tbl_logradouro` VALUES (1,'AEROPORTO','AERO'),(2,'ALAMEDA','ALM'),(3,'AVENIDA','AV'),(4,'CAMPO','CMP'),(5,'CHÁCARA','CHAC'),(6,'COLÔNIA','COL'),(7,'CONDÓMINIO','COND'),(8,'CONJUNTO','CONJ'),(9,'DESTRITO','DESTRI'),(10,'CHÁCARA','CHAC'),(11,'ESPLANADA','ESPL'),(12,'ESTAÇÃO','EST'),(13,'ESTRADA','ESTR'),(14,'FAVALA','FAV'),(15,'FEIRA','FEIR'),(16,'JARDIM','JARD'),(17,'LADEIRA','LAD'),(18,'LAGO','LAGO'),(19,'LAGOA','LAGOA'),(20,'LARGO','LARGO'),(21,'LOTEAMENTO','LOTE'),(22,'MORRO','MORRO'),(23,'NÚCLEO','NUCL'),(24,'PARQUE','PARQ'),(25,'PASSARELA','PASSA'),(26,'PRAÇA','PRAÇA'),(27,'PÁTIO','PÁTIO'),(28,'QUADRA','QUAD'),(29,'RECANTO','RECAN'),(30,'RESIDENCIAL','RESID'),(31,'RODOVIA','ROD'),(32,'RUA','RUA'),(33,'SERTOR','SERTOR'),(34,'SÍTIO','SÍTIO'),(35,'TRAVESSA','TRAV'),(36,'TRECHO','TREC'),(37,'TREVO','TREV'),(38,'VALE','VALE'),(39,'VEREDA','VERE'),(40,'VIA','VIA'),(41,'VIADUTO','VIADU'),(42,'VIELA','VIELA'),(43,'VILA','VILA'),(44,'ÁREA','ÁREA');
/*!40000 ALTER TABLE `tbl_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_prof_disc`
--

DROP TABLE IF EXISTS `tbl_prof_disc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_prof_disc` (
  `id_prof_disc` int(11) NOT NULL AUTO_INCREMENT,
  `fk_professor` int(11) NOT NULL,
  `fk_discip_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_prof_disc`),
  KEY `professor_fk` (`fk_professor`),
  KEY `disciplina_prof_fk` (`fk_discip_prof`),
  CONSTRAINT `disciplina_prof_fk` FOREIGN KEY (`fk_discip_prof`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `professor_fk` FOREIGN KEY (`fk_professor`) REFERENCES `tbl_professor` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_prof_disc`
--

LOCK TABLES `tbl_prof_disc` WRITE;
/*!40000 ALTER TABLE `tbl_prof_disc` DISABLE KEYS */;
INSERT INTO `tbl_prof_disc` VALUES (1,1,3),(2,1,5);
/*!40000 ALTER TABLE `tbl_prof_disc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_professor`
--

DROP TABLE IF EXISTS `tbl_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_professor` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_prof` int(11) NOT NULL,
  `fk_funcionario_prof` int(11) DEFAULT NULL,
  `fk_coleg_prof` int(11) NOT NULL,
  `status_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_prof`),
  KEY `prof_user` (`fk_user_prof`),
  KEY `prof_coleg` (`fk_coleg_prof`),
  KEY `fk_funcionario_prof` (`fk_funcionario_prof`),
  CONSTRAINT `prof_coleg` FOREIGN KEY (`fk_coleg_prof`) REFERENCES `tbl_colegiado` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prof_user` FOREIGN KEY (`fk_user_prof`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_professor_ibfk_1` FOREIGN KEY (`fk_funcionario_prof`) REFERENCES `tbl_func_professor` (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_professor`
--

LOCK TABLES `tbl_professor` WRITE;
/*!40000 ALTER TABLE `tbl_professor` DISABLE KEYS */;
INSERT INTO `tbl_professor` VALUES (1,4,NULL,1,0);
/*!40000 ALTER TABLE `tbl_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reitoria`
--

DROP TABLE IF EXISTS `tbl_reitoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reitoria` (
  `id_reitoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_reitoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reitoria`
--

LOCK TABLES `tbl_reitoria` WRITE;
/*!40000 ALTER TABLE `tbl_reitoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reitoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rua`
--

DROP TABLE IF EXISTS `tbl_rua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_rua` (
  `id_rua` int(11) NOT NULL AUTO_INCREMENT,
  `fkbrrs` int(11) NOT NULL,
  `nome_rua` varchar(100) NOT NULL,
  `CEP` int(10) NOT NULL,
  PRIMARY KEY (`id_rua`),
  KEY `rua_barrs` (`fkbrrs`),
  CONSTRAINT `rua_barrs` FOREIGN KEY (`fkbrrs`) REFERENCES `tbl_bairros` (`BRRS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rua`
--

LOCK TABLES `tbl_rua` WRITE;
/*!40000 ALTER TABLE `tbl_rua` DISABLE KEYS */;
INSERT INTO `tbl_rua` VALUES (1,6,'FORTUNATO PERES',68904160),(2,6,'Claudomiro de Moraes',68904001);
/*!40000 ALTER TABLE `tbl_rua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexo`
--

DROP TABLE IF EXISTS `tbl_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_sexo` (
  `id_sexo` int(11) NOT NULL AUTO_INCREMENT,
  `sexo` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_sexo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tel_user`
--

DROP TABLE IF EXISTS `tbl_tel_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tel_user` (
  `id_tel_user` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_tel` int(11) NOT NULL,
  `fk_tipo_tel` int(11) NOT NULL,
  `fk_ddd` int(11) DEFAULT NULL,
  `numero_tel_user` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tel_user`),
  KEY `user_tel` (`fk_user_tel`),
  KEY `tipo_tel` (`fk_tipo_tel`),
  KEY `fk_ddd` (`fk_ddd`),
  CONSTRAINT `tbl_tel_user_ibfk_1` FOREIGN KEY (`fk_ddd`) REFERENCES `tbl_ddd` (`id_ddd`),
  CONSTRAINT `tipo_tel` FOREIGN KEY (`fk_tipo_tel`) REFERENCES `tbl_tipo_tel` (`id_tipo_tel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_tel` FOREIGN KEY (`fk_user_tel`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tel_user`
--

LOCK TABLES `tbl_tel_user` WRITE;
/*!40000 ALTER TABLE `tbl_tel_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_tel_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_tel`
--

DROP TABLE IF EXISTS `tbl_tipo_tel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipo_tel` (
  `id_tipo_tel` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_tel` varchar(8) NOT NULL,
  PRIMARY KEY (`id_tipo_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_tel`
--

LOCK TABLES `tbl_tipo_tel` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_tel` DISABLE KEYS */;
INSERT INTO `tbl_tipo_tel` VALUES (1,'Fixo'),(2,'celular'),(3,'Fax');
/*!40000 ALTER TABLE `tbl_tipo_tel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_turmas`
--

DROP TABLE IF EXISTS `tbl_turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_turmas` (
  `id_turma` int(11) NOT NULL AUTO_INCREMENT,
  `fk_curso_turma` int(11) NOT NULL,
  `fk_turno` int(11) DEFAULT NULL,
  `numero_alunos_tur` int(11) NOT NULL,
  `fk_calendario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `turma_curso` (`fk_curso_turma`),
  KEY `fk_calendario` (`fk_calendario`),
  KEY `fk_turno` (`fk_turno`),
  CONSTRAINT `tbl_turmas_ibfk_1` FOREIGN KEY (`fk_calendario`) REFERENCES `tbl_calendario` (`id_calendario`),
  CONSTRAINT `tbl_turmas_ibfk_2` FOREIGN KEY (`fk_turno`) REFERENCES `tbl_turno` (`id_turno`),
  CONSTRAINT `turma_curso` FOREIGN KEY (`fk_curso_turma`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_turmas`
--

LOCK TABLES `tbl_turmas` WRITE;
/*!40000 ALTER TABLE `tbl_turmas` DISABLE KEYS */;
INSERT INTO `tbl_turmas` VALUES (1,3,NULL,30,NULL);
/*!40000 ALTER TABLE `tbl_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_turno`
--

DROP TABLE IF EXISTS `tbl_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_turno` (
  `id_turno` int(11) NOT NULL AUTO_INCREMENT,
  `turno` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_turno`
--

LOCK TABLES `tbl_turno` WRITE;
/*!40000 ALTER TABLE `tbl_turno` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_uf`
--

DROP TABLE IF EXISTS `tbl_uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_uf` (
  `UF_ID` int(11) NOT NULL AUTO_INCREMENT,
  `UF` varchar(5) NOT NULL,
  `UF_DESCRICAO` varchar(20) NOT NULL,
  PRIMARY KEY (`UF_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_uf`
--

LOCK TABLES `tbl_uf` WRITE;
/*!40000 ALTER TABLE `tbl_uf` DISABLE KEYS */;
INSERT INTO `tbl_uf` VALUES (1,'AC','Acre'),(2,'AL','Alagoas'),(3,'AM','Amazonas'),(4,'AP','Amapá'),(5,'BA','Bahia'),(6,'CE','Ceará'),(7,'DF','Distrito Federal'),(8,'ES','Espírito Santo'),(9,'GO','Goiás'),(10,'MA','Maranhão'),(11,'MG','Minas Gerais'),(12,'MS','Mato Grosso do Sul'),(13,'MT','Mato Grosso'),(14,'PA','Pará'),(15,'PB','Paraíba'),(16,'PE','Pernambuco'),(17,'PI','Piauí'),(18,'PR','Paraná'),(19,'RJ','Rio de Janeiro'),(20,'RN','Rio Grande do Norte'),(21,'RO','Rondonia'),(22,'RR','Roraima'),(23,'RS','Rio Grande do Sul'),(24,'SC','Santa Catarina'),(25,'SE','Sergipe'),(26,'SP','São Paulo'),(27,'TO','Tocantins');
/*!40000 ALTER TABLE `tbl_uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nome_user` varchar(30) NOT NULL,
  `sobrenome_user` varchar(30) NOT NULL,
  `cpf_user` varchar(100) NOT NULL,
  `status_user` tinyint(1) NOT NULL,
  `sexo_user` char(1) NOT NULL,
  `pai_user` varchar(60) NOT NULL,
  `mae_user` varchar(60) NOT NULL,
  `email_user` varchar(90) NOT NULL,
  `fk_sexo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `fk_sexo` (`fk_sexo`),
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`fk_sexo`) REFERENCES `tbl_sexo` (`id_sexo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Miguel','dos anjos de almeida','99999999911',0,'m','carlos dos anjos','maria de almeida','miguel@unifap.br',NULL),(2,'sofia','brasil dias','88888888811',0,'f','joão brasil','rubi dias','sofia@unifap.br',NULL),(3,'Arthur','bezerra souza','77777777711',0,'m','vando bezerra','maria souza bezerra','Arthur@gmail.com',NULL),(4,'Julia','pereira moraes','66666666611',0,'f','manoel moraes','isa pereira','Julia@gmail.com',NULL),(9,'vai','vai','999',0,'m','vai','vai','cai@cai',NULL),(10,'unifap','unifap','1111',0,'m','unifap','unifap','unifap@unifap.com',NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10 22:14:11
