Algoritmo "sistema que calcula m�dia de notas"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 21/10/2024
Var
 nome, turma: caractere
 nota1, nota2, nota3, nota4, nota5, soma, media: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
// Entrada do nome e da turma do aluno
   escreval("####Dados do Aluno####")

   escreval("Digite o nome do aluno: ")
   leia(nome)

   escreval("Digite a turma do aluno: ")
   leia(turma)

// Entrada das 5 notas
   escreval("####Entrada das 5 notas####")

   escreval("Digite a 1� nota: ")
   leia(nota1)

   escreval("Digite a 2� nota: ")
   leia(nota2)

   escreval("Digite a 3� nota: ")
   leia(nota3)

   escreval("Digite a 4� nota: ")
   leia(nota4)

   escreval("Digite a 5� nota: ")
   leia(nota5)


 // Soma das notas
   soma <- nota1 + nota2 + nota3 + nota4 + nota5

   // C�lculo da m�dia
   media <- soma / 5

 // Exibe o nome, turma e a m�dia
   escreval("Aluno: ", nome, " - Turma: ", turma, " ")
   escreval("A m�dia das 5 notas �: ", media)


Fimalgoritmo



