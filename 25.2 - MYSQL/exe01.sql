CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    classe_nome varchar(255) not null
);

CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(255) not null,
    nivel int not null,
    ataque bigint not null,
    defesa bigint not null,
    classe_id bigint not null
);


ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
foreign key (classe_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes (classe_nome) VALUES
("Bárbaro"),
("Guerreiro"),
("Paladino"),
("Clérigo"),
("Ladrão"),
("Mago"),
("Caçador");

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id) VALUES
("Larbak", 20, 4000, 5000, 3),
("Kevin Soh Fre", 14, 2500, 1200, 6),
("Ten Taco Reh", 18, 4000, 2000, 5),
("Coz Sa Aki", 10, 1800, 1600, 2),
("Vol Az Serta", 11, 1900, 1100, 7),
("Naum Va Moh Re", 19, 3500, 4000, 4),
("Kevin Moh Re", 20, 5000, 2000, 1);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT tb_personagens.id, nome, nivel, ataque, defesa, classe_id, tb_classes.classe_nome FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.id, nome, classe_id, tb_classes.classe_nome FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE classe_nome LIKE "Paladino";

