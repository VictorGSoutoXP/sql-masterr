WITH PreferenciasCliente AS (
  SELECT
    ClienteID,
    ARRAY_AGG(CategoriaID) AS CategoriasPreferidas
  FROM Compras
  JOIN Produtos ON Compras.ProdutoID = Produtos.ID
  GROUP BY ClienteID
),

Recomendacoes AS (
  SELECT
    C.ClienteID,
    P.ProdutoID,
    COUNT(*) AS Pontuacao
  FROM PreferenciasCliente C
  JOIN Compras ON C.ClienteID = Compras.ClienteID
  JOIN Produtos P ON Compras.ProdutoID = P.ID
  WHERE P.CategoriaID = ANY(C.CategoriasPreferidas)
    AND P.ProdutoID NOT IN (SELECT ProdutoID FROM Compras WHERE ClienteID = C.ClienteID)
  GROUP BY C.ClienteID, P.ProdutoID
),

Ranking AS (
  SELECT
    ClienteID,
    ProdutoID,
    Pontuacao,
    RANK() OVER (PARTITION BY ClienteID ORDER BY Pontuacao DESC) AS RankingRecomendacao
  FROM Recomendacoes
)

SELECT
  ClienteID,
  ProdutoID,
  Pontuacao
FROM Ranking
WHERE RankingRecomendacao = 1;


