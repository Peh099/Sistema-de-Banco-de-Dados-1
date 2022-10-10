-- --------  << TFtema3 >>  ----------
-- 
--                     SCRIPT POPULA (DML)
--
-- Data Criacao ...........: 17/04/2022
-- Autor(es) ..............: Lucas Andrade, Luis Araújo, Marcos Tavares, Mateus Teixeira, Mateus Lima,  Matheus Gomes, Matheus Pinheiro, 
-- 							 Natanael Filho, Pedro Carlos, Pedro Campos, Rodrigo Brito, Samuel Bacelar, Victor Ribeiro, Victor Silva.
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TFtema3
-- 
--
-- Ultimas Alteracoes
--    01/05/2022 => adição do popula das tabelas: TELEFONE, FUNDIARIO, LOCALIDADE, FUNDIARIO, 
--                  guarda, administra, STATUSCLO
-- 
-- 	  03/05/2022 => adição do popula da tabela ADMINISTRADOR
-- 				 => remoção do popula da tabela AVISO
-- 				 => mudanças dos dados na tabela administra
-- 				 => Alteracao no nome da base de dados	
--  			 => Inserção de tuplas adicionais afim de totalizar 10 tuplas para cada tabela
-- 
-- PROJETO => 01 Base de Dados
--         => 29 Tabelas
-- 		   => 05 Papeis
-- 		   => 15 Usuarios
--
-- ---------------------------------------------------------

use TFtema3;

INSERT INTO PONTOCONTROLE (descricao, observacaoInterna, pontoControleAnterior, itemChecklistAtendido, dataCadastro) VALUES
('PU - aprovado',  'estrutura condiz com a planta', '1', '1', '2022-04-02'),
('PU - juntado', null, '2', '1', '2022-01-01'),
('Anuencia prévia TERRACAP', null, '0','2', '2022-02-12'),
('Anuencia prévia SEDUH', null,  '1','2', '2021-10-10'),
('Existência de atividade rural efetiva na Gleba', null,  '2','2', '2020-12-10'),
('Comprovada a ocupação da Gleba', null,  '0','4', '2022-05-01' ),
( 'Inicio do processo', 'Declaração de documentos necessário para o processo', '1','1', '2019-05-10'),
( 'Finalização do processo', 'Checagem de Documentos', '3','4', '2019-06-12'),
( 'Autenticação do Processo', 'Colher Assinaturas dos Documentos', '2','1', '2019-08-25'),
( 'Fim do processo', null, '3','5', '2019-09-05');

INSERT INTO STATUSPROCESSO (statusProcesso, dataCadastro) VALUES
('Em instrução', '2020-01-05' ),
('Sobrestado', '2017-07-22' ),
('Indeferido', '2019-11-05' ),
('Arquivado', '2022-06-23-' ),
('A definir', '2021-02-15' ),
('Regularizada', '2021-02-14' ),
('Irregularizado', '2021-02-13' ),
('Cancelado', '2021-05-18' ),
('Fila de Espera', '2021-03-14' ),
('Sob Investigação', '2021-08-01' );

INSERT INTO REGIAOADMINISTRATIVA (nomeRegiao) VALUES
('Plano Piloto (RA-I)'),
('Gama (RA-II)'),
('Taguatinga (RA-III)'),
('Brazlândia (RA-IV)'),
('Ceilândia (RA-IX)'),
('Sobradinho (RA-V)'),
('Planaltina (RA-VI)'),
('Paranoá (RA-VII)'),
('Núcleo Bandeirante (RA-VIII)'),
('Guará (RA-X)'),
('Cruzeiro (RA-XI)'),
('Samambaia (RA-XII)'),
('Santa Maria (RA-XIII)'),
('São Sebastião (RA-XIV)'),
('Candangolândia (RA-XIX)'),
('Recanto das Emas (RA-XV)'),
('Lago Sul (RA-XVI)'),
('Riacho Fundo I (RA-XVII)'),
('Lago Norte (RA-XVIII)'),
('Águas Claras (RA-XX)'),
('Riacho Fundo II (RA-XXI)'),
('Sudoeste e Octogonal (RA-XXII)'),
('Varjão (RA-XXIII)');

INSERT INTO LOCALIDADE (descricaoLocalidade, complemento , idRegiao)VALUES
('72316-206, Quadra QR 210 Conjunto 6, Samambaia Sul', null,'12'),
('71070-092, Quadra QE 40 Conjunto I, Guará II', null, '10'),
('70855-070, Quadra SQN 407 Bloco G, Asa Norte', 'Entrada ao lado da boate Smillinguido','1'),
('72251-616, Quadra QNO 6 Conjunto P, Ceilândia Norte', null,'5'),
('71020-637, Quadra QE 7 Bloco C, Guará I', null, '10'),
('72145-633, Quadra QNM 36 Conjunto C2, Taguatinga Norte', null, '3'),
('72737-503, Quadra EQ 37/38 Bloco C, Vila São José (Brazlândia)', null , '4'),
('72669-557, Condomínio Residencial Guarapari Rua 07, Recanto das Emas', null , '16'),
('71587-562, Quadra 3 Conjunto 3 Lote 1 Bloco F, Paranoá Parque (Paranoá)', null , '8'),
('71693-029, Quadra 28, Vila São José (São Sebastião)', null , '14');

INSERT INTO PLANODIRETOR (nomePlano) VALUES
('MPI'),
('MPI/RURAL'),
('MPI/URBANA'),
('MPI/ZCU'),
('RURAL'),
('RURAL/URBANA'),
('RURAL/ZCU'),
('URBANA'),
('URBANA/ZCU'),
('ZCU'); 

INSERT INTO DADOFUNDIARIO (matricula, fazenda, cartorio, nirf, ccir) VALUES
('1111', 'Fazenda Bananal', '22700', '2618950', '1234'),
('2222', 'Fazenda Brejo ou Torto', '600231', '584034', '4321'),
('3333', 'Fazenda Lagoa Bonita', '76177', '51761', '12345'),
('4444', 'Fazenda Barra Alta', '456517', '6177', '1235'),
('5555', 'Fazenda São Gonçalo', '25573', '57390', '4422'),
('6666', 'Fazenda Buriti Vermelho', '90155', '91445', '1313'),
('7777', 'Fazenda Larga dos Olhos D’água', '54534', '1424253', '74254'),
('8888', 'Fazenda Sálvia', '5925', '354351', '4212'),
('9999', 'Fazenda Sobradinho Mogi', '25125', '212541', '12214'),
('1010', 'Fazenda Contagem de São João', '425412', '96889', '4321');

INSERT INTO FUNDIARIO (nomeFundiario) VALUES
('TERRACAP'),
('GDF'),
('UNIAO'),
('PARTICULAR'),
('COMUM'),
('COMUM/PARTICULAR'),
('COMUM/TERRACAP'),
('DESAPROPRIADO AREA URBANA'),
('DESAPROPRIADO AREA URBANA/TERRACAP'),
('DOACAO UNIAO/GDF'); 

INSERT INTO FORMULARIO (titulo, `data`)VALUES 
('Requerimento padrão de Regularização Rural','2020-12-14'),
('Requerimento padrão de Regularização Urbana','2019-11-13'),
('Declaração de não concessionário(solteiro)','2017-07-06'),
('Declaração de não concessionário(casado)','2021-02-28'),
('Declaração de não concessionário(pessoa jurídica)','2019-10-20'),
('Requerimento padrão de Regularização Semiurbana','2020-11-13'),
('Declaração de Legítima Ocupação','2022-10-08'),
('Declaração de não concessionário(pessoa física)','2022-01-02'),
('Contrato CDU','2022-12-03'),
('Requerimento de abertura de Processo','2022-01-18');

INSERT INTO TIPOTRAMITACAO (nomeTipo) VALUES
('ORDINÁRIA'),
('PRIORIDADE SIMPLES'),
('PRIORITÁRIA (PNEs)'),
('PRIORITÁRIA (>60 anos)'),
('PRIORITÁRIA (>80 anos)'),
('PRIORITÁRIA (>100 anos)'),
('PREFERENCIAL'),
('PRIMÁRIA'),
('SECUNDÁRIA'),
('ESPECIAL'); 

INSERT INTO AREA (puAreaTotal, puAreaAPP, puReservaLegal, carAreaTotal, carAreaAPP, carReservaLegal, contratoAreaTotal, contratoAreaAPP, contratoAreaReservaLegal) VALUES
('114.5236', '16.2000', '6.8624', '114.4236', '16.2280', '6.8248', '114.1236', '16.7775', '6.7775'),
('115.0000', '12.2010', '8.9634', '114.5238', '16.2230', '6.8668', '114.3777', '16.6200', '6.8648'),
('114.0001', '15.2200', '9.1234', '114.5236', '16.2210', '6.7777', '114.5236', '16.8200', '6.6656'),
('101.0101', '21.2004', '10.4321', '114.5836', '16.7776', '8.8648', '114.5136', '16.1200', '6.6565'),
('256.0123', '30.0014', '3.8634', '114.7777', '16.2290', '4.8648', '114.5636', '16.2300', '6.0000'),
('345.0001', '14.2914', '4.6666', '114.5136', '16.2220', '3.8648', '114.5836', '16.2500', '6.8113'),
('174.5236', '19.0214', '5.8634', '114.5296', '16.2270', '7.8648', '114.5936', '16.2100', '6.8486'),
('251.1256', '12.5111', '2.1255', '511.5124', '12.1511', '5.1251', '212.1512', '15.1213', '7.8217'),
('151.1241', '15.1521', '3.1251', '234.1519', '19.1255', '8.1211', '125.8445', '19.2222', '5.1215'),
('124.5236', '18.0214', '4.8634', '214.5236', '18.2200', '5.8648', '171.1251', '14.1218', '7.1778'); 

INSERT INTO PESSOA (observacao)VALUES
('Lorem Ipsum'),
('Loira dos olhos esverdiados'),
('Devedor está com nome no SERASA'),
('Administrador da fazenda Ki-Limpinho'),
('Dono da Fazenda BANANAL'),
(null),
('Dono da Fazenda BOA VISTA'),
('Dono da Fazenda BROCOTO'),
('Dono da Fazenda BUENOS AIRES'),
('Dono da Fazenda BURITI OU TICAO'),
('Dono da Fazenda BURACO'),
('Dono da Fazenda CHAPADINHA'),
('Dono da Fazenda BURITI VERMELHO'),
('Dono da Fazenda ENGENHO QUEIMADO'),
('Dono da Fazenda GIBOIA'),
('Dono da Fazenda GOAIBA'),
('Dona da Fazenda SAO LUIS'),
('Dono da Fazenda PAULISTA'),
('Dono da Fazenda BURITI'),
('Dono da Fazenda TACACA'),
('Dono da Fazenda SERRA QUEIMADA'); 

INSERT INTO TELEFONE (ddi, ddd, numero, ramal) VALUES
('55', '62', '32333434', null),
('55', '64', '984614412', null),
('55', '61', '971235358', null),
('55', '61', '985330519', null),
('55', '61', '997723626', null),
('55', '61', '969460325', null),
('55', '61', '980463904', null),
('55', '11', '971812927', null),
('55', '82', '979838412', '1'),
('55', '85', '988347833', '2'),
('55', '88', '969661889', null),
('55', '98', '995853325', null),
('55', '61', '998962283', null),
('55', '61', '992733566', '1');

INSERT INTO guarda (idPessoa, idTelefone) VALUES
('1', '1'),
('2', '2'),
('3', '3'),
('4', '4'),
('5', '5'),
('5', '6'),
('6', '7'),
('7', '8'),
('8', '9'),
('9', '10'),
('10', '11'),
('11', '11'),
('12', '12'),
('13', '13'),
('14', '14'),
('15', '13'),
('16', '1'),
('17', '7'),
('18', '9'),
('19', '2'),
('20', '6'),
('21', '12'); 

INSERT INTO JURIDICA VALUES
('91909474000106', '452', 'DF', 'Renan e Ruan Plantas ME', '1'),
('13749593000135', '857', 'GO', 'Marcela e Nair Imobiliário ME', '2'),
('70770629000104', '654', 'SP', 'Luana e Fátima Transportes Ltda', '3'),
('12884436000170', '156', 'DF', 'Gustavo e Igor Marketing Ltda', '4'),
('10140053000161', '124', 'RJ', 'Daiane e Beatriz Telecom ME', '5'),
('69661403000188', '123', 'RJ', 'Oitenta Conto Telecom ', '6'),
('30568599000125', '121', 'RJ', 'Casas Goiabada SA', '7'),
('91283912839181', '321', 'DF', 'Sebastian LTDA', '16'),
('19382198318391', '428', 'SP', 'Renata Cosmeticos', '17'),
('31922839183391', '403', 'RJ', 'Joao Santos Consultoria', '18'); 

INSERT INTO FISICA VALUES
('92164953088', 'Mariana Queiróz', '443183776', 'DF','SSP', '2020-10-05', 'Vicente Pires','DF', '1970-08-05', null, null ,'Solteiro', '8'),
('02483870066', 'João Carlos Queiróz', '276684552', 'GO', 'SSP', '2021-11-10', 'Goiânia','GO', '1995-10-03', 56478565288,'Lara Almeida Ferreira' ,'Casado', '9'),
('07574933006', 'Lucas Augusto Ferreira', '359262892', 'GO', 'SSP','2019-03-20', 'Aparecida de Goiânia','GO', '1997-07-15', null, null , 'Solteiro', '10'),
('12074978406', 'Gabriela Justo Silva', '420705399', 'RJ', 'SSP','2015-02-16', 'Rio de Janeiro','RJ', '1980-08-16', 66575545425, 'Jorge Partos Silva' , 'Casado', '11'),
('64104847046', "Julia Maria Lurdes", '169505248', 'SP', 'SSP','2022-02-26', 'Marília','SP', '1995-06-20', null , null, 'Solteiro', '12'),
('61582454884', "Clara Aguilar", '362765790', 'SP', 'SSP','2022-02-26', 'Marília','SP', '1995-06-20', null , null, 'Solteiro', '13'),
('53611572527', "Ana Maria Braga", '448421252', 'SP', 'SSP','2022-02-26', 'Marília','SP', '1975-02-21', null , null, 'Solteiro', '14'),
('47524678010', "Rodrigo Caio", '414454583', 'DF', 'SSP','2022-02-26', 'Sobradinho','DF', '1975-03-21', null , null, 'Solteiro', '15'),
('45346537007', "Maria da Silva", '169331252', 'SP', 'SSP','2022-07-26', 'Macapá','AP', '1975-07-21', null , null, 'Solteiro', '19'),
('36025474001', "João Pires Santos", '418921252', 'SP', 'SSP','2021-02-26', 'Palmas','TO', '1975-08-21', null , null, 'Solteiro', '20'),
('56366963029', "Victor Edurado Lopes", '448419632', 'SP', 'SSP','2022-03-26', 'Belém','PA', '1975-09-21', null , null, 'Solteiro', '21'); 

INSERT INTO ADMINISTRADOR VALUES
(32218181061, 'Mauricio Arnaldo'),
(72521564001, 'Neowi Dures'),
(93027991078, 'Ustor Mientifi'),
(34089004004, 'Tauer Simai'),
(18963367010, 'Wacil Blupo'),
(34089004005, 'Maria da Silva'),
(53611572527, 'Sebastiao Elias'),
(49238492842, 'Renata Silva Oliveira'),
(48234829842, 'Joao Santos Pedrosa'),
(91831983188, 'Renan Lima Junior'); 

INSERT INTO administra (cnpj, CPFAdministrador) VALUES
('30568599000125', '32218181061'),
('69661403000188', '72521564001'),
('10140053000161', '93027991078'),
('12884436000170', '34089004004'),
('70770629000104', '18963367010'),
('13749593000135', '34089004005'),
('91909474000106', '91831983188'),
('91283912839181', '53611572527'),
('19382198318391', '49238492842'),
('31922839183391', '48234829842'); 

INSERT INTO ENDERECO (uf, correspondencia, bairro, cidade, cep, caixaPostal, endereco, observacao) VALUES
('DF', TRUE , 'Setor Habitacional Fercal', 'Sobradinho', '73150025', '1234', 'Setor Engenho Velho Quadra 9', 'Casa 4'),
('DF', TRUE, 'Santa Maria', 'Brasília', '72509238', '123', 'Quadra CL 309 Bloco H', 'Mudamos recentemente para este endereço'),
('DF', TRUE, 'Zona Industrial', 'Guará', '71215000', '12345', 'Setor SIA Setor de Áreas Públicas', 'Endereço está desatualizado'),
('DF', TRUE, 'Paranoá Parque', 'Paranoá', '71587032', '12', 'Quadra Quadra 1 Conjunto 2', null),
('DF', FALSE, 'Setor Habitacional Arniqueira', 'Águas Claras', '71995185', '1', 'Conjunto SHA Conjunto 5 Chácara 25', null),
('DF', TRUE, 'Taguatinga Sull', 'Taguatinga', '72023420', '123456', 'Conjunto SMT Conjunto 4', null),
('DF', FALSE, 'Asa Norte', 'Brasília', '70842500', '1234567', 'Quadra CLN 204', null),
('DF', TRUE, 'Taguatinga Norte', 'Taguatinga', '72120400', '11', 'Quadra QND 40',  null),
('DF', TRUE, 'Taguatinga Centro', 'Taguatinga', '72010912', '111', 'C 5 Lote 05',  null),
('DF', FALSE, 'Setor Habitacional', 'Vicente Pires', '72005125', '1111', 'Rua Rua 1 Chácara 5', null),
('DF', FALSE, 'Santa Maria', 'Brasília', '72542503', '122', 'Quadra QR 312 Conjunto C', null),
('DF', FALSE, 'Vila Estrutural', 'Guará', '71261735', '133', 'Quadra Quadra 6 Conjunto 7', null),
('DF', FALSE, 'Recanto das Emas', 'Brasília', '72631122', '144', 'Quadra Quadra 405 Conjunto 22', null),
('GO', FALSE, 'Jardim Flamboyant', 'Luziânia', '72852530', '155', 'Rua Tupi', null);

INSERT INTO conta VALUES
('1', '10'),
('2', '14'),
('3', '13'),
('4', '12'),
('5', '11'),
('6', '10'),
('7', '9'),
('8', '8'),
('9', '7'),
('10', '6'),
('11', '5'),
('12', '4'),
('13', '3'),
('14', '2'),
('15', '1'),
('16', '10'),
('17', '7'),
('18', '5'),
('19', '4'),
('20', '14'),
('21', '9'); 

INSERT INTO PROCESSO VALUES
('70', '123', '2020', '01', '2019-01-15', '1', '2', '3', '4', '5', '6', '7', '1', '7', '1111', null),
('70', '128', '2020', '00', '2020-01-15', '2', '3', '4', '5', '4', '3', '2', '2', '6', '3333', null),
('71', '122', '2019', '40', '2021-01-15', '1', '7', '6', '6', '7', '1', '5', '3', '8', '2222', 'Processo de Alta Prioridade'),
('71', '124', '2021', '13', '2022-01-15', '4', '5', '5', '7', '1', '2', '3', '4', '5', '4444', null),
('72', '111', '2022', '04', '2020-04-25', '5', '6', '7', '1', '2', '5', '4', '5', '3', '7777', null),
('73', '751', '2022', '03', '2021-01-01', '6', '4', '10', '2', '3', '4', '8', '6', '2', '5555', 'Sem resposta do Responsável do processo'),
('70', '171', '2022', '05', '2015-12-30', '7', '1', '8', '3', '8', '10', '6', '7', '1', '6666', null),
('70', '015', '2019', '05', '2017-12-30', '8', '8', '9', '9', '10', '9', '10', '8', '4', '1010', 'Responsável do Processo sob investigação Criminal'),
('70', '254', '2020', '05', '2018-12-30', '9', '10', '1', '8', '9', '7', '9', '9', '10', '9999', 'Processo é uma provável Fraude'),
('70', '512', '2021', '05', '2022-12-30', '10', '9', '2', '10', '6', '8', '1', '10', '9', '8888', null);

INSERT INTO TERMOCONTRATO (nomeTermo) VALUES
('CDU'),
('CDRU'),
('Termo Aditivo'),
('Apostilamento'),
('Contrato de Transferência'),
('Distrato'),
('Substrato'),
('Contrato de Apropriação de Terra'),
('Contrato de Doação de Terra'),
('Contrato de Legalização de Terreno');

INSERT INTO CONTRATO (numero, dataAssinatura, emissor, cartorio, protocolo, livro, folha, numeroDODF, dataDODF, idTermoContrato, orgao, numeroProcesso, ano)VALUES
('84351',   '2019-01-15', 'SEAGRI',   '551', '5',   '49',     '21',  '451',  '2019-01-17', '1',  '70', '123', '2020'),
('3513541', '2017-08-30', 'TERRACAP', '3',   '89',  '415',   '85', '4436', '2017-09-01', '1',  '70', '128', '2020'),
('6854354', '2018-07-29', 'SEAGRI',   '8',   '55',  '513', '51',  '454',  '2018-07-31', '5',  '71', '122', '2019'),
('57254',   '2020-02-28', 'SEAGRI',   '58',  '96',  '54',    '59', '54',   '2020-03-05', '4',  '71', '124', '2021'),
('543543',  '2022-05-01', 'TERRACAP', '98',  '311', '265', '24',  '244',  '2022-05-04', '5',  '72', '111', '2022'),
('5135',    '2019-05-01', 'SEAGRI',   '98',  '313', '212',   '42',  '5163',   '2019-05-04', '6',  '73', '751', '2022'),
('84786',   '2022-10-15', 'TERRACAP', '97',  '301', '125',   '14',  '545',   '2022-10-19', '10', '70', '171', '2022'),
('2052163', '2018-08-30', 'UNIÃO',    '15',  '55',  '111',   '16',  '422',   '2018-09-04', '8',  '70', '015', '2019'),
('846432',  '2015-12-10', 'SEAGRI',   '54',  '896', '25',   '17',  '843',   '2015-12-19', '2',  '70', '254', '2020'),
('1351351', '2021-05-01', 'TERRACAP', '81',  '151', '89',   '14',  '211',   '2021-05-10', '3',  '70', '512', '2021');


INSERT INTO STATUSCLO (nome) VALUES
('Vigente' ),
('Indeferido'),
('Em análise'),
('Vencido'),
('Indefinido'),
('Anulado'),
('Necessida atualização'),
('Sob Investigação'),
('Não Averiguado'),
('Inválido');

INSERT INTO CLO VALUES
('00152014', '2022-10-12', 'Mariana Queiróz', '70', '123', '2020', '1'),
('01332020', '2021-01-11', 'João Carlos Queiróz', '71', '122', '2019', '6'),
('00122019', '2020-02-22', 'Lucas Augusto Ferreira','70', '123', '2020', '2'),
('00152021', '2019-05-30', 'Gabriela Justo Silva','71', '122', '2019', '4'),
('00162022', '2018-02-06', "Julia Maria Lurdes", '72', '111', '2022','5'),
('00155612', '2018-02-06', "Ana Maria Braga", '73', '751', '2022', '3'),
('00143192', '2018-02-06', "Rodrigo Caio",'70', '171', '2022', '7'),
('3513514', '2019-02-06', "Mário de Souza Alcântara",'70', '015', '2019', '10'),
('2412112', '2020-02-06', "Luiz Andrade da Cunha",'70', '254', '2020', '8'),
('0035413', '2021-02-06', "Antônio José da Silva Ribeiro",'70', '512', '2021', '9');

INSERT INTO ACAOORDEMCONTATO (nomeAcao) VALUES
('Ligação telefônica (requerente) – sucesso'),
('Ligação telefônica (cônjuge) – sucesso'),
('Ligação telefônica (parente) – sucesso'),
('Ligação telefônica (empregado) – sucesso'),
('Ligação telefônica (procurador) – sucesso'),
('Ligação telefônica (terceiro) – sucesso'),
('Ligação telefônica (empresarial) – sucesso'),
('Envio de e-mail (requerente) – sucesso'),
('Envio de e-mail (cônjuge) – sucesso'),
('Envio de e-mail (empresarial) – sucesso');

INSERT INTO ORDEMCONTATO (dataAbertura, prazo, observacao, idAcao, orgao, numeroProcesso, ano) VALUES
('2020-02-28',  '2', null, 									 		'1',  '70', '123', '2020'),
('2020-01-27',  '1', null, 									  		'2',  '70', '128', '2020'),
('2020-02-24',  '2', 'Não pertence a pessoa, e não a conhece', 		'3',  '71', '122', '2019'),
('2020-04-13',  '3', null, 									  		'5',  '71', '124', '2021'),
('2020-02-13',  '4', null, 									  		'4',  '72', '111', '2022'),
('2020-07-14',  '5', null, 									  		'3',  '73', '751', '2022'),
('2020-08-12',  '8', null, 									  	 	'7',  '70', '171', '2022'),
('2019-12-22', '12', 'E-mail sem resposta', 				  	    '8',  '70', '015', '2019'),
('2020-05-11', '10', 'Não pertence ao requerente, e não o conhece', '9',  '70', '254', '2020'),
('2021-08-03',  '2', 'Passou o seguinte contato: 6140028922', 		'10', '70', '512', '2021');

INSERT INTO DOCUMENTO (nome) VALUES
('Requerimento Padrão'),
('Documentação pessoal(requerente)'),
('Comprovação do estado civil'),
('Instrumento de procuração' ),
('Declaração de não concessionário'),
('Fiscalização - Laudo de Vistoria'),
('GTPU (Análise do PU)'),
('Documentação pessoal (cônjuge) / Certidão Óbito'),
('Certidão Negativa da SEAGRI (requerente)'),
('Documentos de comprovação do lapso temporal');

INSERT INTO ITEMCHECKLIST (idItemChecklist, numeroFolha, numeroDocumento, autenticacao, detalhe, validade, idDocumento, orgao, numeroProcesso, ano) VALUES
(null, null,  '12345', FALSE,                  'Solteiro', '2023-05-21', '1', '70', '123', '2020'),
(null,  '1', '123456', FALSE,  'Sem poderes para assinar', '2023-05-21', '2', '71', '124', '2021'),
(null, '24',  '12346',  TRUE,                        null, '2023-05-21', '3', '71', '122', '2019'),
(null, null,  '21546', FALSE, 						 null, '2023-05-21', '4', '70', '123', '2020'),
(null, '21',  '24541',  TRUE, 				   'Aprovado', '2023-05-21', '5', '70', '171', '2022'),
(null, '37',  '45414', FALSE, 				 'Indefinido', '2023-05-21', '6', '70', '171', '2022'),
(null, null,  '13211',  TRUE, 		   'Existe atividade', '2024-05-22', '7', '70', '171', '2022'),
(null, null,   '5156', FALSE, 				   'Inválido', '2023-01-29', '8', '70', '512', '2021'),
(null, '25',  '54121', FALSE,'Não foi possível Averiguar', '2022-09-15', '9', '70', '254', '2020'),
(null, null,   '7555',  TRUE,  'Sem poderes para assinar', '2021-07-20', '10', '70', '015', '2019');

INSERT INTO email VALUES
(1, 'Quacksson@gmail.com'),
(2, 'ElvisTheVersed@gmail.com'),
(3, 'Elvisoff@gmail.com'),
(4, 'Wiequack@gmail.com'),
(5, 'Trapdeoroff@gmail.com'),
(6, 'BANANALlitz@gmail.com'),
(7, 'engenho_queimado@gmail.com'),
(8, 'PluckyZante@gmail.com'),
(9, 'WaggishTango@bol.com'),
(10, 'BerserkGravel@uol.com.br'),
(11, 'HulkingFlash@hotmail.com'),
(12, 'DispensableBeamer@outlook.com'),
(13, 'WryDavy@uol.com'),
(14, 'KaputHickstead@gui.com.br'),
(15, 'ExultantDustin@gmail.com');
