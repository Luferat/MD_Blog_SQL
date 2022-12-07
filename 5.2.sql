-- Melhore a consulta anterior para incluir a idade, a data de cadastro no 
-- formato "d/M/Y H:i" e a data de nascimento no formato "d/m/Y".

SELECT *,
	TIMESTAMPDIFF(YEAR, birth, NOW()) AS age,
    DATE_FORMAT(user_date, "%d/%m/%Y às %H:%i") AS user_date_br,
    DATE_FORMAT(birth, "%d/%m/%Y") AS birth_br
FROM users 
WHERE email = 'joca@silva.com'
	AND password = SHA1('Senha123')
    AND user_status = 'on';
