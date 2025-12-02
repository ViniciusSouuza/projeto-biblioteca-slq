SELECT 
    L.Titulo, 
    L.Ano_Publicacao, 
    E.Nome_Editora, 
    C.Descricao AS Genero
FROM Livro L
JOIN Editora E ON L.ID_Editora = E.ID_Editora
JOIN Categoria C ON L.ID_Categoria = C.ID_Categoria
ORDER BY L.Titulo ASC;

SELECT 
    Le.Nome_Completo AS Leitor, 
    Li.Titulo AS Livro_Emprestado, 
    Em.Data_Prevista_Devolucao
FROM Emprestimo Em
JOIN Leitor Le ON Em.ID_Leitor = Le.ID_Leitor
JOIN Livro Li ON Em.ID_Livro = Li.ID_Livro
WHERE Em.Data_Real_Devolucao IS NULL
ORDER BY Em.Data_Prevista_Devolucao ASC;

SELECT 
    L.Titulo, 
    A.Nome_Autor
FROM Livro L
JOIN Livro_Autor LA ON L.ID_Livro = LA.ID_Livro
JOIN Autor A ON LA.ID_Autor = A.ID_Autor
WHERE A.Nacionalidade LIKE 'Britânica'
LIMIT 5;

UPDATE Leitor
SET Email = 'novo.email.carlos@provider.com'
WHERE ID_Leitor = 2;

UPDATE Emprestimo
SET Data_Real_Devolucao = '2023-12-01'
WHERE ID_Emprestimo = 502;

UPDATE Livro
SET Ano_Publicacao = 1948
WHERE Titulo = '1984' AND ID_Editora = 1;