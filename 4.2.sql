-- Reescreva o SQL anterior para obter a idade do usuário com base em sua data
-- de nascimento e também a data de publicação do artigo formatada como 
-- "d/m/Y às H:i".

SELECT *,
    -- O pseudo campo "age" receberá a idade do usuário.
	TIMESTAMPDIFF(YEAR, birth, NOW()) AS age,
    -- O pseudo campo "art_date_br" receberá a data formatada.
    DATE_FORMAT(art_date, "%d/%m/%Y às %H:%i") AS art_date_br
FROM articles
INNER JOIN users ON user_id = author
WHERE art_id = '2' 
	AND art_status = 'on'
    AND art_date <= NOW();