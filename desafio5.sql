SELECT s.song_title AS cancao, 
  COUNT(r.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproductions AS r
ON r.song_id = s.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
