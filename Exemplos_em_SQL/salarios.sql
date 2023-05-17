-- Criar tabela
CREATE TABLE Funcionarios (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Cargo VARCHAR(50),
  Salario DECIMAL(10, 2)
);

-- Inserir dados na tabela
INSERT INTO Funcionarios (ID, Nome, Cargo, Salario)
VALUES (1, 'João Silva', 'Gerente', 5000.00);

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario)
VALUES (2, 'Maria Santos', 'Analista', 3500.00);

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario)
VALUES (3, 'Pedro Souza', 'Desenvolvedor', 3000.00);

-- Consulta para obter todos os funcionários
SELECT * FROM Funcionarios;

-- Consulta para obter o funcionário com salário maior que 4000
SELECT * FROM Funcionarios WHERE Salario > 4000;

-- Consulta para obter o número total de funcionários
SELECT COUNT(*) AS TotalFuncionarios FROM Funcionarios;


-- Neste exemplo, o programa cria uma tabela chamada "Funcionarios" com as colunas "ID", "Nome", "Cargo" e "Salario". Em seguida, insere três registros nessa tabela. 
-- Depois, realiza algumas consultas para obter todos os funcionários, os funcionários com salário maior que 4000 e o número total de funcionários.