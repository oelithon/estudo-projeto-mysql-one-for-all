SELECT
	MIN(pl.preco) AS faturamento_minimo,
    MAX(pl.preco) AS faturamento_maximo,
    ROUND(AVG(pl.preco), 2) AS faturamento_medio,
    ROUND(SUM(pl.preco), 2) AS faturamento_total
FROM SpotifyClone.planos pl
INNER JOIN
	SpotifyClone.usuarios usr
ON pl.plano_id = usr.plano;