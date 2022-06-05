SELECT a.artist_name AS artista, al.album_title AS album,
  COUNT(f.user_id) AS seguidores
FROM SpotifyClone.artists AS a
  LEFT JOIN SpotifyClone.albums AS al
  ON a.artist_id = al.artist_id
  JOIN SpotifyClone.follows AS f
  ON f.artist_id = a.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
