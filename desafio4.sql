SELECT
	usr.usuario,
    IF(MAX(YEAR(his.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.historicos his
INNER JOIN SpotifyClone.usuarios usr
ON usr.usuario_id = his.usuario_id
GROUP BY usr.usuario
ORDER BY usr.usuario;