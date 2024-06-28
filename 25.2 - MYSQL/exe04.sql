CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_validade DATE NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes Vermelhas', 'Produtos de carne bovina e suína'),
('Aves', 'Produtos de carne de frango e aves'),
('Peixes', 'Produtos de peixe e frutos do mar'),
('Embutidos', 'Produtos como salsichas e linguiças'),
('Especiais', 'Carnes especiais e cortes nobres');


INSERT INTO tb_produtos (nome, descricao, valor, data_validade, categoria_id) VALUES
('Picanha', 'Corte nobre de carne bovina', 120.00, '2024-06-30', 1),
('Coxa de Frango', 'Corte de frango', 20.00, '2024-07-15', 2),
('Salmão', 'Filé de salmão fresco', 80.00, '2024-06-25', 3),
('Linguiça', 'Linguiça toscana', 25.00, '2024-08-10', 4),
('Filé Mignon', 'Corte nobre de carne bovina', 150.00, '2024-06-30', 5),
('Costela', 'Corte de costela bovina', 60.00, '2024-09-10', 1),
('Frango Inteiro', 'Frango inteiro', 40.00, '2024-08-20', 2),
('Camarão', 'Camarão fresco', 100.00, '2024-07-05', 3);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.id, 
    tb_produtos.nome, 
    tb_produtos.descricao, 
    tb_produtos.valor, 
    tb_produtos.data_validade, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;


SELECT 
    tb_produtos.id, 
    tb_produtos.nome, 
    tb_produtos.descricao, 
    tb_produtos.valor, 
    tb_produtos.data_validade, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome = 'Aves';