CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
    ('Carnes', 'Diferentes tipos de carnes'),
    ('Aves', 'Carnes de aves como frango e peru'),
    ('Peixes', 'Diferentes tipos de peixes'),
    ('Vegetais', 'Diferentes tipos de vegetais'),
    ('Frutas', 'Diferentes tipos de frutas');

CREATE TABLE IF NOT EXISTS tb_produtos (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_produtos (nome_produto, descricao, valor, categoria_id)
VALUES
    ('Filé Mignon', 'Corte nobre de carne bovina', 100.00, 1),
    ('Frango Inteiro', 'Carne de frango inteiro', 60.00, 2),
    ('Salmão', 'Peixe fresco', 90.00, 3),
    ('Alface', 'Folhas de alface fresca', 5.00, 4),
    ('Maçã', 'Fruta suculenta', 2.50, 5),
    ('Picanha', 'Corte tradicional de carne bovina', 80.00, 1),
    ('Cenoura', 'Legume nutritivo', 3.00, 4),
    ('Banana', 'Fruta rica em potássio', 1.50, 5);


SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.valor, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.valor, p.descricao, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria IN ('Aves', 'Frutas');
