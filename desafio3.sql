SELECT u.user_name AS usuario, COUNT(s.song_id) AS qtde_musicas_ouvidas, ROUND(SUM(s.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproductions AS r
INNER JOIN SpotifyClone.songs AS s
ON r.user_id = u.user_id AND r.song_id = s.song_id
GROUP BY u.user_id
ORDER BY u.user_name;
