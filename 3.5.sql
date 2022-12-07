-- Voltando ao SQL da página inicial, reescreva o comando do item 3.2, porém, 
-- exibindo somente os que estão dentro da data de publicação, ou seja, os
-- que estão AGENDADOS para o futuro NÃO devem aparecer.

SELECT art_id, title, thumb, resume 
FROM articles
WHERE art_status = 'on'
	AND art_date <= NOW()
ORDER BY art_date DESC;
