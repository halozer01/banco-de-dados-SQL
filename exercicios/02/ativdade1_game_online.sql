
-- Criação do Banco de Dados
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Criação da tabela tb_classes
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL
);

-- Criação da tabela tb_personagens
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    classe_id BIGINT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- Inserindo registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Dragão', 'Criaturas imponentes que liberam ataques devastadores e dominam os céus com força incomparável'),
('Demônio', 'Seres das trevas que usam poderes sombrios, manipulação e destruição para dominar seus oponentes'),
('Mago', 'Usuários de magia ancestral capazes de invocar feitiços complexos e controlar o fluxo da batalha'),
('Guerreiro', 'Combatentes disciplinados que combinam força, técnica e coragem em duelos diretos'),
('Fada', 'Entidades luminosas que utilizam bênçãos, cura e magia sagrada para proteger aliados'),
('Máquina', 'Construtos mecânicos avançados que possuem alta resistência e ataques tecnológicos implacáveis'),
('Zumbi', 'Criaturas que retornam do além e se fortalecem ao manipular o cemitério e a morte dos inimigos'),
('Réptil', 'Seres rastejantes astutos que usam venenos, emboscadas e técnicas sorrateiras'),
('Planta', 'Organismos místicos que usam crescimento acelerado e toxinas para dominar o campo de batalha'),
('Besta-Guerreira', 'Criaturas híbridas ferozes que combinam instintos animais com técnicas poderosas de combate');

-- Inserindo registros na tabela tb_personagens

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Dragão Branco de Olhos Azuis', 3000, 2500, 8, 1),
('Desespero - Ha-Des', 2450, 1600, 6, 2),
('Mago Negro', 2500, 2100, 7, 3),
('Gaia, o Cavaleiro Feroz', 2300, 2100, 7, 4),
('Honest', 1100, 1900, 4, 5),
('Golem das Engrenagens Antigas', 3000, 3000, 8, 6),
('Senhor Vampiro', 2000, 1500, 5, 7),
('Guerreiro Alienigena', 1800, 1000, 4, 8),
('Rainha Anjo das Rosas', 2400, 1300, 7, 9),
('Gorila Berserker', 2000, 1000, 4, 10);

-- SELECT 1: Personagens com poder de ataque > 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT 2: Personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT 3: Personagens cujo nome contém a letra 'C'
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

-- SELECT 4: INNER JOIN entre tb_personagens e tb_classes
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

-- SELECT 5: INNER JOIN filtrando personagens da classe Dragão
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Dragão';
