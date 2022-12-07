-- Escreva o SQL que exibe um artigo completo, identificado pelo ID "2". 
-- Lembre-se que apenas artigos válidos podem ser visualizados.

SELECT * FROM articles 
WHERE art_id = '2'
	AND art_status = 'on';
