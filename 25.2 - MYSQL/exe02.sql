CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas tradicionais italianas'),
('Doce', 'Pizzas doces e sobremesas'),
('Vegana', 'Pizzas sem ingredientes de origem animal'),
('Especial', 'Pizzas especiais da casa'),
('Picante', 'Pizzas com temperos picantes');

INSERT INTO tb_pizzas (nome, descricao, valor, tamanho, categoria_id) VALUES
('Margherita', 'Molho de tomate, mussarela e manjericão', 50.00, 'Grande', 1),
('Pepperoni', 'Molho de tomate, mussarela e pepperoni', 55.00, 'Grande', 1),
('Chocolate', 'Mussarela, chocolate ao leite e granulado', 45.00, 'Média', 2),
('Romeu e Julieta', 'Goiabada e queijo', 47.00, 'Média', 2),
('Vegana', 'Molho de tomate, queijo vegano e vegetais', 60.00, 'Grande', 3),
('Frango Catupiry', 'Molho de tomate, frango desfiado e catupiry', 65.00, 'Grande', 4),
('Calabresa', 'Molho de tomate, mussarela e calabresa', 52.00, 'Grande', 1),
('Mexicana', 'Molho de tomate, mussarela, jalapeños e carne moída', 70.00, 'Grande', 5);

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT 
    tb_pizzas.id, 
    tb_pizzas.nome, 
    tb_pizzas.descricao, 
    tb_pizzas.valor, 
    tb_pizzas.tamanho, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
    
SELECT 
    tb_pizzas.id, 
    tb_pizzas.nome, 
    tb_pizzas.descricao, 
    tb_pizzas.valor, 
    tb_pizzas.tamanho, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_pizzas
INNER JOIN 
    tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome = 'Doce';
