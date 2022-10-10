-- --------  << TFtema3 >>  ----------
-- 
--                     SCRIPT APAGA (DDL)
--
-- Data Criacao ...........: 17/04/2022
-- Autor(es) ..............: Lucas Andrade, Luis Araújo, Marcos Tavares, Mateus Teixeira, Mateus Lima,  Matheus Gomes, Matheus Pinheiro, 
-- 							 Natanael Filho, Pedro Carlos, Pedro Campos, Rodrigo Brito, Samuel Bacelar, Victor Ribeiro, Victor Silva.
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TFtema3
-- 
-- Ultimas Alteracoes
--    03/05/2022 => Adicao do DROP TABLE ADMINISTRADOR
-- 				 => Remocao do DROP TABLE AVISO
--               => Alteracao no nome da base de dados
-- 				
-- PROJETO => 01 Base de Dados
--         => 29 Tabelas
-- 		   => 05 Papeis
-- 		   => 15 Usuarios
--
-- ---------------------------------------------------------

USE TFtema3;

DROP TABLE email;
DROP TABLE ITEMCHECKLIST; 
DROP TABLE DOCUMENTO;
DROP TABLE ORDEMCONTATO; 
DROP TABLE ACAOORDEMCONTATO; 
DROP TABLE CLO; 
DROP TABLE STATUSCLO;
DROP TABLE CONTRATO;
DROP TABLE TERMOCONTRATO;
DROP TABLE PROCESSO;
DROP TABLE conta; 
DROP TABLE ENDERECO;
DROP TABLE administra;
DROP TABLE ADMINISTRADOR;
DROP TABLE FISICA;
DROP TABLE JURIDICA;
DROP TABLE guarda;
DROP TABLE TELEFONE;
DROP TABLE PESSOA;
DROP TABLE AREA; 
DROP TABLE TIPOTRAMITACAO;
DROP TABLE FORMULARIO;
DROP TABLE FUNDIARIO;
DROP TABLE DADOFUNDIARIO;
DROP TABLE PLANODIRETOR;
DROP TABLE LOCALIDADE;
DROP TABLE REGIAOADMINISTRATIVA;
DROP TABLE STATUSPROCESSO;
DROP TABLE PONTOCONTROLE;

DROP USER joaoVictor;
DROP USER mariaJoana;
DROP USER pedroAugusto;

DROP USER marianaPaz;
DROP USER ezequiasSilva;
DROP USER robertaSouza;

DROP USER LucasMelo;
DROP USER ameliaCruz;
DROP USER pauloBezerra;

DROP USER DaianaMoraes;
DROP USER LeticiaSantos;
DROP USER lorenaAlves;

DROP USER daviLima;
DROP USER jonasBrother;
DROP USER julianaPaes;

DROP ROLE DESENVOLVEDOR;
DROP ROLE ADMINISTRADOR;
DROP ROLE GERENCIAL;
DROP ROLE MENU;
DROP ROLE USUARIO;
