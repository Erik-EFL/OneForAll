SELECT a.artist_name AS artista, al.album_title AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON al.artist_id = a.artist_id
WHERE a.artist_name = 'Walter Phoenix'
ORDER BY album;
  
