CREATE DATABASE db_commerce;

USE db_commerce;

CREATE TABLE tb_produtos(
    id BIGINT auto_increment primary key,
    nome varchar(255) not null,
    modelo varchar(255) not null,
    quantidade int,
    preco decimal not null
);

INSERT INTO tb_produtos(nome, modelo, quantidade, preco) VALUES
('Gabinete Simples', 'Preto', 5, 50),
('Placa de Vídeo', 'GTX 1060 TI', 6, 950),
('Processador', 'AMD Ryzen 5 3600', 3, 900),
('Placa de Vídeo', 'RTX 3060', 2, 3800),
('Placa de Vídeo', 'RTX 4070', 2, 7000),
('Placa de Vídeo', 'RTX 3060 TI', 2, 4500),
('Gabinete Brabo', 'Branco', 7, 150),
('Gabinete Foda', 'Preto', 6, 450);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET preco = 3500 WHERE nome = "RTX 3060";

