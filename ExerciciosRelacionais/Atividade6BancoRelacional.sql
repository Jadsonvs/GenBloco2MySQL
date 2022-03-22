CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida; 

CREATE TABLE tb_categoria (
    id bigint auto_increment,
    java varchar(255),
    html5 varchar(255),
	css3 varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(java,html5,css3) VALUES ("OK","NO","NO");
INSERT INTO tb_categoria(java,html5,css3) VALUES ("NO","OK","NO");
INSERT INTO tb_categoria(java,html5,css3) VALUES ("NO","NO","OK");
INSERT INTO tb_categoria(java,html5,css3) VALUES ("OK","OK","OK");
INSERT INTO tb_categoria(java,html5,css3) VALUES ("NO","NO","NO");

CREATE TABLE tb_produto  (
    id bigint auto_increment,
    nome varchar(255) not null,
    disponivel varchar(255) not null,
    vagas int not null,
    tempo varchar(255) not null,
    preco decimal (4,2),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Polimorfismo","SIM",30,"10h",19.99,1);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Interface","NAO",0,"10h",19.99,1);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Lista nao ordenada(ul)","SIM",15,"10h",14.99,2);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Imagem e multimidia","SIM",25,"25h",29.99,2);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Cores","NO",0,"10h",25.99,3);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Polimorfismo","SIM",40,"30h",69.99,3);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Caminho na tech","SIM",35,"20h",59.99,4);
INSERT INTO tb_produto (nome,disponivel,vagas,tempo,preco,categoria_id) VALUES ("Softskills","NO",0,"35h",79.99,5);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT *FROM tb_produto WHERE nome LIKE "%c%";
SELECT *FROM tb_produto WHERE nome LIKE "c%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id
WHERE categoria_id = 2;