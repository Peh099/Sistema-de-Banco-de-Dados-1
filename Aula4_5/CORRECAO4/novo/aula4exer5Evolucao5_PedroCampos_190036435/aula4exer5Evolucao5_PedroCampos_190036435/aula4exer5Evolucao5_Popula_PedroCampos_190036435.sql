-- --------  << AULA 4 Exercicio 5 Evolucaoo 5 >>  ----------
--
--                    SCRIPT DE POPULAR (DML)
--
-- Data Criacao ...........: 01/03/2022
-- Autor(es) ..............: Pedro Henrique Carvalho Campos, Victor Eduardo Araújo Ribeiro
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao5
--
-- Ultimas Alteracoes
--   07/03/2022 => mudança do base de dados utilizado => aula4exer5Evolucao5
--   07/03/2022 => mudança da ordem das tabelas
--   07/03/2022 => Retirada insercao ddd telefone
--   07/03/2022 => Retirada dos ids para mudanca auto increment
--
--   PROJETO=> 01 base de dados
--   		=> 08 tabelas
--
-----------------------------------------------------------
use aula4exer5Evolucao5;

INSERT INTO MEDICO
VALUES (13068,'GO','Adriane França Ungarelli Costa');

INSERT INTO MEDICO
VALUES (648302, 'RJ', 'Bruno Alves Costa');

INSERT INTO MEDICO
VALUES (4220,'TO','Yasmin Paiva Koo');

INSERT INTO MEDICO
VALUES (49842,'CE','Jorge Nascimento da Silva');

INSERT INTO MEDICO
VALUES (45987,'RS','João Pereira Costa');

INSERT INTO MEDICO
VALUES (21897,'RJ','Pablo Bezerra da Silva');

INSERT INTO PACIENTE
VALUES (null,'Amélia Araújo e Ribeiro','F','Rio de Janeiro','Leblon',NULL,'Rua Osvaldo Goeld',24,'RJ',22441020,'1971/03/14');

INSERT INTO PACIENTE
VALUES (null,'Ezequias Ribeiro da Silva','M','São Paulo','Morumbi','Apartamento 503','Avenida Morumbi',15,'SP',05606010,'1971/03/14');

INSERT INTO PACIENTE
VALUES (null,'Jorge Emanuel Costa','M','Goias','Aparecida de Goiania',NULL,'Rua 18',13,'GO',72810206,'2008/09/18');

INSERT INTO PACIENTE
VALUES (null,'Vinícius de Paiva dos Santos','M','Goias','Santo Antônio do Descoberto',NULL,'Rua 05',11,'GO',72900320,'2015/07/01');

INSERT INTO PACIENTE
VALUES (null,'Cesar de Castro Alves','M','Brasilia','Ceilandia',NULL,'Rua 16',18,'DF',72641810,'2006/07/18');

INSERT INTO PACIENTE
VALUES (null,'Carla Vitoriano de Souza','F','Pernambuco','Caruaru',NULL,'Rua 19',11,'PE','62987215','2004/08/10');

INSERT INTO RECEITA
VALUES (null,'2022-01-09',1);

INSERT INTO RECEITA
VALUES (null,'2022-02-10',1);

INSERT INTO RECEITA
VALUES (null,'2022-01-28',3);

INSERT INTO RECEITA
VALUES (null,'2022-02-16',4);

INSERT INTO RECEITA
VALUES (null,'2021-12-15',5);

INSERT INTO RECEITA
VALUES (null,'2022-02-21',6);

INSERT INTO ESPECIALIDADE
VALUES ('Dermatologia',null);

INSERT INTO ESPECIALIDADE
VALUES ('Cirurgia Plástica',null);

INSERT INTO ESPECIALIDADE
VALUES ('Pediatria',null);

INSERT INTO ESPECIALIDADE
VALUES ('Homeopatia',null);

INSERT INTO ESPECIALIDADE
VALUES ('Oncologia Clínica',null);

INSERT INTO ESPECIALIDADE
VALUES ('Clínica Médica',null);

INSERT INTO possui
VALUES (13068,'GO',1);

INSERT INTO possui
VALUES (648302,'RJ',2);

INSERT INTO possui
VALUES (4220,'TO',3);

INSERT INTO possui
VALUES (49842,'CE',4);

INSERT INTO possui
VALUES (45987,'RS',5);

INSERT INTO possui
VALUES (21897,'RJ',6);

INSERT INTO medicamento
VALUES (1,'Pantoprazol 1 caixa');

INSERT INTO medicamento
VALUES (1,'Roacutan 2 caixas');

INSERT INTO medicamento
VALUES (3,'Amoxixilina 3 caixas');

INSERT INTO medicamento
VALUES (4,'Atorvastatina 1 caixa');

INSERT INTO medicamento
VALUES (5,'Benazeprila 2 caixas');

INSERT INTO medicamento
VALUES (6,'Salmeterol');

INSERT INTO telefone
VALUES (2,'5522991124526');

INSERT INTO telefone
VALUES (2,'551130482299');

INSERT INTO telefone
VALUES (3,'5562984417895');

INSERT INTO telefone
VALUES (4,'5562985267595');

INSERT INTO telefone
VALUES (1,'5561984417895');

INSERT INTO telefone
VALUES (5,'5581984417895');


