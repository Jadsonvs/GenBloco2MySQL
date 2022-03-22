CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

CREATE TABLE tb_categoria (
    id bigint auto_increment,
    salao varchar(255),
    delivery varchar(255),
    retirada varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(salao, delivery, retirada) VALUES ("sim", "nao", "nao");
INSERT INTO tb_categoria(salao, delivery, retirada) VALUES ("nao", "sim", "nao");
INSERT INTO tb_categoria(salao, delivery, retirada) VALUES ("nao", "nao", "sim");
INSERT INTO tb_categoria(salao, delivery, retirada) VALUES ("nao", "sim", "nao");
INSERT INTO tb_categoria(salao, delivery, retirada) VALUES ("nao", "nao", "sim");

CREATE TABLE tb_pizza (
    id bigint auto_increment,
    sabor varchar(255) not null,
    tamanho varchar(255) not null,
    bordaRecheada boolean not null,
    saborBorda varchar(255) not null,
    massa varchar(255) not null,
    preco decimal (4,2),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_pizza;

INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("chocolate", "grande", false, "nenhuma", "fina", 40.00, 1);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("file de carne", "media", false, "nenhuma", "grossa", 30.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("mussarela", "pequena", true, "catupiry", "media", 15.00, 3);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("atum", "grande", true, "cheedar", "fina", 45.00, 4);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("brocolis", "grande", true, "catupiry", "media", 37.00, 5);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("paulista", "media", false, "nenhuma", "fina", 38.00, 2);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("brigadeiro", "grande", true, "chocolatwe", "fina", 50.00, 4);
INSERT INTO tb_pizza (sabor, tamanho, bordaRecheada, saborBorda, massa, preco, categoria_id) VALUES ("bacon", "pequena", true, "cheedar", "grossa", 20.00, 1);

SELECT * FROM tb_pizza WHERE tb_pizza.preco > 45;
SELECT * FROM tb_pizza WHERE tb_pizza.preco BETWEEN 29 AND 60;
SELECT *FROM tb_pizza WHERE sabor LIKE "%c%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.categoria_id
WHERE tb_categoria.delivery = "sim";