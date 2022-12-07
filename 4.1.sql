-- Escreva o SQL que obtenha o artigo completo, com o ID "2", incluindo todos
-- os dados do autor deste.

SELECT * FROM articles
INNER JOIN users ON user_id = author
WHERE art_id = '2' 
	AND art_status = 'on'
    AND art_date <= NOW();