CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(30),
    idade int,
    série varchar(30),
    matéria varchar(30),
    nota decimal(4,2),
    
    primary key(id)
);

SELECT * FROM tb_estudantes;
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Carol", 15, "8ano", "matematica", 7.5);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Fábio", 16, "8ª", "química", 8);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Carla", 16, "1ª", "Portugues", 5.5);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Thomas", 13, "5ª", "física", 6);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Igor", 13, "4ª", "biologia", 9.5);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Henri", 19, "3ª", "filosofia", 9);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Jadson", 18, "2ª", "inglês", 3.5);
 INSERT INTO tb_estudantes (nome, idade, série, matéria, nota) VALUES ("Jenny", 17, "9ª", "Biologia", 4);
 
 SELECT nome, nota FROM tb_estudantes WHERE nota > 7; --- Podemos fazer com que retorne os dados completo do estudante.
 SELECT nome, nota FROM tb_estudantes WHERE nota < 7;
 
 SELECT * FROM tb_estudantes WHERE nota > 7;
 SELECT * FROM tb_estudantes WHERE nota < 7;
 
 SET sql_safe_updates = 0;
 UPDATE tb_estudantes SET nome = "Victor", idade = 18, série = "3ª", matéria = "inglês", nota = 10 WHERE id = 1;
DELETE FROM tb_estudantes WHERE id = 7;