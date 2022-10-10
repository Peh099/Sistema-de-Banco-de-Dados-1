-- --------  << aula9extra1 >>  ----------
--
--               SCRIPT CONSULTA 
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
-- ---------------------------------------------------------
use aula9extra1;
--
-- A) Projeção de sigla e nome do estado de sigla SP e DF

SELECT sigla,nome FROM ESTADO
	WHERE sigla = 'SP' || sigla = 'DF';
    
-- B) Selecione somente o nome e a sigla das cidades que são dos estados RJ, DF e GO;
SELECT nome,sigla FROM CIDADE
	WHERE sigla = 'RJ' || sigla = 'DF' || sigla='GO';
    
-- C) Selecione todas as cidades do primeiro estado que você cadastrou mostrando
-- somente o nome da cidade, o nome do estado e sua sigla;
SELECT CIDADE.nome,CIDADE.sigla, ESTADO.nome
	FROM CIDADE
	JOIN ESTADO ON CIDADE.sigla = ESTADO.sigla
LIMIT 1;

-- D) Selecione somente o nome e a sigla do estado que você cadastrou 
-- por último e todas as cidades cadastradas nele, mostrando o seu nome
-- e a quantidade de habitantes em ordem crescente de nome de estado e nome de cidade.

SELECT ESTADO.nome,ESTADO.sigla, CIDADE.nome,CIDADE.habitantes
	FROM CIDADE
    JOIN ESTADO ON CIDADE.sigla=ESTADO.sigla
	WHERE(ESTADO.sigla='GO')
    ORDER BY ESTADO.nome,CIDADE.nome;
    
	
	
