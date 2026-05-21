INSERT INTO animais
(nome, idade, especie, sexo, status_adocao)
VALUES
('Luna',2,'Gato','Fêmea','Disponível');

UPDATE animais
SET status_adocao='Em processo'
WHERE id_animal=1;

DELETE FROM adotantes
WHERE id_adotante=1;

SELECT * FROM animais;

SELECT nome, especie, status_adocao
FROM animais;
