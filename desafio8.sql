SELECT
  a.nome AS artista, album.album_nome AS album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album
  ON a.artista_id = album.artista_id
  WHERE a.nome = 'Elis Regina'
ORDER BY album;
