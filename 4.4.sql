-- Melhore o SQL da questão 3.2 de forma a obter o primeiro e o último nome do
-- autor do artigo em um campo "fullname".

SELECT *,
	TIMESTAMPDIFF(YEAR, birth, NOW()) AS age,
    DATE_FORMAT(art_date, "%d/%m/%Y às %H:%i") AS art_date_br,
    -- Contatena as partes do nome do autor e armazena em "fullname".
    CONCAT(
        -- Extrai primeiro nome do autor.
    	SUBSTRING_INDEX(name, ' ', 1),
        -- Adiciona um espaço entre os nomes.
    	' ',
        -- Extrai o último nome do autor.
    	SUBSTRING_INDEX(name, ' ', -1)
	) AS fullname
FROM articles
INNER JOIN users ON user_id = author
WHERE art_id = '2' 
	AND art_status = 'on'
    AND art_date <= NOW();