-- Escreva e teste os códigos SQL necessários para criar uma tabela que 
-- receberá os contatos dos visitantes do site, observando os seguintes
-- requisitos.

-- Cria tabela de contatos.
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	subject VARCHAR(255) NOT NULL,
	message TEXT NOT NULL,
	status ENUM('received', 'readed', 'responded', 'archived', 'deleted')
);
