
-- ATIVIDADE 02 - Sistema E-commerce

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

INSERT INTO produtos (nome, descricao, preco, estoque) VALUES
('Notebook Dell', 'Notebook Core i5, 8GB RAM', 3500.00, 10),
('Smartphone Samsung', 'Galaxy S21, 128GB', 2800.00, 15),
('Smart TV LG', '50 polegadas, 4K', 2200.00, 8),
('Fone Bluetooth', 'Fone sem fio com cancelamento de ruído', 350.00, 50),
('Mouse Gamer', 'Mouse RGB com 6 botões', 150.00, 100),
('Cadeira Gamer', 'Cadeira ergonômica com ajuste', 1200.00, 20),
('Teclado Mecânico', 'Teclado com switches azuis', 450.00, 40),
('Monitor LED', 'Monitor 24 polegadas Full HD', 700.00, 25);

-- SELECTs
SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

-- UPDATE
UPDATE produtos SET preco = 180.00 WHERE id = 5;
