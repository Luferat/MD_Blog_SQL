-- Escreva o SQL que atualiza a senha do usuário com o ID "2" para "Senha321",
-- mas somente se este usuário é válido no sistema.

UPDATE users SET
	password = SHA1('Senha321')
WHERE user_id = '1'
	AND user_status = 'on';
