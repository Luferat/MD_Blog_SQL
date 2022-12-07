-- Melhore a consulta acima, obtendo os comentários ordenados pela data, 
-- mostrando os mais recentes primeiro.

SELECT * 
FROM comments 
WHERE article = '2'
ORDER BY cmt_date DESC;
