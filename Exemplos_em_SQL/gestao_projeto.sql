CREATE TABLE Projetos (
  ID INT PRIMARY KEY,
  Nome VARCHAR(100),
  Descricao VARCHAR(255),
  DataInicio DATE,
  DataFim DATE
);

CREATE TABLE Funcionarios (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50),
  Cargo VARCHAR(50),
  Departamento VARCHAR(50)
);

CREATE TABLE Alocacoes (
  ProjetoID INT,
  FuncionarioID INT,
  PRIMARY KEY (ProjetoID, FuncionarioID),
  FOREIGN KEY (ProjetoID) REFERENCES Projetos(ID),
  FOREIGN KEY (FuncionarioID) REFERENCES Funcionarios(ID)
);

INSERT INTO Projetos (ID, Nome, Descricao, DataInicio, DataFim)
VALUES (1, 'Sistema de Gerenciamento de Vendas', 'Desenvolvimento de um sistema para gerenciar vendas e estoque', '2023-01-01', '2023-12-31');

INSERT INTO Projetos (ID, Nome, Descricao, DataInicio, DataFim)
VALUES (2, 'Campanha de Marketing Digital', 'Criação e execução de uma campanha de marketing digital', '2023-02-01', '2023-06-30');

INSERT INTO Funcionarios (ID, Nome, Cargo, Departamento)
VALUES (1, 'João Silva', 'Desenvolvedor', 'TI');

INSERT INTO Funcionarios (ID, Nome, Cargo, Departamento)
VALUES (2, 'Maria Santos', 'Gerente de Projetos', 'TI');

INSERT INTO Funcionarios (ID, Nome, Cargo, Departamento)
VALUES (3, 'Pedro Souza', 'Analista de Marketing', 'Marketing');

INSERT INTO Alocacoes (ProjetoID, FuncionarioID)
VALUES (1, 1);

INSERT INTO Alocacoes (ProjetoID, FuncionarioID)
VALUES (1, 2);

INSERT INTO Alocacoes (ProjetoID, FuncionarioID)
VALUES (2, 3);

SELECT * FROM Projetos;

SELECT * FROM Funcionarios;

SELECT * FROM Alocacoes;

SELECT ProjetoID, COUNT(*) AS TotalAlocacoes FROM Alocacoes GROUP BY ProjetoID;


-- Neste exemplo, o programa cria três tabelas relacionadas: "Projetos", "Funcionarios" e "Alocacoes". A tabela "Projetos" armazena informações sobre os projetos em andamento, a tabela "Funcionarios" armazena dados dos funcionários envolvidos e a tabela "Alocacoes" associa os funcionários aos projetos em que estão alocados.

-- Em seguida, são inseridos registros nessas tabelas, representando projetos, funcionários e as alocações dos funcionários nos projetos.

-- Após a inserção, são realizadas consultas para recuperar todos os registros das tabelas "Projetos", "Funcionarios" e "Alocacoes". Também é feita uma consulta que conta o número de alocações por projeto.