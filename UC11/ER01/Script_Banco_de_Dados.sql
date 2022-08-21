CREATE DATABASE Chapter
GO

USE Chapter
GO


CREATE TABLE Livros (
Id INT PRIMARY KEY IDENTITY,
Titulo VARCHAR(150) NOT NULL,
QuantidadePaginas INT,
Disponivel BIT
)
GO

INSERT INTO Livros (Titulo,QuantidadePaginas,Disponivel)
VALUES ('A revolucao dos bichos', 335, 1)

INSERT INTO Livros (Titulo,QuantidadePaginas,Disponivel)
VALUES ('Titulo A', 120, 1)
GO

INSERT INTO Livros (Titulo,QuantidadePaginas,Disponivel)
VALUES ('Titulo B', 220, 0)
GO

SELECT Id, Titulo, QuantidadePaginas, Disponivel FROM Livros
GO

CREATE TABLE Usuarios (
Id INT PRIMARY KEY IDENTITY,
Email VARCHAR(255) NOT NULL UNIQUE,
Senha VARCHAR (120) NOT NULL,
Tipo CHAR(1) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('email@es.br','1234','0')
GO

SELECT * FROM Usuarios WHERE Email = 'email@es.br' AND Senha = '1234'
GO