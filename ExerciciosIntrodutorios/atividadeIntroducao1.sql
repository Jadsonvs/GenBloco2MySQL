CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_funcionarios(
	id bigint auto_increment,
    nome varchar(30) not null,
    idade int not null,
    cargo varchar(30) not null,
    salario decimal(10,2) not null,
    admissao date not null,
    
    primary key(id)
);

INSERT INTO tb_funcionarios (nome, idade, cargo, salario, admissao) VALUES ("Jadson", 27, "desenvolvedor", 5000, '2020-03-12');
INSERT INTO tb_funcionarios (nome, idade, cargo, salario, admissao) VALUES ("Carlos", 25, "desenvolvedor", 4000, '2021-02-17');
INSERT INTO tb_funcionarios (nome, idade, cargo, salario, admissao) VALUES ("Karine", 30, "design", 4500, '2022-09-09');
INSERT INTO tb_funcionarios (nome, idade, cargo, salario, admissao) VALUES ("Larissa", 25, "contapagar", 3000, '2019-04-22');
INSERT INTO tb_funcionarios (nome, idade, cargo, salario, admissao) VALUES ("Robson", 35, "gestor", 8000, '2022-01-12');

SELECT nome, salario FROM tb_funcionarios WHERE salario > 2000;
SELECT nome, salario FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET nome="Joao", idade=19, cargo="aprendiz", salario=1200, admissao='2022-03-17' WHERE id=1;
SELECT * FROM tb_funcionarios;
