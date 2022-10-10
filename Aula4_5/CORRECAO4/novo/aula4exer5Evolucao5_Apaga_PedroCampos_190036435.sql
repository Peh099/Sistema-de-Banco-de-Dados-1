-- --------  << AULA 7 Exercicio 2>>  ----------
--
--                    SCRIPT DE DELETAR (DDL)
--
-- Data Criacao ...........: 01/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula7exer2
--
-- Ultimas Alteracoes
--
--   PROJETO=> 01 base de dados
--   		=> 09 tabelas
--
-----------------------------------------------------------

SET foreign_key_checks=off;

use aula7exer2;

DROP TABLE IF EXISTS FABRICANTE;
DROP TABLE IF EXISTS RECEITA;
DROP TABLE IF EXISTS VENDA;
DROP TABLE IF EXISTS EMBALAGEM;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS MEDICAMENTO;
DROP TABLE IF EXISTS possui;
DROP TABLE IF EXISTS PERFUME;
DROP TABLE IF EXISTS contem;

SET foreign_key_checks=on;