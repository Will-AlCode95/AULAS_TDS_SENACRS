Algoritmo "FUN��O PARA"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   :Miguel 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/11/2024
Var
// Se��o de Declara��es das vari�veL
i, idade, maior: inteiro
nome, nomemaior: caracter

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
maior <- 0
para i de 1 ate 5 fa�a
       escreva("digite um nome: ")
       leia(nome)
       escreva("digite a idade da pessoa: ")
       leia(idade)
       escreval("======================================")
       escreval("nome da pessoa: ", nome)
       escreval("idade da pessoa: ",idade)
       se(idade > maior) entao
       nomemaior <- nome
       maior <- idade
       fimse
fimpara
escreval("=============================================")
escreval("nome da pessoa com a maior idade: ",nomemaior)
escreval("idade da pessoa mais velha: ",maior)

Fimalgoritmo