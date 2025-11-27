CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;
-- tabela categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,          
    descricao VARCHAR(150) NOT NULL    
);
-- tabela produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos para tratamento e prevenção de doenças'),
('Cosméticos', 'Produtos para cuidados pessoais e beleza'),
('Higiene', 'Produtos para higiene pessoal'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Infantil', 'Produtos voltados para cuidados infantis');


INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES
('Paracetamol', 'Analgésico e antitérmico', 12.50, 100, 1),
('Ibuprofeno', 'Anti-inflamatório e analgésico', 18.90, 80, 1),
('Shampoo Infantil', 'Shampoo suave para crianças', 25.00, 50, 5),
('Creme Hidratante', 'Hidratação profunda para pele', 55.00, 40, 2),
('Protetor Solar', 'FPS 50 para proteção solar', 75.00, 30, 2),
('Vitamina C', 'Suplemento vitamínico', 60.00, 60, 4),
('Sabonete Líquido', 'Sabonete para higiene corporal', 15.00, 70, 3),
('Pomada Infantil', 'Pomada para assaduras', 35.00, 45, 5);

-- Selects
-- 1) Produtos com valor > R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- 2) Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- 3) Produtos cujo nome contém a letra 'C'
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- 4) INNER JOIN entre tb_produtos e tb_categorias
SELECT 
    p.id,
    p.nome AS produto,
    p.preco,
    p.estoque,
    c.nome AS categoria,
    c.descricao AS categoria_descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- 5) INNER JOIN filtrando produtos da categoria 'Cosméticos'
SELECT 
    p.id,
    p.nome AS produto,
    p.preco,
    c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';
