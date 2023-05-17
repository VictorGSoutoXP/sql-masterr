-- Criar tabela
CREATE TABLE Produtos (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Preco DECIMAL(10, 2),
  Quantidade INT
);

-- Inserir dados na tabela
INSERT INTO Produtos (ID, Nome, Preco, Quantidade)
VALUES (1, 'Camiseta', 29.99, 100);

INSERT INTO Produtos (ID, Nome, Preco, Quantidade)
VALUES (2, 'Calça Jeans', 59.99, 50);

INSERT INTO Produtos (ID, Nome, Preco, Quantidade)
VALUES (3, 'Tênis', 79.99, 80);

-- Atualizar preço de um produto
UPDATE Produtos
SET Preco = 39.99
WHERE ID = 1;

-- Consulta para obter todos os produtos
SELECT * FROM Produtos;

-- Consulta para obter o total de produtos em estoque
SELECT SUM(Quantidade) AS TotalEstoque FROM Produtos;

-- Consulta para obter o preço médio dos produtos
SELECT AVG(Preco) AS PrecoMedio FROM Produtos;

--  Neste exemplo, o programa cria três tabelas relacionadas: "Clientes", "Pedidos" e "ItensPedido". A tabela "Clientes" armazena informações sobre os clientes, a tabela "Pedidos" registra os pedidos feitos pelos clientes e a tabela "ItensPedido" armazena os produtos incluídos em cada pedido.

-- Em seguida, o programa insere alguns dados nessas tabelas, criando clientes, pedidos e itens de pedido relacionados.

-- Por fim, são realizadas consultas para recuperar todos os registros das tabelas "Clientes", "Pedidos" e "ItensPedido".
