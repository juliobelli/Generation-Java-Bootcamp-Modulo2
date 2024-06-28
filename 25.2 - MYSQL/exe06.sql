CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    duracao INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Desenvolvimento', 'Cursos sobre desenvolvimento de software e programação'),
('Negócios', 'Cursos sobre gestão e administração de empresas'),
('Design', 'Cursos sobre design gráfico e UX/UI'),
('Marketing', 'Cursos sobre marketing digital e estratégias de mercado'),
('Idiomas', 'Cursos sobre aprendizado de línguas estrangeiras');

INSERT INTO tb_cursos (nome, descricao, valor, duracao, categoria_id) VALUES
('Curso de Java', 'Aprenda a programar em Java', 800.00, 40, 1),
('Curso de Gestão de Projetos', 'Gestão de projetos eficaz', 1000.00, 50, 2),
('Curso de Photoshop', 'Domine o Photoshop', 500.00, 30, 3),
('Curso de Marketing Digital', 'Marketing nas redes sociais', 750.00, 35, 4),
('Curso de Inglês Básico', 'Aprenda inglês do zero', 600.00, 60, 5),
('Curso de Python', 'Programação em Python', 850.00, 40, 1),
('Curso de Excel Avançado', 'Domine o Excel para negócios', 700.00, 25, 2),
('Curso de UX/UI Design', 'Criação de interfaces intuitivas', 900.00, 45, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT 
    tb_cursos.id, 
    tb_cursos.nome, 
    tb_cursos.descricao, 
    tb_cursos.valor, 
    tb_cursos.duracao, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_cursos
INNER JOIN 
    tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;
    
SELECT 
    tb_cursos.id, 
    tb_cursos.nome, 
    tb_cursos.descricao, 
    tb_cursos.valor, 
    tb_cursos.duracao, 
    tb_categorias.nome, 
    tb_categorias.descricao
FROM 
    tb_cursos
INNER JOIN 
    tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
WHERE 
    tb_categorias.nome = 'Desenvolvimento';