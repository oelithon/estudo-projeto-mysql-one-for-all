SELECT
	CONCAT(art.nome, ' ', art.sobrenome) AS artista,
    al.album
FROM SpotifyClone.artist art
INNER JOIN SpotifyClone.album al
ON art.artista_id = al.artista
WHERE art.nome LIKE 'Walter%'
ORDER BY al.album;