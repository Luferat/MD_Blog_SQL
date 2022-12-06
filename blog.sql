-- Apaga o banco de dados se ele existe.
DROP DATABASE IF EXISTS blog;

-- Cria banco de dados.
CREATE DATABASE blog CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Selecionar o banco de dados.
USE blog;

-- Cria a tabela "users".
CREATE TABLE users (
    usr_id INT PRIMARY KEY AUTO_INCREMENT,
    usr_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    birth DATE,
    avatar VARCHAR(255),
    meta TEXT,
    type ENUM('user', 'moderator', 'author', 'admin') 
        DEFAULT 'user' 
        COMMENT 'Tipo de usuário da plataforma',
    usr_status ENUM('on', 'off', 'del', 'ban') DEFAULT 'on'
);

-- Insere alguns usuários para testes do aplicativo.
INSERT INTO users (
    usr_date,
    name,
    email,
    password,
    birth,
    avatar,
    meta,
    type
) VALUES (
    '2022-11-10 12:44:59',
    'Joca da Silva',
    'joca@silva.com',
    SHA1('Senha123'),
    '1998-10-18',
    'https://randomuser.me/api/portraits/men/61.jpg',
    'Pintor, escultor, programador e enrolador.',
    'author'
), (
    '2022-11-12 15:16:17',
    'Setembrino Trocatapas',
    'set@brino.com',
    SHA1('Senha123'),
    '2000-12-09',
    'https://randomuser.me/api/portraits/men/40.jpg',
    'Trampeiro, pedreiro, marceneiro e camareiro.',
    'author'
), (
    '2022-11-17 08:09:55',
    'Marineuza Siriliano da Silva',
    'mari@neuza.com.br',
    SHA1('Senha123'),
    '2002-01-29',
    'https://randomuser.me/api/portraits/women/47.jpg',
    'Instrutora, intrusora, cortadora, cobradora e perdedora.',
    'author'
);

-- Insere mais alguns usuários para testes do aplicativo.
INSERT INTO users (
    usr_date,
    name,
    email,
    password,
    birth,
    avatar,
    meta,
    type
) VALUES (
    '2022-11-18 12:13:15',
    'Hermenilda Souzasilva',
    'hermesouza@silva.com',
    SHA1('Senha123'),
    '1999-03-08',
    'https://randomuser.me/api/portraits/women/12.jpg',
    'Crítica, analista, eletista, sublimista e colunista.',
    'user'
), (
    '2022-11-22 10:48:54',
    'Enéziolidio Carvalhão',
    'enezio@gmail.com',
    SHA1('Senha123'),
    '2001-01-02',
    'https://randomuser.me/api/portraits/men/41.jpg',
    'Pagodeiro, marceneiro, tropeiro e herdeiro.',
    'user'
), (
    '2022-11-28 15:15:15',
    'Zinildina Rolandia',
    'zini@landia.com.br',
    SHA1('Senha123'),
    '1985-09-14',
    'https://randomuser.me/api/portraits/women/49.jpg',
    'Empresária, emprestada, empolgada e empreteira.',
    'user'
);

-- Cria tabela 'articles'.
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    thumb VARCHAR(255),
    title VARCHAR(255) NOT NULL,
    resume VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    author INT NOT NULL,
    views INT,
    art_status ENUM('on', 'off', 'del') DEFAULT 'on',
    FOREIGN KEY (author) REFERENCES users(usr_id)
);

-- Cria artigos para testes.
INSERT INTO articles (
    art_date,
    thumb,
    title,
    resume,
    content,
    author
) VALUES (
    '2022-11-01 12:13:14',
    'https://picsum.photos/200',
    'Primeiro artigo do Blog',
    'Este é o primeiro artigo do nosso blog estranho.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '1'
), (
    '2022-11-05 18:00:34',
    'https://picsum.photos/199',
    'Por que as nuvens não deixam os dados cairem',
    'Quando colocamos os dados nas nuvens e chove, será que nossos dados ficam molhados?',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '2'
);

-- Cria artigos para testes.
INSERT INTO articles (
    art_date,
    thumb,
    title,
    resume,
    content,
    author
) VALUES (
    '2022-11-10 14:15:16',
    'https://picsum.photos/198',
    'Água mole em pedra dura',
    'Qual é a relação simbiótica entre a água e a pedra.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '1'
), (
    '2022-11-15 08:09:59',
    'https://picsum.photos/201',
    'Ursos pardos',
    'Ursos pardos são realmente pardos ou são ursos brancos tingidos?',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '2'
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
    FOREIGN KEY (user) REFERENCES users(usr_id)
);

-- Cria comentários para testes.
INSERT INTO comments (
    comment,
    article,
    user
) VALUES (
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi.',
    '1',
    '1'
), (
    'Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores?',
    '1',
    '2'
), (
    'Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus.',
    '1',
    '3'
), (
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.',
    '1',
    '2'
);

-- Categorias dos artigos
CREATE TABLE categories