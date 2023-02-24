CREATE DATABASE IF NOT EXISTS CARLOCA;

USE CARLOCA;


CREATE TABLE IF NOT EXISTS ENDERECO(
ID BIGINT AUTO_INCREMENT NOT NULL,
LOGRADOURO VARCHAR (255) NOT NULL,
NUMERO VARCHAR (10) NOT NULL,
BAIRRO VARCHAR (50) NOT NULL,
CIDADE VARCHAR (255) NOT NULL,
ESTADO VARCHAR (2) NOT NULL,
CEP VARCHAR (8) NOT NULL,
PRIMARY KEY(ID)

);

CREATE TABLE IF NOT EXISTS TELEFONE(
ID BIGINT AUTO_INCREMENT NOT NULL,
DDD VARCHAR (2) NOT NULL,
NUMERO VARCHAR (9) NOT NULL,
PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS CLIENTES(
ID BIGINT AUTO_INCREMENT NOT NULL,
NOME VARCHAR (255) NOT NULL,
ENDERECO BIGINT,
foreign key (ENDERECO) references ENDERECO(id),
TELEFONE BIGINT,
foreign key (TELEFONE) references TELEFONE(id),
HISTORICO_LOCACOES VARCHAR (255),
PRIMARY KEY(ID)

);

CREATE TABLE IF NOT EXISTS UNIDADES(
ID BIGINT AUTO_INCREMENT NOT NULL,
NOME VARCHAR (255) NOT NULL,
ENDERECO BIGINT NOT NULL,
foreign key (ENDERECO) references ENDERECO(id),
TELEFONE BIGINT ,
foreign key (TELEFONE) references TELEFONE(id),
PRIMARY KEY(ID)

);

CREATE TABLE IF NOT EXISTS CARROS(
ID BIGINT AUTO_INCREMENT NOT NULL,
MODELO VARCHAR (255) NOT NULL,
CATEGORIA VARCHAR (255) NOT NULL,
MONTADORA VARCHAR (255) NOT NULL,
COR ENUM ('branco', 'preto', 'prata') NOT NULL,
VERSAO VARCHAR(50) NOT NULL,
KM_ATUAL DOUBLE NOT NULL,
SITUACAO ENUM ('alugado', 'disponivel') NOT NULL DEFAULT 'disponivel',
PRIMARY KEY(ID),
UNIDADE_ATUAL BIGINT,
foreign key (UNIDADE_ATUAL) references UNIDADES(id)
);

CREATE TABLE IF NOT EXISTS LOCACOES(
ID BIGINT AUTO_INCREMENT NOT NULL,
DATA_LOCACAO DATE NOT NULL,
DATA_DEVOLUCAO DATE,
KM_INICIAL DOUBLE NOT NULL,
KM_FINAL DOUBLE NOT NULL,
PRIMARY KEY(ID),
ID_CARRO BIGINT,
foreign key (ID_CARRO) references CARROS(id),
ID_CLIENTE BIGINT,
foreign key (ID_CLIENTE) references CLIENTES(id),
ID_UND_LOCACAO BIGINT,
foreign key (ID_UND_LOCACAO) references UNIDADES(id),
ID_UND_DEVOLUCAO BIGINT,
foreign key (ID_UND_DEVOLUCAO) references UNIDADES(id)

);






