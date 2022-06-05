SELECT s.song_title AS nome, COUNT(r.reproduction_date) AS reproducoes
FROM SpotifyClone.songs AS s
  INNER JOIN SpotifyClone.reproductions AS r
  ON s.song_id = r.song_id
  INNER JOIN SpotifyClone.users AS u
  ON r.user_id = u.user_id
  INNER JOIN SpotifyClone.plans AS p
  ON u.plan_id = p.plan_id
WHERE p.plan_type = 'gratuito' OR p.plan_type = 'pessoal'
GROUP BY nome
ORDER BY nome;
