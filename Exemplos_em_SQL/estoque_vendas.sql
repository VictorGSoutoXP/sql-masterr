CREATE TABLE Produtos (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Quantidade INT,
  Preco DECIMAL(10, 2)
);

CREATE TABLE Vendas (
  ID INT PRIMARY KEY,
  DataVenda DATE,
  ValorTotal DECIMAL(10, 2)
);

CREATE TABLE ItensVenda (
  VendaID INT,
  ProdutoID INT,
  Quantidade INT,
  PrecoUnitario DECIMAL(10, 2),
  PRIMARY KEY (VendaID, ProdutoID),
  FOREIGN KEY (VendaID) REFERENCES Vendas(ID),
  FOREIGN KEY (ProdutoID) REFERENCES Produtos(ID)
);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (1, 'Camiseta', 50, 29.99);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (2, 'Calça Jeans', 30, 59.99);

INSERT INTO Produtos (ID, Nome, Quantidade, Preco)
VALUES (3, 'Tênis', 20, 79.99);

INSERT INTO Vendas (ID, DataVenda, ValorTotal)
VALUES (1, '2023-05-15', 150.00);

INSERT INTO Vendas (ID, DataVenda, ValorTotal)
VALUES (2, '2023-05-16', 250.00);

INSERT INTO ItensVenda (VendaID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (1, 1, 2, 25.00);

INSERT INTO ItensVenda (VendaID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (1, 2, 1, 50.00);

INSERT INTO ItensVenda (VendaID, ProdutoID, Quantidade, PrecoUnitario)
VALUES (2, 3, 1, 100.00);

SELECT * FROM Produtos;

SELECT * FROM Vendas;

SELECT * FROM ItensVenda;

SELECT SUM(Quantidade) AS TotalQuantidade FROM Produtos;

SELECT COUNT(*) AS TotalVendas FROM Vendas;

SELECT SUM(ValorTotal) AS TotalValorVendas FROM Vendas;


-- Neste exemplo, o programa cria três tabelas relacionadas: "Produtos", "Vendas" e "ItensVenda". A tabela "Produtos" armazena informações sobre os produtos em estoque, a tabela "Vendas" registra as vendas realizadas e a tabela "ItensVenda" armazena os produtos vendidos em cada venda.

-- Em seguida, o programa insere alguns dados nessas tabelas, criando produtos, vendas e relacionando os produtos vendidos em cada venda.

-- Após a inserção, são realizadas consultas para recuperar todos os registros das tabelas "Produtos", "Vendas" e "ItensVenda". Também são feitas consultas para obter o total de quantidade de produtos em estoque (somando a quantidade), o total de vendas (contando as linhas da tabela) e o valor total de todas as vendas.