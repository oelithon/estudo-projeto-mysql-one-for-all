SELECT
	IF(art.sobrenome <> '', CONCAT(art.nome,' ', art.sobrenome), art.nome) AS artista,
    al.album,
    COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artist art
INNER JOIN SpotifyClone.album al
ON art.artista_id = al.artista
INNER JOIN SpotifyClone.seguidores_artistas seg
ON art.artista_id = seg.artista_id
GROUP BY al.album, seg.artista_id
ORDER BY COUNT(seg.artista_id) DESC, art.nome, al.album;