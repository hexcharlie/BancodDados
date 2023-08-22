CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE rh_colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento VARCHAR(50),
    data_contratacao DATE
);

INSERT INTO rh_colaboradores (id, nome, cargo, salario, departamento, data_contratacao)
VALUES
    (1, 'João Silva', 'Desenvolvedor', 2500.00, 'TI', '2023-01-15'),
    (2, 'Maria Santos', 'Analista de RH', 1800.00, 'Recursos Humanos', '2018-05-10'),
    (3, 'Pedro Oliveira', 'Gerente de Vendas', 3500.00, 'Vendas', '2019-09-20'),
    (4, 'Ana Souza', 'Atendente', 1500.00, 'Atendimento ao Cliente', '2022-03-05'),
    (5, 'Carlos Pereira', 'Analista Financeiro', 2200.00, 'Finanças', '2021-11-08');

SELECT * FROM rh_colaboradores WHERE salario > 2000.00;

SELECT * FROM rh_colaboradores WHERE salario < 2000.00;

UPDATE rh_colaboradores SET salario = 2300.00 WHERE id = 1;
