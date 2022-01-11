SELECT
	song.cancao,
    COUNT(his.cancao_id) AS reproducoes
FROM
	SpotifyClone.historicos his
INNER JOIN
	SpotifyClone.cancoes song
ON his.cancao_id = song.cancao_id
GROUP BY song.cancao
ORDER BY COUNT(his.cancao_id) DESC, song.cancao
LIMIT 2;