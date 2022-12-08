-- Apaga o banco de dados se ele existe.
DROP DATABASE IF EXISTS blog;

-- Cria banco de dados.
CREATE DATABASE blog CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o banco de dados.
USE blog;

-- Cria a tabela "users".
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    birth DATE,
    avatar VARCHAR(255),
    meta TEXT,
    type ENUM('user', 'moderator', 'author', 'admin') 
        DEFAULT 'user' 
        COMMENT 'Tipo de usuário da plataforma',
    user_status ENUM('on', 'off', 'del', 'ban') DEFAULT 'on'
);

-- Cria tabela 'articles'.
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    title VARCHAR(255) NOT NULL,
	thumb VARCHAR(255),
    resume VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    author INT NOT NULL,
    views INT,
    art_status ENUM('on', 'off', 'del') DEFAULT 'on',
    FOREIGN KEY (author) REFERENCES users(user_id)
);

-- Cria tabela 'comments'.
CREATE TABLE comments (
    cmt_id INT PRIMARY KEY AUTO_INCREMENT,
    cmt_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    comment TEXT NOT NULL,
    article INT NOT NULL,
    user INT NOT NULL,
    cmt_status ENUM('on', 'off', 'del', 'ban') DEFAULT 'on',
    FOREIGN KEY (article) REFERENCES articles(art_id),
    FOREIGN KEY (user) REFERENCES users(user_id)
);

-- Cria tabela de contatos.
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255),
    email VARCHAR(255),
    subject VARCHAR(255),
    message TEXT,
    status ENUM('received', 'readed', 'responded', 'archived', 'deleted') DEFAULT 'received'
);

-- Cria lista de categorias.
CREATE TABLE categories (
    cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cat_name VARCHAR(127)
);

-- Cria tabela de ligação entre artigos e categorias.
CREATE TABLE art_cat (
    ac_id INT PRIMARY KEY AUTO_INCREMENT,
    ac_category INT,
    ac_article INT,
    FOREIGN KEY ac_category REFERENCES categories(cat_id),
    FOREIGN KEY ac_article REFERENCES articles(art_id)
);
