-- Criando a tabela ProdutoCategoria
CREATE TABLE ProdutoCategoria (
ID_Categoria INT PRIMARY KEY IDENTITY (1,1),
ID_Produto int NOT NULL,
Nome_Categoria varchar(50) NOT NULL
);

-- Criando a tabela ProdutoEstoque
CREATE TABLE ProdutoEstoque (
ID_Estoque INT PRIMARY KEY IDENTITY (1,1),
ID_Produto int NOT NULL,
Quantidade int NOT NULL
);

-- Adicionando o conteúdo da tabela ProdutoCategoria ligando os ID_Produto com a tabela Produto
INSERT INTO ProdutoCategoria
(ID_Produto, Nome_Categoria)
VALUES
(1, 'Eletrônicos'),
(2, 'Alimentos'),
(3, 'Decoração'),
(4, 'Eletrodomésticos'),
(5, 'Eletrônicos'),
(10, 'Eletrônicos'),
(11, 'Roupas'),
(12, 'Roupas'),
(13, 'Roupas')

-- Adicionando o conteúdo da tabela ProdutoEstoque ligando os ID_Produto com a tabela Produto
INSERT INTO ProdutoEstoque
(ID_Produto, Quantidade)
VALUES
(1, 33),
(2, 54),
(3, 22),
(4, 3),
(5, 99),
(10, 40),
(11, 73),
(12, 57),
(13, 11)

-- Join para incluir o NOME, NOME_CATEGORIA E QUANTIDADE através do ID_Produto
SELECT p.nome, pc.Nome_Categoria, pe.Quantidade
FROM Produto p
JOIN ProdutoCategoria pc 
ON pc.ID_Produto = p.ID_Produto
JOIN ProdutoEstoque pe
ON pe.ID_Produto = p.ID_Produto

-- Adicionando roupas a tabela Produto
INSERT INTO Produto
VALUES
('Calça Baggy',60, 80),
('Moletom Canguru',70, 110),
('Camiseta Preta',30, 45);

-- Visualizar mudança
SELECT *
FROM Produto

-- Vendo quais IDs tem categoria roupas (11, 12, 13)
SELECT pc.ID_Produto
FROM ProdutoCategoria pc
WHERE pc.Nome_Categoria = 'Roupas'

-- DELETE produtos SE o ID for: 11, 12 e 13
DELETE FROM Produto
WHERE ID_Produto IN (
    SELECT pc.ID_Produto
FROM ProdutoCategoria pc
WHERE pc.Nome_Categoria = 'Roupas'
);

-- Criando tabela clientes e inserindo
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY IDENTITY(1,1),
    Titulo VARCHAR(20),
    PrimeiroNome VARCHAR(50),
    MeioInicial VARCHAR(5),
    UltimoNome VARCHAR(50)
);


INSERT INTO Cliente (Titulo, PrimeiroNome, MeioInicial, UltimoNome)
VALUES
('Sr.', 'João', 'A.', 'Silva'),
('Sra.', 'Maria', NULL, 'Oliveira'),
(NULL, 'Carlos', 'B.', 'Souza'),
('Dr.', 'Ana', NULL, 'Costa');

-- Gera uma lista única de nomes completos formatados a partir da tabela Cliente.
SELECT DISTINCT
    (
        CASE 
            WHEN Titulo IS NULL THEN '' 
            ELSE Titulo + ' ' 
        END +
        CASE 
            WHEN PrimeiroNome IS NULL THEN '' 
            ELSE PrimeiroNome + ' ' 
        END +
        CASE 
            WHEN MeioInicial IS NULL THEN '' 
            ELSE MeioInicial + ' ' 
        END +
        CASE 
            WHEN UltimoNome IS NULL THEN '' 
            ELSE UltimoNome 
        END
    ) AS NomeCompleto
FROM Cliente;