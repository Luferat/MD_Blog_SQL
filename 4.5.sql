-- Escreva o SQL que obtém o ID e o título de todos os artigos do autor com 
-- ID "2".

SELECT art_id, title 
FROM articles 
WHERE author = '2' 
	AND art_status = 'on' 
    AND art_date <= NOW();