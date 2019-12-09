-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 22/10/2019 às 18:35
-- Versão do servidor: 10.3.17-MariaDB-0ubuntu0.19.04.1
-- Versão do PHP: 7.2.19-0ubuntu0.19.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `SISESC`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_aluno`
--

CREATE TABLE `tbl_aluno` (
  `id_aluno` int(11) NOT NULL,
  `fk_user_aluno` int(11) NOT NULL,
  `fk_curso_aluno` int(11) NOT NULL,
  `fk_turma_aluno` int(11) NOT NULL,
  `ano_inico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_aluno`
--

INSERT INTO `tbl_aluno` (`id_aluno`, `fk_user_aluno`, `fk_curso_aluno`, `fk_turma_aluno`, `ano_inico`) VALUES
(1, 1, 3, 1, 2018);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_aluno_disc`
--

CREATE TABLE `tbl_aluno_disc` (
  `id_aluno_disc` int(11) NOT NULL,
  `fk_aluno` int(11) NOT NULL,
  `fk_dicsc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_aluno_disc`
--

INSERT INTO `tbl_aluno_disc` (`id_aluno_disc`, `fk_aluno`, `fk_dicsc`) VALUES
(1, 1, 3),
(2, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_bairros`
--

CREATE TABLE `tbl_bairros` (
  `BRRS_ID` int(11) NOT NULL,
  `CID_ID_FK` int(11) NOT NULL,
  `BAIRRO` varchar(50) NOT NULL,
  `IBGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_bairros`
--

INSERT INTO `tbl_bairros` (`BRRS_ID`, `CID_ID_FK`, `BAIRRO`, `IBGE`) VALUES
(1, 11990, 'Alvorada', 99),
(2, 11990, 'Araxá', 99),
(3, 11990, 'Beirol', 99),
(4, 11990, 'Boné Azul', 99),
(5, 11990, 'Brasil Novo', 99),
(6, 11990, 'Buritizal', 99),
(7, 11990, 'Cabralzinho', 99),
(8, 11990, 'Central', 99),
(9, 11990, 'Cidade Nova', 99),
(10, 11990, 'Congós', 99),
(11, 11990, 'Infraero', 99),
(12, 11990, 'Jardim Equatorial', 99),
(13, 11990, 'Jardim Felicidade', 99),
(14, 11990, 'Jesus de Nazaré', 99),
(15, 11990, 'Laguinho', 99),
(16, 11990, 'Marco Zero', 99),
(17, 11990, 'Nova Esperança', 99),
(18, 11990, 'Novo Buritizal', 99),
(19, 11990, 'Novo Horizonte', 99),
(20, 11990, 'Pacoval', 99),
(21, 11990, 'Pantanal', 99),
(22, 11990, 'Pedrinhas', 99),
(23, 11990, 'Perpétuo Socorro', 99),
(24, 11990, 'Santa Inês', 99),
(25, 11990, 'Santa Rita', 99),
(26, 11990, 'Trem', 99),
(27, 11990, 'Universidade', 99),
(28, 11990, 'Zerão', 99),
(29, 11995, 'Paraíso', 99),
(30, 11995, 'Dos Remédios', 99),
(31, 11995, 'Fonte Nova', 99),
(32, 11995, 'central', 99),
(33, 11995, 'Comercial', 99),
(34, 11995, 'Hospitalidade', 99),
(35, 11995, 'Nova Brasília', 99),
(36, 11995, 'Provedor', 99),
(37, 11995, 'Igarapé de Fortaleza', 99),
(38, 11995, 'Novo Horizonte', 99),
(39, 11995, 'Vila Amazonas', 99),
(40, 11995, 'Elesbão', 99);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_cidades`
--

CREATE TABLE `tbl_cidades` (
  `CID_ID` int(11) NOT NULL,
  `CID_DESCRICAO` varchar(50) DEFAULT NULL,
  `UF_ID_FK` int(11) NOT NULL,
  `DRS_ID` varchar(50) DEFAULT NULL,
  `CID_NUM_IBGE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_cidades`
--

INSERT INTO `tbl_cidades` (`CID_ID`, `CID_DESCRICAO`, `UF_ID_FK`, `DRS_ID`, `CID_NUM_IBGE`) VALUES
(11983, 'Pedra Branca do Amapari', 4, NULL, '160015'),
(11984, 'Amapa', 4, NULL, '160010'),
(11985, 'Calcoene', 4, NULL, '160020'),
(11986, 'Cutias', 4, NULL, '160021'),
(11987, 'Ferreira Gomes', 4, NULL, '160023'),
(11988, 'Itaubal', 4, NULL, '160025'),
(11989, 'Laranjal do Jari', 4, NULL, '160027'),
(11990, 'Macapa', 4, NULL, '160030'),
(11991, 'Mazagao', 4, NULL, '160040'),
(11992, 'Oiapoque', 4, NULL, '160050'),
(11993, 'Porto Grande', 4, NULL, '160053'),
(11994, 'Pracuuba', 4, NULL, '160055'),
(11995, 'Santana', 4, NULL, '160060'),
(11996, 'Serra do Navio', 4, NULL, '160005'),
(11997, 'Tartarugalzinho', 4, NULL, '160070'),
(11998, 'Vitoria do Jari', 4, NULL, '160080');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_colegiado`
--

CREATE TABLE `tbl_colegiado` (
  `id_colegiado` int(11) NOT NULL,
  `nome_colegiado` varchar(50) NOT NULL,
  `cod_colegiado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_colegiado`
--

INSERT INTO `tbl_colegiado` (`id_colegiado`, `nome_colegiado`, `cod_colegiado`) VALUES
(1, 'DEPARTAMENTO DE CIÊNCIAS EXATAS E TECNOLOGIAS', 'DCET'),
(2, ' DEPARTAMENTO DE CIÊNCIAS BIOLÓGICAS E DA SAÚDE', 'DCBS');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_cursos`
--

CREATE TABLE `tbl_cursos` (
  `id_curso` int(11) NOT NULL,
  `fk_coleg_curso` int(11) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `cod_curso` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_cursos`
--

INSERT INTO `tbl_cursos` (`id_curso`, `fk_coleg_curso`, `nome_curso`, `cod_curso`) VALUES
(1, 1, 'ARQUITETURA E URBANISMO', 'ARQ.URB'),
(2, 1, 'ENGENHARIA CIVIL', 'ENG.CIV'),
(3, 1, 'CIÊNCIA DA COMPUTAÇÃO', 'C.C'),
(4, 1, 'ENGENHARIA ELETRICA', 'ENG.ELET'),
(5, 1, 'FISICA', 'FISICA'),
(6, 1, 'MATEMATICA', 'MATEMATICA'),
(7, 1, 'QUÍMICA', 'QUÍMICA'),
(14, 2, 'CIENCIAS BIOLOGICAS', 'CIEN.BIOL'),
(15, 2, 'ENFERMAGEM', 'ENFERMA'),
(16, 2, 'FARMÁCIA', 'FARMA'),
(17, 2, 'FISIOTERAPIA', 'FISIOTE'),
(26, 2, 'MEDICINA', 'MEDICINA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_curso_discip`
--

CREATE TABLE `tbl_curso_discip` (
  `id_curso_discp` int(11) NOT NULL,
  `fk_curso` int(11) NOT NULL,
  `fk_discip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_curso_discip`
--

INSERT INTO `tbl_curso_discip` (`id_curso_discp`, `fk_curso`, `fk_discip`) VALUES
(1, 3, 3),
(2, 3, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_disciplina`
--

CREATE TABLE `tbl_disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `fk_depende_discipl` int(11) NOT NULL,
  `nome_discipl` varchar(50) NOT NULL,
  `carga_hora_disc` int(11) NOT NULL,
  `num_aluno_disc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_disciplina`
--

INSERT INTO `tbl_disciplina` (`id_disciplina`, `fk_depende_discipl`, `nome_discipl`, `carga_hora_disc`, `num_aluno_disc`) VALUES
(3, 0, 'Banco de dados I', 90, 30),
(4, 3, 'Banco de dados II', 90, 30),
(5, 0, 'cálculo I', 90, 30),
(6, 5, 'cálculo II', 120, 30);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_disc_hist`
--

CREATE TABLE `tbl_disc_hist` (
  `id_disc_hist` int(11) NOT NULL,
  `fk_disc_hist` int(11) NOT NULL,
  `fk_hist` int(11) NOT NULL,
  `nota_disc_hist` float NOT NULL,
  `frequencia_disc_hist` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_disc_hist`
--

INSERT INTO `tbl_disc_hist` (`id_disc_hist`, `fk_disc_hist`, `fk_hist`, `nota_disc_hist`, `frequencia_disc_hist`) VALUES
(1, 5, 1, 9, 0),
(2, 3, 1, 9, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_end`
--

CREATE TABLE `tbl_end` (
  `id_end` int(11) NOT NULL,
  `fk_user_end` int(11) NOT NULL,
  `kf_lograd` int(11) NOT NULL,
  `fk_rua` int(11) NOT NULL,
  `n_casa` varchar(15) NOT NULL,
  `complemento` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_end`
--

INSERT INTO `tbl_end` (`id_end`, `fk_user_end`, `kf_lograd`, `fk_rua`, `n_casa`, `complemento`) VALUES
(5, 1, 7, 1, '660', 'casa'),
(6, 2, 1, 2, '896a', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_historico`
--

CREATE TABLE `tbl_historico` (
  `id_historico` int(11) NOT NULL,
  `fk_aluno_hist` int(11) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_historico`
--

INSERT INTO `tbl_historico` (`id_historico`, `fk_aluno_hist`, `data_inicio`, `data_fim`) VALUES
(1, 1, '2018-05-01', '2021-12-06');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_logradouro`
--

CREATE TABLE `tbl_logradouro` (
  `LOGRAD_ID` int(11) NOT NULL,
  `LOGRAD_DESCRICAO` varchar(15) NOT NULL,
  `LOGRAD` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_logradouro`
--

INSERT INTO `tbl_logradouro` (`LOGRAD_ID`, `LOGRAD_DESCRICAO`, `LOGRAD`) VALUES
(1, 'AEROPORTO', 'AERO'),
(2, 'ALAMEDA', 'ALM'),
(3, 'AVENIDA', 'AV'),
(4, 'CAMPO', 'CMP'),
(5, 'CHÁCARA', 'CHAC'),
(6, 'COLÔNIA', 'COL'),
(7, 'CONDÓMINIO', 'COND'),
(8, 'CONJUNTO', 'CONJ'),
(9, 'DESTRITO', 'DESTRI'),
(10, 'CHÁCARA', 'CHAC'),
(11, 'ESPLANADA', 'ESPL'),
(12, 'ESTAÇÃO', 'EST'),
(13, 'ESTRADA', 'ESTR'),
(14, 'FAVALA', 'FAV'),
(15, 'FEIRA', 'FEIR'),
(16, 'JARDIM', 'JARD'),
(17, 'LADEIRA', 'LAD'),
(18, 'LAGO', 'LAGO'),
(19, 'LAGOA', 'LAGOA'),
(20, 'LARGO', 'LARGO'),
(21, 'LOTEAMENTO', 'LOTE'),
(22, 'MORRO', 'MORRO'),
(23, 'NÚCLEO', 'NUCL'),
(24, 'PARQUE', 'PARQ'),
(25, 'PASSARELA', 'PASSA'),
(26, 'PRAÇA', 'PRAÇA'),
(27, 'PÁTIO', 'PÁTIO'),
(28, 'QUADRA', 'QUAD'),
(29, 'RECANTO', 'RECAN'),
(30, 'RESIDENCIAL', 'RESID'),
(31, 'RODOVIA', 'ROD'),
(32, 'RUA', 'RUA'),
(33, 'SERTOR', 'SERTOR'),
(34, 'SÍTIO', 'SÍTIO'),
(35, 'TRAVESSA', 'TRAV'),
(36, 'TRECHO', 'TREC'),
(37, 'TREVO', 'TREV'),
(38, 'VALE', 'VALE'),
(39, 'VEREDA', 'VERE'),
(40, 'VIA', 'VIA'),
(41, 'VIADUTO', 'VIADU'),
(42, 'VIELA', 'VIELA'),
(43, 'VILA', 'VILA'),
(44, 'ÁREA', 'ÁREA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_professor`
--

CREATE TABLE `tbl_professor` (
  `id_prof` int(11) NOT NULL,
  `fk_user_prof` int(11) NOT NULL,
  `fk_coleg_prof` int(11) NOT NULL,
  `status_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_professor`
--

INSERT INTO `tbl_professor` (`id_prof`, `fk_user_prof`, `fk_coleg_prof`, `status_prof`) VALUES
(1, 4, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_prof_disc`
--

CREATE TABLE `tbl_prof_disc` (
  `id_prof_disc` int(11) NOT NULL,
  `fk_professor` int(11) NOT NULL,
  `fk_discip_prof` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_prof_disc`
--

INSERT INTO `tbl_prof_disc` (`id_prof_disc`, `fk_professor`, `fk_discip_prof`) VALUES
(1, 1, 3),
(2, 1, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_rua`
--

CREATE TABLE `tbl_rua` (
  `id_rua` int(11) NOT NULL,
  `fkbrrs` int(11) NOT NULL,
  `nome_rua` varchar(100) NOT NULL,
  `CEP` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `tbl_rua`
--

INSERT INTO `tbl_rua` (`id_rua`, `fkbrrs`, `nome_rua`, `CEP`) VALUES
(1, 6, 'FORTUNATO PERES', 68904160),
(2, 6, 'Claudomiro de Moraes', 68904001);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_tel_user`
--

CREATE TABLE `tbl_tel_user` (
  `id_tel_user` int(11) NOT NULL,
  `fk_user_tel` int(11) NOT NULL,
  `fk_tipo_tel` int(11) NOT NULL,
  `numero_tel_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_tel_user`
--

INSERT INTO `tbl_tel_user` (`id_tel_user`, `fk_user_tel`, `fk_tipo_tel`, `numero_tel_user`) VALUES
(5, 1, 2, '(96) 99112-1212'),
(6, 2, 2, '(96) 98112-1212'),
(8, 10, 2, '(99)9999-9999');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_tipo_tel`
--

CREATE TABLE `tbl_tipo_tel` (
  `id_tipo_tel` int(11) NOT NULL,
  `tipo_tel` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_tipo_tel`
--

INSERT INTO `tbl_tipo_tel` (`id_tipo_tel`, `tipo_tel`) VALUES
(1, 'Fixo'),
(2, 'celular'),
(3, 'Fax');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_turmas`
--

CREATE TABLE `tbl_turmas` (
  `id_turma` int(11) NOT NULL,
  `fk_curso_turma` int(11) NOT NULL,
  `numero_alunos_tur` int(11) NOT NULL,
  `periodo` varchar(4) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_turmas`
--

INSERT INTO `tbl_turmas` (`id_turma`, `fk_curso_turma`, `numero_alunos_tur`, `periodo`, `data_inicio`, `data_fim`) VALUES
(1, 3, 30, '1', '2019-08-01', '2019-12-05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_uf`
--

CREATE TABLE `tbl_uf` (
  `UF_ID` int(11) NOT NULL,
  `UF` varchar(5) NOT NULL,
  `UF_DESCRICAO` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_uf`
--

INSERT INTO `tbl_uf` (`UF_ID`, `UF`, `UF_DESCRICAO`) VALUES
(1, 'AC', 'Acre'),
(2, 'AL', 'Alagoas'),
(3, 'AM', 'Amazonas'),
(4, 'AP', 'Amapá'),
(5, 'BA', 'Bahia'),
(6, 'CE', 'Ceará'),
(7, 'DF', 'Distrito Federal'),
(8, 'ES', 'Espírito Santo'),
(9, 'GO', 'Goiás'),
(10, 'MA', 'Maranhão'),
(11, 'MG', 'Minas Gerais'),
(12, 'MS', 'Mato Grosso do Sul'),
(13, 'MT', 'Mato Grosso'),
(14, 'PA', 'Pará'),
(15, 'PB', 'Paraíba'),
(16, 'PE', 'Pernambuco'),
(17, 'PI', 'Piauí'),
(18, 'PR', 'Paraná'),
(19, 'RJ', 'Rio de Janeiro'),
(20, 'RN', 'Rio Grande do Norte'),
(21, 'RO', 'Rondonia'),
(22, 'RR', 'Roraima'),
(23, 'RS', 'Rio Grande do Sul'),
(24, 'SC', 'Santa Catarina'),
(25, 'SE', 'Sergipe'),
(26, 'SP', 'São Paulo'),
(27, 'TO', 'Tocantins');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nome_user` varchar(30) NOT NULL,
  `sobrenome_user` varchar(30) NOT NULL,
  `cpf_user` varchar(100) NOT NULL,
  `status_user` tinyint(1) NOT NULL,
  `sexo_user` char(1) NOT NULL,
  `pai_user` varchar(60) NOT NULL,
  `mae_user` varchar(60) NOT NULL,
  `email_user` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nome_user`, `sobrenome_user`, `cpf_user`, `status_user`, `sexo_user`, `pai_user`, `mae_user`, `email_user`) VALUES
(1, 'Miguel', 'dos anjos de almeida', '99999999911', 0, 'm', 'carlos dos anjos', 'maria de almeida', 'miguel@unifap.br'),
(2, 'sofia', 'brasil dias', '88888888811', 0, 'f', 'joão brasil', 'rubi dias', 'sofia@unifap.br'),
(3, 'Arthur', 'bezerra souza', '77777777711', 0, 'm', 'vando bezerra', 'maria souza bezerra', 'Arthur@gmail.com'),
(4, 'Julia', 'pereira moraes', '66666666611', 0, 'f', 'manoel moraes', 'isa pereira', 'Julia@gmail.com'),
(9, 'vai', 'vai', '999', 0, 'm', 'vai', 'vai', 'cai@cai'),
(10, 'unifap', 'unifap', '1111', 0, 'm', 'unifap', 'unifap', 'unifap@unifap.com');

--
-- Gatilhos `tbl_user`
--
DELIMITER $$
CREATE TRIGGER `insert_tell` AFTER INSERT ON `tbl_user` FOR EACH ROW INSERT INTO tbl_tel_user VALUES (NULL, new.id_user, 2 , '(99)9999-9999')
$$
DELIMITER ;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `tbl_aluno`
--
ALTER TABLE `tbl_aluno`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `user_aluno` (`fk_user_aluno`),
  ADD KEY `turma_aluno` (`fk_turma_aluno`),
  ADD KEY `curso_aluno` (`fk_curso_aluno`);

--
-- Índices de tabela `tbl_aluno_disc`
--
ALTER TABLE `tbl_aluno_disc`
  ADD PRIMARY KEY (`id_aluno_disc`),
  ADD KEY `aluno_fk` (`fk_aluno`),
  ADD KEY `disc_fk` (`fk_dicsc`);

--
-- Índices de tabela `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  ADD PRIMARY KEY (`BRRS_ID`),
  ADD KEY `CID_ID_FK` (`CID_ID_FK`);

--
-- Índices de tabela `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  ADD PRIMARY KEY (`CID_ID`),
  ADD KEY `UF_ID_FK` (`UF_ID_FK`);

--
-- Índices de tabela `tbl_colegiado`
--
ALTER TABLE `tbl_colegiado`
  ADD PRIMARY KEY (`id_colegiado`);

--
-- Índices de tabela `tbl_cursos`
--
ALTER TABLE `tbl_cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `colegiado_curso` (`fk_coleg_curso`);

--
-- Índices de tabela `tbl_curso_discip`
--
ALTER TABLE `tbl_curso_discip`
  ADD PRIMARY KEY (`id_curso_discp`),
  ADD KEY `crurso_fk` (`fk_curso`),
  ADD KEY `disciplina_fk` (`fk_discip`);

--
-- Índices de tabela `tbl_disciplina`
--
ALTER TABLE `tbl_disciplina`
  ADD PRIMARY KEY (`id_disciplina`),
  ADD KEY `disc_disc` (`fk_depende_discipl`);

--
-- Índices de tabela `tbl_disc_hist`
--
ALTER TABLE `tbl_disc_hist`
  ADD PRIMARY KEY (`id_disc_hist`),
  ADD KEY `disc_hist` (`fk_disc_hist`),
  ADD KEY `hist_disc_hist` (`fk_hist`);

--
-- Índices de tabela `tbl_end`
--
ALTER TABLE `tbl_end`
  ADD PRIMARY KEY (`id_end`),
  ADD KEY `user_end` (`fk_user_end`),
  ADD KEY `bairro_end` (`fk_rua`),
  ADD KEY `log_end` (`kf_lograd`);

--
-- Índices de tabela `tbl_historico`
--
ALTER TABLE `tbl_historico`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `aluno_histo` (`fk_aluno_hist`);

--
-- Índices de tabela `tbl_logradouro`
--
ALTER TABLE `tbl_logradouro`
  ADD PRIMARY KEY (`LOGRAD_ID`);

--
-- Índices de tabela `tbl_professor`
--
ALTER TABLE `tbl_professor`
  ADD PRIMARY KEY (`id_prof`),
  ADD KEY `prof_user` (`fk_user_prof`),
  ADD KEY `prof_coleg` (`fk_coleg_prof`);

--
-- Índices de tabela `tbl_prof_disc`
--
ALTER TABLE `tbl_prof_disc`
  ADD PRIMARY KEY (`id_prof_disc`),
  ADD KEY `professor_fk` (`fk_professor`),
  ADD KEY `disciplina_prof_fk` (`fk_discip_prof`);

--
-- Índices de tabela `tbl_rua`
--
ALTER TABLE `tbl_rua`
  ADD PRIMARY KEY (`id_rua`),
  ADD KEY `rua_barrs` (`fkbrrs`);

--
-- Índices de tabela `tbl_tel_user`
--
ALTER TABLE `tbl_tel_user`
  ADD PRIMARY KEY (`id_tel_user`),
  ADD KEY `user_tel` (`fk_user_tel`),
  ADD KEY `tipo_tel` (`fk_tipo_tel`);

--
-- Índices de tabela `tbl_tipo_tel`
--
ALTER TABLE `tbl_tipo_tel`
  ADD PRIMARY KEY (`id_tipo_tel`);

--
-- Índices de tabela `tbl_turmas`
--
ALTER TABLE `tbl_turmas`
  ADD PRIMARY KEY (`id_turma`),
  ADD KEY `turma_curso` (`fk_curso_turma`);

--
-- Índices de tabela `tbl_uf`
--
ALTER TABLE `tbl_uf`
  ADD PRIMARY KEY (`UF_ID`);

--
-- Índices de tabela `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `tbl_aluno`
--
ALTER TABLE `tbl_aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tbl_aluno_disc`
--
ALTER TABLE `tbl_aluno_disc`
  MODIFY `id_aluno_disc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  MODIFY `BRRS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de tabela `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  MODIFY `CID_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11999;
--
-- AUTO_INCREMENT de tabela `tbl_colegiado`
--
ALTER TABLE `tbl_colegiado`
  MODIFY `id_colegiado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_cursos`
--
ALTER TABLE `tbl_cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de tabela `tbl_curso_discip`
--
ALTER TABLE `tbl_curso_discip`
  MODIFY `id_curso_discp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_disciplina`
--
ALTER TABLE `tbl_disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `tbl_disc_hist`
--
ALTER TABLE `tbl_disc_hist`
  MODIFY `id_disc_hist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_end`
--
ALTER TABLE `tbl_end`
  MODIFY `id_end` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `tbl_historico`
--
ALTER TABLE `tbl_historico`
  MODIFY `id_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tbl_logradouro`
--
ALTER TABLE `tbl_logradouro`
  MODIFY `LOGRAD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de tabela `tbl_professor`
--
ALTER TABLE `tbl_professor`
  MODIFY `id_prof` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tbl_prof_disc`
--
ALTER TABLE `tbl_prof_disc`
  MODIFY `id_prof_disc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_rua`
--
ALTER TABLE `tbl_rua`
  MODIFY `id_rua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `tbl_tel_user`
--
ALTER TABLE `tbl_tel_user`
  MODIFY `id_tel_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `tbl_tipo_tel`
--
ALTER TABLE `tbl_tipo_tel`
  MODIFY `id_tipo_tel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `tbl_turmas`
--
ALTER TABLE `tbl_turmas`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `tbl_uf`
--
ALTER TABLE `tbl_uf`
  MODIFY `UF_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `tbl_aluno`
--
ALTER TABLE `tbl_aluno`
  ADD CONSTRAINT `curso_aluno` FOREIGN KEY (`fk_curso_aluno`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `turma_aluno` FOREIGN KEY (`fk_turma_aluno`) REFERENCES `tbl_turmas` (`id_turma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_aluno` FOREIGN KEY (`fk_user_aluno`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_aluno_disc`
--
ALTER TABLE `tbl_aluno_disc`
  ADD CONSTRAINT `aluno_fk` FOREIGN KEY (`fk_aluno`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disc_fk` FOREIGN KEY (`fk_dicsc`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_bairros`
--
ALTER TABLE `tbl_bairros`
  ADD CONSTRAINT `cid_brrs` FOREIGN KEY (`CID_ID_FK`) REFERENCES `tbl_cidades` (`CID_ID`);

--
-- Restrições para tabelas `tbl_cidades`
--
ALTER TABLE `tbl_cidades`
  ADD CONSTRAINT `uf_cid` FOREIGN KEY (`UF_ID_FK`) REFERENCES `tbl_uf` (`UF_ID`);

--
-- Restrições para tabelas `tbl_cursos`
--
ALTER TABLE `tbl_cursos`
  ADD CONSTRAINT `colegiado_curso` FOREIGN KEY (`fk_coleg_curso`) REFERENCES `tbl_colegiado` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_curso_discip`
--
ALTER TABLE `tbl_curso_discip`
  ADD CONSTRAINT `crurso_fk` FOREIGN KEY (`fk_curso`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disciplina_fk` FOREIGN KEY (`fk_discip`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_disc_hist`
--
ALTER TABLE `tbl_disc_hist`
  ADD CONSTRAINT `disc_hist` FOREIGN KEY (`fk_disc_hist`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hist_disc_hist` FOREIGN KEY (`fk_hist`) REFERENCES `tbl_historico` (`id_historico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_end`
--
ALTER TABLE `tbl_end`
  ADD CONSTRAINT `log_end` FOREIGN KEY (`kf_lograd`) REFERENCES `tbl_logradouro` (`LOGRAD_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rua_end` FOREIGN KEY (`fk_rua`) REFERENCES `tbl_rua` (`id_rua`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_end` FOREIGN KEY (`fk_user_end`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_historico`
--
ALTER TABLE `tbl_historico`
  ADD CONSTRAINT `aluno_histo` FOREIGN KEY (`fk_aluno_hist`) REFERENCES `tbl_aluno` (`id_aluno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_professor`
--
ALTER TABLE `tbl_professor`
  ADD CONSTRAINT `prof_coleg` FOREIGN KEY (`fk_coleg_prof`) REFERENCES `tbl_colegiado` (`id_colegiado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prof_user` FOREIGN KEY (`fk_user_prof`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_prof_disc`
--
ALTER TABLE `tbl_prof_disc`
  ADD CONSTRAINT `disciplina_prof_fk` FOREIGN KEY (`fk_discip_prof`) REFERENCES `tbl_disciplina` (`id_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `professor_fk` FOREIGN KEY (`fk_professor`) REFERENCES `tbl_professor` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_rua`
--
ALTER TABLE `tbl_rua`
  ADD CONSTRAINT `rua_barrs` FOREIGN KEY (`fkbrrs`) REFERENCES `tbl_bairros` (`BRRS_ID`);

--
-- Restrições para tabelas `tbl_tel_user`
--
ALTER TABLE `tbl_tel_user`
  ADD CONSTRAINT `tipo_tel` FOREIGN KEY (`fk_tipo_tel`) REFERENCES `tbl_tipo_tel` (`id_tipo_tel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_tel` FOREIGN KEY (`fk_user_tel`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tbl_turmas`
--
ALTER TABLE `tbl_turmas`
  ADD CONSTRAINT `turma_curso` FOREIGN KEY (`fk_curso_turma`) REFERENCES `tbl_cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
