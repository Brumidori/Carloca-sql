USE CARLOCA;

INSERT INTO CARROS (MODELO, CATEGORIA, MONTADORA, COR, VERSAO, KM_ATUAL, SITUACAO)
VALUES
('Fiesta', 'Hatch', 'Ford', 'branco', '1.6', 50000, 'disponivel'),
('Cruze', 'Sedan Médio', 'Chevrolet', 'preto', 'LTZ', 35000, 'disponivel'),
('T-Cross', 'SUV', 'Volkswagen', 'prata', 'Comfortline', 20000, 'disponivel'),
('Gol', 'Hatch', 'Volkswagen', 'branco', '1.0', 40000, 'disponivel'),
('Corolla', 'Sedan Médio', 'Toyota', 'preto', 'GLi', 25000, 'disponivel'),
('hb20', 'Hatch', 'Nissan', 'branco', 'GLi', 25000, 'alugado');


INSERT INTO ENDERECO (LOGRADOURO, NUMERO, BAIRRO, CIDADE, ESTADO, CEP)
VALUES 
('Rua A', '123', 'Centro', 'São Paulo', 'SP', '01001000'),
('Rua B', '456', 'Jardins', 'São Paulo', 'SP', '01415002'),
('Rua C', '789', 'Vila Olímpia', 'São Paulo', 'SP', '04547004'),
('Avenida D', '1001', 'Boa Viagem', 'Recife', 'PE', '51111111'),
('Avenida E', '2222', 'São José', 'Florianópolis', 'SC', '88032001'),
('Avenida F', '3333', 'Centro', 'Rio de Janeiro', 'RJ', '20010000');

INSERT INTO TELEFONE (DDD, NUMERO) VALUES
('11', '912345678'),
('11', '987654321'),
('21', '998877665'),
('81', '912345678'),
('48', '987654321'),
('21', '998877665');

INSERT INTO CLIENTES (NOME, ENDERECO, TELEFONE, HISTORICO_LOCACOES) VALUES
('Maria Silva', 1, 1, 'Fiesta - 60000 km' 'Cruze'),
('José Santos', 4, 4, 'Volkswagen Gol - 50000 km'),
('Ana Souza', 3, 3, 'Volkswagen Gol - 60000 km');

INSERT INTO UNIDADES (NOME, ENDERECO, TELEFONE) VALUES
('Unidade A', 2, 2),
('Unidade B', 5, 5),
('Unidade C', 6, 6);


INSERT INTO LOCACOES (DATA_LOCACAO, DATA_DEVOLUCAO, KM_INICIAL, KM_FINAL, ID_CARRO, ID_CLIENTE, ID_UND_LOCACAO, ID_UND_DEVOLUCAO)
VALUES
('2022-02-10', '2022-02-12', 1000.5, 1100.2, 1, 1, 1, 2),
('2022-03-05', '2022-03-08', 2000.8, 2100.4, 2, 2, 2, 3),
('2022-04-15', '2022-04-20', 1500.2, 1800.7, 3, 3, 3, 1),
('2022-04-15', '2022-04-20', 1500.2, 1800.7, 5, 3, 3, 1);

INSERT INTO LOCACOES (DATA_LOCACAO, DATA_DEVOLUCAO, KM_INICIAL, KM_FINAL, ID_CARRO, ID_CLIENTE, ID_UND_LOCACAO, ID_UND_DEVOLUCAO)
VALUES
('2022-04-15', '2022-04-20',1500.2, 1800.7, 2, 3, 3, 1);

INSERT INTO CARROS (MODELO, CATEGORIA, MONTADORA, COR, VERSAO, KM_ATUAL, SITUACAO)
VALUES
('Fiesta', 'Hatch', 'Ford', 'verde', '1.6', 50000, 'alugado');
