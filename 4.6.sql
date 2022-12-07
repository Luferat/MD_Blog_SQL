-- Melhore o SQL acima, para obter até 5 artigos do autor com o ID "2", e de 
-- forma aleatória.

SELECT art_id, title 
FROM articles 
WHERE author = '2' 
	AND art_status = 'on' 
    AND art_date <= NOW()
ORDER BY RAND() LIMIT 4;