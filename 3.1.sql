-- Escreva o SQL que obtenha TODOS os artigos do site, ordenados pela data de 
-- publicação, com os mais recentes aparecendo primeiro.

SELECT * FROM articles 
ORDER BY art_date DESC;