SELECT song_title AS nome_musica,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(song_title, 'Streets', 'Code Review'),
   'Her Own', 'Trybe'), 'Inner Fire', 'Project'), 'Silly', 'Nice'), 'Circus', 
   'Pull Request') AS novo_nome
FROM SpotifyClone.songs
WHERE 
  song_title LIKE '%Streets%' 
  OR song_title LIKE '%Her Own%' 
  OR song_title LIKE '%Inner Fire%' 
  OR song_title LIKE '%Silly%' 
  OR song_title LIKE '%Circus%'
ORDER BY nome_musica;
