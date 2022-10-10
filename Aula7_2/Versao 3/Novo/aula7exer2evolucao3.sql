CREATE DATABASE IF NOT EXISTS aula7exer2evolucao3;
USE aula7exer2evolucao3;

CREATE TABLE FABRICANTE (
    cgc INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    cep INT NOT NULL,
    rua INT NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(45),
    cidade VARCHAR(45) NOT NULL,
    estado CHAR(2) NOT NULL,
    preco DECIMAL(6,2),
    constraint FABRICANTE_PK PRIMARY KEY(cgc)
);

CREATE TABLE PRODUTO (
    codigoControle INT NOT NULL,
    nomeComercial VARCHAR(45) NOT NULL,
    tipoEmbalagem VARCHAR(45) NOT NULL,
    quantidade INT NOT NULL,
    precoUnit FLOAT NOT NULL,
    cgc INT NOT NULL,
    constraint PRODUTO_PK PRIMARY KEY(codigoControle),
    CONSTRAINT PRODUTO_FABRICANTE_FK FOREIGN KEY (cgc) REFERENCES FABRICANTE (cgc)
);

CREATE TABLE CLIENTE (
    cpf INT NOT NULL,
    nomeCliente VARCHAR(45) NOT NULL,
    constraint CLIENTE_PK PRIMARY KEY(cpf)
);

CREATE TABLE VENDA (
    numeroNF INT NOT NULL,
    dataCompra DATE NOT NULL,
    imposto FLOAT NOT NULL,
    cpf INT NOT NULL,
    constraint VENDA_PK PRIMARY KEY(numeroNF),
    CONSTRAINT VENDA_CLIENTE_FK FOREIGN KEY (cpf) REFERENCES CLIENTE (cpf)
);

CREATE TABLE RECEITA (
    codigoReceita INT NOT NULL,
    numeroNF INT NOT NULL,
    crmNumero INT NOT NULL,
    crmEstado CHAR(2) NOT NULL,
    dataEmissao DATE NOT NULL,
    constraint RECEITA_PK PRIMARY KEY(codigoReceita),
	CONSTRAINT RECEITA_VENDA_FK FOREIGN KEY (numeroNF) REFERENCES VENDA (numeroNF)
);

CREATE TABLE PERFUME (
    codigoControle INT NOT NULL,
    fragrancia VARCHAR(45) NOT NULL,
    tipo VARCHAR(45) NOT NULL,
    CONSTRAINT PERFUME_PRODUTO_FK FOREIGN KEY (codigoControle) REFERENCES PRODUTO (codigoControle)
);

CREATE TABLE MEDICAMENTO (
    codigoControle INT NOT NULL,
    formula VARCHAR(45) NOT NULL,
    tarja VARCHAR(45) NOT NULL,
    CONSTRAINT MEDICAMENTO_PRODUTO_FK FOREIGN KEY (codigoControle) REFERENCES PRODUTO (codigoControle)
);

CREATE TABLE telefone (
    cgc INT NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    UNIQUE (telefone, cgc),
    CONSTRAINT telefone_FABRICANTE_FK FOREIGN KEY (cgc) REFERENCES FABRICANTE (cgc)
);

CREATE TABLE medicamentos (
    codigoReceita INT NOT NULL,
    medicamento VARCHAR(45) NOT NULL,
    CONSTRAINT medicamento_RECEITA_FK FOREIGN KEY (codigoReceita) REFERENCES RECEITA (codigoReceita)
);

CREATE TABLE comercializa (
    numeroNF INT NOT NULL,
    codigoControle INT NOT NULL,
    quantidadeProduto INT NOT NULL,
    CONSTRAINT comercializa_PRODUTO_FK FOREIGN KEY (codigoControle) REFERENCES PRODUTO (codigoControle),
    CONSTRAINT comercializa_VENDA_FK FOREIGN KEY (numeroNF) REFERENCES VENDA (numeroNF)
);

CREATE TABLE prescreve (
    codigoControle INT NOT NULL,
    codigoReceita INT NOT NULL,
    CONSTRAINT prescreve_MEDICAMENTO_FK FOREIGN KEY (codigoControle) REFERENCES MEDICAMENTO (codigoControle),
    CONSTRAINT prescreve_RECEITA_FK FOREIGN KEY (codigoReceita) REFERENCES RECEITA (codigoReceita)
);