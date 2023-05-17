CREATE TABLE Contatos (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Telefone VARCHAR(20),
  Email VARCHAR(50)
);

INSERT INTO Contatos (ID, Nome, Telefone, Email)
VALUES (1, 'João Silva', '+55 123456789', 'joao@example.com');

INSERT INTO Contatos (ID, Nome, Telefone, Email)
VALUES (2, 'Maria Santos', '+55 987654321', 'maria@example.com');

INSERT INTO Contatos (ID, Nome, Telefone, Email)
VALUES (3, 'Pedro Souza', '+55 987654321', 'pedro@example.com');

UPDATE Contatos
SET Telefone = '+55 999999999'
WHERE ID = 1;

DELETE FROM Contatos
WHERE ID = 3;

SELECT * FROM Contatos;

SELECT COUNT(*) AS TotalContatos FROM Contatos;

SELECT * FROM Contatos WHERE Email LIKE '%example.com';


-- Neste exemplo, o programa cria uma tabela chamada "Contatos" com as colunas "ID", "Nome", "Telefone" e "Email". Em seguida, insere três registros nessa tabela, representando contatos com seus respectivos nomes, números de telefone e endereços de e-mail.

-- Após a inserção, o programa realiza uma atualização no número de telefone de um contato específico, alterando-o para '+55 999999999', e também exclui um contato da tabela.

-- Em seguida, são realizadas consultas para obter todos os registros da tabela "Contatos", o total de contatos (contando as linhas da tabela) e uma consulta filtrada para encontrar contatos com endereços de e-mail contendo 'example.com'.
