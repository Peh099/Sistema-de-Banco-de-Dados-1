-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 30/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- Ultimas Alteracoes
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- -------------------------------------------------------

CREATE DATABASE 
    IF NOT EXISTS aula9extra1;

USE aula9extra1;

CREATE TABLE ESTADO (
	sigla CHAR(2),
    nome VARCHAR(20),
    CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
);

CREATE TABLE CIDADE (
	codigo INT,
    nome VARCHAR(50),
    sigla CHAR(2),
    habitantes BIGINT,
    CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla) REFERENCES ESTADO (sigla)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
	CONSTRAINT CIDADE_UK UNIQUE KEY (sigla,nome)
);












