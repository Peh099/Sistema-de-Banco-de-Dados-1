-- --------  << aula7exer2evolucao2 >>  ----------
--
--               SCRIPT POPULA (DML)
--
-- Data Criacao ...........: 07/03/2022
-- Autor(es) ..............: Matheus Costa Gomes, Pedro Henrique Carvalho Campos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula7exer2evolucao2
--
-- Ultimas Alteracoes
-- 09/03/2022 =>  Adicao mais tres tuplas em cada tabela
-- 09/03/2022 =>  Adicao tuplas tabela CLIENTE
-- 09/03/2022 =>  MUDANCA nome tabela ITEMPERFUMARIA->PERFUMARIA
--
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--
-- ---------------------------------------------------------

INSERT INTO aula7exer2evolucao2.FABRICANTE VALUES
('73544843000122', 'RedDoor Cosmeticos', '74860-530', 'Rua SC',
18, 'Parque Santa Cruz', null, 'Goiania', 'GO'),
('27493236000163', 'Amplo Perfumes', '72140-601', 'Quadra QNJ',
13, 'Taguatinga Norte', 'Area Especial 1', 'Brasilia', 'DF'),
('40113832000139', 'Celta Medicamentos', '76900467', 'Rua Jacy Flores',
16, 'Vila de Rondonia', null, 'Ji-Parana', 'RO'),
('44641549000130', 'Optima Labortorios', '78048030', 'Rua Helsinque',
14, 'Rodoviária Parque', 'Perto do centro', 'Cuiaba', 'MT'),
('77890846000179','Hypera Pharma','75132020',' Viela Vp-R1','32',
'Distrito Agro-Industrial de Anápolis',null,'Anápolis','GO'),
('95602942001047','Aché','07034904','Dutra-Pista Lateral','17',
'Porto da Igrejas','null','Guarulhos','SP');

INSERT INTO aula7exer2evolucao2.telefone VALUES
('73544843000122', '64 35879386'),
('27493236000163', '61 29813282'),
('40113832000139', '69 34179750'),
('44641549000130', '66 28782735'),
('77890846000179', '62 98547498'),
('95602942001047', '51 84658752');

INSERT INTO aula7exer2evolucao2.PRODUTO VALUES 
(442, 'Beautiful soap', 'Plastico', 200, '2.24', '73544843000122'),
(864, 'Eau de parfum', 'Vidro', 50, '10.07', '27493236000163'),
(23, 'Clean Desodorante', 'Aluminio', 100, '6.84', '73544843000122'),
(509, 'Paracetamol', 'Aluminio', 150, '4.61', '40113832000139'),
(113, 'Dipirona', 'Plastico', 150, '4.61', '44641549000130'),
(456, 'Roacutan', 'Plastico', 40, '6.49', '44641549000130'),
(461, 'Carolina Herrera', 'caixa', 10, '59.90', '27493236000163'),
(468, 'Paco Rabanne Herrera', 'caixa',3 , '120.00', '73544843000122'),
(560, 'Thierry Mugler', 'caixa',6 , '180.00', '95602942001047'),
(350, 'Abacavir', 'Plastico',10 , '15.00', '95602942001047'),
(842, 'Salbutamol', 'caixa',14 , '22.00', '77890846000179'),
(890, 'Cybex', 'caixa',19 , '20.00', '40113832000139');

INSERT INTO aula7exer2evolucao2.PERFUMARIA VALUES
(442, 'Lavanda', 'Sabonete'),
(864, 'Citrica', 'Perfume'),
(23, 'Amadeirada', 'Desodorante'),
(461, 'Notas de Saída', 'Perfume'),
(468, 'Notas de Coração', 'Perfume'),
(560, 'Notas de Fundo', 'Perfume');

INSERT INTO aula7exer2evolucao2.MEDICAMENTO VALUES
(509, '750 mg de paracetamol', 'Amarela'),
(113, '25 mg de Dipirona monoidratada', 'Vermelha'),
(456, '20 mg de Isotretinoína', 'Vermelha'),
(350, '300 mg de lamivudina.', 'Vermelha'),
(842, '250 mg de lamivudina', 'Amarela'),
(890, 'Zidovudina 300 mg dose única ', 'Vermelha');

INSERT INTO aula7exer2evolucao2.RECEITA VALUES
(null, 1042, 'DF', '2020-04-03'),
(null, 2864, 'DF', '2022-02-22'),
(null, 368, 'DF', '2022-02-10'),
(null, 4987, 'DF', '2022-02-26'),
(null, 3879, 'DF', '2022-02-20'),
(null, 9875, 'DF', '2022-02-12');

INSERT INTO aula7exer2evolucao2.indica VALUES
(509, 1),
(113, 2),
(456, 3),
(350, 4),
(842, 5),
(890, 6);

INSERT INTO aula7exer2evolucao2.CLIENTE VALUES
('07598769811','Oswaldo Olivera Junior'),
('36598752355','Pedro Gustavo da Silva'),
('65498765233','Jose Manuel Ferreira Costa'),
('36459875245','Manuel Costa de Carvalho'),
('98546523158','Cristiano Araujo Barbosa'),
('36498523412','Sergio Pereira Araujo'),
('06598756424','Andre Barbosa Oliveira'),
('16498756423','Alesssandro Castro Alves');

INSERT INTO aula7exer2evolucao2.VENDA VALUES
(null,'2022-06-03',0.90,'07598769811',1),
(null,'2022-07-03',0.49,'36598752355',2),
(null,'2022-06-03',0.90,'65498765233',3),
(null,'2022-08-03',0.49,'36459875245',4),
(null,'2022-09-03',0.98,'98546523158',5),
(null,'2022-08-03',0.65,'36498523412',6),
(null,'2022-09-03',0.84,'06598756424',null),
(null,'2022-09-03',0.84,'16498756423',null);

INSERT INTO aula7exer2evolucao2.contem VALUES
(1,509,1),
(2,113,1),
(3,456,2),
(4,350,2),
(5,842,1),
(6,890,1),
(7,442,1),
(8,864,1);