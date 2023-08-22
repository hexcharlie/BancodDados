CREATE DATABASE DB_commerce;
USE DB_commerce;

CREATE TABLE e_produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    descricao TEXT,
    estoque INT
);


INSERT INTO e_produtos (id, nome, categoria, preco, descricao, estoque)
VALUES
    (1, 'Smartphone Modelo X', 'Eletrônicos', 800.00, 'Um smartphone avançado com câmera de alta resolução.', 50),
    (2, 'Notebook Ultra Y', 'Eletrônicos', 1200.00, 'Um notebook leve e potente para trabalho e lazer.', 30),
    (3, 'Camiseta Estampada', 'Moda', 25.00, 'Camiseta de algodão com estampa moderna.', 100),
    (4, 'Tênis Esportivo', 'Calçados', 90.00, 'Tênis confortável para atividades esportivas.', 75),
    (5, 'Relógio Elegante', 'Acessórios', 300.00, 'Relógio analógico com design elegante.', 20),
    (6, 'Fone de Ouvido Bluetooth', 'Eletrônicos', 60.00, 'Fone de ouvido sem fio com ótima qualidade de som.', 50),
    (7, 'Calça Jeans Slim', 'Moda', 45.00, 'Calça jeans slim fit de alta qualidade.', 60),
    (8, 'Mochila Resistente', 'Acessórios', 40.00, 'Mochila durável com vários compartimentos.', 40);

SELECT * FROM e_produtos WHERE preco > 500.00;

SELECT * FROM e_produtos WHERE preco < 500.00;

UPDATE e_produtos SET estoque = 25 WHERE id = 1;
