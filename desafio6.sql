SELECT
  MIN(p.plan_price) AS faturamento_minimo,
  MAX(p.plan_price) AS faturamento_maximo,
  ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
  ROUND(SUM(p.plan_price), 2) AS faturamento_total
FROM SpotifyClone.plans AS p
LEFT JOIN SpotifyClone.users AS u
ON u.plan_id = p.plan_id;
