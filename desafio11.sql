SELECT
  m.musica AS nome_musica,
  CASE
    WHEN m.musica LIKE '%Bard%' THEN REPLACE(m.musica, 'Bard', 'QA')
    WHEN m.musica LIKE '%Amar%' THEN REPLACE(m.musica, 'Amar', 'Code Review')
    WHEN m.musica LIKE '%Pais%' THEN REPLACE(m.musica, 'Pais', 'Pull Requests')
    WHEN m.musica LIKE '%SOUL%' THEN REPLACE(m.musica, 'SOUL', 'CODE')
    WHEN m.musica LIKE '%SUPERSTAR%' THEN REPLACE(m.musica, 'SUPERSTAR', 'SUPERDEV')
  END as novo_nome
FROM SpotifyClone.musicas AS m
WHERE m.musica regexp 'Bard|Amar|Pais|SOUL|SUPERSTAR'
ORDER BY m.musica DESC;
