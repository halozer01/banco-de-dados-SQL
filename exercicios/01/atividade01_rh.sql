-- ATIVIDADE 01 - Sistema RH
create database db_rh;
use db_rh;


CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);



-- ATIVIDADE 01 - Sistema RH
DROP DATABASE IF EXISTS db_rh;
CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao) VALUES
('Ana Silva', 'Analista de RH', 3500.00, '2022-03-10'),
('Carlos Souza', 'Desenvolvedor', 4500.00, '2021-08-15'),
('Mariana Lima', 'Assistente Administrativo', 1800.00, '2023-01-20'),
('João Pereira', 'Gerente de Projetos', 7000.00, '2020-05-05'),
('Fernanda Costa', 'Estagiário', 1200.00, '2024-02-01');



-- SELECTs
SELECT * FROM colaboradores WHERE salario > 2000;
SELECT * FROM colaboradores WHERE salario < 2000;

-- UPDATE
UPDATE colaboradores SET salario = 1500.00 WHERE id = 5;


