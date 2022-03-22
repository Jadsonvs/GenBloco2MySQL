CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(30) not null,
    marca varchar(30) not null,
    quantidade int not null,
    valor decimal(10,2) not null,
    vencido boolean not null,
    
    primary key(id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("arroz", "camil", 10, 15.99, false);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("feijao", "pantera", 15, 9.80, false);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("macarrão", "adrian", 5, 5.50, true);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("requeijao", "vigor", 20, 7.90, false);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("chocolate", "garoto", 30, 6.99, false);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("leite", "integral", 18, 4.50, false);
INSERT INTO tb_produtos (nome, marca, quantidade, valor, vencido) VALUES ("achocolatado", "nescau", 8, 7.80, false);

SELECT * FROM tb_produtos WHERE valor > 7.50;
SELECT * FROM tb_produtos WHERE valor <7.50;

UPDATE tb_produtos SET quantidade=15, valor=4.90, vencido=false WHERE id=3;

SELECT * FROM tb_produtos;


