-- O código utiliza CTEs (Common Table Expressions) para criar etapas intermediárias. Primeiro, os dados de vendas são agregados por mês, calculando o número total de clientes distintos e o valor total das vendas. Em seguida, os dados de estoque são agrupados por produto, somando a quantidade disponível em estoque.

-- Os resultados das vendas e estoque são combinados em uma tabela intermediária para realizar a análise. Por fim, é aplicada uma função de classificação (RANK) para identificar o produto com maior volume de vendas em cada mês.

-- A consulta final retorna o mês, o total de clientes, o total de vendas, o ID do produto e a quantidade total para o produto com o maior volume de vendas em cada mês.

WITH DadosVendas AS (
  SELECT
    DATE_TRUNC('month', DataVenda) AS Mes,
    COUNT(DISTINCT ClienteID) AS TotalClientes,
    SUM(ValorTotal) AS TotalVendas
  FROM Vendas
  GROUP BY DATE_TRUNC('month', DataVenda)
),

DadosEstoque AS (
  SELECT
    ProdutoID,
    SUM(Quantidade) AS TotalQuantidade
  FROM Estoque
  GROUP BY ProdutoID
),

DadosAnalise AS (
  SELECT
    DV.Mes,
    DV.TotalClientes,
    DV.TotalVendas,
    DE.ProdutoID,
    DE.TotalQuantidade
  FROM DadosVendas DV
  JOIN DadosEstoque DE ON DV.Mes = DE.Mes
),

Resultado AS (
  SELECT
    Mes,
    TotalClientes,
    TotalVendas,
    ProdutoID,
    TotalQuantidade,
    RANK() OVER (PARTITION BY Mes ORDER BY TotalVendas DESC) AS RankingVendas
  FROM DadosAnalise
)

SELECT
  Mes,
  TotalClientes,
  TotalVendas,
  ProdutoID,
  TotalQuantidade
FROM Resultado
WHERE RankingVendas = 1;


