CREATE DATABASE DB_escola;
USE DB_escola;

CREATE TABLE TB_estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    genero VARCHAR(10),
    nota DECIMAL(4, 2)
);

INSERT INTO TB_estudantes (id, nome, idade, genero, nota)
VALUES
    (1, 'Ana Silva', 17, 'Feminino', 8.5),
    (2, 'João Santos', 16, 'Masculino', 6.8),
    (3, 'Mariana Oliveira', 18, 'Feminino', 9.2),
    (4, 'Pedro Sousa', 17, 'Masculino', 7.5),
    (5, 'Luísa Fernandes', 16, 'Feminino', 8.0),
    (6, 'Rafaela Costa', 18, 'Feminino', 6.3),
    (7, 'Lucas Rodrigues', 17, 'Masculino', 9.7),
    (8, 'Gustavo Almeida', 16, 'Masculino', 5.5);

SELECT * FROM TB_estudantes WHERE nota > 7.0;

SELECT * FROM TB_estudantes WHERE nota < 7.0;

UPDATE TB_estudantes SET nota = 7.8 WHERE id = 2;
