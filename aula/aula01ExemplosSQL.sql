CREATE DATABASE db_quitanda; -- Comentario criando banco de dados

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

SELECT * FROM tb_produtos; -- Selecione todos os dados da tabela tb_produtos

select nome, preco from tb_produtos;

select * from tb_produtos where id = 1;

select * from tb_produtos where preco >5;


-- Alterar a estrutura da tabela
ALTER TABLE tb_produtos modify preco DECIMAL(6,2);

-- Atualização dos dados da tabela
UPDATE tb_produtos SET preco = 2.99 WHERE Id = 6;

-- excluir/deletar dados da tabela
DELETE FROM tb_produtos WHERE Id = 2;




