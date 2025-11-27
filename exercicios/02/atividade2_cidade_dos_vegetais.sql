CREATE DATABASE cidade_dos_vegetais;

USE cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_categorias (nome_categoria, setor, descricao) VALUES
('Frutas', 'Hortifruti', 'Frutas frescas e selecionadas'),
('Verduras', 'Folhosos', 'Verduras variadas de alta qualidade'),
('Legumes', 'Raízes e Legumes', 'Legumes utilizados no preparo de refeições'),
('Grãos', 'Secos', 'Grãos para consumo diário'),
('Temperos Naturais', 'Especiarias', 'Temperos frescos para culinária');



CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(80) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    unidade VARCHAR(20) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, unidade, categoria_id) VALUES
('Maçã', 12.50, 120, 'kg', 1),
('Banana Prata', 8.99, 200, 'kg', 1),
('Alface Crespa', 4.50, 80, 'maço', 2),
('Tomate Italiano', 9.80, 150, 'kg', 3),
('Cenoura', 6.20, 90, 'kg', 3),
('Arroz Integral', 22.90, 60, 'kg', 4),
('Feijão Carioca', 11.50, 40, 'kg', 4),
('Manjericão', 5.90, 30, 'maço', 5);



-- 1) Produtos com valor maior que R$ 50,00
SELECT * FROM tb_produtos
WHERE preco > 5.00;

-- 2) Produtos com valor entre R$ 50 e R$ 150
SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 8.00;

-- 3) Produtos cujo nome contém a letra 'C'
SELECT * FROM tb_produtos
WHERE nome_produto LIKE '%c%' OR nome_produto LIKE '%C%';

-- 4) INNER JOIN produtos + categorias
SELECT p.id, p.nome_produto, p.preco, c.nome_categoria, c.setor
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

-- 5) INNER JOIN filtrando por categoria específica (ex: Legumes)
SELECT p.id, p.nome_produto, p.preco, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Legumes';
