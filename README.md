📚 Sistema de Gestão de Biblioteca "Saber & Ler"
📖 Sobre o Projeto
Este projeto consiste na modelagem e implementação de um banco de dados relacional para uma Biblioteca Comunitária. O objetivo principal é informatizar o controle de acervo e a circulação de livros, substituindo o antigo sistema manual de fichas de papel.

O sistema foi projetado para garantir a integridade dos dados, controlar prazos de devolução e permitir consultas rápidas sobre a disponibilidade de títulos.

🎯 Objetivos
Conforme definido no escopo do projeto:

Gerenciar o cadastro de leitores, livros, autores e editoras.

Controlar o fluxo de empréstimos e devoluções.

Monitorar atrasos e disponibilidade de exemplares.

Centralizar as informações para evitar inconsistências e perda de livros.

🗂 Estrutura da Modelagem
O banco de dados passou por um rigoroso processo de modelagem e normalização:

Modelo Conceitual: Definição das entidades e relacionamentos principais.

Modelo Lógico: Refinamento dos atributos e chaves.

Normalização:

1FN: Garantia de atomicidade dos dados (criação da tabela associativa Livro_Autor).

2FN: Eliminação de dependências parciais nas chaves compostas.

3FN: Eliminação de dependências transitivas (separação de Editora e Categoria em tabelas próprias).

Entidades Principais (Tabelas)
Leitor: Dados cadastrais dos usuários.

Livro: Acervo físico disponível.

Autor: Autores das obras.

Editora: Empresas publicadoras.

Categoria: Gêneros literários.

🛠 Tecnologias Utilizadas
SQLiteStudio

Emprestimo: Tabela transacional que registra quem pegou qual livro e quando.

Livro_Autor: Tabela associativa (N:N) para vincular livros a autores.
