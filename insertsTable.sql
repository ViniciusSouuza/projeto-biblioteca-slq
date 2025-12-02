-- 1. Inserindo Editoras
INSERT INTO Editora (ID_Editora, Nome_Editora) VALUES 
(1, 'Companhia das Letras'),
(2, 'Editora Rocco'),
(3, 'DarkSide Books');

-- 2. Inserindo Categorias
INSERT INTO Categoria (ID_Categoria, Descricao) VALUES 
(1, 'Romance'),
(2, 'Fantasia'),
(3, 'Suspense'),
(4, 'Ficção Científica');

-- 3. Inserindo Autores
INSERT INTO Autor (ID_Autor, Nome_Autor, Nacionalidade) VALUES 
(1, 'J.K. Rowling', 'Britânica'),
(2, 'Machado de Assis', 'Brasileira'),
(3, 'George Orwell', 'Britânica'),
(4, 'Stephen King', 'Americana');

-- 4. Inserindo Leitores
INSERT INTO Leitor (ID_Leitor, Nome_Completo, CPF, Email, Telefone) VALUES 
(1, 'Ana Silva', '111.222.333-44', 'ana.silva@email.com', '(11) 99999-1111'),
(2, 'Carlos Souza', '222.333.444-55', 'carlos.s@email.com', '(11) 98888-2222'),
(3, 'Mariana Lima', '333.444.555-66', 'mari.lima@email.com', '(21) 97777-3333');

-- 5. Inserindo Livros
INSERT INTO Livro (ID_Livro, Titulo, ISBN, Ano_Publicacao, ID_Editora, ID_Categoria) VALUES 
(101, 'Harry Potter e a Pedra Filosofal', '978-1234567890', 1997, 2, 2),
(102, 'Dom Casmurro', '978-0987654321', 1899, 1, 1),
(103, '1984', '978-1122334455', 1949, 1, 4),
(104, 'It: A Coisa', '978-5544332211', 1986, 3, 3);

-- 6. Vinculando Livros aos Autores (Tabela Associativa)
INSERT INTO Livro_Autor (ID_Livro, ID_Autor) VALUES 
(101, 1), -- Harry Potter -> J.K. Rowling
(102, 2), -- Dom Casmurro -> Machado de Assis
(103, 3), -- 1984 -> George Orwell
(104, 4); -- It -> Stephen King

-- 7. Registrando Empréstimos
-- Ana pegou Harry Potter (Devolvido)
INSERT INTO Emprestimo (ID_Emprestimo, Data_Retirada, Data_Prevista_Devolucao, Data_Real_Devolucao, ID_Leitor, ID_Livro) VALUES 
(501, '2023-11-01', '2023-11-15', '2023-11-10', 1, 101);

-- Carlos pegou 1984 (Ainda com o livro - Data_Real_Devolucao é NULL)
INSERT INTO Emprestimo (ID_Emprestimo, Data_Retirada, Data_Prevista_Devolucao, Data_Real_Devolucao, ID_Leitor, ID_Livro) VALUES 
(502, '2023-11-20', '2023-12-05', NULL, 2, 103);

-- Mariana pegou Dom Casmurro (Atrasado - Hoje seria ficticiamente 10/12)
INSERT INTO Emprestimo (ID_Emprestimo, Data_Retirada, Data_Prevista_Devolucao, Data_Real_Devolucao, ID_Leitor, ID_Livro) VALUES 
(503, '2023-11-10', '2023-11-25', NULL, 3, 102);

