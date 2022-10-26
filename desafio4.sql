SELECT u.nome AS usuario,
IF (MAX(YEAR(h.data_reproducoes)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN historico_usuario AS h
ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario;
