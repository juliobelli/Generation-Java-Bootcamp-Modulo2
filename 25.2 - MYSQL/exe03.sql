CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

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
('Medicamentos', 'Remédios e produtos farmacêuticos'),
('Vitaminas', 'Suplementos vitamínicos'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Higiene', 'Produtos de higiene pessoal'),
('Infantil', 'Produtos para crianças e bebês');

INSERT INTO tb_produtos (nome, descricao, valor, data_validade, categoria_id) VALUES
('Paracetamol', 'Analgésico e antitérmico', 15.00, '2025-01-01', 1),
('Vitamina C', 'Suplemento vitamínico', 30.00, '2024-06-15', 2),
('Shampoo', 'Shampoo para cabelos normais', 25.00, '2023-12-01', 3),
('Fralda', 'Fralda descartável', 45.00, '2025-09-20', 5),
('Creme Dental', 'Creme dental com flúor', 10.00, '2024-03-10', 4),
('Protetor Solar', 'Protetor solar fator 50', 60.00, '2023-08-25', 3),
('Multivitamínico', 'Suplemento com várias vitaminas', 70.00, '2024-05-30', 2),
('Sabonete', 'Sabonete líquido para mãos', 8.00, '2023-11-05', 4);

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

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
    tb_categorias.nome = 'Cosméticos';
