CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
    quantidade INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Materiais de Construção', 'Blocos, tijolos, cimentos e argamassas'),
('Hidráulica', 'Tubulações, conexões e acessórios hidráulicos'),
('Elétrica', 'Fios, cabos, disjuntores e tomadas'),
('Acabamento', 'Tintas, pisos, revestimentos e louças sanitárias');

INSERT INTO tb_produtos (nome, descricao, valor, quantidade, categoria_id) VALUES
('Martelo', 'Ferramenta manual para pregar pregos', 50.00, 100, 1),
('Parafusadeira', 'Ferramenta elétrica para parafusar', 200.00, 50, 1),
('Tijolo', 'Bloco cerâmico para construção', 1.50, 1000, 2),
('Cimento', 'Saco de cimento 50kg', 25.00, 500, 2),
('Canos PVC', 'Tubulação para esgoto', 15.00, 300, 3),
('Interruptor', 'Interruptor simples', 5.00, 200, 4),
('Tinta Latex', 'Tinta para pintura interna', 70.00, 150, 5),
('Revestimento Cerâmico', 'Revestimento para paredes', 120.00, 200, 5);

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.id, 
    tb_produtos.nome, 
    tb_produtos.descricao, 
    tb_produtos.valor, 
    tb_produtos.quantidade, 
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
    tb_produtos.quantidade, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_produtos
INNER JOIN 
    tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome = 'Hidráulica';

