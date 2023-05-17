WITH Distancias AS (
  SELECT
    Origem,
    Destino,
    SQRT(POWER(Destino.Latitude - Origem.Latitude, 2) + POWER(Destino.Longitude - Origem.Longitude, 2)) AS Distancia
  FROM Locais Origem
  CROSS JOIN Locais Destino
  WHERE Origem.LocaisID <> Destino.LocaisID
),

Rotas AS (
  SELECT
    Origem,
    Destino,
    ARRAY[Origem] AS Caminho,
    Distancia AS DistanciaTotal
  FROM Distancias
  WHERE Origem = (SELECT MIN(LocaisID) FROM Locais)
  
  UNION ALL
  
  SELECT
    D.Origem,
    D.Destino,
    R.Caminho || D.Destino,
    R.DistanciaTotal + D.Distancia
  FROM Rotas R
  JOIN Distancias D ON R.Destino = D.Origem
  WHERE NOT D.Destino = ANY(R.Caminho)
),

MelhorRota AS (
  SELECT
    Caminho,
    DistanciaTotal,
    RANK() OVER (ORDER BY DistanciaTotal) AS RankingRota
  FROM Rotas
  WHERE Destino = (SELECT MAX(LocaisID) FROM Locais)
)

SELECT
  Caminho,
  DistanciaTotal
FROM MelhorRota
WHERE RankingRota = 1;
