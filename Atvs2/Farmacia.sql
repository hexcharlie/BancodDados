CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
    ('Medicamentos', 'Produtos para tratamento de saúde'),
    ('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
    ('Higiene', 'Produtos de higiene pessoal');

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
    ('Paracetamol', 'Analgésico e antitérmico', 10.00, 1),
    ('Creme Hidratante', 'Hidratação para a pele', 25.00, 2),
    ('Shampoo Anticaspa', 'Tratamento para couro cabeludo', 15.00, 3),
    ('Vitamina C', 'Suplemento vitamínico', 30.00, 1),
    ('Protetor Solar FPS 50', 'Proteção contra raios solares', 40.00, 2),
    ('Creme Dental', 'Higiene bucal diária', 5.00, 3),
    ('Anti-inflamatório', 'Medicamento para redução de inflamações', 20.00, 1),
    ('Perfume', 'Fragrância perfumada', 60.00, 2);

SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

SELECT p.nome_produto, p.valor, c.nome_categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id;

SELECT p.nome_produto, p.valor, p.descricao, c.nome_categoria FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.categoria_id WHERE c.nome_categoria = 'Cosméticos';
