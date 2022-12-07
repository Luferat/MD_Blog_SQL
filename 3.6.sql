-- Obtenha o Id e o título dos 4 artigos mais visualizados, que sejam válidos e
-- estejam dentro da data de exibição.

SELECT art_id, title 
FROM articles 
WHERE art_status = 'on' 
	AND art_date <= NOW() 
ORDER BY views DESC
LIMIT 4;
