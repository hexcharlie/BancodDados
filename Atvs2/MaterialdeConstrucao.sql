CREATE DATABASE IF NOT EXISTS db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE IF NOT EXISTS tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
    ('Ferramentas', 'Diferentes tipos de ferramentas'),
    ('Elétrica', 'Materiais elétricos e componentes'),
    ('Hidráulica', 'Materiais hidráulicos e encanamentos'),
    ('Pisos e Revestimentos', 'Diversos tipos de pisos e revestimentos'),
    ('Tintas e Acabamentos', 'Tintas, vernizes e produtos para acabamentos');

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
    ('Martelo', 'Ferramenta para construção', 20.00, 1),
    ('Fio Elétrico', 'Cabo elétrico para instalações', 2.50, 2),
    ('Vaso Sanitário', 'Peça para banheiros', 150.00, 3),
    ('Piso Cerâmico', 'Revestimento para pisos', 30.00, 4),
    ('Tinta Látex', 'Tinta para parede', 25.00, 5),
    ('Serra Circular', 'Ferramenta para corte de madeira', 120.00, 1),
    ('Conduíte', 'Tubo para passagem de fios', 5.00, 2),
    ('Torneira', 'Peça para pias e lavatórios', 50.00, 3);

SELECT * FROM tb_produtos WHERE valor > 100.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.valor, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.valor, p.descricao, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Hidráulica';
