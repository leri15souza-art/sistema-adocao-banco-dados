CREATE TABLE animais (
id_animal INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT,
especie VARCHAR(50),
sexo VARCHAR(20),
status_adocao VARCHAR(50)
);

CREATE TABLE adotantes (
id_adotante INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
telefone VARCHAR(20)
);

CREATE TABLE solicitacoes_adocao (
id_solicitacao INT PRIMARY KEY AUTO_INCREMENT,
data_solicitacao DATE,
status VARCHAR(50),
id_animal INT,
id_adotante INT,

FOREIGN KEY (id_animal)
REFERENCES animais(id_animal),

FOREIGN KEY (id_adotante)
REFERENCES adotantes(id_adotante)
);
