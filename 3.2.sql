-- Escreva agora, o SQL que obtenha apenas os campos relativos ao id, título,
-- thumbnail e resumo dos artigos do site, ordenados pela data de publicação,
-- com os mais recentes aparecendo primeiro.

SELECT art_id, title, thumb, resume 
FROM articles
ORDER BY art_date DESC;
