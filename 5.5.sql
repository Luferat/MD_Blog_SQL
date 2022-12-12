-- Escreva o SQL que remove o usuário do sistema quando ele solicitar.

UPDATE users SET user_status = 'del'
WHERE user_id = '2';
