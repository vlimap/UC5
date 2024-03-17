/*
Quest�o 1
Encontre o n�mero total de livros dispon�veis na 
biblioteca com CNPJ '12345678000123'
*/

select count(*) as total_livro from LIVRO_BIBLIOTECA 
where cnpj = '12345678000123';

/*
Quest�o 2
Liste todos os funcion�rios que s�o bibliotec�rios.
*/

select * from BIBLIOTECARIO order by nome;

/*
Quest�o 3
Encontre o t�tulo e o autor do livro com o 
n�mero de registro 10.
*/

select titulo, autor from livro 
where numero_registro = 10;

/*
Quest�o 4
Liste todos os eventos do tipo 'Workshop' que custam 
mais de R$150,00.
*/
select * from evento 
where tipo = 'workshop' and custo > 150;

/*
Quest�o 5
Encontre todos os livros de tecnologia dispon�veis 
na biblioteca com CNPJ '23456789000134'.
*/

select livro.titulo
from livro
join tecnologia on 
livro.numero_registro = TECNOLOGIA.numero_registro 

/*
Quest�o 6
Liste os nomes dos atendentes que trabalham na biblioteca.
*/
-- Lista todos os campos
select * from atendente;
-- Lista apenas por nome
select nome from atendente;

/*
Quest�o 7
Encontre todos os peri�dicos publicados no ano de 2023.
*/

select titulo, ano_publicacao
from PERIODICO 
where ano_publicacao = '2023';

/*
Quest�o 8
Liste todos os livros de sociologia que est�o 
dispon�veis em qualquer biblioteca.
*/
select livro.titulo
from livro 
join sociologia  on livro.numero_registro = SOCIOLOGIA.numero_registro;

/*
Quest�o 9
Encontre o nome e a matr�cula de todos os educadores.
*/
select matricula, nome 
from EDUCADOR;
/*
Quest�o 10
Liste os t�tulos de todos os peri�dicos que come�am com a letra 'C'.
*/
select PERIODICO.titulo 
from PERIODICO
where titulo like 'c%';
/*
Quest�o 11
Encontre todos os eventos do tipo 'Palestra' que ocorreram antes de 2022.
*/
select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

/*
Quest�o 12
Liste todos os livros de ci�ncia que foram publicados ap�s 2015.
*/
select livro.titulo, livro.ano_publicacao
from livro
join CIENCIA on livro.numero_registro = ciencia.numero_registro
and ano_publicacao > '2015';

/*
Quest�o 13
Encontre os nomes dos t�cnicos de TI que t�m 'Rodrigo' 
como parte do nome
*/
select TECNICO_TI.nome 
from TECNICO_TI 
where nome like '%rodrigo%';

/*
Quest�o 14
Liste todos os funcion�rios que s�o assistentes.
*/
select funcionario.nome
from funcionario
join assistente on funcionario.matricula = assistente.matricula;

/*
Quest�o 15
Encontre todos os livros que t�m 'Programa��o' 
como parte do t�tulo.
*/
select livro.titulo
from livro
where titulo like '%programa��o%';

/*
Quest�o 16
Encontre todos os peri�dicos que t�m 'Sa�de' como parte do t�tulo.
*/
select periodico.titulo
from periodico
where titulo like '%sa�de%';
/*
Quest�o 17
Liste os nomes dos funcion�rios que s�o gerentes e 
come�am com a letra 'C'
*/
select funcionario.nome 
from funcionario
join gerente on FUNCIONARIO.matricula = gerente.matricula 
where gerente.nome like 'c%';

/*
Quest�o 18
Encontre todos os livros que foram publicados entre 2010 e 2020.
*/
select livro.titulo, livro.ano_publicacao
from livro
where ano_publicacao > '2010' and ano_publicacao < '2020';
/*
Quest�o 19
Liste todos os funcion�rios que s�o estagi�rios e t�m 'Lima' 
como parte do nome.
*/
select funcionario.nome 
from funcionario
join estagiario on FUNCIONARIO.matricula = estagiario.matricula 
where estagiario.nome like '%lima%';





