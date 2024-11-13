Algoritmo "FUNÇÃO PARA"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :Miguel 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 13/11/2024
Var
// Seção de Declarações das variáveL
i, idade, maior: inteiro
nome, nomemaior: caracter

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
maior <- 0
para i de 1 ate 5 faça
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