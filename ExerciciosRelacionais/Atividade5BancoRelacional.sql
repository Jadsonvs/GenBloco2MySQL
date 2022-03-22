CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida; 

CREATE TABLE tb_categoria (
    id bigint auto_increment,
    hidraulica varchar(255),
    marcenaria varchar(255),
	eletrica varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(hidraulica,marcenaria,eletrica) VALUES ("OK","NO","NO");
INSERT INTO tb_categoria(hidraulica,marcenaria,eletrica) VALUES ("NO","OK","NO");
INSERT INTO tb_categoria(hidraulica,marcenaria,eletrica) VALUES ("NO","NO","OK");
INSERT INTO tb_categoria(hidraulica,marcenaria,eletrica) VALUES ("OK","OK","OK");
INSERT INTO tb_categoria(hidraulica,marcenaria,eletrica) VALUES ("NO","NO","NO");

CREATE TABLE tb_produto  (
    id bigint auto_increment,
    nome varchar(255) not null,
    disponivel varchar(255) not null,
    estoque int not null,
    marca varchar(255) not null,
    preco decimal (4,2),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Parafuso","SIM",30,"max",1.99,1);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Bomba hidraulica","SIM",3,"max",99.99,1);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Porta","NO",0,"Madeira",99.99,2);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Janela","SIM",10,"Windows",99.00,2);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Dijuntor","NO",0,"Eletric",59.99,3);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Bocal","SIM",100,"Eletric",05.99,3);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Cimento","SIM",20,"Votoran",69.99,5);
INSERT INTO tb_produto (nome,disponivel,estoque,marca,preco,categoria_id) VALUES ("Tijolo","NO",0,"Tijolar",05.70,5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT *FROM tb_produto WHERE nome LIKE "%c%";
SELECT *FROM tb_produto WHERE nome LIKE "c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE categoria_id = 2;

