-- Pesquise no banco de dados se um usuário que está entrando com o e-mail 
-- "joca@silva.com" e a senha "Senha123" existe. Se existir, e for válido,
-- retorne todos os dados dele, incluindo a idade, a data de cadastro no 
-- formato "d/M/Y H:i" e a data de nascimento no formato "d/m/Y".

SELECT *
FROM users 
WHERE email = 'joca@silva.com'
	AND password = SHA1('Senha123')
    AND user_status = 'on';
