DELETE FROM Emprestimo
WHERE ID_Emprestimo = 503 AND Data_Real_Devolucao IS NULL;

-- Primeiro insiro um autor fantasma só para poder deletar sem erro de chave estrangeira
INSERT INTO Autor (ID_Autor, Nome_Autor, Nacionalidade) VALUES (99, 'Autor Teste', 'N/A');

-- Agora deleto
DELETE FROM Autor
WHERE ID_Autor = 99;

-- Exemplo didático (assumindo que não há empréstimos ativos para estes livros)
-- 1. Remove da tabela associativa
DELETE FROM Livro_Autor 
WHERE ID_Livro IN (SELECT ID_Livro FROM Livro WHERE ID_Categoria = 3);

-- 2. Remove o livro
DELETE FROM Livro 
WHERE ID_Categoria = 3;

