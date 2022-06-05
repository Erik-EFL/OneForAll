SELECT COUNT(DISTINCT s.song_id) as cancoes,
  COUNT(DISTINCT a.artist_id) as artistas,
  COUNT(DISTINCT al.album_id) as albuns
FROM SpotifyClone.songs AS s, SpotifyClone.artists AS a, SpotifyClone.albums AS al;
