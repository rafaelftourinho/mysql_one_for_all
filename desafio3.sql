SELECT u.nome AS usuario, 
COUNT(h.usuario_id) AS qt_de_musicas_ouvidas, 
ROUND(SUM(m.duracao_musica)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS u 
INNER JOIN SpotifyClone.historico_usuario as h
  ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
  ON h.musica_id = m.musica_id
GROUP BY u.nome
ORDER BY usuario;
