-- --------  << AULA 4 Exercicio 5 Evolucaoo 5 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 01/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos, Victor Eduardo Araújo Ribeiro
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao5
--
-- Ultimas Alteracoes
--   01/03/2022 => Adicao if not exits database 
--   01/03/2022 => Retirada alter table
--   01/03/2022 => Adicao primary keys
--   07/03/2022 => mudança do base de dados utilizado => aula4exer5Evolucao5
-- 	 07/03/2022 => adicao engine
--   07/03/2022 => organizacao ordem de criacao das tabelas
--   07/03/2022 => adicao constraint unique
--   07/03/2022 => adicao auto incremento
--
--   PROJETO=> 01 base de dados
--   		=> 08 tabelas
--
-----------------------------------------------------------

create database
	IF NOT EXISTS aula4exer5Evolucao5;
    
use aula4exer5Evolucao5;

CREATE TABLE MEDICO (
    crmNumero INT NOT NULL,
    crmEstado VARCHAR(2) NOT NULL,
    nomeCompleto VARCHAR(50) NOT NULL,
    PRIMARY KEY (crmNumero, crmEstado)
) ENGINE=InnoDB;

CREATE TABLE PACIENTE (
    idPaciente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(50) NOT NULL,
    sexo CHAR(1) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    complemento VARCHAR(50),
    rua VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep INT NOT NULL,
    dataNascimento DATE NOT NULL
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE CONSULTA (
    idConsulta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dataConsulta DATE NOT NULL,
    horarioConsulta TIME NOT NULL,
    crmNumero INT NOT NULL,
    idPaciente INT NOT NULL,
    crmEstado VARCHAR(2) NOT NULL,
	constraint CONSULTA_MEDICO_FK foreign key (crmNumero,crmEstado)
	references MEDICO (crmNumero,crmEstado),
    constraint CONSULTA_PACIENTE_FK foreign key (idPaciente)
	references PACIENTE (idPaciente)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE RECEITA (
    idReceita INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    dataEmissao DATE NOT NULL,
    idConsulta INT NOT NULL
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE ESPECIALIDADE (
    tipoEspecialidade VARCHAR(50) NOT NULL,
    codigoEspecialidade INT NOT NULL PRIMARY KEY AUTO_INCREMENT
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE medicamento (
    idReceita INT NOT NULL AUTO_INCREMENT,
    medicamento VARCHAR(30) NOT NULL,
	constraint medicamento_RECEITA_FK foreign key (idReceita)
	references RECEITA (idReceita)
)ENGINE = InnoDB AUTO_INCREMENT = 1 ;

CREATE TABLE possui (
    crmNumero INT NOT NULL,
    crmEstado CHAR(2) NOT NULL,
    codigoEspecialidade INT NOT NULL,
    constraint possui_MEDICO_FK foreign key (crmNumero,crmEstado)
	references MEDICO (crmNumero,crmEstado),
	constraint possui_ESPECIALIDADE_FK foreign key (codigoEspecialidade)
	references ESPECIALIDADE (codigoEspecialidade)
)ENGINE=InnoDB;

CREATE TABLE telefone (
    idPaciente INT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
	constraint telefone_PACIENTE_FK foreign key (idPaciente)
	references PACIENTE (idPaciente),
    constraint idPaciente_telefone_UK unique (idPaciente,telefone)
)ENGINE=InnoDB;
