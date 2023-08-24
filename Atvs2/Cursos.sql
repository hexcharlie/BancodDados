CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE IF NOT EXISTS tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
    ('Programação', 'Cursos de programação e desenvolvimento'),
    ('Design', 'Cursos de design gráfico e UI/UX'),
    ('Negócios', 'Cursos relacionados a empreendedorismo e negócios'),
    ('Idiomas', 'Cursos de aprendizado de idiomas'),
    ('Saúde', 'Cursos na área de saúde e bem-estar');

CREATE TABLE IF NOT EXISTS tb_cursos (
    curso_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_curso VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_cursos (nome_curso, descricao, valor, categoria_id)
VALUES
    ('Curso de Python', 'Aprenda a programar em Python', 250.00, 1),
    ('Curso de Design de Interfaces', 'Crie designs atraentes', 350.00, 2),
    ('Curso de Empreendedorismo', 'Inicie o seu próprio negócio', 180.00, 3),
    ('Curso de Inglês', 'Aprenda inglês do básico ao avançado', 600.00, 4),
    ('Curso de Nutrição', 'Aprenda sobre alimentação saudável', 200.00, 5),
    ('Curso de JavaScript Avançado', 'Domine o JavaScript moderno', 300.00, 1),
    ('Curso de Photoshop', 'Edição e manipulação de imagens', 280.00, 2),
    ('Curso de Marketing Digital', 'Estratégias de marketing online', 450.00, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

SELECT c.nome_curso, c.valor, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.categoria_id;

SELECT c.nome_curso, c.valor, c.descricao, cat.nome_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.categoria_id = cat.categoria_id
WHERE cat.nome_categoria = 'Programação';
