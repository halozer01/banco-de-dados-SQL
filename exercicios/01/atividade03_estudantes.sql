-- ATIVIDADE 03 - Sistema Escola
CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(50) NOT NULL,
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO estudantes (nome, idade, serie, nota) VALUES
('Ana Souza', 14, '8º Ano', 8.5),
('Carlos Mendes', 15, '9º Ano', 6.8),
('Fernanda Lima', 13, '7º Ano', 9.0),
('João Pereira', 14, '8º Ano', 5.5),
('Mariana Costa', 12, '6º Ano', 7.2),
('Pedro Alves', 15, '9º Ano', 4.9),
('Lucas Martins', 13, '7º Ano', 8.0),
('Beatriz Santos', 14, '8º Ano', 6.0);

-- SELECTs
SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;

-- UPDATE seguro usando ID
UPDATE estudantes SET nota = 7.5 WHERE id = 4;




