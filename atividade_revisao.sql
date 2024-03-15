use sistema_biblioteca;

select * from funcionario;

select f.nome
from funcionario f
join gerente g on g.matricula = f.matricula;

-- Selecionar todos os livros com ano de publica��o acima de 2018
select * from livro where ano_publicacao > 2018;
select * from livro
-- Titulo do livro onde o nome do autor come�a com Paulo
select titulo from livro where autor like 'paulo%';
-- Mostre todos os livros que s�o de tecnologia
select livro.titulo
from livro
join tecnologia on tecnologia.numero_registro = livro.numero_registro;


select column_name, data_type
from information_schema.COLUMNS
where TABLE_NAME = 'livro';


select * from evento;

select * from evento 
where tipo = 'palestra' 
and custo > 100.00
and year(data) > 2022; 

-- Operadores relacionais
-- = (igual a)
-- != ou <> (diferente de)
-- > (maior que)
-- < (menor que)
-- >= (maior ou igual a)
-- <= (menor ou igual a)

 -- Operadores l�gicos
-- AND: Retorna verdadeiro se ambas as condi��es forem verdadeiras.
-- OR: Retorna verdadeiro se pelo menos uma das condi��es for verdadeira.
-- NOT: Inverte o resultado de uma condi��o, ou seja, retorna verdadeiro se a condi��o for falsa e vice-versa.

-- Operadores aritmeticos
-- + (adi��o): Soma dois valores.
-- - (subtra��o): Subtrai um valor de outro.
-- * (multiplica��o): Multiplica dois valores.
-- / (divis�o): Divide um valor pelo outro.
-- % (m�dulo): Retorna o resto da divis�o de um valor pelo outro.

-- Fun��es de agrega��o:
-- SUM(): Calcula a soma dos valores em um conjunto de dados.
-- AVG(): Calcula a m�dia dos valores em um conjunto de dados.
-- COUNT(): Conta o n�mero de itens em um conjunto de dados.
-- MAX(): Encontra o valor m�ximo em um conjunto de dados.
-- MIN(): Encontra o valor m�nimo em um conjunto de dados.

-- Fun��es escalares:
-- ABS(): Retorna o valor absoluto de um n�mero.
-- CEILING(): Arredonda um n�mero para cima para o inteiro mais pr�ximo.
-- FLOOR(): Arredonda um n�mero para baixo para o inteiro mais pr�ximo.
-- ROUND(): Arredonda um n�mero para um n�mero especificado de casas decimais.
-- SQRT(): Calcula a raiz quadrada de um n�mero.
-- POWER(): Eleva um n�mero a uma pot�ncia especificada.

--Fun��es de manipula��o de strings:
-- LEN(): Retorna o comprimento de uma string.
-- UPPER(): Converte uma string para mai�sculas.
-- LOWER(): Converte uma string para min�sculas.
-- SUBSTRING(): Extrai uma substring de uma string.
-- REPLACE(): Substitui todas as ocorr�ncias de uma substring por outra substring.

--Fun��es de manipula��o de datas:
-- GETDATE(): Retorna a data e hora atuais do sistema.
-- DATEADD(): Adiciona um intervalo de tempo especificado a uma data.
-- DATEDIFF(): Calcula a diferen�a entre duas datas.
-- YEAR(): Extrai o ano de uma data.
-- MONTH(): Extrai o m�s de uma data.