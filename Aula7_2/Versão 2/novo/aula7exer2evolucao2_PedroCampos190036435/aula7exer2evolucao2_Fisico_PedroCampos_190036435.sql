-- --------  << aula7exer2evolucao2 >>  ----------
--
--             SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 07/03/2022
-- Autor(es) ..............: Matheus Costa Gomes, Pedro Henrique Carvalho Campos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula7exer2evolucao2
--
--
-- Ultimas Alteracoes
--  09/03/2022 =>  Mudança no nome base de dados -> aula7exer2evolucao2
--  09/03/2022 =>  Mudança atributo numero em FABRICANTE para not null
--  09/03/2022 =>  Adicao constraint unique para (cgc,telefone) em telefone
--  09/03/2022 =>  Mudanca nome entidade ITEMPERFUMARIA->PERFUMARIA
--  09/03/2022 =>  Retirada atributo quantidade em VENDA
--  09/03/2022 =>  Adicao FK cpf em VENDA
--  09/03/2022 =>  Adicao FK idReceita em VENDA
--  09/03/2022 =>  Adicao quantidadeProduto em contem
--  09/03/2022 =>  Adicao tabela CLIENTE
--
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula7exer2evolucao2;

USE aula7exer2evolucao2;

CREATE TABLE FABRICANTE (
    cgc VARCHAR(15) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cep VARCHAR(9) NOT NULL,
    rua VARCHAR(40) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    complemento VARCHAR(100),
    cidade VARCHAR(40) NOT NULL,
    estado CHAR(2) NOT NULL,
    CONSTRAINT FABRICANTE_PK Primary Key (cgc)
)ENGINE = InnoDB;

CREATE TABLE telefone (
    cgc VARCHAR(15) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    
    CONSTRAINT telefone_FABRICANTE_FK Foreign Key (cgc) REFERENCES FABRICANTE (cgc),
    CONSTRAINT telefone_UK unique (cgc,telefone)
)ENGINE = InnoDB;

CREATE TABLE PRODUTO (
    codigoControle INT NOT NULL,
    nomeComercial VARCHAR(50) NOT NULL,
    tipoEmbalagem VARCHAR(30) NOT NULL,
    quantidade INT NOT NULL,
    precoUnit DECIMAL(5,2) NOT NULL,
    cgc VARCHAR(15) NOT NULL,
    
    CONSTRAINT PRODUTO_PK Primary Key (codigoControle),
    CONSTRAINT PRODUTO_FABRICANTE_FK Foreign Key (cgc) REFERENCES FABRICANTE (cgc)
)ENGINE = InnoDB;

CREATE TABLE PERFUMARIA (
    codigoControle INT NOT NULL,
    fragrancia VARCHAR(50) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    
    CONSTRAINT ITEMPERFUMARIA_PK Primary Key (codigoControle),
    CONSTRAINT ITEMPERFUMARIA_PRODUTO_FK Foreign Key (codigoControle) REFERENCES PRODUTO (codigoControle)
)ENGINE = InnoDB;

CREATE TABLE MEDICAMENTO (
    codigoControle INT NOT NULL,
    formula VARCHAR(60) NOT NULL,
    tarja VARCHAR(10) NOT NULL,
    
    CONSTRAINT MEDICAMENTO_PK Primary Key (codigoControle),
    CONSTRAINT MEDICAMENTO_PRODUTO_FK Foreign Key (codigoControle) REFERENCES PRODUTO (codigoControle)
    
)ENGINE = InnoDB;

CREATE TABLE RECEITA (
    idReceita INT NOT NULL AUTO_INCREMENT,
    crmNumero INT NOT NULL,
    crmEstado CHAR(2) NOT NULL,
    dtEmissao DATE NOT NULL,
    
    CONSTRAINT RECEITA_PK Primary Key (idReceita)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE indica (
    codigoControle INT NOT NULL,
    idReceita INT NOT NULL,
    
    CONSTRAINT indica_MEDICAMENTO_FK Foreign Key (codigoControle) REFERENCES MEDICAMENTO (codigoControle),
    CONSTRAINT indica_RECEITA_FK Foreign Key (idReceita) REFERENCES RECEITA (idReceita)
)ENGINE = InnoDB;

CREATE TABLE CLIENTE(
	cpf CHAR (11) NOT NULL,
	nomeCliente VARCHAR(50) NOT NULL,
	CONSTRAINT CLIENTE_PK Primary Key (cpf)
)ENGINE = InnoDB;

CREATE TABLE VENDA (
    numeroNF INT NOT NULL AUTO_INCREMENT,
    dtCompra DATE NOT NULL,
    imposto DECIMAL(5,2) NOT NULL,
    cpf CHAR(11) NOT NULL,
    idReceita INT,
    CONSTRAINT VENDA_PK Primary Key (numeroNF),
	CONSTRAINT VENDA_CLIENTE_FK Foreign Key (cpf) REFERENCES CLIENTE (cpf),
    CONSTRAINT VENDA_RECEITA_FK Foreign Key (idReceita) REFERENCES RECEITA (idReceita)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE contem (
    numeroNF INT NOT NULL,
    codigoControle INT NOT NULL,
    quantidadeProduto INT NOT NULL,
    CONSTRAINT contem_VENDA_FK Foreign Key (numeroNF) REFERENCES VENDA (numeroNF),
    CONSTRAINT contem_PRODUTO_FK Foreign Key (codigoControle) REFERENCES PRODUTO (codigoControle)
)ENGINE = InnoDB;


