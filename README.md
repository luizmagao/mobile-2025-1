Nesta aula, exploramos conteúdos importantes sobre JSON, execuções síncronas e assíncronas, além de conceitos como Future e async/await no Dart.

Que tal praticar mais um pouco com a lista de exercício a seguir? ;)

Algumas dicas importantes:

- Recomendo fazer esses exercícios em outro projeto Dart para não bagunçarmos nosso projeto do curso;
- Lembre-se de usar a biblioteca dart:convert para lidar com json e o pacote http em todos os casos que sejam necessários. Se você criar um novo projeto, precisará instalar o pacote http novamente;
- Dê uma boa lida na base de dados antes de começar a escrever qualquer código para familiarizar-se com a estrutura.

Bora começar?

## Exercício 1: Buscando livros por autor em uma biblioteca digital

Você está desenvolvendo um sistema de gerenciamento para uma biblioteca digital. Os dados dos livros são armazenados em um formato JSON que inclui título, pessoas autora, ano de publicação, entre outros.

**Sua tarefa é criar uma função em Dart que busque todos os livros de uma determinada pessoa autora e exiba os títulos dos livros encontrados no console.**

Sua base de dados está disponível no arquivo [books.json](https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json)

## Exercício 2: Filtrando receitas por ingredientes disponíveis

Você trabalha em um aplicativo de receitas culinárias que ajuda os usuários a encontrar receitas baseadas nos ingredientes que têm em casa.

As receitas são armazenadas em formato JSON e incluem uma lista de ingredientes.

Sua tarefa é criar uma função em Dart que filtre as receitas que podem ser feitas com os ingredientes disponíveis que deverão ser fornecidas por uma lista de String no parâmetro na função, e exiba os nomes das receitas que podem ser preparadas com esses ingredientes.

Sua base de dados está disponível no arquivo [recipes.json](https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/recipes.json).

## Exercício 3: Organizando times de vôlei por nível de habilidade

Você está criando um organizador de times para um campeonato de vôlei amador. As pessoas jogadoras são classificados por nível de habilidade, e essa informação é armazenada em formato JSON.

Sua tarefa é criar uma função em Dart que organize as pessoas jogadoras em times. Para isso, distribua as pessoas em times, de forma que a quantidade de pessoas por time seja compatível com o que está definido em “rules” e que as pessoas que estão a mais rodadas esperando tenham prioridade na alocação. Por fim, exiba a composição dos times no console.

Sua base de dados está disponível no arquivo [players.json](https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json).

## Exercício 4: Agendando consultas para uma clínica veterinária

Você está desenvolvendo um sistema de agendamento para uma clínica veterinária. As consultas são armazenadas em formato JSON, incluindo o nome do animal, o horário da consulta e o nome do veterinário responsável.

**Sua tarefa é criar uma função em Dart que filtre as consultas de um determinado veterinário e as organize por ordem de dia e horário e mostre na tela.**

Sua base de dados está disponível no arquivo [vet.json](https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/vet.json).

```
Desafie-se! Tente realizar as atividades antes de conferir as respostas na “Opinião da pessoa instrutora”. Assim, você poderá praticar o conteúdo e testar seu conhecimento!
```
