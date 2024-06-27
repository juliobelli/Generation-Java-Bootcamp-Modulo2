CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    id BIGINT auto_increment primary key,
    nome varchar(255) not null,
    turma varchar(255) not null,
    nota decimal(2,2) not null,
    endereco varchar(225) not null
);

INSERT INTO tb_alunos(nome, turma, nota, endereco) VALUES
('Claudio', '2ºA', 7.50, 'Rua do Claudio'),
('Roberto', '1ºA', 8.50, 'Rua do Roberto'),
('Ana', '2ºB', 6.00, 'Rua da Ana'),
('Lana', '3ºA', 9.00, 'Rua da Lana'),
('Pedro', '3ºA', 10.00, 'Rua do Pedro'),
('João', '3ºB', 5.50, 'Rua do João'),
('Esther', '2ºB', 7.00, 'Rua da Esther');

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos
SET nota = 6 WHERE nome = "João";

