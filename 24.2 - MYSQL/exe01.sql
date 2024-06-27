CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
    id BIGINT auto_increment primary key,
    nome varchar(255) not null,
    cargo varchar(255) not null,
    cpf varchar(11) not null,
    endereco varchar(225) not null,
    salario decimal not null,
    data_contratacao date not null
);

INSERT INTO tb_colaboradores(nome, cargo, cpf, endereco, salario, data_contratacao) VALUES
('Robertinho Brabo', 'Analista de sistemas', '12345678900', 'Rua do Claudio', 3500, '2022-01-15'),
('Alfredo Louco', 'Assistente Administrativo', '12345678910', 'Beco do Batman', 1800, '2021-03-22'),
('Carla Souza', 'Gerente de Projetos', '12345678920', 'Rua do Berimbal', 5000, '2019-07-10'),
('Diego Lima', 'Designer Gráfico', '12345678930', 'Rua da Esquina', 2500, '2020-11-05'),
('Eduardo Santos', 'Desenvolvedor Front-end', '12345678940', 'Rua da Casa Maluca', 3000, '2023-02-18');

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 3800 WHERE nome = "Robertinho Brabo";

