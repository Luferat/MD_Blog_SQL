-- Apaga o banco de dados se ele existe.
DROP DATABASE IF EXISTS mytestblog;

-- (Re)Cria banco de dados.
CREATE DATABASE mytestblog CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o banco de dados.
USE mytestblog;

-- Cria a tabela "users".
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_birth DATE,
    user_avatar VARCHAR(255),
    user_meta TEXT,
    user_type ENUM('user', 'moderator', 'author', 'admin') 
        DEFAULT 'user' 
        COMMENT 'Tipo de usuário da plataforma',
    user_status ENUM('on', 'off', 'del', 'ban') DEFAULT 'on'
);

-- Cria tabela 'articles'.
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_title VARCHAR(255) NOT NULL,
	art_thumb VARCHAR(255),
    art_resume VARCHAR(255) NOT NULL,
    art_content TEXT NOT NULL,
    art_author INT NOT NULL,
    art_views INT,
    art_status ENUM('on', 'off', 'del') DEFAULT 'on',
    FOREIGN KEY (art_author) REFERENCES users(user_id)
);

-- Cria tabela 'comments'.
CREATE TABLE comments (
    cmt_id INT PRIMARY KEY AUTO_INCREMENT,
    cmt_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cmt_comment TEXT NOT NULL,
    cmt_article INT NOT NULL,
    cmt_user INT NOT NULL,
    cmt_status ENUM('on', 'off', 'del', 'ban') DEFAULT 'on',
    FOREIGN KEY (cmt_article) REFERENCES articles(art_id),
    FOREIGN KEY (cmt_user) REFERENCES users(user_id)
);

-- Cria lista de categorias.
CREATE TABLE categories (
    cat_id INT PRIMARY KEY AUTO_INCREMENT,
    cat_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cat_name VARCHAR(127)
);

-- Cria tabela de ligação entre artigos e categorias.
CREATE TABLE art_cat (
    acl_id INT PRIMARY KEY AUTO_INCREMENT,
    acl_category INT,
    acl_article INT,
    FOREIGN KEY (acl_category) REFERENCES categories(cat_id),
    FOREIGN KEY (acl_article) REFERENCES articles(art_id)
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