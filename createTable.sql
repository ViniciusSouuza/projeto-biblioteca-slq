-- Criação das tabelas independentes (sem chaves estrangeiras)
CREATE TABLE Editora (
    ID_Editora INT PRIMARY KEY,
    Nome_Editora VARCHAR(100) NOT NULL
);

CREATE TABLE Categoria (
    ID_Categoria INT PRIMARY KEY,
    Descricao VARCHAR(50) NOT NULL
);

CREATE TABLE Autor (
    ID_Autor INT PRIMARY KEY,
    Nome_Autor VARCHAR(100) NOT NULL,
    Nacionalidade VARCHAR(50)
);

CREATE TABLE Leitor (
    ID_Leitor INT PRIMARY KEY,
    Nome_Completo VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Criação das tabelas dependentes
CREATE TABLE Livro (
    ID_Livro INT PRIMARY KEY,
    Titulo VARCHAR(150) NOT NULL,
    ISBN VARCHAR(20),
    Ano_Publicacao INT,
    ID_Editora INT,
    ID_Categoria INT,
    FOREIGN KEY (ID_Editora) REFERENCES Editora(ID_Editora),
    FOREIGN KEY (ID_Categoria) REFERENCES Categoria(ID_Categoria)
);

CREATE TABLE Livro_Autor (
    ID_Livro INT,
    ID_Autor INT,
    PRIMARY KEY (ID_Livro, ID_Autor),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro),
    FOREIGN KEY (ID_Autor) REFERENCES Autor(ID_Autor)
);

CREATE TABLE Emprestimo (
    ID_Emprestimo INT PRIMARY KEY,
    Data_Retirada DATE NOT NULL,
    Data_Prevista_Devolucao DATE NOT NULL,
    Data_Real_Devolucao DATE,
    ID_Leitor INT,
    ID_Livro INT,
    FOREIGN KEY (ID_Leitor) REFERENCES Leitor(ID_Leitor),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID_Livro)
);