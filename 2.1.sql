-- Observe no modelo, a inserção das tabelas "categories" e "art_cat". Com 
-- base neste modelo, escreva os códigos SQL para criar as tabelas e os 
-- relacionamentos entre elas e as outras tabelas do banco de dados.

-- Cria tabela de categorias.
CREATE TABLE categories (
	cat_id INT PRIMARY KEY AUTO_INCREMENT,
	cat_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	cat_name VARCHAR(127)
);

-- Cria tabela de ligação "artigos-categorias".
CREATE TABLE art_cat (
	ac_id INT PRIMARY KEY AUTO_INCREMENT,
	ac_article INT NOT NULL,
	ac_category INT NOT NULL,
	FOREIGN KEY (ac_article) REFERENCES articles (art_id),
	FOREIGN KEY (ac_category) REFERENCES categories (cat_id)
);
