SELECT
	usr.usuario,
	COUNT(his.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(song.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios usr
INNER JOIN SpotifyClone.historicos his
ON usr.usuario_id = his.usuario_id
INNER JOIN SpotifyClone.cancoes song
ON song.cancao_id = his.cancao_id
GROUP BY usr.usuario
ORDER BY usr.usuario;