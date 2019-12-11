#TABELAS
create table tbl_reitoria(
	id_reitoria int not null primary key  auto_increment,
    nome varchar(120)
);

alter table tbl_colegiado
add column fk_reitoria int after id_colegiado;

alter table tbl_colegiado
add foreign key (fk_reitoria) references tbl_reitoria (id_reitoria);

CREATE TABLE tbl_funcionario(
	id_funcionario int not null primary key  auto_increment,
    vinculo varchar (54),
    carga_horaria varchar (4),
    data_admissao date,
    data_demissao date
);

create table tbl_especialidade(
	id_especialidade int not null primary key auto_increment, 
    area varchar (100),
    grau varchar (100)
);

create table tbl_sexo(
	id_sexo int not null primary key  auto_increment,
    sexo VARCHAR(32)
);

alter table tbl_user
add column fk_sexo int;

alter table tbl_user
add foreign key (fk_sexo) references tbl_sexo(id_sexo);

create table tbl_login(
	id_login int not null primary key auto_increment,
    fk_user int,
    login varchar (64),
    senha varchar (64),
	foreign key (fk_user) references tbl_user(id_user) 
);

create table tbl_func_professor(
	id_professor int not null primary key  auto_increment,
    categoria varchar (32),
    regime varchar(100),
    salario decimal (8,2),
    fk_funcionario int,
    fk_especialidade int,
    
    foreign key (fk_funcionario) references tbl_funcionario (id_funcionario),
    foreign key (fk_especialidade) references tbl_especialidade (id_especialidade)
);

create table tbl_func_analista(
	id_analista int not null primary key  auto_increment,
    salario decimal (8,2),
	fk_user int,
    fk_lotacao int,
    fk_funcionario int,
    fk_especialidade int,
   
    
    foreign key (fk_lotacao) references tbl_colegiado (id_colegiado),
    foreign key (fk_user) references tbl_user (id_user),
    foreign key (fk_especialidade) references tbl_especialidade (id_especialidade),
	foreign key (fk_funcionario) references tbl_funcionario (id_funcionario)
);

create table tbl_func_tecnico(
	id_tecnico int not null primary key auto_increment,
    salario decimal (8,2),
    fk_lotacao int,
    fk_funcionario int,
    fk_user int,
    
    foreign key (fk_user) references tbl_user (id_user),
    foreign key (fk_lotacao) references tbl_colegiado (id_colegiado),
	foreign key (fk_funcionario) references tbl_funcionario (id_funcionario)
);


create table tbl_ddd(
	id_ddd int not null primary key auto_increment,
    regiao varchar (100),
    fk_uf int not null,
    
    foreign key (fk_uf) references tbl_uf(UF_ID)
);

alter table tbl_tel_user
add column fk_ddd int after fk_tipo_tel;

alter table tbl_tel_user
add foreign key (fk_ddd) references tbl_ddd (id_ddd);


create table tbl_calendario(
	id_calendario int not null primary key auto_increment,
    ano int,
    periodo int,
    data_inicio date,
    data_termino date
);

alter table tbl_turmas
drop column data_fim;

alter table tbl_turmas
add column fk_calendario int;

alter table tbl_turmas
add foreign key (fk_calendario) references tbl_calendario(id_calendario);

create table tbl_coordenacao(
	id_coordadenacao int not null primary key auto_increment,
    nome varchar (120),
    fk_curso int,
    fk_coordenador int,
    fk_vicecoordenador int,
    fk_tecnico_lab int,
    fk_tecnico_adm int,
    
    foreign key (fk_curso) references tbl_cursos(id_curso),
    foreign key (fk_coordenador) references tbl_professor(id_prof),
    foreign key (fk_vicecoordenador) references tbl_professor (id_prof),
    foreign key (fk_tecnico_lab) references tbl_func_tecnico(id_tecnico),
    foreign key (fk_tecnico_adm) references tbl_func_tecnico(id_tecnico)
);


create table tbl_turno(
	id_turno int not null primary key auto_increment,
    turno varchar (32)
);

alter table tbl_turmas
add column fk_turno int after fk_curso_turma;

alter table tbl_turmas
add foreign key (fk_turno) references tbl_turno (id_turno);	


alter table tbl_professor
add column fk_funcionario_prof int after fk_user_prof;

alter table tbl_professor
add foreign key (fk_funcionario_prof) references tbl_func_professor (id_professor);