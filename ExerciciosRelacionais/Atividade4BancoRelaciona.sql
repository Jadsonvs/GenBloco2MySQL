CREATE DATABASE db_cidade_das_carnes ;
USE db_cidade_das_carnes ; 

CREATE TABLE tb_categoria (
    id bigint auto_increment,
    bovina varchar(255),
    suina varchar(255),
	aves varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(bovina, suina, aves) VALUES ("OK","NO","NO");
INSERT INTO tb_categoria(bovina, suina, aves) VALUES ("NO","OK","NO");
INSERT INTO tb_categoria(bovina, suina, aves) VALUES ("NO","NO","OK");
INSERT INTO tb_categoria(bovina, suina, aves) VALUES ("OK","OK","OK");
INSERT INTO tb_categoria(bovina, suina, aves) VALUES ("NO","NO","NO");

CREATE TABLE tb_produto  (
    id bigint auto_increment,
    nome varchar(255) not null,
    quantidadeKg int not null,
	precoKg decimal not null,
    precoTotal decimal (4,2),
    codigo int not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Coxao mole",3,30.00,90.00,1234,1);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Coxao duro",1,28.00,28.00,2345,1);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Bisteca",4,18.00,72.00,3456,2);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Barriga",2,10.00,20.00,4567,2);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Coxa sobrecoxa",5,14.00,70.00,5678,3);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("File de frango",3,20.00,60.00,6789,3);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Molho barbecue",0,0,14.99,7891,5);
INSERT INTO tb_produto (nome,quantidadeKg,precoKg,precoTotal,codigo,categoria_id) VALUES ("Sal grosso",0,0,4.99,8912,5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE precoTotal > 50;
SELECT * FROM tb_produto WHERE precoTotal BETWEEN 3 AND 60;
SELECT *FROM tb_produto WHERE nome LIKE "%c%";
SELECT *FROM tb_produto WHERE nome LIKE "c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE categoria_id = 2;
