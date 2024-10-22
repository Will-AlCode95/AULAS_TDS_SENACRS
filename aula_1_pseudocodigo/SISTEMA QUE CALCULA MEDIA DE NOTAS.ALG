Algoritmo "sistema que calcula média de notas"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/10/2024
Var
 nome, turma: caractere
 nota1, nota2, nota3, nota4, nota5, soma, media: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
// Entrada do nome e da turma do aluno
   escreval("####Dados do Aluno####")

   escreval("Digite o nome do aluno: ")
   leia(nome)

   escreval("Digite a turma do aluno: ")
   leia(turma)

// Entrada das 5 notas
   escreval("####Entrada das 5 notas####")

   escreval("Digite a 1ª nota: ")
   leia(nota1)

   escreval("Digite a 2ª nota: ")
   leia(nota2)

   escreval("Digite a 3ª nota: ")
   leia(nota3)

   escreval("Digite a 4ª nota: ")
   leia(nota4)

   escreval("Digite a 5ª nota: ")
   leia(nota5)


 // Soma das notas
   soma <- nota1 + nota2 + nota3 + nota4 + nota5

   // Cálculo da média
   media <- soma / 5

 // Exibe o nome, turma e a média
   escreval("Aluno: ", nome, " - Turma: ", turma, " ")
   escreval("A média das 5 notas é: ", media)


Fimalgoritmo



