SELECT m.musica AS nome,
  COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_usuario AS h
  ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuarios AS u
  ON u.usuario_id = h.usuario_id
  AND (u.plano_id = 1 OR u.plano_id = 4)
GROUP BY m.musica
ORDER BY nome;
