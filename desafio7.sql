SELECT
  a.nome AS artista,
  album.album_nome AS album,
  COUNT(f.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS album
  ON a.artista_id = album.artista_id
INNER JOIN SpotifyClone.following AS f
  ON a.artista_id = f.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
