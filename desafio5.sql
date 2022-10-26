SELECT m.musica AS cancao, COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_usuario AS h
ON m.musica_id = h.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
