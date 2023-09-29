-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o 
SELECT Nome , Ano, Duracao from Filmes
WHERE Nome = 'De Volta para o Futuro'
-- 4 - Buscar os filmes lançados em 1997
SELECT Nome , Ano, Duracao FROM Filmes 
WHERE Ano = 1997
-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano >= 2000
-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao
-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC
-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT *
FROM Atores
WHERE Genero = 'M'
-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
-- 10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'
-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id 
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id