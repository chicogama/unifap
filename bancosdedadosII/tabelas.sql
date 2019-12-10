#TABELAS
create table tbl_reitoria(
	id_reitoria int not null primary key  auto_increment,
    nome varchar(120)
);

CREATE TABLE tbl_funcionario(
	matricula INT not null primary key  auto_increment,
    vinculo varchar (54),
    carga_horaria varchar (4),
    data_admissao date,
    data_demissao date
);

create table tbl_func_professor(
	id_professor int not null primary key  auto_increment,
    categoria varchar (32),
    regime varchar(100),
    salario decimal (8,2),
    fk_funcionario int,
    fk_reitoria int,
    fk_especialidade int,
);

create table tbl_func_analista(
	id_analista int not null primary key  auto_increment,
    ocupacao varchar (32),
    salario
    fk_funcionario
    fk_reitoria
    fk _user
);

create table tabel tbl_func_tecnico(
	id_tecnico
    ocupacao
    salario
    fk_funcionario
    fk_reitoria
    fk _user
);


create table tbl_especialidade(
	id_especialidade 
    area
    grau
);

create table tbl_sexo(
	id_sexo int not null primary key  auto_increment,
    sexo VARCHAR(32)
);

create table tbl_login(
	id_login
    fk_user
    login
    senha
);

create tabel tbl_ddd(
	id_ddd
    regiao
    fk_uf
);


create table tbl_calendario(
	id_calendario
    ano
    periodo
    data_inicio
    data_termino
);

