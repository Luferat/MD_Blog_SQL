-- Reescreva o SQL anterior, para que somente os artigos válidos (não sejam 
-- "off" nem apagados) sejam visualizados.

SELECT art_id, title, thumb, resume 
FROM articles
WHERE art_status = 'on'
ORDER BY art_date DESC;
