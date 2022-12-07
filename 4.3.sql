-- 3.3) Escreva o SQL que recebe o nome e o ID de todas as categorias das 
--      quais o artigo participa.

SELECT * FROM art_cat
	INNER JOIN categories ON cat_id = ac_category
WHERE ac_article = '2';