CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem; 

CREATE TABLE tb_categoria (
    id bigint auto_increment,
    remedio boolean,
    cosmetico boolean,
    higiene boolean,
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(remedio, cosmetico, higiene) VALUES (true,false,false);
INSERT INTO tb_categoria(remedio, cosmetico, higiene) VALUES (false,true,false);
INSERT INTO tb_categoria(remedio, cosmetico, higiene) VALUES (false,false,true);
INSERT INTO tb_categoria(remedio, cosmetico, higiene) VALUES (true,true,true);
INSERT INTO tb_categoria(remedio, cosmetico, higiene) VALUES (false,false,false);

CREATE TABLE tb_produto  (
    id bigint auto_increment,
    nome varchar(255) not null,
    disponivel boolean not null,
    quantidade int not null,
    validade date not null,
    lote int not null,
    preco decimal (4,2),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("buscopan",true,9,'2035-02-01',1223,11.99,1);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("creme de rosto",false,0,'2022-01-12',3456,12.50,2);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("benzolina",true,5,'2023-05-10',1234,22.99,1);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("shampoo",true,3,'2023-12-02',6789,09.99,2);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("pasta de dente",true,20,'2028-04-19',4589,3.80,3);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("alcool",false,0,'2025-01-27',4578,19.30,4);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("papel higienico",true,10,'2040-11-02',6754,14.99,3);
INSERT INTO tb_produto (nome,disponivel,quantidade,validade,lote,preco,categoria_id) VALUES ("estetoscopio",true,02,'2050-01-10',9876,89.99,5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT *FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE categoria_id = 2;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE cosmetico =true;