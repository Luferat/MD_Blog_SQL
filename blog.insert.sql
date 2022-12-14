-- Insere alguns usuários para testes do aplicativo.
INSERT INTO users (
	user_id,
    user_date,
    user_name,
    user_email,
    user_password,
    user_birth,
    user_avatar,
    user_meta,
    user_type
) VALUES (
	'1',
    '2022-11-10 12:44:59',
    'Joca de Souza da Silva',
    'joca@silva.com',
    SHA1('Senha123'),
    '1998-10-18',
    'https://randomuser.me/api/portraits/men/61.jpg',
    'Pintor, escultor, programador e enrolador.',
    'author'
), (
	'2',
    '2022-11-12 15:16:17',
    'Setembrino Trampeiro Trocatapas',
    'set@brino.com',
    SHA1('Senha123'),
    '2000-12-09',
    'https://randomuser.me/api/portraits/men/40.jpg',
    'Trampeiro, pedreiro, marceneiro e camareiro.',
    'author'
), (
    '3',
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
	user_id,
    user_date,
    user_name,
    user_email,
    user_password,
    user_birth,
    user_avatar,
    user_meta,
    user_type
) VALUES (
    '4',
	'2022-11-18 12:13:15',
    'Hermenilda Maria Souzasilva',
    'hermesouza@silva.com',
    SHA1('Senha123'),
    '1999-03-08',
    'https://randomuser.me/api/portraits/women/12.jpg',
    'Crítica, analista, eletista, sublimista e colunista.',
    'user'
), (
	'5',
    '2022-11-22 10:48:54',
    'Enéziolidio Neumatózio Carvalhão',
    'enezio@gmail.com',
    SHA1('Senha123'),
    '2001-01-02',
    'https://randomuser.me/api/portraits/men/41.jpg',
    'Pagodeiro, marceneiro, tropeiro e herdeiro.',
    'user'
), (
	'6',
    '2022-11-28 15:15:15',
    'Zinildina ESbelta Rolandia',
    'zini@landia.com.br',
    SHA1('Senha123'),
    '1985-09-14',
    'https://randomuser.me/api/portraits/women/49.jpg',
    'Empresária, emprestada, empolgada e empreteira.',
    'user'
);

-- Cria artigos para testes.
INSERT INTO articles (
	art_id,
    art_date,
    art_thumb,
    art_title,
    art_resume,
    art_content,
    art_author
) VALUES (
	'1',
    '2022-11-01 12:13:14',
    'https://picsum.photos/200',
    'Primeiro artigo do Blog',
    'Este é o primeiro artigo do nosso blog estranho.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '1'
), (
	'2',
    '2022-11-05 18:00:34',
    'https://picsum.photos/199',
    'Por que as nuvens não deixam os dados cairem',
    'Quando colocamos os dados nas nuvens e chove, será que nossos dados ficam molhados?',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '2'
);

-- Cria artigos para testes.
INSERT INTO articles (
	art_id,
    art_date,
    art_thumb,
    art_title,
    art_resume,
    art_content,
    art_author
) VALUES (
	'3',
    '2022-11-10 14:15:16',
    'https://picsum.photos/198',
    'Água mole em pedra dura',
    'Qual é a relação simbiótica entre a água e a pedra.',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '1'
), (
	'4',
    '2022-11-15 08:09:59',
    'https://picsum.photos/201',
    'Ursos pardos',
    'Ursos pardos são realmente pardos ou são ursos brancos tingidos?',
    '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores? Molestiae recusandae, magnam impedit minima cumque repellat ullam, aperiam exercitationem quidem ad excepturi illum.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus voluptates! Cum laborum vel, quibusdam adipisci aperiam libero quam.</p><img src="https://picsum.photos/400/200" alt="Imagem Aleatória"><small>Imagem aleatória</small><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut, optio cupiditate odio maiores provident praesentium ratione quam nostrum dignissimos autem similique vel obcaecati, incidunt consequatur, laboriosam error? Ipsa, eveniet ad.</p><h3>Lista de links:</h3><ul><li><a href="https://luferat.net/" target="_blank">Site do Fessô</a></li><li><a href="https://catabits.com.br/" target="_blank">Blog do Fessô</a></li><li><a href="https://github.com/Luferat/" target="_blank">GitHub do Fessô</a></li></ul><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima dignissimos, harum voluptates deleniti inventore quas mollitia necessitatibus, id, molestiae vitae accusantium blanditiis excepturi maxime natus hic iusto quia velit deserunt!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.</p>',
    '2'
);

-- Cria comentários para testes.
INSERT INTO comments (
    cmt_comment,
    cmt_article,
    cmt_user
) VALUES (
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit repudiandae a quibusdam eligendi.',
    '1',
    '1'
), (
    'Reprehenderit repudiandae a quibusdam eligendi, culpa maiores asperiores?',
    '2',
    '2'
), (
    'Repellendus maxime corporis fugit, molestiae illo nesciunt, atque magni ullam unde nam accusamus.',
    '2',
    '3'
), (
    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ex accusamus, assumenda temporibus.',
    '3',
    '2'
);

-- Insere categorias para testes.
INSERT INTO categories 
	( cat_id, cat_name )
VALUES
	('1', 'Árvores'),
	('2', 'Plantas'),
	('3', 'Folhas verdes'),
	('4', 'Frutíferas'),
	('5', 'Comestíveis'),
	('6', 'Gramíneas'),
	('7', 'Arbustos'),
	('8', 'Carnívoras');

-- Insere algumas categorias nos artigos.
INSERT INTO art_cat (acl_article, acl_category) VALUES
('1', '1'),
('1', '2'),
('2', '1'),
('2', '3'),
('3', '2'),
('3', '4'),
('4', '5'),
('4', '7');
