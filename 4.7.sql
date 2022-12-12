-- Escreva o SQL que obtém os 6 comentários válidos mais recentes do site.

SELECT * FROM comments 
WHERE cmt_status = 'on'
	ORDER BY cmt_date DESC
LIMIT 6;
