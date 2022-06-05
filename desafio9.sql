SELECT COUNT(r.reproduction_date) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.reproductions AS r
  ON r.user_id = u.user_id
WHERE u.user_name = 'Bill';
