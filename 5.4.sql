-- O usuário com ID "1" alterou seu perfil com os dados abaixo. Escreva o SQL 
-- que executa esta tarefa, não esquecendo de validar o usuário.
--     Nome: Joca Souza da Silva
--     Avatar: https://randomuser.me/api/portraits/men/42.jpg
--     Meta dados: Jogador, pregador, empreendedor e maquiador.

UPDATE users SET
	name = 'Joca Souza da Silva',
	avatar = 'https://randomuser.me/api/portraits/men/42.jpg',
    meta = 'Jogador, pregador, empreendedor e maquiador.'
WHERE user_id = '1'
	AND user_status = 'on';
