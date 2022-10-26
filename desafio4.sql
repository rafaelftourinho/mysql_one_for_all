SELECT u.nome AS usuario,
IF (MAX(YEAR(h.data_reproducoes)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_usuario AS h
ON u.usuario_id = h.usuario_id
GROUP BY usuario
ORDER BY usuario;
