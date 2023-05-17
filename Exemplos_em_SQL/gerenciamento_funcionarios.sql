CREATE TABLE Funcionarios (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Cargo VARCHAR(50),
  Salario DECIMAL(10, 2),
  Departamento VARCHAR(50)
);

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario, Departamento)
VALUES (1, 'João Silva', 'Desenvolvedor', 5000.00, 'TI');

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario, Departamento)
VALUES (2, 'Maria Santos', 'Gerente de Projetos', 8000.00, 'TI');

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario, Departamento)
VALUES (3, 'Pedro Souza', 'Analista de Marketing', 4500.00, 'Marketing');

INSERT INTO Funcionarios (ID, Nome, Cargo, Salario, Departamento)
VALUES (4, 'Ana Oliveira', 'Analista Financeiro', 5500.00, 'Finanças');

UPDATE Funcionarios
SET Salario = Salario * 1.1
WHERE Departamento = 'TI';

DELETE FROM Funcionarios
WHERE ID = 3;

SELECT * FROM Funcionarios;

SELECT COUNT(*) AS TotalFuncionarios FROM Funcionarios;

SELECT * FROM Funcionarios WHERE Salario > 6000.00;


-- Neste exemplo, o programa cria uma tabela chamada "Funcionarios" com as colunas "ID", "Nome", "Cargo", "Salario" e "Departamento". Em seguida, insere quatro registros nessa tabela, representando funcionários com seus respectivos nomes, cargos, salários e departamentos.

-- Após a inserção, o programa realiza uma atualização no salário dos funcionários do departamento de TI, aumentando-o em 10%. Também é realizado um comando DELETE para remover um funcionário específico da tabela.

-- Em seguida, são realizadas consultas para obter todos os registros da tabela "Funcionarios", o total de funcionários (contando as linhas da tabela) e uma consulta filtrada para encontrar os funcionários com salários acima de 6000.00.