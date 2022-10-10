-- --------  << AULA 7 Exercicio 2 >>  ----------
--
--                    SCRIPT DE POPULAR (DML)
--
-- Data Criacao ...........: 01/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos, Victor Eduardo Araújo Ribeiro
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula7exer2
--
-- Ultimas Alteracoes
--	 
--
--   PROJETO=> 01 base de dados
--   		=> 09 tabelas
--
-----------------------------------------------------------
use aula7exer2;

INSERT INTO FABRICANTE
VALUES (77890846000179,'Hypera Pharma','Goias',' 75132020','GO','Distrito Agro-Industrial de Anápolis',32,'Anápolis');

INSERT INTO FABRICANTE
VALUES (95602942001047,'Aché','São Paulo',' 07034904','SP','Porto da Igreja',17,'Guarulhos');

INSERT INTO FABRICANTE
VALUES (11111111000191,'Copeli Cosméticos e Perfumes Ltda.','São Paulo','06720480','SP','Dos Pereiras',7522,'Cotia');

INSERT INTO RECEITA
VALUE(null, 05/03/2022,'Abacavir','18567');

INSERT INTO RECEITA
VALUE(null, 04/03/2022,'Salbutamol','18569');

INSERT INTO RECEITA
VALUE(null, 04/03/2022,'Cybex', null);

INSERT INTO VENDA
VALUE(null, 07/03/2022,9,'Augusto Ferreira','1',15);

INSERT INTO EMBALAGEM
VALUE(null,'sacola');

INSERT INTO EMBALAGEM
VALUE(null,'caixa');

INSERT INTO EMBALAGEM
VALUE(null,'papel');

INSERT INTO TELEFONE
VALUE(77890846000179,62991567834);

INSERT INTO TELEFONE
VALUE(77890846000179, 6234347866);

INSERT INTO TELEFONE
VALUE(95602942001047, 11998542365);

INSERT INTO MEDICAMENTO
VALUE(1,7,5,14,'Abacavir', 'C14H18N6O',null,1);

INSERT INTO MEDICAMENTO
VALUE(2,8,8,18,'Salbutamol', 'C13H21NO3','amarela', 2);

INSERT INTO MEDICAMENTO
VALUE(3,9,2,13,'Cybex', 'Celecoxibe 200 mg','vermelha', 3);

INSERT INTO possui
VALUE(1,7,1);

INSERT INTO possui
VALUE(2,8,2);

INSERT INTO possui
VALUE(3,9,3);

INSERT INTO PERFUME
VALUE(4,10,3,15,'Carolina Herrera', 'Parfum','Notas de Saída', 2);

INSERT INTO PERFUME
VALUE(4,11,4,16,'Paco Rabanne', 'Eau de Toilette','Notas de Coração ', 2);

INSERT INTO PERFUME
VALUE(3,9,2,13,'Thierry Mugler', 'Eau Fraiche','Notas de Fundo ', 2);

INSERT INTO contem
VALUE(1, 7,null, 1);






