-- apaga o BD
drop database db_quitanda;

-- criao banco de dados
create database db_quitanda;

-- referencia ao BD
use db_quitanda;

-- Criando a tabela categorias
create table tb_categorias(
id bigint auto_increment primary key,
descricao varchar(255) not null
);
-- Cadastrar os dados na TB Categoria
insert into tb_categorias (descricao) values
("frutas"), ("verduras"), ("legumes"),("temperos"),("ovos"), ("outros");

SELECT * FROM tb_categorias;

-- Criando tabela produto
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
datavalidade date,
preco decimal(6,2) not null,
categoria_id bigint,

primary key (id),
foreign key (categoria_id) references tb_categorias (id) -- Conexão
);

-- Inserindo produtos
insert into tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("tomate",100, "2023-12-15", 8.00, 3);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("maçã",20, "2023-12-15", 5.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("laranja",50, "2023-12-15", 10.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("banana",200, "2023-12-15", 12.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("uva",1200, "2023-12-15", 30.00, 1);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco, categoria_id) 
values ("pêra",500, "2023-12-15", 2.99, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoria_id)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);


-- Consulta inner join 

SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;
-- consulta left join mostra todos o produtos mesmo que não tenha uma categoria no relacionamento
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;
-- Right join
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;


