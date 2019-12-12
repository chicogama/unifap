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
-- Table structure for table `tbl_autenticacoes`
--

DROP TABLE IF EXISTS `tbl_autenticacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_autenticacoes` (
  `id_autenticacao` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) DEFAULT NULL,
  `usuario` varchar(64) DEFAULT NULL,
  `senha` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_autenticacao`),
  KEY `usuario_autenticacao` (`fk_usuario`),
  CONSTRAINT `usuario_autenticacao` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_autenticacoes`
--

LOCK TABLES `tbl_autenticacoes` WRITE;
/*!40000 ALTER TABLE `tbl_autenticacoes` DISABLE KEYS */;
INSERT INTO `tbl_autenticacoes` VALUES (1,11,'adeildo@unifap.br','70575ffec22b0577b09273201f75dfa2');
/*!40000 ALTER TABLE `tbl_autenticacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bairros`
--

DROP TABLE IF EXISTS `tbl_bairros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bairros` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `fk_cidade` int(11) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `ibge` int(11) NOT NULL,
  PRIMARY KEY (`id_bairro`),
  KEY `fk_cidade` (`fk_cidade`),
  CONSTRAINT `cidade_bairro` FOREIGN KEY (`fk_cidade`) REFERENCES `tbl_cidades` (`id_cidade`) ON DELETE CASCADE ON UPDATE CASCADE
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
-- Table structure for table `tbl_calendarios`
--

DROP TABLE IF EXISTS `tbl_calendarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_calendarios` (
  `id_calendario` int(11) NOT NULL AUTO_INCREMENT,
  `ano` int(11) NOT NULL,
  `periodo` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_termino` date NOT NULL,
  PRIMARY KEY (`id_calendario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_calendarios`
--

LOCK TABLES `tbl_calendarios` WRITE;
/*!40000 ALTER TABLE `tbl_calendarios` DISABLE KEYS */;
INSERT INTO `tbl_calendarios` VALUES (1,2019,1,'2019-01-01','2019-06-05'),(2,2019,2,'2019-08-03','2019-12-21');
/*!40000 ALTER TABLE `tbl_calendarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cidades`
--

DROP TABLE IF EXISTS `tbl_cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cidades` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_cidade` varchar(50) DEFAULT NULL,
  `fk_uf` int(11) NOT NULL,
  `numero_ibge` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `fk_uf` (`fk_uf`),
  CONSTRAINT `uf_cidade` FOREIGN KEY (`fk_uf`) REFERENCES `tbl_ufs` (`id_uf`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11999 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cidades`
--

LOCK TABLES `tbl_cidades` WRITE;
/*!40000 ALTER TABLE `tbl_cidades` DISABLE KEYS */;
INSERT INTO `tbl_cidades` VALUES (11983,'Pedra Branca do Amapari',4,'160015'),(11984,'Amapa',4,'160010'),(11985,'Calcoene',4,'160020'),(11986,'Cutias',4,'160021'),(11987,'Ferreira Gomes',4,'160023'),(11988,'Itaubal',4,'160025'),(11989,'Laranjal do Jari',4,'160027'),(11990,'Macapa',4,'160030'),(11991,'Mazagao',4,'160040'),(11992,'Oiapoque',4,'160050'),(11993,'Porto Grande',4,'160053'),(11994,'Pracuuba',4,'160055'),(11995,'Santana',4,'160060'),(11996,'Serra do Navio',4,'160005'),(11997,'Tartarugalzinho',4,'160070'),(11998,'Vitoria do Jari',4,'160080');
/*!40000 ALTER TABLE `tbl_cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_colegiados`
--

DROP TABLE IF EXISTS `tbl_colegiados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_colegiados` (
  `id_colegiado` int(11) NOT NULL AUTO_INCREMENT,
  `fk_reitoria` int(11) DEFAULT NULL,
  `nome_colegiado` varchar(50) NOT NULL,
  `codigo_colegiado` varchar(10) NOT NULL,
  PRIMARY KEY (`id_colegiado`),
  KEY `reitoria_colegiado` (`fk_reitoria`),
  CONSTRAINT `reitoria_curso` FOREIGN KEY (`fk_reitoria`) REFERENCES `tbl_reitorias` (`id_reitoria`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_colegiados`
--

LOCK TABLES `tbl_colegiados` WRITE;
/*!40000 ALTER TABLE `tbl_colegiados` DISABLE KEYS */;
INSERT INTO `tbl_colegiados` VALUES (1,NULL,'Departamento de Ciências Exatas e Tecnológicas','DCET'),(2,NULL,'Departamento de Ciências Biológicas e da Saúde','DCBS');
/*!40000 ALTER TABLE `tbl_colegiados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_coordenacoes`
--

DROP TABLE IF EXISTS `tbl_coordenacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_coordenacoes` (
  `id_coordenacao` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `fk_curso` int(11) DEFAULT NULL,
  `fk_coordenador` int(11) DEFAULT NULL,
  `fk_vice_coordenador` int(11) DEFAULT NULL,
  `fk_tecnico_laboratorio` int(11) DEFAULT NULL,
  `fk_tecnico_administrativo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_coordenacao`),
  KEY `colegiado_coordenacao` (`fk_curso`),
  KEY `coordenador` (`fk_coordenador`),
  KEY `vice_coordenador` (`fk_vice_coordenador`),
  KEY `tecnico_laboratorio` (`fk_tecnico_laboratorio`),
  KEY `tecnico_administrativo` (`fk_tecnico_administrativo`),
  CONSTRAINT `colegiado_coordenacao` FOREIGN KEY (`fk_curso`) REFERENCES `tbl_cursos` (`id_curso`),
  CONSTRAINT `coordenador` FOREIGN KEY (`fk_coordenador`) REFERENCES `tbl_docentes` (`id_docente`),
  CONSTRAINT `tecnico_administrativo` FOREIGN KEY (`fk_tecnico_administrativo`) REFERENCES `tbl_funcionarios_tecnicos` (`id_funcionario_tecnico`),
  CONSTRAINT `tecnico_laboratorio` FOREIGN KEY (`fk_tecnico_laboratorio`) REFERENCES `tbl_funcionarios_tecnicos` (`id_funcionario_tecnico`),
  CONSTRAINT `vice_coordenador` FOREIGN KEY (`fk_vice_coordenador`) REFERENCES `tbl_docentes` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_coordenacoes`
--

LOCK TABLES `tbl_coordenacoes` WRITE;
/*!40000 ALTER TABLE `tbl_coordenacoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_coordenacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cursos`
--

DROP TABLE IF EXISTS `tbl_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cursos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `fk_colegiado_curso` int(11) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `codigo_curso` varchar(10) NOT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `colegiado_curso` (`fk_colegiado_curso`),
  CONSTRAINT `colegiado_curso` FOREIGN KEY (`fk_colegiado_curso`) REFERENCES `tbl_colegiados` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cursos`
--

LOCK TABLES `tbl_cursos` WRITE;
/*!40000 ALTER TABLE `tbl_cursos` DISABLE KEYS */;
INSERT INTO `tbl_cursos` VALUES (1,1,'Arquitetura e Urbanismo','Arq. Urb'),(2,1,'Engenharia Civil','Eng. Civ'),(3,1,'Ciência da Computação','C. C'),(4,1,'Engenharia Elétrica','Eng. Elet'),(5,1,'Física','Fis'),(6,1,'Matemática','Mat'),(7,1,'Química','Qui'),(14,2,'Ciências Biológicas','Cien. Bio'),(15,2,'Enfermagem','Enf'),(16,2,'Farmácia','Farma'),(17,2,'Fisioterapia','Fisio'),(26,2,'Medicina','Med');
/*!40000 ALTER TABLE `tbl_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cursos_disciplinas`
--

DROP TABLE IF EXISTS `tbl_cursos_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cursos_disciplinas` (
  `id_curso_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_curso` int(11) NOT NULL,
  `fk_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_curso_disciplina`),
  KEY `curso_disciplina` (`fk_curso`),
  KEY `disciplina_curso` (`fk_disciplina`),
  CONSTRAINT `curso_disciplina` FOREIGN KEY (`fk_curso`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disciplina_curso` FOREIGN KEY (`fk_disciplina`) REFERENCES `tbl_disciplinas` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cursos_disciplinas`
--

LOCK TABLES `tbl_cursos_disciplinas` WRITE;
/*!40000 ALTER TABLE `tbl_cursos_disciplinas` DISABLE KEYS */;
INSERT INTO `tbl_cursos_disciplinas` VALUES (1,3,3),(2,3,5);
/*!40000 ALTER TABLE `tbl_cursos_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ddds`
--

DROP TABLE IF EXISTS `tbl_ddds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ddds` (
  `id_ddd` int(11) NOT NULL AUTO_INCREMENT,
  `ddd` int(11) NOT NULL,
  `fk_uf` int(11) NOT NULL,
  PRIMARY KEY (`id_ddd`),
  KEY `uf_ddd` (`fk_uf`),
  CONSTRAINT `uf_ddd` FOREIGN KEY (`fk_uf`) REFERENCES `tbl_ufs` (`id_uf`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ddds`
--

LOCK TABLES `tbl_ddds` WRITE;
/*!40000 ALTER TABLE `tbl_ddds` DISABLE KEYS */;
INSERT INTO `tbl_ddds` VALUES (1,96,4);
/*!40000 ALTER TABLE `tbl_ddds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discentes`
--

DROP TABLE IF EXISTS `tbl_discentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_discentes` (
  `id_discente` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario_discente` int(11) NOT NULL,
  `fk_curso_discente` int(11) NOT NULL,
  `fk_turma_discente` int(11) NOT NULL,
  `ano_inicio` int(11) NOT NULL,
  PRIMARY KEY (`id_discente`),
  KEY `usuario_discente` (`fk_usuario_discente`),
  KEY `turma_discente` (`fk_turma_discente`),
  KEY `curso_discente` (`fk_curso_discente`),
  CONSTRAINT `curso_discente` FOREIGN KEY (`fk_curso_discente`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `turma_discente` FOREIGN KEY (`fk_turma_discente`) REFERENCES `tbl_turmas` (`id_turma`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_discente` FOREIGN KEY (`fk_usuario_discente`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discentes`
--

LOCK TABLES `tbl_discentes` WRITE;
/*!40000 ALTER TABLE `tbl_discentes` DISABLE KEYS */;
INSERT INTO `tbl_discentes` VALUES (1,1,3,1,2018);
/*!40000 ALTER TABLE `tbl_discentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_discentes_disciplinas`
--

DROP TABLE IF EXISTS `tbl_discentes_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_discentes_disciplinas` (
  `id_discente_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_discente` int(11) NOT NULL,
  `fk_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_discente_disciplina`),
  KEY `discente_disciplina` (`fk_discente`),
  KEY `disciplina_discente` (`fk_disciplina`),
  CONSTRAINT `discente_disciplina` FOREIGN KEY (`fk_discente`) REFERENCES `tbl_discentes` (`id_discente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disciplina_discente` FOREIGN KEY (`fk_disciplina`) REFERENCES `tbl_disciplinas` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_discentes_disciplinas`
--

LOCK TABLES `tbl_discentes_disciplinas` WRITE;
/*!40000 ALTER TABLE `tbl_discentes_disciplinas` DISABLE KEYS */;
INSERT INTO `tbl_discentes_disciplinas` VALUES (1,1,3),(2,1,5);
/*!40000 ALTER TABLE `tbl_discentes_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disciplinas`
--

DROP TABLE IF EXISTS `tbl_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_disciplinas` (
  `id_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(50) NOT NULL,
  `carga_horaria_disciplina` int(11) NOT NULL,
  `numero_discentes_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_disciplina`),
  KEY `disciplina_disciplina` (`fk_disciplina`),
  CONSTRAINT `disciplina_disciplina` FOREIGN KEY (`fk_disciplina`) REFERENCES `tbl_disciplinas` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disciplinas`
--

LOCK TABLES `tbl_disciplinas` WRITE;
/*!40000 ALTER TABLE `tbl_disciplinas` DISABLE KEYS */;
INSERT INTO `tbl_disciplinas` VALUES (1,1,'Nenhum',0,0),(3,1,'Banco de Dados I',90,30),(4,3,'Banco de Dados II',90,30),(5,1,'Cálculo I',90,30),(6,5,'Cálculo II',120,30);
/*!40000 ALTER TABLE `tbl_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_disciplinas_historicos`
--

DROP TABLE IF EXISTS `tbl_disciplinas_historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_disciplinas_historicos` (
  `id_disciplina_historico` int(11) NOT NULL AUTO_INCREMENT,
  `fk_disciplina` int(11) NOT NULL,
  `fk_historico` int(11) NOT NULL,
  `nota_disciplina` float NOT NULL,
  `frequencia_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_disciplina_historico`),
  KEY `disciplina_historico` (`fk_disciplina`),
  KEY `historico_disciplina` (`fk_historico`),
  CONSTRAINT `disciplina_historico` FOREIGN KEY (`fk_disciplina`) REFERENCES `tbl_disciplinas` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `historico_disciplina` FOREIGN KEY (`fk_historico`) REFERENCES `tbl_historicos` (`id_historico`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_disciplinas_historicos`
--

LOCK TABLES `tbl_disciplinas_historicos` WRITE;
/*!40000 ALTER TABLE `tbl_disciplinas_historicos` DISABLE KEYS */;
INSERT INTO `tbl_disciplinas_historicos` VALUES (1,5,1,9,0),(2,3,1,9,0);
/*!40000 ALTER TABLE `tbl_disciplinas_historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_docentes`
--

DROP TABLE IF EXISTS `tbl_docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_docentes` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario_docente` int(11) NOT NULL,
  `fk_funcionario_docente` int(11) DEFAULT NULL,
  `fk_colegiado_docente` int(11) NOT NULL,
  `situacao_docente` int(11) NOT NULL,
  PRIMARY KEY (`id_docente`),
  KEY `usuario_docente` (`fk_usuario_docente`),
  KEY `colegiado_professor` (`fk_colegiado_docente`),
  KEY `funcionario_docente` (`fk_funcionario_docente`),
  CONSTRAINT `colegiado_professor` FOREIGN KEY (`fk_colegiado_docente`) REFERENCES `tbl_colegiados` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcionario_docente` FOREIGN KEY (`fk_funcionario_docente`) REFERENCES `tbl_funcionarios` (`id_funcionario`),
  CONSTRAINT `usuario_docente` FOREIGN KEY (`fk_usuario_docente`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_docentes`
--

LOCK TABLES `tbl_docentes` WRITE;
/*!40000 ALTER TABLE `tbl_docentes` DISABLE KEYS */;
INSERT INTO `tbl_docentes` VALUES (1,4,1,1,2);
/*!40000 ALTER TABLE `tbl_docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_docentes_disciplinas`
--

DROP TABLE IF EXISTS `tbl_docentes_disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_docentes_disciplinas` (
  `id_docente_disciplina` int(11) NOT NULL AUTO_INCREMENT,
  `fk_docente` int(11) NOT NULL,
  `fk_disciplina` int(11) NOT NULL,
  PRIMARY KEY (`id_docente_disciplina`),
  KEY `docente_disciplina` (`fk_docente`),
  KEY `disciplina_docente` (`fk_disciplina`),
  CONSTRAINT `disciplina_docente` FOREIGN KEY (`fk_disciplina`) REFERENCES `tbl_disciplinas` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docente_disciplina` FOREIGN KEY (`fk_docente`) REFERENCES `tbl_docentes` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_docentes_disciplinas`
--

LOCK TABLES `tbl_docentes_disciplinas` WRITE;
/*!40000 ALTER TABLE `tbl_docentes_disciplinas` DISABLE KEYS */;
INSERT INTO `tbl_docentes_disciplinas` VALUES (1,1,3),(2,1,5);
/*!40000 ALTER TABLE `tbl_docentes_disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_enderecos`
--

DROP TABLE IF EXISTS `tbl_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_enderecos` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario` int(11) NOT NULL,
  `fk_rua` int(11) NOT NULL,
  `numero_casa` int(11) NOT NULL,
  `complemento_casa` varchar(20) NOT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `usuario_endereco` (`fk_usuario`),
  KEY `bairro_endereco` (`fk_rua`),
  CONSTRAINT `rua_endereco` FOREIGN KEY (`fk_rua`) REFERENCES `tbl_ruas` (`id_rua`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_endereco` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_enderecos`
--

LOCK TABLES `tbl_enderecos` WRITE;
/*!40000 ALTER TABLE `tbl_enderecos` DISABLE KEYS */;
INSERT INTO `tbl_enderecos` VALUES (5,1,1,660,''),(6,2,2,896,'a');
/*!40000 ALTER TABLE `tbl_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_especialidades`
--

DROP TABLE IF EXISTS `tbl_especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_especialidades` (
  `id_especialidade` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(100) DEFAULT NULL,
  `grau` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_especialidades`
--

LOCK TABLES `tbl_especialidades` WRITE;
/*!40000 ALTER TABLE `tbl_especialidades` DISABLE KEYS */;
INSERT INTO `tbl_especialidades` VALUES (1,'Engenharia de Software','Especialização');
/*!40000 ALTER TABLE `tbl_especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionarios`
--

DROP TABLE IF EXISTS `tbl_funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionarios` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `vinculo` varchar(54) DEFAULT NULL,
  `carga_horaria` varchar(4) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `data_demissao` date DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionarios`
--

LOCK TABLES `tbl_funcionarios` WRITE;
/*!40000 ALTER TABLE `tbl_funcionarios` DISABLE KEYS */;
INSERT INTO `tbl_funcionarios` VALUES (1,'Enquadramento Funcional','8h','2018-06-29','2019-12-12');
/*!40000 ALTER TABLE `tbl_funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionarios_analistas`
--

DROP TABLE IF EXISTS `tbl_funcionarios_analistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionarios_analistas` (
  `id_funcionario_analista` int(11) NOT NULL AUTO_INCREMENT,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_colegiado` int(11) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  `fk_especialidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_analista`),
  KEY `colegiado_analista` (`fk_colegiado`),
  KEY `usuario_analista` (`fk_usuario`),
  KEY `especialidade_analista` (`fk_especialidade`),
  KEY `funcionario_analista` (`fk_funcionario`),
  CONSTRAINT `colegiado_analista` FOREIGN KEY (`fk_colegiado`) REFERENCES `tbl_colegiados` (`id_colegiado`),
  CONSTRAINT `especialidade_analista` FOREIGN KEY (`fk_especialidade`) REFERENCES `tbl_especialidades` (`id_especialidade`),
  CONSTRAINT `funcionario_analista` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionarios` (`id_funcionario`),
  CONSTRAINT `usuario_analista` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionarios_analistas`
--

LOCK TABLES `tbl_funcionarios_analistas` WRITE;
/*!40000 ALTER TABLE `tbl_funcionarios_analistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_funcionarios_analistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionarios_docentes`
--

DROP TABLE IF EXISTS `tbl_funcionarios_docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionarios_docentes` (
  `id_funcionario_docente` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(32) DEFAULT NULL,
  `regime` varchar(100) DEFAULT NULL,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_especialidade` int(11) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_docente`),
  KEY `especialidade_docente` (`fk_especialidade`),
  KEY `funcionario_docente_relacao` (`fk_funcionario`),
  CONSTRAINT `especialidade_docente` FOREIGN KEY (`fk_especialidade`) REFERENCES `tbl_especialidades` (`id_especialidade`),
  CONSTRAINT `funcionario_docente_relacao` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionarios` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionarios_docentes`
--

LOCK TABLES `tbl_funcionarios_docentes` WRITE;
/*!40000 ALTER TABLE `tbl_funcionarios_docentes` DISABLE KEYS */;
INSERT INTO `tbl_funcionarios_docentes` VALUES (1,'C','Dediação Exclusiva',3.00,1,1);
/*!40000 ALTER TABLE `tbl_funcionarios_docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionarios_tecnicos`
--

DROP TABLE IF EXISTS `tbl_funcionarios_tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionarios_tecnicos` (
  `id_funcionario_tecnico` int(11) NOT NULL AUTO_INCREMENT,
  `salario` decimal(8,2) DEFAULT NULL,
  `fk_colegiado` int(11) DEFAULT NULL,
  `fk_funcionario` int(11) DEFAULT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario_tecnico`),
  KEY `colegiado_tecnico` (`fk_colegiado`),
  KEY `funcionario_tecnico` (`fk_funcionario`),
  KEY `usuario_tecnico` (`fk_usuario`),
  CONSTRAINT `colegiado_tecnico` FOREIGN KEY (`fk_colegiado`) REFERENCES `tbl_colegiados` (`id_colegiado`),
  CONSTRAINT `funcionario_tecnico` FOREIGN KEY (`fk_funcionario`) REFERENCES `tbl_funcionarios` (`id_funcionario`),
  CONSTRAINT `usuario_tecnico` FOREIGN KEY (`fk_usuario`) REFERENCES `tbl_usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionarios_tecnicos`
--

LOCK TABLES `tbl_funcionarios_tecnicos` WRITE;
/*!40000 ALTER TABLE `tbl_funcionarios_tecnicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_funcionarios_tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_historicos`
--

DROP TABLE IF EXISTS `tbl_historicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_historicos` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `fk_discente` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `historico_discente` (`fk_discente`),
  CONSTRAINT `historico_discente` FOREIGN KEY (`fk_discente`) REFERENCES `tbl_discentes` (`id_discente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_historicos`
--

LOCK TABLES `tbl_historicos` WRITE;
/*!40000 ALTER TABLE `tbl_historicos` DISABLE KEYS */;
INSERT INTO `tbl_historicos` VALUES (1,1,'2018-05-01','2021-12-06');
/*!40000 ALTER TABLE `tbl_historicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logradouros`
--

DROP TABLE IF EXISTS `tbl_logradouros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_logradouros` (
  `id_logradouro` int(11) NOT NULL AUTO_INCREMENT,
  `descricao_logradouro` varchar(15) NOT NULL,
  `logradouro` varchar(7) NOT NULL,
  PRIMARY KEY (`id_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logradouros`
--

LOCK TABLES `tbl_logradouros` WRITE;
/*!40000 ALTER TABLE `tbl_logradouros` DISABLE KEYS */;
INSERT INTO `tbl_logradouros` VALUES (1,'Aeroporto','Aero'),(2,'Alameda','Alm'),(3,'Avenida','Av'),(4,'Campo','Cmp'),(5,'Chácara','Chac'),(6,'Colônia','Col'),(7,'Condominio','Cond'),(8,'Conjunto','Conj'),(9,'Destrito','Destri'),(10,'Chácara','Chac'),(11,'Esplanada','Espl'),(12,'Estação','Est'),(13,'Estrada','Estr'),(14,'Favala','Fav'),(15,'Feira','Feir'),(16,'Jardim','Jard'),(17,'Ladeira','Lad'),(18,'Lago','Lago'),(19,'Lagoa','Lagoa'),(20,'Largo','Largo'),(21,'Loteamento','Lote'),(22,'Morro','Morro'),(23,'Núcleo','Nucl'),(24,'Parque','Parq'),(25,'Passarela','Passa'),(26,'Praça','Praça'),(27,'Pátio','Pátio'),(28,'Quadra','Quad'),(29,'Recanto','Recan'),(30,'Residencial','Resid'),(31,'Rodovia','Rod'),(32,'Rua','Rua'),(33,'Sertor','Sertor'),(34,'Sítio','Sítio'),(35,'Travessa','Trav'),(36,'Trecho','Trec'),(37,'Trevo','Trev'),(38,'Vale','Vale'),(39,'Vereda','Vere'),(40,'Via','Via'),(41,'Viaduto','Viadu'),(42,'Viela','Viela'),(43,'Vila','Vila'),(44,'Área','Área');
/*!40000 ALTER TABLE `tbl_logradouros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reitorias`
--

DROP TABLE IF EXISTS `tbl_reitorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reitorias` (
  `id_reitoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_reitoria` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_reitoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reitorias`
--

LOCK TABLES `tbl_reitorias` WRITE;
/*!40000 ALTER TABLE `tbl_reitorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reitorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ruas`
--

DROP TABLE IF EXISTS `tbl_ruas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ruas` (
  `id_rua` int(11) NOT NULL AUTO_INCREMENT,
  `fk_bairro` int(11) NOT NULL,
  `fk_logradouro` int(11) NOT NULL,
  `nome_rua` varchar(100) NOT NULL,
  `cep` int(10) NOT NULL,
  PRIMARY KEY (`id_rua`),
  KEY `bairro_rua` (`fk_bairro`),
  KEY `logradouro_rua` (`fk_logradouro`),
  CONSTRAINT `bairro_rua` FOREIGN KEY (`fk_bairro`) REFERENCES `tbl_bairros` (`id_bairro`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `logradouro_rua` FOREIGN KEY (`fk_logradouro`) REFERENCES `tbl_logradouros` (`id_logradouro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ruas`
--

LOCK TABLES `tbl_ruas` WRITE;
/*!40000 ALTER TABLE `tbl_ruas` DISABLE KEYS */;
INSERT INTO `tbl_ruas` VALUES (1,6,7,'Fortunato Peres',68904160),(2,6,1,'Claudomiro de Moraes',68904001);
/*!40000 ALTER TABLE `tbl_ruas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_telefones_usuarios`
--

DROP TABLE IF EXISTS `tbl_telefones_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_telefones_usuarios` (
  `id_telefone_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `fk_usuario_telefone` int(11) NOT NULL,
  `fk_tipo_telefone` int(11) NOT NULL,
  `fk_ddd` int(11) NOT NULL,
  `numero_telefone_usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`id_telefone_usuario`),
  KEY `usuario_telefone` (`fk_usuario_telefone`),
  KEY `tipo_telefone` (`fk_tipo_telefone`),
  CONSTRAINT `tipo_telefone` FOREIGN KEY (`fk_tipo_telefone`) REFERENCES `tbl_tipos_telefone` (`id_tipo_telefone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `usuario_telefone` FOREIGN KEY (`fk_usuario_telefone`) REFERENCES `tbl_usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_telefones_usuarios`
--

LOCK TABLES `tbl_telefones_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_telefones_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_telefones_usuarios` VALUES (5,1,2,1,'99112-1212'),(6,2,2,1,'98112-1212'),(8,3,2,1,'99140-2020'),(9,11,2,1,'9 8112-1212');
/*!40000 ALTER TABLE `tbl_telefones_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipos_telefone`
--

DROP TABLE IF EXISTS `tbl_tipos_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_tipos_telefone` (
  `id_tipo_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_telefone` varchar(8) NOT NULL,
  PRIMARY KEY (`id_tipo_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipos_telefone`
--

LOCK TABLES `tbl_tipos_telefone` WRITE;
/*!40000 ALTER TABLE `tbl_tipos_telefone` DISABLE KEYS */;
INSERT INTO `tbl_tipos_telefone` VALUES (1,'Fixo'),(2,'Celular'),(3,'Fax');
/*!40000 ALTER TABLE `tbl_tipos_telefone` ENABLE KEYS */;
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
  `fk_turno` int(11) NOT NULL,
  `fk_calendario` int(11) NOT NULL,
  `numero_discentes_turma` int(11) NOT NULL,
  PRIMARY KEY (`id_turma`),
  KEY `turma_curso` (`fk_curso_turma`),
  KEY `calendario_turma` (`fk_calendario`),
  KEY `turno_turma` (`fk_turno`),
  CONSTRAINT `calendario_turma` FOREIGN KEY (`fk_calendario`) REFERENCES `tbl_calendarios` (`id_calendario`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `turma_curso` FOREIGN KEY (`fk_curso_turma`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `turno_turma` FOREIGN KEY (`fk_turno`) REFERENCES `tbl_turnos` (`id_turno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_turmas`
--

LOCK TABLES `tbl_turmas` WRITE;
/*!40000 ALTER TABLE `tbl_turmas` DISABLE KEYS */;
INSERT INTO `tbl_turmas` VALUES (1,3,3,1,30);
/*!40000 ALTER TABLE `tbl_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_turnos`
--

DROP TABLE IF EXISTS `tbl_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_turnos` (
  `id_turno` int(11) NOT NULL,
  `turno` varchar(32) NOT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_turnos`
--

LOCK TABLES `tbl_turnos` WRITE;
/*!40000 ALTER TABLE `tbl_turnos` DISABLE KEYS */;
INSERT INTO `tbl_turnos` VALUES (1,'Matutino'),(2,'Vespertino'),(3,'Noturno');
/*!40000 ALTER TABLE `tbl_turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ufs`
--

DROP TABLE IF EXISTS `tbl_ufs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ufs` (
  `id_uf` int(11) NOT NULL AUTO_INCREMENT,
  `uf` varchar(5) NOT NULL,
  `uf_descricao` varchar(20) NOT NULL,
  PRIMARY KEY (`id_uf`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ufs`
--

LOCK TABLES `tbl_ufs` WRITE;
/*!40000 ALTER TABLE `tbl_ufs` DISABLE KEYS */;
INSERT INTO `tbl_ufs` VALUES (1,'AC','Acre'),(2,'AL','Alagoas'),(3,'AM','Amazonas'),(4,'AP','Amapá'),(5,'BA','Bahia'),(6,'CE','Ceará'),(7,'DF','Distrito Federal'),(8,'ES','Espírito Santo'),(9,'GO','Goiás'),(10,'MA','Maranhão'),(11,'MG','Minas Gerais'),(12,'MS','Mato Grosso do Sul'),(13,'MT','Mato Grosso'),(14,'PA','Pará'),(15,'PB','Paraíba'),(16,'PE','Pernambuco'),(17,'PI','Piauí'),(18,'PR','Paraná'),(19,'RJ','Rio de Janeiro'),(20,'RN','Rio Grande do Norte'),(21,'RO','Rondonia'),(22,'RR','Roraima'),(23,'RS','Rio Grande do Sul'),(24,'SC','Santa Catarina'),(25,'SE','Sergipe'),(26,'SP','São Paulo'),(27,'TO','Tocantins');
/*!40000 ALTER TABLE `tbl_ufs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(30) NOT NULL,
  `sobrenome_usuario` varchar(30) NOT NULL,
  `cpf_usuario` varchar(100) NOT NULL,
  `situacao_usuario` tinyint(1) NOT NULL,
  `sexo_usuario` tinyint(1) NOT NULL,
  `pai_usuario` varchar(60) NOT NULL,
  `mae_usuario` varchar(60) NOT NULL,
  `email_usuario` varchar(90) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES (1,'Miguel','dos Anjos de Almeida','99999999911',0,0,'Carlos dos Anjos','Maria de Almeida','miguel@unifap.br'),(2,'Sofia','Brasil Dias','88888888811',0,0,'João Brasil','Rubi Dias','sofia@unifap.br'),(3,'Arthur','Bezerra Souza','77777777711',0,0,'Vando Bezerra','Maria Souza Bezerra','arthur@gmail.com'),(4,'Julia','Pereira Moraes','66666666611',0,0,'Manoel Moraes','Isa Pereira','julia@gmail.com'),(11,'Adeildo','Silva','789654321147',1,1,'Silva Pai','Silva Mae','adeildo@unifap.br');
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_analistas`
--

DROP TABLE IF EXISTS `view_analistas`;
/*!50001 DROP VIEW IF EXISTS `view_analistas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_analistas` AS SELECT 
 1 AS `Função`,
 1 AS `Carga Horária`,
 1 AS `Data de Admissão`,
 1 AS `Data de Demissão`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_colegiados`
--

DROP TABLE IF EXISTS `view_colegiados`;
/*!50001 DROP VIEW IF EXISTS `view_colegiados`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_colegiados` AS SELECT 
 1 AS `Nome`,
 1 AS `Sigla`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_cursos`
--

DROP TABLE IF EXISTS `view_cursos`;
/*!50001 DROP VIEW IF EXISTS `view_cursos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_cursos` AS SELECT 
 1 AS `Nome`,
 1 AS `Colegiado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_cursos_disciplinas`
--

DROP TABLE IF EXISTS `view_cursos_disciplinas`;
/*!50001 DROP VIEW IF EXISTS `view_cursos_disciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_cursos_disciplinas` AS SELECT 
 1 AS `Nome`,
 1 AS `Carga Horária`,
 1 AS `Curso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_discentes`
--

DROP TABLE IF EXISTS `view_discentes`;
/*!50001 DROP VIEW IF EXISTS `view_discentes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_discentes` AS SELECT 
 1 AS `Ano de Início`,
 1 AS `Nome`,
 1 AS `Curso`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_disciplinas`
--

DROP TABLE IF EXISTS `view_disciplinas`;
/*!50001 DROP VIEW IF EXISTS `view_disciplinas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_disciplinas` AS SELECT 
 1 AS `Nome`,
 1 AS `Carga Horária`,
 1 AS `Quantidade de Discentes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_docentes`
--

DROP TABLE IF EXISTS `view_docentes`;
/*!50001 DROP VIEW IF EXISTS `view_docentes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_docentes` AS SELECT 
 1 AS `Situação`,
 1 AS `Nome`,
 1 AS `Sobrenome`,
 1 AS `Colegiado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_enderecos_usuarios`
--

DROP TABLE IF EXISTS `view_enderecos_usuarios`;
/*!50001 DROP VIEW IF EXISTS `view_enderecos_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_enderecos_usuarios` AS SELECT 
 1 AS `Nome`,
 1 AS `Sobrenome`,
 1 AS `Logradouro`,
 1 AS `Endereço`,
 1 AS `Número`,
 1 AS `Complemento`,
 1 AS `Bairro`,
 1 AS `CEP`,
 1 AS `Município`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_especialidades`
--

DROP TABLE IF EXISTS `view_especialidades`;
/*!50001 DROP VIEW IF EXISTS `view_especialidades`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_especialidades` AS SELECT 
 1 AS `Area`,
 1 AS `Grau`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_funcionarios`
--

DROP TABLE IF EXISTS `view_funcionarios`;
/*!50001 DROP VIEW IF EXISTS `view_funcionarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_funcionarios` AS SELECT 
 1 AS `Função`,
 1 AS `Carga Horária`,
 1 AS `Data de Admissão`,
 1 AS `Data de Demissão`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_funcionarios_analistas`
--

DROP TABLE IF EXISTS `view_funcionarios_analistas`;
/*!50001 DROP VIEW IF EXISTS `view_funcionarios_analistas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_funcionarios_analistas` AS SELECT 
 1 AS `Salário`,
 1 AS `Nome`,
 1 AS `Colegiado`,
 1 AS `Função`,
 1 AS `Especialidade`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_usuario`
--

DROP TABLE IF EXISTS `view_usuario`;
/*!50001 DROP VIEW IF EXISTS `view_usuario`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_usuario` AS SELECT 
 1 AS `Nome`,
 1 AS `Sobrenome`,
 1 AS `Email`,
 1 AS `CPF`,
 1 AS `Situação`,
 1 AS `Sexo`,
 1 AS `Nome do Pai`,
 1 AS `Nome da Mãe`,
 1 AS `Tipo de Telefone`,
 1 AS `DDD`,
 1 AS `Número de Telefone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_usuarios`
--

DROP TABLE IF EXISTS `view_usuarios`;
/*!50001 DROP VIEW IF EXISTS `view_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_usuarios` AS SELECT 
 1 AS `Nome`,
 1 AS `Sobrenome`,
 1 AS `Email`,
 1 AS `CPF`,
 1 AS `Situação`,
 1 AS `Sexo`,
 1 AS `Nome do Pai`,
 1 AS `Nome da Mãe`,
 1 AS `Tipo de Telefone`,
 1 AS `Número de Telefone`,
 1 AS `DDD`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_analistas`
--

/*!50001 DROP VIEW IF EXISTS `view_analistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_analistas` AS select `view_funcionarios`.`Função` AS `Função`,`view_funcionarios`.`Carga Horária` AS `Carga Horária`,`view_funcionarios`.`Data de Admissão` AS `Data de Admissão`,`view_funcionarios`.`Data de Demissão` AS `Data de Demissão` from `view_funcionarios` union select `view_funcionarios_analistas`.`Salário` AS `Salário`,`view_funcionarios_analistas`.`Nome` AS `Nome`,`view_funcionarios_analistas`.`Colegiado` AS `Colegiado`,`view_funcionarios_analistas`.`Especialidade` AS `Especialidade` from `view_funcionarios_analistas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_colegiados`
--

/*!50001 DROP VIEW IF EXISTS `view_colegiados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_colegiados` AS select `tbl_colegiados`.`nome_colegiado` AS `Nome`,`tbl_colegiados`.`codigo_colegiado` AS `Sigla` from `tbl_colegiados` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cursos`
--

/*!50001 DROP VIEW IF EXISTS `view_cursos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cursos` AS select `tbl_cursos`.`nome_curso` AS `Nome`,`tbl_colegiados`.`codigo_colegiado` AS `Colegiado` from (`tbl_cursos` join `tbl_colegiados` on((`tbl_cursos`.`fk_colegiado_curso` = `tbl_colegiados`.`id_colegiado`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cursos_disciplinas`
--

/*!50001 DROP VIEW IF EXISTS `view_cursos_disciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cursos_disciplinas` AS select `tbl_disciplinas`.`nome_disciplina` AS `Nome`,`tbl_disciplinas`.`carga_horaria_disciplina` AS `Carga Horária`,`tbl_cursos`.`nome_curso` AS `Curso` from ((`tbl_cursos_disciplinas` join `tbl_cursos` on((`tbl_cursos_disciplinas`.`fk_curso` = `tbl_cursos`.`id_curso`))) join `tbl_disciplinas` on((`tbl_cursos_disciplinas`.`fk_curso` = `tbl_disciplinas`.`id_disciplina`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_discentes`
--

/*!50001 DROP VIEW IF EXISTS `view_discentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_discentes` AS select `tbl_discentes`.`ano_inicio` AS `Ano de Início`,`tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_cursos`.`nome_curso` AS `Curso` from ((`tbl_discentes` join `tbl_usuarios` on((`tbl_discentes`.`fk_usuario_discente` = `tbl_usuarios`.`id_usuario`))) join `tbl_cursos` on((`tbl_discentes`.`fk_curso_discente` = `tbl_cursos`.`id_curso`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_disciplinas`
--

/*!50001 DROP VIEW IF EXISTS `view_disciplinas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_disciplinas` AS select `tbl_disciplinas`.`nome_disciplina` AS `Nome`,`tbl_disciplinas`.`carga_horaria_disciplina` AS `Carga Horária`,`tbl_disciplinas`.`numero_discentes_disciplina` AS `Quantidade de Discentes` from `tbl_disciplinas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_docentes`
--

/*!50001 DROP VIEW IF EXISTS `view_docentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_docentes` AS select (case `tbl_docentes`.`situacao_docente` when 0 then 'Efetivado' when 1 then 'Não efetivado' else NULL end) AS `Situação`,`tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,`tbl_colegiados`.`codigo_colegiado` AS `Colegiado` from ((`tbl_docentes` join `tbl_usuarios` on((`tbl_docentes`.`fk_usuario_docente` = `tbl_usuarios`.`id_usuario`))) join `tbl_colegiados` on((`tbl_docentes`.`fk_colegiado_docente` = `tbl_colegiados`.`id_colegiado`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_enderecos_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `view_enderecos_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_enderecos_usuarios` AS select `tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,`tbl_logradouros`.`descricao_logradouro` AS `Logradouro`,`tbl_ruas`.`nome_rua` AS `Endereço`,`tbl_enderecos`.`numero_casa` AS `Número`,`tbl_enderecos`.`complemento_casa` AS `Complemento`,`tbl_bairros`.`bairro` AS `Bairro`,`tbl_ruas`.`cep` AS `CEP`,`tbl_cidades`.`descricao_cidade` AS `Município`,`tbl_ufs`.`uf` AS `Estado` from ((((((`tbl_enderecos` join `tbl_usuarios` on((`tbl_enderecos`.`fk_usuario` = `tbl_usuarios`.`id_usuario`))) join `tbl_ruas` on((`tbl_enderecos`.`fk_rua` = `tbl_ruas`.`id_rua`))) join `tbl_bairros` on((`tbl_ruas`.`fk_bairro` = `tbl_bairros`.`id_bairro`))) join `tbl_logradouros` on((`tbl_ruas`.`fk_logradouro` = `tbl_logradouros`.`id_logradouro`))) join `tbl_cidades` on((`tbl_bairros`.`fk_cidade` = `tbl_cidades`.`id_cidade`))) join `tbl_ufs` on((`tbl_cidades`.`fk_uf` = `tbl_ufs`.`id_uf`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_especialidades`
--

/*!50001 DROP VIEW IF EXISTS `view_especialidades`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_especialidades` AS select `tbl_especialidades`.`area` AS `Area`,`tbl_especialidades`.`grau` AS `Grau` from `tbl_especialidades` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_funcionarios`
--

/*!50001 DROP VIEW IF EXISTS `view_funcionarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_funcionarios` AS select `tbl_funcionarios`.`vinculo` AS `Função`,`tbl_funcionarios`.`carga_horaria` AS `Carga Horária`,`tbl_funcionarios`.`data_admissao` AS `Data de Admissão`,`tbl_funcionarios`.`data_demissao` AS `Data de Demissão` from `tbl_funcionarios` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_funcionarios_analistas`
--

/*!50001 DROP VIEW IF EXISTS `view_funcionarios_analistas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_funcionarios_analistas` AS select `tbl_funcionarios_analistas`.`salario` AS `Salário`,`tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_colegiados`.`nome_colegiado` AS `Colegiado`,`tbl_funcionarios`.`vinculo` AS `Função`,`tbl_especialidades`.`area` AS `Especialidade` from ((((`tbl_funcionarios_analistas` join `tbl_usuarios` on((`tbl_funcionarios_analistas`.`fk_usuario` = `tbl_usuarios`.`id_usuario`))) join `tbl_colegiados` on((`tbl_funcionarios_analistas`.`fk_colegiado` = `tbl_colegiados`.`id_colegiado`))) join `tbl_funcionarios` on((`tbl_funcionarios_analistas`.`fk_funcionario` = `tbl_funcionarios`.`id_funcionario`))) join `tbl_especialidades` on((`tbl_funcionarios_analistas`.`fk_especialidade` = `tbl_especialidades`.`id_especialidade`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_usuario`
--

/*!50001 DROP VIEW IF EXISTS `view_usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_usuario` AS select `tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,`tbl_usuarios`.`email_usuario` AS `Email`,`tbl_usuarios`.`cpf_usuario` AS `CPF`,(case `tbl_usuarios`.`situacao_usuario` when 0 then 'Não Matriculado' when 1 then 'Matriculado' when 2 then 'Trancado' when 3 then 'Abandonado' when 4 then 'Concluído' else NULL end) AS `Situação`,(case `tbl_usuarios`.`sexo_usuario` when 0 then 'Masculino' when 1 then 'Feminino' else NULL end) AS `Sexo`,`tbl_usuarios`.`pai_usuario` AS `Nome do Pai`,`tbl_usuarios`.`mae_usuario` AS `Nome da Mãe`,`tbl_tipos_telefone`.`tipo_telefone` AS `Tipo de Telefone`,`tbl_ddds`.`ddd` AS `DDD`,`tbl_telefones_usuarios`.`numero_telefone_usuario` AS `Número de Telefone` from (((`tbl_usuarios` join `tbl_telefones_usuarios` on((`tbl_telefones_usuarios`.`fk_usuario_telefone` = `tbl_usuarios`.`id_usuario`))) join `tbl_tipos_telefone` on((`tbl_telefones_usuarios`.`fk_tipo_telefone` = `tbl_tipos_telefone`.`id_tipo_telefone`))) join `tbl_ddds` on((`tbl_telefones_usuarios`.`fk_ddd` = `tbl_ddds`.`id_ddd`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `view_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_usuarios` AS select `tbl_usuarios`.`nome_usuario` AS `Nome`,`tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,`tbl_usuarios`.`email_usuario` AS `Email`,`tbl_usuarios`.`cpf_usuario` AS `CPF`,(case `tbl_usuarios`.`situacao_usuario` when 0 then 'Não Matriculado' when 1 then 'Matriculado' when 2 then 'Trancado' when 3 then 'Abandonado' when 4 then 'Concluído' else NULL end) AS `Situação`,(case `tbl_usuarios`.`sexo_usuario` when 0 then 'Masculino' when 1 then 'Feminino' else NULL end) AS `Sexo`,`tbl_usuarios`.`pai_usuario` AS `Nome do Pai`,`tbl_usuarios`.`mae_usuario` AS `Nome da Mãe`,`tbl_tipos_telefone`.`tipo_telefone` AS `Tipo de Telefone`,`tbl_telefones_usuarios`.`numero_telefone_usuario` AS `Número de Telefone`,`tbl_ddds`.`ddd` AS `DDD` from (((`tbl_usuarios` join `tbl_telefones_usuarios` on((`tbl_telefones_usuarios`.`fk_usuario_telefone` = `tbl_usuarios`.`id_usuario`))) join `tbl_tipos_telefone` on((`tbl_telefones_usuarios`.`fk_tipo_telefone` = `tbl_tipos_telefone`.`id_tipo_telefone`))) join `tbl_ddds` on((`tbl_telefones_usuarios`.`fk_ddd` = `tbl_ddds`.`id_ddd`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-12 17:35:37
