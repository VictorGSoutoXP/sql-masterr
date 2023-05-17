CREATE TABLE Produtos (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Quantidade INT,
  Preco DECIMAL(10, 2)
);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (1, 'Camiseta', 50, 29.99);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (2, 'Calça Jeans', 30, 59.99);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (3, 'Tênis', 20, 79.99);

UPDATE Produtos
SET Quantidade = 40
WHERE ID = 1;

DELETE FROM Produtos
WHERE ID = 2;

SELECT * FROM Produtos;

SELECT SUM(Quantidade) AS TotalQuantidade FROM Produtos;

SELECT AVG(Preco) AS PrecoMedio FROM Produtos;

-- Neste exemplo, o programa cria uma tabela chamada "Produtos" com as colunas "ID", "Nome", "Quantidade" e "Preco". Em seguida, insere três registros nessa tabela, representando produtos no estoque.

-- Após a inserção, o programa realiza uma atualização na quantidade de um produto específico, definindo a quantidade como 40, e também exclui um produto da tabela.

-- Em seguida, são realizadas consultas para obter todos os registros da tabela "Produtos", o total de quantidade de produtos em estoque (somando a quantidade) e o preço médio dos produtos.