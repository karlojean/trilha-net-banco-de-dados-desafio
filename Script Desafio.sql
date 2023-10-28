SELECT * FROM Filmes

-- 1

SELECT Nome, Ano FROM Filmes

-- 2 

SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- 3
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De volta para o futuro'

-- 4
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

-- 5
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

-- 6 
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND DURACAO < 150
ORDER BY Duracao

-- 7 
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos on Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme
INNER JOIN Filmes on Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores on Atores.Id = ElencoFilme.IdAtor
