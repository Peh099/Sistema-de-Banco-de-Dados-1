-- --------  << AULA 4 Exercicio 5 Evolucaoo 5 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 01/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos, Victor Eduardo Araújo Ribeiro
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula7exer2
--
-- Ultimas Alteracoes
--   01/03/2022 => Adicao if not exits database 
--
--   PROJETO=> 01 base de dados
--   		=> 09 tabelas
--
-----------------------------------------------------------

create database
	IF NOT EXISTS aula7exer2;
    
use aula7exer2;

CREATE TABLE FABRICANTE (
    numeroCgc INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    cep INT NOT NULL,
    estado CHAR(2) NOT NULL,
    complemento VARCHAR(50),
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL
);

CREATE TABLE RECEITA (
    idReceita INT NOT NULL PRIMARY KEY,
    dataEmissao DATE NOT NULL,
    medicamento VARCHAR(50) NOT NULL,
    crmMedico INT NOT NULL
);

CREATE TABLE VENDA (
    idVenda INT NOT NULL PRIMARY KEY,
    dataCompra DATE NOT NULL,
    numeroNotaFiscal INT NOT NULL,
    nomeCliente VARCHAR(50) NOT NULL,
    quantidadeVenda INT NOT NULL,
    precoVenda INT NOT NULL
);

CREATE TABLE EMBALAGEM (
    idEmbalagem INT NOT NULL PRIMARY KEY,
    tipoEmbalagem VARCHAR(50) NOT NULL
);

CREATE TABLE telefone (
    numeroCgc INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
	constraint telefone_FABRICANTE_FK foreign key (numeroCgc)
	references FABRICANTE (numeroCgc),
    constraint idPaciente_telefone_UK unique (numeroCgc,telefone)
);

CREATE TABLE possui (
    codigoControle INT NOT NULL,
    idReceita INT NOT NULL,
    constraint possui_MEDICAMENTO_FK foreign key (codigoControle)
	references EMBALAGEM (codigoControle),
    constraint possui_RECEITA_FK foreign key (idReceita)
	references RECEITA (idReceita)
);

CREATE TABLE contem (
    idVenda INT NOT NULL,
    codigoControle INT NOT NULL,
    constraint contem_VENDA_FK foreign key (idVenda)
	references VENDA (idVenda),
    constraint possui_MEDICAMENTO_FK foreign key (codigoControle)
	references MEDICAMENTO (codigoControle)
);

CREATE TABLE MEDICAMENTO (
    codigoControle INT NOT NULL PRIMARY KEY,
    quantidade INT NOT NULL,
    preco INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    formula VARCHAR(50) NOT NULL,
    tarja VARCHAR(50) NOT NULL,
    idEmbalagem INT NOT NULL,
    constraint MEDICAMENTO_EMBALAGEM_FK foreign key (idEmbalagem)
	references EMBALAGEM (idEmbalagem)
);

CREATE TABLE PERFUME (
    codigoControle INT NOT NULL PRIMARY KEY,
    quantidade INT NOT NULL,
    preco INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    tipoPerfume VARCHAR(50) NOT NULL,
    fragrancia VARCHAR(50) NOT NULL,
    idEmbalagem INT NOT NULL,
    constraint PERFUME_EMBALAGEM_FK foreign key (idEmbalagem)
	references EMBALAGEM (idEmbalagem)
);
