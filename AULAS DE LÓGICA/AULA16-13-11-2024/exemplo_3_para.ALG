Algoritmo "Utilizando a fun��o para"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/11/2024
Var
// Se��o de Declara��es das vari�veis 
i, idade, maior: inteiro
nome, nomemaior: caracter

Inicio
// Verificar a pessoa mais velha
maior <- 0
para i de 1 ate 5 faca
       escreva("Digite um nome: ")
       leia(nome)
       escreva("Digite a idade da pessoa: ")
       leia(idade)
       escreval("##########################")
       escreval("Nome da pessoa: ",nome)
       escreval("Idade da pessoa: ",idade)
           se(idade > maior) entao
            nomemaior <- nome
            maior <- idade
           fimse
fimpara
escreval("#############################################")
 escreval("Nome da pessoa com a maior idade: ",nomemaior)
 escreval("Idade da pessoa mais velha: ",maior)


Fimalgoritmo