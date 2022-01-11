SELECT
	COUNT(usr.usuario) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios usr
INNER JOIN SpotifyClone.historicos his
ON his.usuario_id = usr.usuario_id
WHERE usr.usuario LIKE 'Bill%'