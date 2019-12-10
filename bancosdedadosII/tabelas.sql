#TABELAS
create table tbl_reitoria(
	id_reitoria int not null primary key  auto_increment,
    nome varchar(120),
);

create table tbl_proreitoria(
	id_proreitoria int not null primary key  auto_increment,
    nome varchar(120),
    fk_reitoria
);

CREATE TABLE tbl_funcionario(
	matricula INT not null primary key  auto_increment,
    vinculo
    ocupacao
    salario
    carga_horaria
    data_admissao
	
);

create table tbl_func_professor(
	id_professor
    fk_funcionario
    fk_reitoria
    fk_especialidade
);

create table tbl_func_analista(
	id_analista
    fk_funcionario
    fk_reitoria
    fk _user
);

create table tabel tbl_func_tecnico(
	id_tecnico
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


create table tbl_semestre(
	id_semestre
    ano
    periodo_letivo
    data_inicio
    data_termino
);

