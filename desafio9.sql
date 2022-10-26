SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_usuario AS h
  ON u.usuario_id = h.usuario_id
WHERE u.nome = 'Barbara Liskov';
